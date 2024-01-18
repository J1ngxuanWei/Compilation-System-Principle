#include "GraphColor.h"
#include <queue>
extern FILE *yyout;



//清空所有参数
void GraphColor::clearData()
{
    nodes.clear();
    graph.clear();
    var2Node.clear();
    spillNodes.clear();
    std::stack<int>().swap(colorSeq);
}

//合并函数，因为在操作中会产生重复的，将输入的ab取并集保存到out中
void GraphColor::aggregate(std::set<MachineOperand *> &a, std::set<MachineOperand *> &b, std::set<MachineOperand *> &out)
{
    out.clear();
    std::set_union(a.begin(), a.end(), b.begin(), b.end(), inserter(out, out.begin()));
}

void GraphColor::aggregate(std::set<int> &a, std::set<int> &b, std::set<int> &out)
{
    out.clear();
    std::set_union(a.begin(), a.end(), b.begin(), b.end(), inserter(out, out.begin()));
}

//合并两个节点
//https://zhuanlan.zhihu.com/p/402309251
int GraphColor::mergeTwoNodes(int no1, int no2)
{
    int dst = std::min(no1, no2);
    int src = std::max(no1, no2);
    bool spilled = (nodes[dst].hasSpilled || nodes[src].hasSpilled);
    if (dst == src)
        return dst;
    nodes[dst].hasSpilled = spilled;
    nodes[src].hasSpilled = spilled;
    nodes[dst].defs.insert(nodes[src].defs.begin(), nodes[src].defs.end());
    nodes[dst].uses.insert(nodes[src].uses.begin(), nodes[src].uses.end());
    for (auto &def : nodes[dst].defs)
        var2Node[def] = dst;
    for (auto &use : nodes[dst].uses)
        var2Node[use] = dst;
    return dst;
}




void GraphColor::calDRGenKill(std::map<MachineBlock *, std::set<MachineOperand *>> &gen, std::map<MachineBlock *, std::set<MachineOperand *>> &kill)
{
    //遍历函数的每一个基本块的每一条指令
    for (auto &block : func->getBlocks())
    {
        for (auto &inst : block->getInsts())
        {
            //如果指令的定义的操作数的定义处存在
            if (inst->getDef().size() > 0)
            {
                //那么遍历每一个定义点
                for (auto def : inst->getDef())
                {
                    // 已经分配的参数寄存器不处理
                    auto argRegNode = isArgReg(def);
                    if (argRegNode != -1)
                    {
                        var2Node[def] = argRegNode;
                        continue;
                    }
                    //如果这个定义点使用的不是虚拟寄存器（就是物理寄存器，那么我们就不需要再处理了）
                    //当然，也得满足在虚拟寄存器到节点的映射里面没有它，如果有的话，说明是我们在上面预留的，也要处理
                    if (!def->isVReg() || var2Node.find(def) != var2Node.end())
                        continue;
                    //创建节点，区分浮点和整形，添加到nodes中。
                    nodes.emplace_back(def->isFReg(), def);
                    //为刚建立的定义点建立映射到对应节点
                    var2Node[def] = nodes.size() - 1;
                    //检测一下这个定义点对应的寄存器是不是标记了溢出
                    //如果是，对应spilled置位
                    if (spilledRegs.count(def) > 0)
                        nodes[var2Node[def]].hasSpilled = true;
                    //插入集合
                    auto copyGen = gen[block];
                    for (auto op : copyGen)
                        if ((*op) == (*def))
                            gen[block].erase(op);
                    //变量被重新定义了，所以也认为其被修改了
                    //加入gen和kill集合
                    gen[block].insert(def);
                    kill[block].insert(def);
                }
            }
        }
    }
}

