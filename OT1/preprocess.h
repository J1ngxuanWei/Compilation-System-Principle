#ifndef pro
#define pro

#include <bits/stdc++.h>
#include "parameter.h"
#include "operate.h"

using namespace std;

//预处理，将隐式的连接符号添加上，并添加括号
string preprocessor(string s);
//中缀表达式转后缀表达式，用于递归生成NFA
string postfix(string s);

#endif