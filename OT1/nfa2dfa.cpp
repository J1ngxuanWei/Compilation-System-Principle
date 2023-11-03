#include "nfa2dfa.h"

using namespace std;

int nfa_dfa(int nfa_table[][5], int states, string dfa_tab[][3])
{
    // 定义变量
    int state = 0, j = 0;
    // map用来存储DFA的状态，一个闭包集合对应一个状态，如"q1"（key为NFA的状态集合，value为状态名"q2"）
    // map可以直接通过访问插入新元素，且不会出现重复的key（value随便即可，因为我们需要的是最终的不重复的key），因此是非常好的数据结构
    map<vector<int>, string> map_state;
    // 用于处理的若干vector
    // v0表示初始状态的e闭包
    // v1和v2一组，v1表示当前在计算的集合，所有NFA状态经过'a'能转移到的状态的集合（仅保存有效的）
    // v1和v2一组，v2表示v1中所有状态的e闭包（在循环中循环使用，每次都代表v1中某一个状态的e闭包）
    // v3和v4一组，v3表示当前在计算的集合，所有NFA状态经过'b'能转移到的状态的集合（仅保存有效的）
    // v3和v4一组，v4表示v3中所有状态的e闭包（在循环中循环使用，每次都代表v3中某一个状态的e闭包）
    vector<int> v0, v1, v2, v3, v4;
    // 处理初始状态，设为q0
    v0 = eclosure(nfa_table, initial[0]);
    map_state[v0] = state_name(j++);
    // 通过下面的两个函数，判断这个集合是不是初始和接受，如果是还会加入到保存初始状态和接受状态的数组中保存
    // 具体见函数体
    check_init(v0, map_state[v0]);
    check_fin(v0, map_state[v0]);
    // 通过栈来维护
    stack<vector<int>> st;
    st.push(v0);
    while (!st.empty())
    {
        // v表示当前在计算的NFA状态集合
        vector<int> v;
        // temp保存v1的所有元素的e闭包这一个集合，且因为map的特性，不会出现重复（状态名为key，value为任意值，第一次出现会加入到map，后续出现只是更改value）
        // temp1保存v3的所有元素的e闭包这一个集合，且因为map的特性，不会出现重复（状态名为key，value为任意值，第一次出现会加入到map，后续出现只是更改value）
        map<int, int> map_temp, map_temp1;
        v = st.top();
        st.pop();
        // 创建新的DFA状态，将当前状态写入
        dfa_tab[state][0] = map_state[v];
        for (int i = 0; i < v.size(); i++)
        {
            // 循环v中的每一状态，得到其经过'a'和'b'后得到的状态，保存有效的状态到v1和v3
            int temp = nfa_table[v[i]][1];
            int temp1 = nfa_table[v[i]][2];
            if (temp >= 0)
                v1.push_back(temp);
            if (temp1 >= 0)
                v3.push_back(temp1);
        }
        // 对v1和v3计算e闭包，保存到v2和v4中
        // 此处v2和v4是循环使用，对每一个状态分别保存，然后去重保存到map中
        for (int i = 0; i < v1.size(); i++)
        {
            v2 = eclosure(nfa_table, v1[i]);
            for (int j = 0; j < v2.size(); j++)
                map_temp[v2[j]] = 1;
            v2.clear();
        }
        for (int i = 0; i < v3.size(); i++)
        {
            v4 = eclosure(nfa_table, v3[i]);
            for (int j = 0; j < v4.size(); j++)
                map_temp1[v4[j]] = 1;
            v4.clear();
        }
        // 将最终得到的集合从map中取出到v2和v4
        for (map<int, int>::iterator it = map_temp.begin(); it != map_temp.end(); it++)
            v2.push_back(it->first);
        for (map<int, int>::iterator it = map_temp1.begin(); it != map_temp1.end(); it++)
            v4.push_back(it->first);
        // 现在得到了一个DFA状态（一个NFA状态集合）经过'a'和'b'会转移到的NFA状态集合（v2和v4）
        // 然后需要判断这两个集合是否已经存在，根据结果来决定要不要创建新的DFA状态，压栈循环
        if (v2.empty())
            // 这个DFA状态不是一条'a'边的起点
            dfa_tab[state][1] = "--";
        else
        {
            // 这个DFA状态是一条'a'边的起点，会读入一个'a'转移到别的DFA状态
            // 访问map，如果不存在会返回一个空串，存在会返回如"q0"的形式
            string t = map_state[v2];
            char flag1 = t[0];
            if (flag1 == 'q')
                // 如果存在，说明当前状态经过'a'会转移到已有的状态，所以直接对列1赋值即可
                dfa_tab[state][1] = map_state[v2];
            else
            {
                // 不存在，说明得到了一个全新的状态集合
                // 首先创建新的状态，加入表中
                dfa_tab[state][1] = state_name(j++);
                // 加入map，便于后续使用
                map_state[v2] = dfa_tab[state][1];
                // 确定这个新的集合的初始/接受的属性
                check_init(v2, map_state[v2]);
                check_fin(v2, map_state[v2]);
                // 因为是新的集合，所以需要压栈再次循环计算
                st.push(v2);
            }
        }
        // 以下同理，更改为'b'即可
        if (v4.empty())
            dfa_tab[state][2] = "--";
        else
        {
            string t = map_state[v4];
            char flag1 = t[0];
            if (flag1 == 'q')
                dfa_tab[state][2] = map_state[v4];
            else
            {
                dfa_tab[state][2] = state_name(j++);
                map_state[v4] = dfa_tab[state][2];
                check_init(v4, map_state[v4]);
                check_fin(v4, map_state[v4]);
                st.push(v4);
            }
        }
        v1.clear();
        v2.clear();
        v3.clear();
        v4.clear();
        // state加一，便于后续创建状态
        state += 1;
    }
    print_dfa_table(dfa_tab, state);
    return state;
}