void GraphColor::calDRInOut(std::map<MachineBlock *, std::set<MachineOperand *>> &gen, std::map<MachineBlock *, std::set<MachineOperand *>> &kill, std::map<MachineBlock *, std::set<MachineOperand *>> &in, std::map<MachineBlock *, std::set<MachineOperand *>> &out)
{
    //计算基本块的in和out集合
    //先设置初始状态中各基本块的IN和OUT集合为空，然后迭代计算它们的IN和OUT，直到所有基本块IN和OUT的内容不再发生变化为止。
    auto entry = func->getEntry();
    out[entry] = gen[entry];
    //用于遍历所有的基本块的队列
    std::queue<MachineBlock *> workList;
    for (auto block : func->getBlocks())
        if (block != entry)
            workList.push(block);
    while (!workList.empty())
    {
        auto block = workList.front();
        workList.pop();
        std::set<MachineOperand *> In[2];
        //计算in
        //in是所有前驱基本块的out集合的并集
        In[0] = out[block->getPreds()[0]];
        auto it = block->getPreds().begin() + 1;
        auto overPos = block->getPreds().end();
        int turn = 0;
        for (; it != overPos; it++)
        {
            //求并集
            aggregate(out[*it], In[turn], In[turn ^ 1]);
            turn ^= 1;
        }
        in[block] = In[turn];
        // 计算out
        //out[a]是gen[a]和in[a]-kill[a]的并集
        std::set<MachineOperand *> Out;
        //计算in[a]-kill[a]
        for (auto indef : in[block])
            for (auto def : kill[block])
                if (*indef == *def)
                    In[turn].erase(indef);
        //求并集
        std::set_union(gen[block].begin(), gen[block].end(), In[turn].begin(), In[turn].end(), inserter(Out, Out.begin()));
        //添加新的后继块，迭代进行（判断标准为是否有out集合发生了改变）
        if (out[block] != Out)
        {
            out[block] = Out;
            for (auto &succ : block->getSuccs())
                workList.push(succ);
        }
    }
}



void GraphColor::genNodes()
{
    // 预留前4+16个参数寄存器
    for (int i = 0; i < rArgRegNum; i++)
    {
        nodes.emplace_back(false, nullptr);
        nodes[i].color = i;
    }
    for (int i = 0; i < sArgRegNum; i++)
    {
        nodes.emplace_back(true, nullptr);
        nodes[i + rArgRegNum].color = i;
    }
    //预留出来通用寄存器的特殊寄存器，r12 用作子程序间scratch 寄存器，即 ip 寄存器
    nodes.emplace_back(false, nullptr);
    nodes.back().color = 12;
    //预留出来通用寄存器的特殊寄存器，r14 寄存器又被称为连接寄存器（lr），用于保存子程序以及中断的返回地址
    nodes.emplace_back(false, nullptr);
    nodes.back().color = 14;

    //开始生成
    //https://www.zhihu.com/market/pub/120331465/manuscript/1542985826539388928
    std::map<MachineBlock *, std::set<MachineOperand *>> gen;     //基本块内部的定义点
    std::map<MachineBlock *, std::set<MachineOperand *>> kill;    //在基本块内被杀死的定义点（也可以说值被修改了）
    std::map<MachineBlock *, std::set<MachineOperand *>> in;      //能够达到一个基本块入口的定义点的集合
    std::map<MachineBlock *, std::set<MachineOperand *>> out;     //能够达到一个基本块出口的定义点的集合
    //分别计算四个集合
    calDRGenKill(gen, kill);
    //分别计算四个集合
    calDRInOut(gen, kill, in, out);
    //这里要处理一个问题，就是可能在某一行的某个地方，这个变量可以有多个def到达它
    std::map<MachineOperand, std::set<int>> op2Def;
    for (auto &block : func->getBlocks())
    {
        op2Def.clear();
        for (auto &def : in[block])
            op2Def[*def].insert(var2Node[def]);
        for (auto &inst : block->getInsts())
        {
            for (auto &use : inst->getUse())
            {
                // 已经分配的参数寄存器不处理
                auto argRegNode = isArgReg(use);
                if (argRegNode != -1)
                {
                    var2Node[use] = argRegNode;
                    continue;
                }
                //物理寄存器也不作处理
                if (!use->isVReg())
                    continue;
                //处理方法是将两个节点直接合并
                auto it = op2Def[*use].begin();
                auto overPos = op2Def[*use].end();
                int no1 = *it;
                it++;
                for (; it != overPos; it++)
                {
                    int no2 = *it;
                    no1 = mergeTwoNodes(no1, no2);
                }
                //保留最后的节点
                op2Def[*use].clear();
                op2Def[*use].insert(no1);
                nodes[no1].uses.insert(use);
                var2Node[use] = no1;
            }
            if (inst->getDef().size() > 0)
            {
                for (auto def : inst->getDef())
                {
                    //这块处理溢出情况下的虚拟寄存器的问题
                    if (def->isVReg())
                    {
                        op2Def.erase(*def);
                        op2Def[*def].insert(var2Node[def]);
                    }
                }
            }
        }
    }
}

