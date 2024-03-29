#ifndef __AST_H__
#define __AST_H__

#include <fstream>
#include <iostream>
#include <stack>
#include "Operand.h"
#include "Type.h"


class SymbolEntry;
class Unit;
class Function;
class BasicBlock;
class Instruction;
class IRBuilder;

class Node
{
private:
    static int counter;
    int seq;
    Node *next;

protected:
    std::vector<Instruction *> true_list;
    std::vector<Instruction *> false_list;
    static IRBuilder *builder;
    void backPatch(std::vector<Instruction *> &list, BasicBlock *bb);
    std::vector<Instruction *> merge(std::vector<Instruction *> &list1, std::vector<Instruction *> &list2);

public:
    Node();
    int getSeq() const { return seq; };
    static void setIRBuilder(IRBuilder *ib) { builder = ib; };
    virtual void genCode() = 0;
    void clearLists()
    {
        true_list.clear();
        false_list.clear();
    };
    std::vector<Instruction *> &trueList() { return true_list; }
    std::vector<Instruction *> &falseList() { return false_list; }
    void setNext(Node *node);
    Node *getNext() { return next; }
};

class ExprNode : public Node
{
protected:
    SymbolEntry *symbolEntry;
    bool isCond;
    Operand *dst;    // The result of the subtree is stored into dst.
    Type *type;

public:
    ExprNode(SymbolEntry *symbolEntry) : symbolEntry(symbolEntry), isCond(false){};
    Operand *getOperand() { return dst; };
    SymbolEntry *getSymPtr() { return symbolEntry; };
    bool isConde() const { return isCond; };
    void setIsCond(bool isCond) { this->isCond = isCond; };
    void genCode(){};
    virtual double getValue() { return -1; };
    virtual Type *getType() { return type; };
};

class BinaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1, *expr2;

public:
    enum
    {
        ADD,
        SUB,
        MUL,
        DIV,
        MOD,
        AND,
        OR,
        LESS,
        LESSEQUAL,
        GREATER,
        GREATEREQUAL,
        EQUAL,
        NOTEQUAL
    };
    BinaryExpr(SymbolEntry *se, int op, ExprNode *expr1, ExprNode *expr2);
    double getValue();
    void genCode();
};

class UnaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr;

public:
    enum
    {
        NOT,
        SUB
    };
    UnaryExpr(SymbolEntry *se, int op, ExprNode *expr);
    double getValue();
    void genCode();
};

class CallExpr : public ExprNode
{
private:
    std::vector<ExprNode *> params; // 实参
    ExprNode *param;

public:
    CallExpr(SymbolEntry *se, ExprNode *param = nullptr);
    void genCode();
};

class Constant : public ExprNode
{
public:
    Constant(SymbolEntry *se) : ExprNode(se)
    {
        dst = new Operand(se);
        type = se->getType();
    };
    void genCode();
    double getValue();
};

class Id : public ExprNode
{
private:
    ExprNode *index;
    bool isPointer = false;

public:
    Id(SymbolEntry *se, ExprNode *index = nullptr) : ExprNode(se), index(index)
    {
        this->type = se->getType();
        if (se->getType()->isArray())
        {
            std::vector<int> indexs = ((ArrayType *)se->getType())->getIndexs();
            SymbolEntry *temp = nullptr;
            ExprNode *expr = index;
            while (expr)
            {
                expr = (ExprNode *)expr->getNext();
                indexs.erase(indexs.begin());
            }
            if (indexs.size() <= 0)
            { // 如果索引和数组定义时候的维度一致，是引用某个数组元素
                if (((ArrayType *)se->getType())->getBaseType()->isInt())
                    this->type = TypeSystem::intType;
                else if (((ArrayType *)se->getType())->getBaseType()->isFloat())
                    this->type = TypeSystem::floatType;
                temp = new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
            }
            else
            { // 索引个数小于数组定义时候的维度，应该作为函数参数传递，传递的是一个指针
                isPointer = true;
                indexs.erase(indexs.begin());
                if (((ArrayType *)se->getType())->getBaseType()->isInt())
                    this->type = new PointerType(new ArrayType(indexs, TypeSystem::intType));
                else if (((ArrayType *)se->getType())->getBaseType()->isFloat())
                    this->type = new PointerType(new ArrayType(indexs, TypeSystem::floatType));
                temp = new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
            }
            dst = new Operand(temp);
        }
        else if (se->getType()->isPtr())
        {
            ArrayType *arrType = (ArrayType *)((PointerType *)se->getType())->getType();
            SymbolEntry *temp = nullptr;
            if (index == nullptr)
            {
                this->type = se->getType();
                temp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel());
            }
            else
            {
                std::vector<int> indexs = arrType->getIndexs();
                indexs.push_back(0);
                ExprNode *expr = index;
                while (expr)
                {
                    expr = (ExprNode *)expr->getNext();
                    indexs.erase(indexs.begin());
                }
                if (indexs.size())
                {
                    isPointer = true;
                    indexs.erase(indexs.end() - 1);
                    if (arrType->getBaseType()->isInt())
                        this->type = new PointerType(new ArrayType(indexs, TypeSystem::intType));
                    else if (arrType->getBaseType()->isFloat())
                        this->type = new PointerType(new ArrayType(indexs, TypeSystem::floatType));
                    temp = new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
                }
                else
                {
                    if (arrType->getBaseType()->isInt())
                        this->type = TypeSystem::intType;
                    else if (arrType->getBaseType()->isFloat())
                        this->type = TypeSystem::floatType;
                    temp = new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
                }
            }
            dst = new Operand(temp);
        }
        else
        {
            this->type = se->getType();
            SymbolEntry *temp = new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
            dst = new Operand(temp);
        }
    };
    void genCode();
    ExprNode *getIndex() { return index; };
    double getValue();
};

