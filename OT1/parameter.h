#ifndef par
#define par

#include <bits/stdc++.h>
using namespace std;

// NFA的初始状态集合
extern int initial[20];

// NFA的接受状态集合
extern int final[20];

// DFA的初始状态集合
extern string init_dfa[30];

// DFA的接受状态集合
extern string fin_dfa[30];

// NFA的状态矩阵
extern int nfa_table[1000][5];

// NFA的初始状态集合的当前索引
extern int nfa_init;

// NFA的接受状态集合的当前索引
extern int nfa_fin;

// DFA的初始状态集合的当前索引
extern int dfa_init;

// DFA的接受状态集合的当前索引
extern int dfa_fin;

#endif
