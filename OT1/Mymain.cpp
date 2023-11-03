#include "sim.h"
#include "reg2nfa.h"
#include "nfa2dfa.h"
#include "parameter.h"

#include <bits/stdc++.h>

using namespace std;

int main()
{
    initialise(nfa_table);
    int states = 0;
    cout << "请输入一个正则表示，务必要符合规定，例如((a|e)b*)*：" << endl;
    string s;
    cin >> s;

    s = preprocessor(s);
    cout << "正则表达式转换为标准形式为：" << s;
    cout << endl;

    s = postfix(s);
    cout << "后缀形式的正则表达式为：" << s << endl;

    states = reg_nfa(s, nfa_table);
    cout << states << endl;
    print_nfa_table(nfa_table, states);

    string dfa_tab[states][3];
    int dfa_state = 0;
    dfa_state = nfa_dfa(nfa_table, states, dfa_tab);

    while (true)
    {
        string word;
        cout << "请输入一个字符串，来判断这个字符串是否被自动机所接受，或者你可以输入字母q来退出" << endl;
        cout << "请输入：" << endl;
        cin >> word;
        if (word[0] == 'q')
            break;
        simulator(dfa_tab, word, dfa_state);
    }
    return 0;
}