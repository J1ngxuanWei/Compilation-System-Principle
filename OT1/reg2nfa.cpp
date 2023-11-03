#include "reg2nfa.h"

using namespace std;

int reg_nfa(string s, int nfa_table[][5])
{
    int l = s.length();
    int states = 1;
    int m, n, j, counter;
    for (int i = 0; i < l; i++)
    {
        switch (s[i])
        {
        case 'a':
            // 状态生成并命名
            nfa_table[states][0] = states;
            // 将状态设置为初始状态
            initial[nfa_init] = states;
            // 初始状态索引加一
            nfa_init += 1;
            // 状态加一，索引指向下一行（也就是下一个状态，在NFA_TABLE中一个状态一行）
            states += 1;
            // 上一个状态的对应列（1为a,2为b,3为e）赋值，表示有这样的一条转移边
            nfa_table[states - 1][1] = states;
            // 这个状态设置为接受状态
            final[nfa_fin] = states;
            // 接受状态索引加一
            nfa_fin += 1;
            // 当前状态生成并命名
            nfa_table[states][0] = states;
            // 状态加一，索引指向下一行（也就是下一个状态，在NFA_TABLE中一个状态一行）
            states += 1;
            break;
        case 'b':
            nfa_table[states][0] = states;
            initial[nfa_init] = states;
            nfa_init += 1;
            states += 1;
            nfa_table[states - 1][2] = states;
            final[nfa_fin] = states;
            nfa_fin += 1;
            nfa_table[states][0] = states;
            states += 1;
            break;
        case 'e':
            nfa_table[states][0] = states;
            initial[nfa_init] = states;
            nfa_init += 1;
            states += 1;
            nfa_table[states - 1][3] = states;
            final[nfa_fin] = states;
            nfa_fin += 1;
            nfa_table[states][0] = states;
            states += 1;
            break;
        case '.':
            // 获得上上一个的接受状态，为什么是nfa_fin - 2，因为这两个数组索引和states都是超前1的，所以-1是上一个，-2是上上一个
            m = final[nfa_fin - 2];
            // 获得上一个的初始状态
            n = initial[nfa_init - 1];
            // 添加一条e边
            nfa_table[m][3] = n;
            // 在此需要处理一下接受状态，因为抹去的是n-2，需要把后面的状态（其实只有n-1）整体在数组中前移一位
            final[nfa_fin - 2] = final[nfa_fin - 1];
            nfa_fin -= 1;
            // 在此需要处理一下初始状态，因为是后缀处理，因此一定是抹去最后一个，直接将索引减一即可，再次赋值即可覆盖
            nfa_init -= 1;
            break;
        case '|':
            // 首先创建新的节点，添加两条e边，将其设置为可以转移到上一个和上上一个的初始状态
            for (j = nfa_init - 1, counter = 0; counter < 2; counter++)
            {
                m = initial[j - counter];
                nfa_table[states][3 + counter] = m;
            }
            // 然后删去这两个初始状态，添加这一个节点为新的初始状态
            nfa_init = nfa_init - 2;
            initial[nfa_init] = states;
            nfa_init += 1;
            nfa_table[states][0] = states;
            states += 1;
            // 创建新的节点，添加两条e边，将其设置为可以被上一个和上上一个的接受状态转移到
            for (j = nfa_fin - 1, counter = 0; counter < 2; counter++)
            {
                m = final[j - counter];
                nfa_table[m][3] = states;
            }
            // 然后删去这两个接受状态，添加这一个节点为新的接受状态
            nfa_fin = nfa_fin - 2;
            final[nfa_fin] = states;
            nfa_fin += 1;
            nfa_table[states][0] = states;
            states += 1;
            break;
        case '*':
            // 创建新状态作为新的初始状态
            nfa_table[states][0] = states;
            // 获取上一个初始状态
            m = initial[nfa_init - 1];
            // 为新的初始状态添加一条e边到之前的初始状态
            nfa_table[states][3] = m;
            // 删除之前的初始状态，保存这一个新的初始状态
            initial[nfa_init - 1] = states;
            states += 1;
            // 创建新状态作为新的接受状态
            nfa_table[states][0] = states;
            // 获取上一个接受状态
            n = final[nfa_fin - 1];
            // 为上一个接受状态添加两条e边，分别到初始状态m和新的接受状态
            nfa_table[n][3] = m;
            nfa_table[n][4] = states;
            // 为新的初始状态添加一条e边到新的接受状态
            nfa_table[states - 1][4] = states;
            // 删除之前的接受状态，保存这一个新的接受状态
            final[nfa_fin - 1] = states;
            states += 1;
            break;
        }
    }
    return states;
}