#include "SymbolTable.h"
#include "Operand.h"
#include "Type.h"
#include <iostream>
#include <utility>
#include <sstream>

SymbolEntry::SymbolEntry(Type *type, int kind)
{
    this->type = type;
    this->kind = kind;
}

bool SymbolEntry::setNext(SymbolEntry *se)
{
    SymbolEntry *s = this;
    while (s->getNext())
    {
        s = s->getNext();
    }
    s->next = se;
    return true;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type *type, double value) : SymbolEntry(type, SymbolEntry::CONSTANT)
{
    this->value = value;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type *type) : SymbolEntry(type, SymbolEntry::CONSTANT)
{
}

std::string ConstantSymbolEntry::toStr()
{
    std::ostringstream buffer;
    if (type->isInt())
    {
        buffer << (int)value;
    }
    else if (type->isBool())
    {
        buffer.setf(std::ios::boolalpha);
        buffer << (bool)value;
    }
    else if (type->isFloat())
    {
        float fvalue = value;
        void *p = &fvalue;
        bool precise = !(*(uint8_t *)p);
        double dvalue = fvalue;
        p = &dvalue;
        if (precise)
        {
            buffer.setf(std::ios::scientific);
            buffer << (float)value;
        }
        else
        {
            buffer.setf(std::ios::uppercase);
            buffer << "0x" << std::hex << (*(uint64_t *)p);
        }
    }
    return buffer.str();
}

IdentifierSymbolEntry::IdentifierSymbolEntry(Type *type, std::string name, int scope, bool sysy, int argNum) : SymbolEntry(type, SymbolEntry::VARIABLE), name(name), sysy(sysy)
{
    this->scope = scope;
    this->arrayValue = nullptr;
    if (scope == PARAM)
    {
        TemporarySymbolEntry *se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
        se->setIsParam(true);
        se->setSelfArgNum(argNum);
        argAddr = new Operand(se);
    }
    addr = nullptr;
    initial = false;
}

void IdentifierSymbolEntry::setValue(double value)
{
    if ((this->getType()->isInt() && ((IntType *)this->getType())->isConst()) || (this->getType()->isFloat() && ((FloatType *)this->getType())->isConst()))
    {
        if (!initial)
        {
            if (this->getType()->isInt())
                this->value = (int)value;
            else
                this->value = value;
            initial = true;
        }
    }
    else
    {
        if (this->getType()->isInt())
            this->value = (int)value;
        else
            this->value = value;
    }
}

std::string IdentifierSymbolEntry::toStr()
{
    return "@" + name;
}

TemporarySymbolEntry::TemporarySymbolEntry(Type *type, int label) : SymbolEntry(type, SymbolEntry::TEMPORARY)
{
    this->label = label;
}

std::string TemporarySymbolEntry::toStr()
{
    std::ostringstream buffer;
    buffer << "%t" << label;
    return buffer.str();
}

SymbolTable::SymbolTable()
{
    prev = nullptr;
    level = 0;
}

SymbolTable::SymbolTable(SymbolTable *prev)
{
    this->prev = prev;
    this->level = prev->level + 1;
}

/*
    Description: lookup the symbol entry of an identifier in the symbol table
    Parameters:
        name: identifier name
    Return: pointer to the symbol entry of the identifier

    hint:
    1. The symbol table is a stack. The top of the stack contains symbol entries in the current scope.
    2. Search the entry in the current symbol table at first.
    3. If it's not in the current table, search it in previous ones(along the 'prev' link).
    4. If you find the entry, return it.
    5. If you can't find it in all symbol tables, return nullptr.
*/
// local变量表示是否只在当前作用域找
SymbolEntry *SymbolTable::lookup(std::string name, bool local)
{
    SymbolTable *table = this;
    while (table != nullptr)
    {
        if (table->symbolTable.find(name) != table->symbolTable.end())
        {
            return table->symbolTable[name];
        }
        table = table->prev;
        if (local)
        {
            if (table == nullptr || table->getLevel() != 1)
                break;
        }
    }
    return nullptr;
}

// install the entry into current symbol table.
    void SymbolTable::install(std::string name, SymbolEntry *entry)
    {
        // 如果是函数，要检查重定义
        if (entry->getType()->isFunc())
        {
            // 首先需要看一下这个函数是不是已经被保存了（其实就是搜名字）
            if (this->symbolTable.find(name) != this->symbolTable.end())
            {
                SymbolEntry *se = this->symbolTable[name];
                bool hasSame = false;
                //下面开始判断这个函数有没有重复定义的情况
                while (se && se->getType()->isFunc())
                {
                    // 这里要判断两个函数的参数是否完全一致
                    auto func1 = dynamic_cast<FunctionType *>(entry->getType());
                    auto func2 = dynamic_cast<FunctionType *>(se->getType());
                    if (func1->getParamsType().size() != func2->getParamsType().size())
                    {
                        se = se->getNext();
                        continue;
                    }
                    //上面是先对比参数的个数，下面是对比每个参数的类型
                    auto it2 = func2->getParamsType().begin();
                    for (auto &i1 : func1->getParamsType())
                    {
                        if (i1->getKind() != (*it2)->getKind())
                        {
                            se = se->getNext();
                            continue;
                        }
                        it2++;
                    }
                    hasSame = true;
                    //这里表示之前已经定义过一个一模一样的函数，那么直接返回，我们不保存
                    return;
                }
                //到这里说明没有找到重复定义的情况，那么这个函数就是一个全新的函数，我们需要保存下来
                se = this->symbolTable[name];
                if (se->getType()->isFunc() && hasSame == false)
                {
                    se->setNext(entry);
                    return;
                }
            }
        }
        symbolTable[name] = entry;
    }
int SymbolTable::counter = 0;
static SymbolTable t;
SymbolTable *identifiers = &t;
SymbolTable *globals = &t;
