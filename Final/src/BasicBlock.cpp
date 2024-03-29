#include "BasicBlock.h"
#include "Function.h"
#include <algorithm>

extern FILE *yyout;

void BasicBlock::cleanAllMark()
{
    for (auto it = begin(); it != end(); it = it->getNext())
    {
        it->unsetMark();
    }
}

// insert the instruction to the front of the basicblock.
void BasicBlock::insertFront(Instruction *inst, bool isArray = false)
{
    Instruction *pin = head->getNext();
    if (isArray)
    {
        while (pin && pin->isAlloc())
        {
            pin = pin->getNext();
        }
        pin = pin ? pin : head;
    }
    insertBefore(inst, pin);
}

// insert the instruction to the back of the basicblock.
void BasicBlock::insertBack(Instruction *inst)
{
    insertBefore(inst, head);
}

// insert the instruction dst before src.
void BasicBlock::insertBefore(Instruction *dst, Instruction *src)
{
    // Todo
    dst->setPrev(src->getPrev());
    dst->setNext(src);
    src->getPrev()->setNext(dst);
    src->setPrev(dst);
    dst->setParent(this);
}

// insert the instruction dst after src.
void BasicBlock::insertAfter(Instruction *dst, Instruction *src)
{
    dst->setNext(src->getNext());
    src->getNext()->setPrev(dst);

    dst->setPrev(src);
    src->setNext(dst);

    dst->setParent(this);
}

// remove the instruction from intruction list.
void BasicBlock::remove(Instruction *inst)
{
    inst->getPrev()->setNext(inst->getNext());
    inst->getNext()->setPrev(inst->getPrev());
}


void BasicBlock::addSucc(BasicBlock *bb)
{
    succ.insert(bb);
}

// remove the successor basicclock bb.
void BasicBlock::removeSucc(BasicBlock *bb)
{
    auto it = std::find(succ.begin(), succ.end(), bb);
    if (it == succ.end())
    {
        return;
    }
    succ.erase(it);
}

void BasicBlock::cleanAllSucc()
{
    for (auto i : succ)
        i->removePred(this);
    succ.clear();
}

void BasicBlock::addPred(BasicBlock *bb)
{
    pred.insert(bb);
}

// remove the predecessor basicblock bb.
void BasicBlock::removePred(BasicBlock *bb)
{
    auto it = std::find(pred.begin(), pred.end(), bb);
    if (it == pred.end())
    {
        return;
    }
    pred.erase(it);
}

void BasicBlock::genMachineCode(AsmBuilder *builder)
{
    auto cur_func = builder->getFunction();
    auto cur_block = new MachineBlock(cur_func, no);
    builder->setBlock(cur_block);
    for (auto i = head->getNext(); i != head; i = i->getNext())
    {
        i->genMachineCode(builder);
    }
    cur_func->InsertBlock(cur_block);
}

BasicBlock::BasicBlock(Function *func)
{
    this->no = SymbolTable::getLabel();
    func->insertBlock(this);
    parent = func;
    head = new DummyInstruction();
    head->setParent(this);
}

BasicBlock::~BasicBlock()
{
    Instruction *inst;
    inst = head->getNext();
    while (inst != head)
    {
        Instruction *t;
        t = inst;
        inst = inst->getNext();
        delete t;
    }
    for (auto &bb : pred)
        bb->removeSucc(this);
    for (auto &bb : succ)
        bb->removePred(this);
    parent->remove(this);
}

void BasicBlock::strongRemove(Instruction *inst)
{
    for (auto &use : inst->getUse())
        use->removeUse(inst);
    remove(inst);
}