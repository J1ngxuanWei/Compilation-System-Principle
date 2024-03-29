#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "Operand.h"
#include "AsmBuilder.h"
#include <vector>
#include <unordered_map>
#include <sstream>

class BasicBlock;

class Instruction
{
public:
    Instruction(unsigned instType, BasicBlock *insert_bb = nullptr);
    virtual ~Instruction();
    BasicBlock *getParent();
    bool isAdd() const { return instType == BINARY && opcode == 0; }
    bool isUncond() const { return instType == UNCOND; };
    bool isCond() const { return instType == COND; };
    bool isRet() const { return instType == RET; };
    bool isAlloc() const { return instType == ALLOCA; };
    bool isLoad() const { return instType == LOAD; };
    bool isStore() const { return instType == STORE; };
    bool isPhi() const { return instType == PHI; };
    bool isCall() const { return instType == CALL; };
    bool isGep() const { return instType == GEP; };
    bool isBinaryCal() const { return instType == BINARY || instType == CMP; };
    bool isUnaryCal() const { return instType == ZEXT || instType == XOR || instType == FPTSI || instType == SITFP; };
    bool isFICal() const { return instType == FPTSI || instType == SITFP; };
    bool isBinary() const { return instType == BINARY; };
    bool isBitcast() const { return instType == BITCAST; };
    bool isCmp() const { return instType == CMP; };
    void setParent(BasicBlock *);
    void setNext(Instruction *);
    void setPrev(Instruction *);
    Instruction *getNext();
    Instruction *getPrev();
    MachineOperand *genMOperand(Operand *, AsmBuilder *);
    MachineOperand *genMachineOperand(Operand *ope, AsmBuilder *builder) { return genMOperand(ope, builder); }
    MachineOperand *genMachineReg(int reg, bool fpu);
    MachineOperand *genMachineVReg(bool fpu);
    MachineOperand *genMachineImm(int val);
    MachineOperand *genMachineLabel(int block_no);
    MachineOperand *immToVReg(MachineOperand *, MachineBlock *);
    MachineOperand *fimmToVReg(MachineOperand *, MachineBlock *, AsmBuilder *);
    virtual void genMachineCode(AsmBuilder *) = 0;
    std::vector<Operand *> &getOperands() { return operands; }

    virtual Instruction *copy() { return nullptr; }
    virtual Operand *getDef() { return nullptr; }
    virtual std::vector<Operand *> getUse() { return {}; }
    std::vector<Operand *> replaceAllUsesWith(Operand *); // Mem2Reg
    virtual void replaceUse(Operand *, Operand *) {}
    virtual void replaceDef(Operand *) {}
    virtual void setDef(Operand *) {}
    int getOpCode() const { return opcode; }
    int getType() const { return instType; }
    void unsetMark() { mark = false; };
    void setMark() { mark = true; };
    bool getMark() { return mark; };

protected:
    unsigned instType;
    unsigned opcode;
    Instruction *prev;
    Instruction *next;
    BasicBlock *parent;
    std::vector<Operand *> operands;
    enum
    {
        BINARY,
        COND,
        UNCOND,
        RET,
        CALL,
        LOAD,
        STORE,
        CMP,
        ALLOCA,
        XOR,
        ZEXT,
        BITCAST,
        GEP,
        FPTSI,
        SITFP,
        PHI
    };
    bool mark;
};

// meaningless instruction, used as the head node of the instruction list.
class DummyInstruction : public Instruction
{
public:
    DummyInstruction() : Instruction(-1, nullptr){};
    void genMachineCode(AsmBuilder *){};
};

class AllocaInstruction : public Instruction
{
public:
    AllocaInstruction(Operand *dst, SymbolEntry *se, BasicBlock *insert_bb = nullptr);
    ~AllocaInstruction();
    void genMachineCode(AsmBuilder *);
    SymbolEntry *getEntry()
    {
        return se;
    }
    Operand *getDef() { return operands[0]; }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new AllocaInstruction(*this); }

private:
    SymbolEntry *se;
};

class LoadInstruction : public Instruction
{
public:
    LoadInstruction(Operand *dst, Operand *src_addr, BasicBlock *insert_bb = nullptr);
    ~LoadInstruction();
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    Instruction *copy() { return new LoadInstruction(*this); }
};

