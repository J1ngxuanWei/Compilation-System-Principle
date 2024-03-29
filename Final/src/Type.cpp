#include "Type.h"
#include <assert.h>
#include <string>
#include <sstream>
#include <iostream>

IntType TypeSystem::commonInt = IntType(32);
VoidType TypeSystem::commonVoid = VoidType();
FloatType TypeSystem::commonFloat = FloatType(32);
IntType TypeSystem::commonBool = IntType(1);
IntType TypeSystem::commonConstInt = IntType(32, true);
FloatType TypeSystem::commonConstFloat = FloatType(32, true);
IntType TypeSystem::byteInt = IntType(8);
PointerType TypeSystem::byteIntPtr = PointerType(&byteInt);

Type* TypeSystem::intType = &commonInt;
Type* TypeSystem::voidType = &commonVoid;
Type* TypeSystem::floatType = &commonFloat;
Type* TypeSystem::boolType = &commonBool;
Type *TypeSystem::constIntType = &commonConstInt;
Type *TypeSystem::constFloatType = &commonConstFloat;
Type* TypeSystem::int8Type = &byteInt;
Type* TypeSystem::int8PtrType = &byteIntPtr;

std::string IntType::toStr()
{
    std::ostringstream buffer;
    buffer << "i" << size;
    return buffer.str();
}

std::string VoidType::toStr()
{
    return "void";
}

std::string FunctionType::toStr()
{
    std::ostringstream buffer;
    buffer << returnType->toStr() << "(";
    for (auto it = paramsType.begin(); it != paramsType.end(); it++)
    {
        buffer << (*it)->toStr();
        if (it + 1 != paramsType.end())
            buffer << ", ";
    }
    buffer << ")";
    return buffer.str();
}

std::string PointerType::toStr()
{
    std::ostringstream buffer;
    buffer << valueType->toStr() << "*";
    return buffer.str();
}

std::string ArrayType::toStr()
{
    std::ostringstream buffer;
    for (auto index : indexs)
    {
        buffer << "[" << index << " x ";
    }
    buffer << baseType->toStr();
    for (unsigned long int i = 0; i < indexs.size(); i++)
    {
        buffer << "]";
    }
    return buffer.str();
}

std::string FloatType::toStr()
{
    std::ostringstream buffer;
    buffer << "float";
    return buffer.str();
}
