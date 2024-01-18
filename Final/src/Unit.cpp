#include "Unit.h"
#include "Type.h"
#include "AsmBuilder.h"
#include "MachineCode.h"
#include <sstream>
extern FILE *yyout;

void Unit::insertFunc(Function *f)
{
    func_list.push_back(f);
    if (f->getSymPtr()->toStr() == "@main")
    {
        main = f;
    }
}

void Unit::removeFunc(Function *func)
{
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

Function *Unit::se2Func(SymbolEntry *se)
{
    if (se2func.find(se) != se2func.end())
        goto END;
    for (auto func : func_list)
    {
        if (func->getSymPtr() == se)
        {
            se2func[se] = func;
            break;
        }
    }
END:
    return se2func[se];
}

union Converter22 {
    float floatValue;
    uint64_t uintValue;
};

void Unit::genMachineCode(MachineUnit *munit)
{
    AsmBuilder *builder = new AsmBuilder();
    builder->setUnit(munit);
    munit->setGlobalVars(this->global_vars);
    for (auto &func : func_list)
        func->genMachineCode(builder);
}

Unit::~Unit()
{
    for (auto &func : func_list)
        delete func;
}