class StoreInstruction : public Instruction
{
public:
    StoreInstruction(Operand *dst_addr, Operand *src, BasicBlock *insert_bb = nullptr);
    ~StoreInstruction();
    void genMachineCode(AsmBuilder *);
    std::vector<Operand *> getUse() { return {operands[0], operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[0] == old)
        {
            operands[0]->removeUse(this);
            operands[0] = rep;
            rep->addUse(this);
        }
        else if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    Instruction *copy() { return new StoreInstruction(*this); }
};

class BinaryInstruction : public Instruction
{
public:
    BinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~BinaryInstruction();
    void genMachineCode(AsmBuilder *);
    enum
    {
        ADD = 0,
        SUB,
        MUL,
        DIV,
        AND,
        OR,
        MOD
    };
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1], operands[2]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
        else if (operands[2] == old)
        {
            operands[2]->removeUse(this);
            operands[2] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new BinaryInstruction(*this); }
    bool is64Bit() { return bit64; };
    void set64Bit(bool bit64) { this->bit64 = bit64; };
    bool forbidSremSpl() {return this->forbidSremSplit;};
    void setForbidSremSplit(bool fss) {this->forbidSremSplit = fss;};


private:
    bool forbidSremSplit = false;
    bool bit64 = false;
    bool floatVersion;
};

class CmpInstruction : public Instruction
{
public:
    CmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~CmpInstruction();
    void genMachineCode(AsmBuilder *);
    enum
    {
        E = 0,
        NE,
        GE,
        L,
        LE,
        G
    };
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1], operands[2]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
        else if (operands[2] == old)
        {
            operands[2]->removeUse(this);
            operands[2] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new CmpInstruction(*this); }

private:
    bool floatVersion;
};

// unconditional branch
class UncondBrInstruction : public Instruction
{
public:
    UncondBrInstruction(BasicBlock *, BasicBlock *insert_bb = nullptr);
    void setBranch(BasicBlock *);
    BasicBlock *getBranch();
    void genMachineCode(AsmBuilder *);
    Instruction *copy() { return new UncondBrInstruction(*this); }

protected:
    BasicBlock *branch;
};

// conditional branch
class CondBrInstruction : public Instruction
{
public:
    CondBrInstruction(BasicBlock *, BasicBlock *, Operand *, BasicBlock *insert_bb = nullptr);
    ~CondBrInstruction();
    void setTrueBranch(BasicBlock *);
    BasicBlock *getTrueBranch();
    void setFalseBranch(BasicBlock *);
    BasicBlock *getFalseBranch();
    void genMachineCode(AsmBuilder *);
    std::vector<Operand *> getUse() { return {operands[0]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[0] == old)
        {
            operands[0]->removeUse(this);
            operands[0] = rep;
            rep->addUse(this);
        }
    }
    Instruction *copy() { return new CondBrInstruction(*this); }

protected:
    BasicBlock *true_branch;
    BasicBlock *false_branch;
};

