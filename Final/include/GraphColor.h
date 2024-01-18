#ifndef __GRAPH_COLOR_H_
#define __GRAPH_COLOR_H_
#include "MachineCode.h"
#include <set>
#include <map>
#include <vector>
#include <stack>
#include <unordered_set>

class GraphColor
{
private:
    struct Node
    {
        int color;
        bool spill;
        bool hasSpilled;
        int disp;        // displacement in stack
        std::set<MachineOperand *> defs;
        std::set<MachineOperand *> uses;
        bool fpu; // 是不是浮点寄存器，可以把浮点数的图和普通寄存器的图分开
        Node()
        {
            color = -1;
            spill = false;
            hasSpilled = false;
            fpu = false;
            disp = 0;
            defs.clear();
            uses.clear();
        }
        Node(bool freg, MachineOperand *def)
        {
            color = -1;
            spill = false;
            hasSpilled = false;
            fpu = false;
            disp = 0;
            defs.clear();
            uses.clear();
            fpu = freg;
            defs.insert(def);
        }
    };
    MachineUnit *unit;
    MachineFunction *func;
    std::vector<Node> nodes;                      // 存总的节点集合
    std::map<int, std::unordered_set<int>> graph; // 存图
    std::map<MachineOperand *, int> var2Node;     // 将虚拟寄存器映射到节点
    std::vector<int> spillNodes;                  // 
    std::stack<int> colorSeq;
    std::set<MachineOperand *> spilledRegs; // 寄存器溢出
    //11个R寄存器（其实为16个，但是能够被我们拿来分配的只有前11个）
    //R0-R3 用作传入函数参数，传出函数返回值。
    //R4-R11 被用来存放函数的局部变量。如果被调用函数使用了这些寄存器，它在返回之前必须恢复这些寄存器的值。
    const int rArgRegNum = 4;
    const int rRegNum = 11;
    //32个S寄存器（浮点单精度）
    //S0-S15 用作传入函数参数，传出函数返回值。
    //S16-S31 被用来存放函数的局部变量。如果被调用函数使用了这些寄存器，它在返回之前必须恢复这些寄存器的值。
    const int sArgRegNum = 16;
    const int sRegNum = 32;
    const int rbase = 0;
    const int sbase = 0;
    std::set<int> allUsableRRegs;
    std::set<int> allUsableSRegs;
    void connectEdge(MachineOperand *op, MachineBlock *block,std::map<MachineBlock *, std::set<int>> out);
    void connectEdge2(int nodeNo, MachineBlock *block,std::map<MachineBlock *, std::set<int>> out);
    bool isCall(MachineInstruction *);
    void clearData();
    void aggregate(std::set<MachineOperand *> &, std::set<MachineOperand *> &, std::set<MachineOperand *> &);
    void aggregate(std::set<int> &, std::set<int> &, std::set<int> &);
    int isArgReg(MachineOperand *op);
    void calDRGenKill(std::map<MachineBlock *, std::set<MachineOperand *>> &, std::map<MachineBlock *, std::set<MachineOperand *>> &);
    void calDRInOut(std::map<MachineBlock *, std::set<MachineOperand *>> &, std::map<MachineBlock *, std::set<MachineOperand *>> &, std::map<MachineBlock *, std::set<MachineOperand *>> &, std::map<MachineBlock *, std::set<MachineOperand *>> &);
    int mergeTwoNodes(int, int);
    void genNodes();
    std::pair<int, int> findFuncUseArgs(MachineOperand *);
    void calLVGenKill(std::map<MachineBlock *, std::set<int>> &, std::map<MachineBlock *, std::set<int>> &);
    void calLVInOut(std::map<MachineBlock *, std::set<int>> &, std::map<MachineBlock *, std::set<int>> &, std::map<MachineBlock *, std::set<int>> &, std::map<MachineBlock *, std::set<int>> &);
    void genInterfereGraph();
    void coalescing();
    void genColorSeq();
    int findMinValidColor(int);
    bool tryColor();
    bool graphColorRegisterAlloc();
    void genSpillCode();
    void modifyCode();

public:
    GraphColor(MachineUnit *munit) : unit(munit)
    {
        for (int i = 0; i < 11; i++)
            allUsableRRegs.insert(i);
        allUsableRRegs.insert(12);
        allUsableRRegs.insert(14);
        for (int i = 0; i < 32; i++)
            allUsableSRegs.insert(i);
    };
    ~GraphColor()
    {
    }
    void allocateRegisters();
};

#endif