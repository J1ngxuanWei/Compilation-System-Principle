#ifndef sim
#define sim

#include <bits/stdc++.h>
#include "parameter.h"
#include "operate.h"
#include "preprocess.h"

using namespace std;

// 用于判断输入的字符串是否被自动机所接受
void simulator(string dfa_tab[][3], string word, int state);

#endif