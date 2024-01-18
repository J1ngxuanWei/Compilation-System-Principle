#ifndef __FUNCTION_H__
#define __FUNCTION_H__

#include <vector>
#include <map>
#include <set>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>
#include <iostream>
#include "BasicBlock.h"
#include "SymbolTable.h"
#include "AsmBuilder.h"

class Unit;

class Function
{
    typedef std::vector<BasicBlock *>::iterator iterator;
    typedef std::vector<BasicBlock *>::reverse_iterator reverse_iterator;

private:
    std::vector<BasicBlock *> block_list;
    SymbolEntry *sym_ptr;
    BasicBlock *entry;
    Unit *parent;
    std::vector<Operand *> params;        // 存函数的参数
    std::vector<Instruction *> callPreds; // 调用了当前函数的那些call指令
    bool recur;                           // 表征是否有递归调用

public:
    Function(Unit *, SymbolEntry *);
    ~Function();
    void insertBlock(BasicBlock *bb) { block_list.push_back(bb); };
    BasicBlock *getEntry() { return entry; };
    void setEntry(BasicBlock *bb) { entry = bb; }
    void remove(BasicBlock *bb);
    void strongRemove(BasicBlock *bb);
    std::vector<BasicBlock *> &getBlockList() { return block_list; };
    iterator begin() { return block_list.begin(); };
    iterator end() { return block_list.end(); };
    reverse_iterator rbegin() { return block_list.rbegin(); };
    reverse_iterator rend() { return block_list.rend(); };
    SymbolEntry *getSymPtr() { return sym_ptr; };
    void addParam(Operand *param) { params.push_back(param); }
    std::vector<Operand *> &getParams() { return params; }
    void genMachineCode(AsmBuilder *);
    int getParamNumber(Operand *param);
    void addCallPred(Instruction *in);
    void removeCallPred(Instruction *in);
    std::vector<Instruction *> &getCallPred() { return callPreds; };
    Unit *getParent() { return parent; };

};

#endif
