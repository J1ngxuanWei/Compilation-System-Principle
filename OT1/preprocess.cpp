#include <bits/stdc++.h>
#include "preprocess.h"

using namespace std;

string preprocessor(string s)
{
    string ps = "";
    int l = s.length();
    ps += '(';
    for (int i = 0; i < l; i++)
    {
        ps += s[i];
        if (s[i] >= 97 && s[i] <= 122 && s[i + 1] >= 97 && s[i + 1] <= 122)
            ps += '.';
        else if (s[i] == ')' && s[i + 1] == '(')
            ps += '.';
        else if (s[i] >= 97 && s[i] <= 122 && s[i + 1] == '(')
            ps += '.';
        else if (s[i] == ')' && s[i + 1] >= 97 && s[i + 1] <= 122)
            ps += '.';
        else if (s[i] == '*' && (s[i + 1] == '(' || (s[i + 1] >= 97 && s[i + 1] < 122)))
            ps += '.';
    }
    ps += ')';
    return ps;
}

string postfix(string s)
{
    int l = s.length();
    string ru = "";
    stack<char> ch;
    for (int i = 0; i < l; i++)
    {
        switch (s[i])
        {
        case 'a':
            ru += 'a';
            break;
        case 'b':
            ru += 'b';
            break;
        case 'e':
            ru += 'e';
            break;
        case '(':
            ch.push('(');
            break;
        case ')':
            while (!ch.empty())
            {
                if (ch.top() == '(')
                {
                    ch.pop();
                    break;
                }
                else
                {
                    ru += ch.top();
                    ch.pop();
                }
            }
            break;
        case '.':
            if (ch.empty())
            {
                ch.push('.');
            }
            else
            {
                char temp = ch.top();
                if (temp == '(')
                    ch.push('.');
                else if (temp == '*')
                {
                    ru += ch.top();
                    ch.pop();
                    if (ch.top() == '.')
                        ru += '.';
                    else
                        ch.push('.');
                }
                else if (temp == '.')
                {
                    ru += ch.top();
                    ch.pop();
                    ch.push('.');
                }
                else if (temp == '|')
                {
                    ch.push('.');
                }
            }
            break;
        case '|':
            if (ch.empty())
            {
                ch.push('|');
            }
            else
            {
                char temp = ch.top();
                if (temp == '(')
                    ch.push('|');
                else if (temp == '*')
                {
                    ru += ch.top();
                    ch.pop();
                    ch.push('|');
                }
                else if (temp == '.')
                {
                    ru += ch.top();
                    ch.pop();
                    ch.push('|');
                }
            }
            break;
        case '*':
            if (ch.empty())
            {
                ch.push('*');
            }
            else
            {
                char temp = ch.top();
                if (temp == '(' || temp == '.' || temp == '|')
                    ch.push('*');
                else
                {
                    ru += ch.top();
                    ch.pop();
                    ch.push('*');
                }
            }
            break;
        }
    }
    return ru;
}