void GraphColor::calLVGenKill(std::map<MachineBlock *, std::set<int>> &gen, std::map<MachineBlock *, std::set<int>> &kill)
{
    for (auto &block : func->getBlocks())
    {
        for (auto instIt = block->rbegin(); instIt != block->rend(); instIt++)
        {
            auto inst = *instIt;
            if (isCall(inst))
            {
                //这里要注意一下，call指令会使用所有的参数寄存器同时返回值也会修改对应的寄存器
                for (int i = 0; i < rArgRegNum + sArgRegNum + 2; i++)
                {
                    gen[block].erase(i);
                    kill[block].insert(i);
                }
                //这里要找一下看看这个函数会用到哪些寄存器
                auto result = findFuncUseArgs(inst->getUse()[0]);
                auto rnum = std::get<0>(result);
                auto snum = std::get<1>(result);
                for (int i = 0; i < rnum; i++)
                    gen[block].insert(i);
                for (int i = 0; i < snum; i++)
                    gen[block].insert(i + rArgRegNum);
                continue;
            }
            if (inst->getDef().size() > 0)
            {
                for (auto def : inst->getDef())
                {
                    if (def->isVReg() || isArgReg(def) != -1)
                    {
                        gen[block].erase(var2Node[def]);
                        kill[block].insert(var2Node[def]);
                    }
                }
            }
            for (auto &use : inst->getUse())
            {
                if (!use->isVReg() && isArgReg(use) == -1)
                    continue;
                gen[block].insert(var2Node[use]);
            }
        }
    }
}

void GraphColor::calLVInOut(std::map<MachineBlock *, std::set<int>> &gen, std::map<MachineBlock *, std::set<int>> &kill, std::map<MachineBlock *, std::set<int>> &in, std::map<MachineBlock *, std::set<int>> &out)
{
    std::queue<MachineBlock *> workList;
    for (auto &block : func->getBlocks())
    {
        if (block->getSuccs().size() == 0)
        {
            in[block] = gen[block];
            continue;
        }
        workList.push(block);
    }
    while (!workList.empty())
    {
        auto block = workList.front();
        workList.pop();
        std::set<int> Out[2];
        Out[0] = in[block->getSuccs()[0]];
        auto it = block->getSuccs().begin() + 1;
        auto overPos = block->getSuccs().end();
        int turn = 0;
        for (; it != overPos; it++)
        {
            aggregate(in[*it], Out[turn], Out[turn ^ 1]);
            turn ^= 1;
        }
        out[block] = Out[turn];
        std::set<int> In;
        std::set<int> midDif;
        std::set_difference(out[block].begin(), out[block].end(), kill[block].begin(), kill[block].end(), inserter(midDif, midDif.begin()));
        std::set_union(gen[block].begin(), gen[block].end(), midDif.begin(), midDif.end(), inserter(In, In.begin()));
        if (in[block] != In)
        {
            in[block] = In;
            for (auto &pred : block->getPreds())
                workList.push(pred);
        }
    }
}


