#include "sim.h"

#include <bits/stdc++.h>

using namespace std;

void simulator(string dfa_tab[][3], string word, int state)
{
    int len = word.length();
    string temp = init_dfa[0];
    if (!check_valid(word))
        temp = "--";
    int i = 0;
    for (i = 0; i < len; i++)
        if (temp == "--")
        {
            cout << endl
                 << "该字符串不被该自动机接受！" << endl
                 << endl;
            return;
        }
        else
            // 找到当前状态temp的在DFA_TABLE中对应的行的索引j
            for (int j = 0; j < state; j++)
                if (temp == dfa_tab[j][0])
                    if (word[i] == 'a')
                        temp = dfa_tab[j][1];
                    else if (word[i] == 'b')
                        temp = dfa_tab[j][2];
    // 看一下最终的状态是不是接受状态
    for (int j = 0; j < dfa_fin; j++)
    {
        if (temp == fin_dfa[j])
        {
            cout << endl
                 << "该字符串被该自动机接受！" << endl
                 << endl;
            return;
        }
    }
    cout << endl
         << "该字符串不被该自动机接受！" << endl
         << endl;
}