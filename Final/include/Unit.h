#ifndef __UNIT_H__
#define __UNIT_H__

#include <vector>
#include <map>
#include <unordered_set>
#include <assert.h>
#include "Function.h"
#include "Type.h"
#include "AsmBuilder.h"

class Unit
{
    typedef std::vector<Function *>::iterator iterator;
    typedef std::vector<Function *>::reverse_iterator reverse_iterator;

private:
    std::vector<Function *> func_list;
    // 全局变量
    std::vector<SymbolEntry *> global_vars;
    // 运行时函数
    std::unordered_set<SymbolEntry *> declare_list;
    // 这个用来记录每个函数符号表项对应的函数，用于方便的根据se找到对应的函数
    std::map<SymbolEntry *, Function *> se2func;
    Function* main;

public:
    Unit() = default;
    ~Unit();
    void insertFunc(Function *);
    void removeFunc(Function *);
    iterator begin() { return func_list.begin(); };
    iterator end() { return func_list.end(); };
    reverse_iterator rbegin() { return func_list.rbegin(); };
    reverse_iterator rend() { return func_list.rend(); };
    void addGlobalVar(SymbolEntry *se) { global_vars.push_back(se); };
    void insertDeclare(SymbolEntry *se) { declare_list.insert(se); };
    Function *se2Func(SymbolEntry *se);
    void genMachineCode(MachineUnit *munit);
    Function* getMain() { return main; };
};

#endif