class ImplictCastExpr : public ExprNode
{
private:
    ExprNode *expr;
    int op; // 节点类型

public:
    enum
    {
        BTI, // bool转int
        ITB, // int转bool
        FTI, // float转int
        ITF, // int转float
        BTF, // bool转float
        FTB  // float转bool
    };
    // bool b2i = false
    ImplictCastExpr(ExprNode *expr, int op) : ExprNode(nullptr), expr(expr), op(op)
    {
        switch (op)
        {
        case ITB:
        case FTB:
            type = TypeSystem::boolType;
            break;
        case BTI:
        case FTI:
            type = TypeSystem::intType;
            break;
        case BTF:
        case ITF:
            type = TypeSystem::floatType;
            break;
        default:
            type = TypeSystem::intType;
            break;
        }
        dst = new Operand(new TemporarySymbolEntry(type, SymbolTable::getLabel()));
        if (expr->isConde())
        {
            expr->setIsCond(false);
            this->isCond = true;
        }
    };
    double getValue();
    void genCode();
};

class StmtNode : public Node
{
private:
    int kind;

protected:
    enum
    {
        IF,
        IFELSE,
        WHILE,
        COMPOUND,
        RETURN
    };

public:
    StmtNode(int kind = -1) : kind(kind){};
    bool isIf() const { return kind == IF; };
    void genCode(){};
};

class CompoundStmt : public StmtNode
{
private:
    StmtNode *stmt;

public:
    CompoundStmt(StmtNode *stmt = nullptr) : stmt(stmt){};
    void genCode();
};

class SeqNode : public StmtNode
{
private:
    StmtNode *stmt1, *stmt2;

public:
    SeqNode(StmtNode *stmt1, StmtNode *stmt2) : stmt1(stmt1), stmt2(stmt2){};
    void genCode();
};

class DeclStmt : public StmtNode
{
private:
    Id *id;
    ExprNode *expr;
    ExprNode **exprArray;

public:
    DeclStmt(Id *id, ExprNode *expr = nullptr);
    void genCode();
    void setInitArray(ExprNode **exprArray);
    Id *getId() { return id; };
};

class BlankStmt : public StmtNode
{
public:
    BlankStmt(){};
    void genCode();
};

class IfStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;

public:
    IfStmt(ExprNode *cond, StmtNode *thenStmt);
    void genCode();
};

class IfElseStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
    StmtNode *elseStmt;

public:
    IfElseStmt(ExprNode *cond, StmtNode *thenStmt, StmtNode *elseStmt);
    void genCode();
};

class WhileStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *stmt;
    BasicBlock *exit_cond_bb;
    BasicBlock *end_bb;

public:
    WhileStmt(ExprNode *cond, StmtNode *stmt = nullptr);
    void setStmt(StmtNode *stmt) { this->stmt = stmt; };
    void genCode();
    BasicBlock *get_exit_cond_bb() { return this->exit_cond_bb; };
    BasicBlock *get_end_bb() { return this->end_bb; };
};

class BreakStmt : public StmtNode
{
private:
    StmtNode *whileStmt;

public:
    BreakStmt(StmtNode *whileStmt);
    void genCode();
};

class ContinueStmt : public StmtNode
{
private:
    StmtNode *whileStmt;

public:
    ContinueStmt(StmtNode *whileStmt);
    void genCode();
};

class ReturnStmt : public StmtNode
{
private:
    ExprNode *retValue;

public:
    ReturnStmt(ExprNode *retValue = nullptr, Type *funcRetType = nullptr);
    void genCode();
};

class AssignStmt : public StmtNode
{
private:
    ExprNode *lval;
    ExprNode *expr;

public:
    AssignStmt(ExprNode *lval, ExprNode *expr);
    void genCode();
};

class ExprStmt : public StmtNode
{
private:
    ExprNode *expr;

public:
    ExprStmt(ExprNode *expr) : expr(expr){};
    void genCode();
};

class FunctionDef : public StmtNode
{
private:
    SymbolEntry *se;
    DeclStmt *decl;
    StmtNode *stmt;

public:
    FunctionDef(SymbolEntry *se, DeclStmt *decl, StmtNode *stmt) : se(se), decl(decl), stmt(stmt){};
    void genCode();
    SymbolEntry *getSymbolEntry() { return se; };
};

class Ast
{
private:
    Node *root;

public:
    Ast() { root = nullptr; }
    void setRoot(Node *n) { root = n; }
    void genCode(Unit *unit);
};

#endif
