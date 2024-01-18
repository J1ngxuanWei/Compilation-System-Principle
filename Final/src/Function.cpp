#include "Function.h"
#include "Unit.h"
#include "Type.h"
#include <list>

using namespace std;
extern FILE *yyout;

Function::Function(Unit *u, SymbolEntry *s)
{
    entry = new BasicBlock(this);
    ((IdentifierSymbolEntry *)s)->setFunction(this);
    sym_ptr = s;
    parent = u;
    u->insertFunc(this);
}

Function::~Function()
{
}

// remove the basicblock bb from its block_list.
void Function::remove(BasicBlock *bb)
{
    block_list.erase(std::find(block_list.begin(), block_list.end(), bb));
}

void Function::strongRemove(BasicBlock *bb)
{
    for (auto inst = bb->begin(); inst != bb->end(); inst = inst->getNext())
        bb->strongRemove(inst);
    remove(bb);
}


void Function::genMachineCode(AsmBuilder *builder)
{
    auto cur_unit = builder->getUnit();
    auto cur_func = new MachineFunction(cur_unit, this->sym_ptr);
    builder->setFunction(cur_func);
    std::map<BasicBlock *, MachineBlock *> map;
    auto cur_entry = this->getEntry();
    for (auto block : block_list)
    {
        block->genMachineCode(builder);
        map[block] = builder->getBlock();
        if (block == cur_entry)
            cur_func->setEntry(map[block]);
    }
    // Add pred and succ for every block
    for (auto block : block_list)
    {
        auto mblock = map[block];
        for (auto pred = block->pred_begin(); pred != block->pred_end(); pred++)
            mblock->addPred(map[*pred]);
        for (auto succ = block->succ_begin(); succ != block->succ_end(); succ++)
            mblock->addSucc(map[*succ]);
    }
    cur_unit->InsertFunc(cur_func);
}

int Function::getParamNumber(Operand *param)
{
    int i = 0;
    for (auto pa : params)
    {
        if (pa == param)
        {
            return i;
        }
        i++;
    }
    return -1;
}

void Function::addCallPred(Instruction *in)
{
    assert(in->isCall());
    auto func = in->getParent()->getParent();
    // 递归调用
    if (func == this)
        recur = true;
    this->callPreds.push_back(in);
}

void Function::removeCallPred(Instruction *in)
{
    assert(in->isCall());
    auto it = find(callPreds.begin(), callPreds.end(), in);
    assert(it != callPreds.end());
    callPreds.erase(it);
}