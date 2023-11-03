#ifndef oper
#define oper

#include <bits/stdc++.h>
#include "parameter.h"

using namespace std;

// 初始化参数
void initialise(int nfa_table[][5]);

// 打印NFA的初始状态和接受状态
void print_initial_final();

// 打印DFA的初始状态和接受状态
void print_initial_final_dfa();

// 打印NFA的状态转移矩阵
void print_nfa_table(int nfa_table[][5], int states);

// 打印DFA的状态转移矩阵
void print_dfa_table(string dfa_tab[][3], int state);

// 为新的状态赋予名字(q0、q1等)
string state_name(int i);

// 计算ε闭包
vector<int> eclosure(int nfa_table[][5], int x);

// 检查一个DFA状态是否是初始状态
void check_init(vector<int> v, string s);

// 检查一个DFA状态是否是接受状态
void check_fin(vector<int> v, string s);

// 检查输入的字符串是否是合规的
bool check_valid(string word);

#endif