//两个构造边的函数
void GraphColor::connectEdge(MachineOperand *op, MachineBlock *block,std::map<MachineBlock *, std::set<int>> out)
{
    auto use1 = var2Node[op];
    graph[use1];
    for (auto &use2 : out[block])
    {
        if (nodes[use1].fpu == nodes[use2].fpu)
        {
            graph[use1].insert(use2);
            graph[use2].insert(use1);
        }
    }
}

void GraphColor::connectEdge2(int nodeNo, MachineBlock *block,std::map<MachineBlock *, std::set<int>> out)
{
    auto use1 = nodeNo;
    graph[use1];
    for (auto &use2 : out[block])
    {
        if (nodes[use1].fpu == nodes[use2].fpu)
        {
            graph[use1].insert(use2);
            graph[use2].insert(use1);
        }
    }
}


void GraphColor::genInterfereGraph()
{
    //同样道理
    std::map<MachineBlock *, std::set<int>> gen;
    std::map<MachineBlock *, std::set<int>> kill;
    std::map<MachineBlock *, std::set<int>> in;
    std::map<MachineBlock *, std::set<int>> out;

    calLVGenKill(gen, kill);
    calLVInOut(gen, kill, in, out);

    //根据已经构造好的数据流分析结果来添加边
    for (auto &block : func->getBlocks())
    {
        for (auto instIt = block->rbegin(); instIt != block->rend(); instIt++)
        {
            auto inst = *instIt;
            if (isCall(inst))
            {
                //这里要注意一下，call指令会使用所有的参数寄存器同时返回值也会修改对应的寄存器
                //所有参数之间都要有边
                //先全部预留出来，后面处理完成后会删掉
                for (int i = 0; i < rArgRegNum + sArgRegNum + 2; i++)
                {
                    connectEdge2(i, block,out);
                    out[block].erase(i);
                }
                // 计算一下需要用到哪些寄存器
                //对需要用到的构造边
                auto result = findFuncUseArgs(inst->getUse()[0]);
                auto rnum = std::get<0>(result);
                auto snum = std::get<1>(result);
                for (int i = 0; i < rnum; i++)
                {
                    connectEdge2(i, block,out);
                    out[block].insert(i);
                }
                for (int i = 0; i < snum; i++)
                {
                    connectEdge2(i + rArgRegNum, block,out);
                    out[block].insert(i + rArgRegNum);
                }
                continue;
            }
            //下面是对各个定义点构造边
            if (inst->getDef().size() > 0)
            {
                for (auto def : inst->getDef())
                {
                    if (def->isVReg() || isArgReg(def) != -1)
                    {
                        connectEdge(def, block,out);
                        graph[var2Node[def]];
                    }
                }
                //从集合中删去点
                for (auto def : inst->getDef())
                    out[block].erase(var2Node[def]);
            }
            for (auto &use : inst->getUse())
            {
                if (!use->isVReg() && isArgReg(use) == -1)
                    continue;
                //对每一个使用点，构造边然后加回到点集合中
                connectEdge(use, block,out);
                out[block].insert(var2Node[use]);
            }
        }
    }
    // 处理可能出现的自环回路问题
    for (auto &node : graph)
        node.second.erase(node.first);
    // 执行聚合操作，把可以合并的节点合并一下
    coalescing();
    // 把图里面的r和s的参数寄存器的没有用到的点的多余的边删掉
    for (int i = 0; i < rArgRegNum + sArgRegNum + 2; i++)
        graph.erase(i);
}



