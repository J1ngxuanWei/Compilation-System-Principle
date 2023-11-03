#include "operate.h"
#include <bits/stdc++.h>

using namespace std;

void initialise(int nfa_table[][5])
{
    for (int i = 0; i < 1000; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            nfa_table[i][j] = -1;
        }
    }
}

void print_initial_final()
{
    cout << "NFA的初始状态为 : ";
    for (int i = 0; i < nfa_init; i++)
        cout << initial[i] << " ";
    cout << endl;
    cout << "NFA的接受状态为 : ";
    for (int i = 0; i < nfa_fin; i++)
        cout << final[i] << " ";
    cout << endl;
}

void print_initial_final_dfa()
{
    cout << "DFA的初始状态为 : ";
    for (int i = 0; i < dfa_init; i++)
        cout << init_dfa[i] << " ";
    cout << endl;
    cout << "DFA的接受状态为 : ";
    for (int i = 0; i < dfa_fin; i++)
        cout << fin_dfa[i] << " ";
    cout << endl
         << endl;
    for (int i = 0; i < 60; i++)
        cout << "-";
    cout << endl
         << endl;
}

void print_nfa_table(int nfa_table[][5], int states)
{
    cout << endl;
    for (int i = 0; i < 60; i++)
        cout << "*";
    cout << endl
         << endl;
    cout << setw(43) << "NFA的状态转移矩阵" << endl
         << endl;
    cout << setw(10) << "状态" << setw(10) << "a" << setw(10) << "b" << setw(10) << "e1" << setw(10) << "e2" << endl;
    for (int i = 0; i < 60; i++)
        cout << "-";
    cout << endl;
    for (int i = 1; i < states; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            if (nfa_table[i][j] == -1)
                cout << setw(10) << "--";
            else
                cout << setw(10) << nfa_table[i][j];
        }
        cout << endl;
    }
    cout << endl;
    for (int i = 0; i < 60; i++)
        cout << "*";
    cout << endl;
    print_initial_final();
}

void print_dfa_table(string dfa_tab[][3], int state)
{
    cout << endl
         << endl;
    for (int i = 0; i < 60; i++)
        cout << "*";
    cout << endl
         << endl;
    cout << setw(43) << "DFA的状态转移矩阵" << endl
         << endl;
    cout << setw(10) << "状态" << setw(10) << "a" << setw(10) << "b" << endl;
    for (int i = 0; i < 60; i++)
        cout << "-";
    cout << endl;
    for (int i = 0; i < state; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            cout << setw(10) << dfa_tab[i][j];
        }
        cout << endl;
    }
    cout << endl;
    for (int i = 0; i < 60; i++)
        cout << "*";
    cout << endl;
    print_initial_final_dfa();
}

string state_name(int i)
{
    // 此函数将一个DFA状态，命名为新的状态
    string p = "q";
    if (i == 0)
    {
        p += '0';
        return p;
    }
    // 下面计算多位，如q11，需要先获得字符串"11"，当然也计算如q5，只是循环一次罢了
    int a[100];
    int j = 0;
    while (i > 0)
    {
        a[j++] = i % 10;
        i /= 10;
    }
    // 赋值
    for (int i = j - 1; i >= 0; i--)
    {
        int x = a[i];
        switch (x)
        {
        case 0:
            p += '0';
            break;
        case 1:
            p += '1';
            break;
        case 2:
            p += '2';
            break;
        case 3:
            p += '3';
            break;
        case 4:
            p += '4';
            break;
        case 5:
            p += '5';
            break;
        case 6:
            p += '6';
            break;
        case 7:
            p += '7';
            break;
        case 8:
            p += '8';
            break;
        case 9:
            p += '9';
            break;
        }
    }
    return p;
}

vector<int> eclosure(int nfa_table[][5], int x)
{
    // 计算闭包，使用栈来维护
    stack<int> s;
    vector<int> v;
    int y;
    s.push(x);
    v.push_back(x);
    while (!s.empty())
    {
        y = s.top();
        s.pop();
        // 如果是空（不会发生转移）
        if (nfa_table[y][3] == -1)
            continue;
        else
        {
            // 首先查找一下要转移到的状态是否已经被加入了vector，如果不判断那么会死循环
            if (find(v.begin(), v.end(), nfa_table[y][3]) != v.end())
                continue;
            // 没有被加入vector，那么加入进去，访问它的状态转移，继续
            s.push(nfa_table[y][3]);
            v.push_back(nfa_table[y][3]);
            // 此处是有多条ε边的情况，访问第二条ε边
            if (nfa_table[y][4] == -1)
                continue;
            else
            {
                if (find(v.begin(), v.end(), nfa_table[y][4]) != v.end())
                    continue;
                s.push(nfa_table[y][4]);
                v.push_back(nfa_table[y][4]);
            }
        }
    }
    return v;
}

void check_init(vector<int> v, string s)
{
    for (int i = 0; i < v.size(); i++)
    {
        if (v[i] == initial[0])
        {
            init_dfa[dfa_init] = s;
            dfa_init += 1;
        }
    }
}

void check_fin(vector<int> v, string s)
{
    for (int i = 0; i < v.size(); i++)
    {
        if (v[i] == final[0])
        {
            fin_dfa[dfa_fin] = s;
            dfa_fin += 1;
        }
    }
}

bool check_valid(string word)
{
    int len = word.length();
    int i = 0;
    for (i = 0; i < len; i++)
    {
        if (word[i] == 'a' || word[i] == 'b')
            continue;
        else
            return false;
    }

    if (i == len)
        return true;
}