class CallInstruction : public Instruction // 函数调用
{
public:
    CallInstruction(Operand *dst, SymbolEntry *func, std::vector<Operand *> params, BasicBlock *insert_bb = nullptr);
    ~CallInstruction();
    void funcAddPred();
    void genMachineCode(AsmBuilder *);
    SymbolEntry *getFunc() { return func; };
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse()
    {
        return std::vector<Operand *>(operands.begin() + 1, operands.end());
    }
    void replaceDef(Operand *rep)
    {
        if (operands[0])
        {
            operands[0]->setDef(nullptr);
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void setDef(Operand *rep)
    {
        if (operands[0])
        {
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void replaceUse(Operand *old, Operand *rep)
    {
        for (size_t i = 1; i < operands.size(); i++)
        {
            if (operands[i] == old)
            {
                operands[i]->removeUse(this);
                operands[i] = rep;
                rep->addUse(this);
            }
        }
    }
    Instruction *copy() { return new CallInstruction(*this); }
    void setTailCall(bool tailCall) { this->isTailCall = tailCall; }

private:
    SymbolEntry *func;
    bool isTailCall;
};

class RetInstruction : public Instruction
{
public:
    RetInstruction(Operand *src, BasicBlock *insert_bb = nullptr);
    ~RetInstruction();
    void genMachineCode(AsmBuilder *);
    std::vector<Operand *> getUse()
    {
        if (operands.size())
            return {operands[0]};
        else
            return {};
    }
    void replaceDef(Operand *rep)
    {
        if (operands.size())
        {
            operands[0]->setDef(nullptr);
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void setDef(Operand *rep)
    {
        if (operands.size())
        {
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands.size() && operands[0] == old)
        {
            operands[0]->removeUse(this);
            operands[0] = rep;
            rep->addUse(this);
        }
    }
    Instruction *copy() { return new RetInstruction(*this); }
};

class XorInstruction : public Instruction // not指令
{
public:
    XorInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr);
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new XorInstruction(*this); }
};

class ZextInstruction : public Instruction // bool转为int
{
public:
    ZextInstruction(Operand *dst, Operand *src, bool b2i = false, BasicBlock *insert_bb = nullptr);
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new ZextInstruction(*this); }

private:
    bool b2i;
};

class BitcastInstruction : public Instruction
{
    Operand *dst;
    Operand *src;

public:
    BitcastInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr);
    ~BitcastInstruction();
    Operand *getSrc() { return src; }
    void genMachineCode(AsmBuilder *);
    Operand *getDef() { return operands[0]; }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
            src = rep;
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
        dst = rep;
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
        dst = rep;
    }
    Instruction *copy() { return new BitcastInstruction(*this); }
};

class GepInstruction : public Instruction
{
public:
    GepInstruction(Operand *dst, Operand *base, std::vector<Operand *> offs, BasicBlock *insert_bb = nullptr, bool type2 = false);
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse()
    {
        return std::vector<Operand *>(operands.begin() + 1, operands.end());
    }
    void replaceDef(Operand *rep)
    {
        if (operands[0])
        {
            operands[0]->setDef(nullptr);
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void setDef(Operand *rep)
    {
        if (operands[0])
        {
            operands[0] = rep;
            operands[0]->setDef(this);
        }
    }
    void replaceUse(Operand *old, Operand *rep)
    {
        for (size_t i = 1; i < operands.size(); i++)
        {
            if (operands[i] == old)
            {
                operands[i]->removeUse(this);
                operands[i] = rep;
                rep->addUse(this);
            }
        }
    }
    Instruction *copy() { return new GepInstruction(*this); }

private:
    bool type2 = false;
};

class F2IInstruction : public Instruction
{
public:
    F2IInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr);
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new F2IInstruction(*this); }
};

class I2FInstruction : public Instruction
{
public:
    I2FInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr);
    void genMachineCode(AsmBuilder *);
    Operand *getDef()
    {
        return operands[0];
    }
    std::vector<Operand *> getUse() { return {operands[1]}; }
    void replaceUse(Operand *old, Operand *rep)
    {
        if (operands[1] == old)
        {
            operands[1]->removeUse(this);
            operands[1] = rep;
            rep->addUse(this);
        }
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new I2FInstruction(*this); }
};

class PhiInstruction : public Instruction
{
private:
    std::unordered_map<BasicBlock *, Operand *> srcs;
    Operand *addr; // old PTR

public:
    PhiInstruction(Operand *dst, BasicBlock *insert_bb = nullptr);
    ~PhiInstruction();
    void addEdge(BasicBlock *block, Operand *src);
    Operand *getAddr() { return addr; }
    Operand *getEdge(BasicBlock *block) { return (srcs.find(block) != srcs.end()) ? srcs[block] : nullptr; }
    std::unordered_map<BasicBlock *, Operand *> &getSrcs() { return srcs; }
    bool findSrc(BasicBlock *block);
    Operand *getBlockSrc(BasicBlock *block);
    void removeBlockSrc(BasicBlock *block);
    void addSrc(BasicBlock *block, Operand *src);
    void removeUse(Operand *use);

    void genMachineCode(AsmBuilder *)
    {
    }
    Operand *getDef() { return operands[0]; }
    std::vector<Operand *> getUse()
    {
        std::vector<Operand *> vec;
        for (auto &ope : operands)
            if (ope != operands[0])
                vec.push_back(ope);
        return vec;
    }
    void replaceUse(Operand *old, Operand *rep)
    {
        for (auto &it : srcs)
        {
            if (it.second == old)
            {
                it.second->removeUse(this);
                it.second = rep;
                rep->addUse(this);
            }
        }
        for (auto it = operands.begin() + 1; it != operands.end(); it++)
            if (*it == old)
                *it = rep;
    }
    void replaceDef(Operand *rep)
    {
        operands[0]->setDef(nullptr);
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    void setDef(Operand *rep)
    {
        operands[0] = rep;
        operands[0]->setDef(this);
    }
    Instruction *copy() { return new PhiInstruction(*this); }
};

#endif