void GraphColor::coalescing()
{
    for (auto &block : func->getBlocks())
    {
        for (auto &inst : block->getInsts())
        {
            //这里是对mov指令进行操作，因为如果mov的源和目的是相等的，那么这两个变量本身可以合并，进行复制传播
            //比如y=x，那么就可以将x和y合并
            if (inst->isMov() && inst->getUse()[0]->isVReg() && inst->getDef()[0]->isVReg())
            {
                auto k = inst->getDef()[0]->isFReg() ? allUsableSRegs.size() : allUsableRRegs.size();
                auto x = var2Node[inst->getDef()[0]];
                auto y = var2Node[inst->getUse()[0]];
                if (x == y || graph[x].count(y) > 0)
                    continue;
                bool couldMerge = true;
                //判断是不是能合并
                //https://zhuanlan.zhihu.com/p/402309251
                //采用George's 算法
                //对于每个y的邻居结点T，应该满足T的度数< k,或者T和x冲突
                for (auto t : graph[y])
                {
                    //下面的条件是说T的度数>=k,且不冲突
                    //那么就不满足算法条件，不能合并
                    if (graph[t].size() >= k && graph[x].count(t) <= 0)
                    {
                        couldMerge = false;
                        break;
                    }
                }
                if (couldMerge)
                {
                    //合并
                    auto newNode = mergeTwoNodes(x, y);
                    auto otherNode = (newNode == x) ? y : x;
                    for (auto t : graph[otherNode])
                    {
                        graph[newNode].insert(t);
                        graph[t].erase(otherNode);
                        graph[t].insert(newNode);
                    }
                    graph.erase(otherNode);
                }
            }
        }
    }
}

typedef std::pair<int, int> ele;

struct cmp
{
    bool operator()(const ele &a, const ele &b)
    {
        return a.second > b.second;
    }
};

void GraphColor::genColorSeq()
{
    //这个函数的作用，是尝试对图进行着色
    //可能会成功，也可能需要回溯，也可能失败
    //因此不能对原图操作，我们创建一个临时图
    auto tmpGraph = graph;

    //删除节点
    auto eraseNode = [&](std::map<int, std::unordered_set<int>>::iterator it)
    {
        int nodeNo = (*it).first;
        auto tos = tmpGraph[nodeNo];
        for (auto &to : tos)
        {
            if (to >= rArgRegNum + sArgRegNum + 2)
                tmpGraph[to].erase(nodeNo);
        }
        return tmpGraph.erase(it);
    };

    while (!tmpGraph.empty())
    {
        // 表示是否停住了，也就是表示是否还可能有节点可以染色
        bool blocked = true; 
        auto maxEdgesIt = tmpGraph.begin();
        for (auto it = tmpGraph.begin(); it != tmpGraph.end();)
        {
            int nodeNo = (*it).first;
            int edges = (*it).second.size();
            //获得还可以使用的最大颜色数量，区分浮点和整形
            int maxColors = nodes[nodeNo].fpu ? allUsableSRegs.size() : allUsableRRegs.size();
            if (!nodes[nodeNo].hasSpilled)
            {
                maxEdgesIt = it;
            }
            if (edges < maxColors)
            {
                //这里表示的是说这个节点它延伸出去的边的数量，是少于可以使用的颜色的，那么就满足一条边的两端颜色不同
                //不然的话一定存在一条边的另一端使用了相同的颜色
                blocked = false;
                colorSeq.push(nodeNo);
                it = eraseNode(it);
            }
            else
                it++;
        }
        if (!blocked)
            continue;
        colorSeq.push((*maxEdgesIt).first);
        eraseNode(maxEdgesIt);
    }
}

int GraphColor::findMinValidColor(int nodeNo)
{
    //检测着色的合法性
    std::set<int> usedColor;
    for (auto to : graph[nodeNo])
        if (nodes[to].color != -1)
            usedColor.insert(nodes[to].color);
    auto validColor = (nodes[nodeNo].fpu ? allUsableSRegs.begin() : allUsableRRegs.begin());
    auto maxValidColor = (nodes[nodeNo].fpu ? allUsableSRegs.end() : allUsableRRegs.end());
    for (; validColor != maxValidColor && usedColor.find(*validColor) != usedColor.end(); validColor++);
    if (validColor == maxValidColor)
        return -1;
    return *validColor;
}

