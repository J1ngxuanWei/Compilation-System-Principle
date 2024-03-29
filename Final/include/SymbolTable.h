#ifndef __SYMBOLTABLE_H__
#define __SYMBOLTABLE_H__

#include "Type.h"
#include <string>
#include <utility>
#include <map>

class Type;
class Operand;
class Function;

class SymbolEntry
{
private:
    int kind;
    SymbolEntry *next;

protected:
    enum
    {
        CONSTANT,
        VARIABLE,
        TEMPORARY
    };
    Type *type;

public:
    SymbolEntry(Type *type, int kind);
    virtual ~SymbolEntry(){};
    bool isConstant() const { return kind == CONSTANT; };
    bool isTemporary() const { return kind == TEMPORARY; };
    bool isVariable() const { return kind == VARIABLE; };
    Type *getType() { return type; };
    void setType(Type *type) { this->type = type; };
    virtual std::string toStr() = 0;
    SymbolEntry *getNext() const { return next; };
    bool setNext(SymbolEntry *se);
    // You can add any function you need here.
};

// symbol table managing identifier symbol entries
class SymbolTable
{
private:
    std::map<std::string, SymbolEntry *> symbolTable;
    SymbolTable *prev;
    int level;
    static int counter;

public:
    SymbolTable();
    SymbolTable(SymbolTable *prev);
    void install(std::string name, SymbolEntry *entry);
    SymbolEntry *lookup(std::string name, bool local = false);
    SymbolTable *getPrev() { return prev; };
    int getLevel() { return level; };
    static int getLabel() { return counter++; };
};

/*
    Symbol entry for literal constant. Example:

    int a = 1; 

    Compiler should create constant symbol entry for literal constant '1'.
*/
class ConstantSymbolEntry : public SymbolEntry
{
private:
    double value;

public:
    ConstantSymbolEntry(Type *type, double value);
    ConstantSymbolEntry(Type *type);
    virtual ~ConstantSymbolEntry(){};
    double getValue() const { return value; };
    void setValue(double value) { this->value = value; };
    std::string toStr();
    // You can add any function you need here.
};

/*
    Symbol entry for identifier. Example:

    int a;
    int b;
    void f(int c)
    {
        int d;
        {
            int e;
        }
    }

    Compiler should create identifier symbol entries for variables a, b, c, d and e:

    | variable | scope    |
    | a        | GLOBAL   |
    | b        | GLOBAL   |
    | c        | PARAM    |
    | d        | LOCAL    |
    | e        | LOCAL +1 |
*/
class IdentifierSymbolEntry : public SymbolEntry
{
private:
    enum
    {
        GLOBAL,
        PARAM,
        LOCAL
    };
    std::string name;
    int scope;
    double value;
    int label;
    bool initial;
    bool sysy;
    double *arrayValue;
    Function *func = nullptr;
    bool constant = false;

    Operand *addr; // The address of the identifier.
    Operand *argAddr;
    // You can add any field you need here.

public:
    IdentifierSymbolEntry(Type *type, std::string name, int scope, bool sysy = false, int argNum = 0);
    virtual ~IdentifierSymbolEntry(){};
    std::string toStr();
    std::string getName() { return name; };
    bool isGlobal() const { return scope == GLOBAL; };
    bool isParam() const { return scope == PARAM; };
    bool isLocal() const { return scope >= LOCAL; };
    bool isSysy() const { return sysy; }
    std::string getName() const { return name; }
    int getScope() const { return scope; };
    void setAddr(Operand *addr) { this->addr = addr; };
    Operand *getAddr() { return addr; };
    Operand *getArgAddr() { return argAddr; }
    void setValue(double value);
    double getValue() const { return value; };
    int getLabel() const { return label; };
    void setLabel() { label = SymbolTable::getLabel(); };
    void setArrayValue(double *arrayValue) { this->arrayValue = arrayValue; };
    double *getArrayValue() { return this->arrayValue; };
    bool isInitial() { return (initial || arrayValue != nullptr); };
    bool isAllZero()
    {
        if (!isInitial() || !type->isArray())
            return false;
        int size = static_cast<ArrayType*>(type)->getSize() / TypeSystem::intType->getSize();
        for (int i = 0; i < size; i++)
            if (arrayValue[i] != 0)
                return false;
        return true;
    };
    Function *getFunction() { return func; };
    void setFunction(Function *func) { this->func = func; }
    void setConstant() { constant = true; };
    bool getConstant() const { return constant; };

    // You can add any function you need here.
};

/*
    Symbol entry for temporary variable created by compiler. Example:

    int a;
    a = 1 + 2 + 3;

    The compiler would generate intermediate code like:

    t1 = 1 + 2
    t2 = t1 + 3
    a = t2

    So compiler should create temporary symbol entries for t1 and t2:

    | temporary variable | label |
    | t1                 | 1     |
    | t2                 | 2     |
*/
class TemporarySymbolEntry : public SymbolEntry
{
private:
    int stack_offset = 0;
    int label;
    int selfArgNum;
    bool isPara = false;

public:
    TemporarySymbolEntry(Type *type, int label);
    virtual ~TemporarySymbolEntry(){};
    std::string toStr();
    int getLabel() const { return label; };
    void setOffset(int offset) { this->stack_offset = offset; };
    void setIsParam(bool pa) { this->isPara = pa; };
    bool isParam() { return this->isPara; };
    void setSelfArgNum(int selfArgNum) { this->selfArgNum = selfArgNum; };
    int getArgNum() { return this->selfArgNum; };
    int getOffset() { return this->stack_offset; };
    // You can add any function you need here.
};

extern SymbolTable *identifiers;
extern SymbolTable *globals;

#endif