bool GraphColor::tryColor()
{
    //着色一遍完成，看看是不是所有节点都成功了
    bool success = true;
    while (!colorSeq.empty())
    {
        int nodeNo = colorSeq.top();
        colorSeq.pop();
        int validColor = findMinValidColor(nodeNo);
        if (validColor != -1)
        {
            nodes[nodeNo].color = validColor;
        }
        else
        {
            success = false;
            nodes[nodeNo].spill = true;
            spillNodes.push_back(nodeNo);
        }
    }
    return success;
}


//尝试分配函数，如果没有溢出，那么返回true，否则false
bool GraphColor::graphColorRegisterAlloc()
{
    //清空参数
    clearData();
    //生成节点
    genNodes();
    //生成无向冲突图
    genInterfereGraph();
    //生成着色节点
    genColorSeq();
    //尝试着色
    return tryColor();
}

//与线性扫描一样的用法
void GraphColor::modifyCode()
{
    for (std::vector<GraphColor::Node>::size_type i = rArgRegNum + sArgRegNum + 2; i < nodes.size(); i++)
    {
        auto &node = nodes[i];
        if (node.color == -1)
            continue;
        if ((node.fpu && node.color >= sArgRegNum && node.color != 12 && node.color != 14) || (!node.fpu && node.color >= rArgRegNum))
            func->addSavedRegs(node.color);
        for (auto def : node.defs)
        {
            def->setReg(node.color);
        }
        for (auto use : node.uses)
        {
            use->setReg(node.color);
        }
    }
}

//入口函数，请求分配寄存器
void GraphColor::allocateRegisters()
{
    spilledRegs.clear();
    for (auto &f : unit->getFuncs())
    {
        func = f;
        bool success = false;
        while (!success)
        {
            success = graphColorRegisterAlloc();
            if (!success)
                genSpillCode();
            else
                modifyCode();
        }
    }
}


//为溢出的处理，添加load和store指令
void GraphColor::genSpillCode()
{
    for (auto nodeNo : spillNodes)
    {
        auto node = nodes[nodeNo];
        if (!node.spill)
            continue;
        // 在栈中分配内存
        node.disp = func->AllocSpace(4) * -1;
        // 在use前插入ldr
        for (auto use : node.uses)
        {
            spilledRegs.insert(use);
            auto cur_bb = use->getParent()->getParent();
            MachineInstruction *cur_inst = nullptr;
            auto newUse = new MachineOperand(*use);
            spilledRegs.insert(newUse);
            if (node.fpu)
            {
                if (node.disp >= -1020)
                {
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::VLDR,
                                                    newUse,
                                                    new MachineOperand(MachineOperand::REG, 11),
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                }
                else
                {
                    auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    internal_reg,
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                    cur_inst = new BinaryMInstruction(cur_bb,
                                                      BinaryMInstruction::ADD,
                                                      new MachineOperand(*internal_reg),
                                                      new MachineOperand(*internal_reg),
                                                      new MachineOperand(MachineOperand::REG, 11));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::VLDR,
                                                    newUse,
                                                    new MachineOperand(*internal_reg));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                }
            }
            else
            {
                if (node.disp >= -4095)
                {
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    newUse,
                                                    new MachineOperand(MachineOperand::REG, 11),
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                }
                else
                {
                    auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    internal_reg,
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    newUse,
                                                    new MachineOperand(MachineOperand::REG, 11),
                                                    new MachineOperand(*internal_reg));
                    cur_bb->insertBefore(cur_inst, use->getParent());
                }
            }
        }

        // 在def后插入str
        for (auto def : node.defs)
        {
            spilledRegs.insert(def);
            auto cur_bb = def->getParent()->getParent();
            MachineInstruction *cur_inst = nullptr;
            auto newDef = new MachineOperand(*def);
            spilledRegs.insert(newDef);
            if (node.fpu)
            {
                if (node.disp >= -1020)
                {
                    cur_inst = new StoreMInstruction(cur_bb,
                                                     StoreMInstruction::VSTR,
                                                     newDef,
                                                     new MachineOperand(MachineOperand::REG, 11),
                                                     new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertAfter(cur_inst, def->getParent());
                }
                else
                {
                    auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    internal_reg,
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertAfter(cur_inst, def->getParent());
                    auto cur_inst1 = new BinaryMInstruction(cur_bb,
                                                            BinaryMInstruction::ADD,
                                                            new MachineOperand(*internal_reg),
                                                            new MachineOperand(*internal_reg),
                                                            new MachineOperand(MachineOperand::REG, 11));
                    cur_bb->insertAfter(cur_inst1, cur_inst);
                    auto cur_inst2 = new StoreMInstruction(cur_bb,
                                                           StoreMInstruction::VSTR,
                                                           newDef,
                                                           new MachineOperand(*internal_reg));

                    cur_bb->insertAfter(cur_inst2, cur_inst1);
                }
            }
            else
            {
                if (node.disp >= -4095)
                {
                    cur_inst = new StoreMInstruction(cur_bb,
                                                     StoreMInstruction::STR,
                                                     newDef,
                                                     new MachineOperand(MachineOperand::REG, 11),
                                                     new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertAfter(cur_inst, def->getParent());
                }
                else
                {
                    auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                    cur_inst = new LoadMInstruction(cur_bb,
                                                    LoadMInstruction::LDR,
                                                    internal_reg,
                                                    new MachineOperand(MachineOperand::IMM, node.disp));
                    cur_bb->insertAfter(cur_inst, def->getParent());
                    auto cur_inst1 = new StoreMInstruction(cur_bb,
                                                           StoreMInstruction::STR,
                                                           newDef,
                                                           new MachineOperand(MachineOperand::REG, 11),
                                                           new MachineOperand(*internal_reg));
                    cur_bb->insertAfter(cur_inst1, cur_inst);
                }
            }
        }
    }
}


//用来判断给出的op是不是函数的参数寄存器
//如果是，返回其寄存器号，不是返回-1
int GraphColor::isArgReg(MachineOperand *op)
{
    int res = -1;
    if (op->isReg())
    {
        if (!op->isFReg() && op->getReg() < rArgRegNum)
            res = op->getReg();
        if (op->isFReg() && op->getReg() < sArgRegNum)
            res = rArgRegNum + op->getReg();
    }
    return res;
}


std::pair<int, int> GraphColor::findFuncUseArgs(MachineOperand *funcOp)
{
    int rnum = 0, snum = 0;
    auto funcName = funcOp->getLabel();
    funcName = funcName.substr(1, funcName.size() - 1);
    //实现的特殊函数，直接从llvm加载的
    if (funcName == "memset")
        return std::make_pair(3, 0);
    //为了支持硬件除法添加的函数
    else if (funcName == "__aeabi_ldivmod")
        return std::make_pair(4, 0);
    //寻找函数
    auto funcSe = globals->lookup(funcName);
    auto funcType = static_cast<FunctionType *>(static_cast<IdentifierSymbolEntry *>(funcSe)->getType());
    auto &paramsType = funcType->getParamsType();
    for (auto &paramType : paramsType)
    {
        if (paramType->isFloat())
            snum++;
        else
            rnum++;
    }
    //这里是要判断一下，因为支持大参数，但是实际上很多参数是溢出到内存的，但是标记时其还是寄存器
    rnum = std::min(rnum, rArgRegNum);
    snum = std::min(snum, sArgRegNum);
    return std::pair<int, int>(rnum, snum);
}

//很简单，看看这个指令是不是函数调用指令
bool GraphColor::isCall(MachineInstruction *inst)
{
    // 如果是bl指令或者尾调用的b指令，返回true
    if (inst->isCall() || (dynamic_cast<BranchMInstruction *>(inst) != nullptr && static_cast<BranchMInstruction *>(inst)->getTailCall()))
        return true;
    return false;
}
