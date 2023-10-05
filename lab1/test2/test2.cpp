#include <iostream>
#include <chrono>
#include <cmath>
#include <vector>

// 一个复杂的数学运算函数1
double complexMath1(const std::vector<double>& data) {
    double result = 0.0;
    for (int i=0;i<data.size();i++) {
        double val=data[i];
        result += std::sqrt(val) * std::log(val + 1.0);
    }
    return result;
}

// 一个复杂的数学运算函数2
double complexMath2(const std::vector<double>& data) {
    double result = 0.0;
    for (int i=0;i<data.size();i+=2) {
        double val=data[i];
        double vall=data[i+1];
        result += std::sqrt(val) * std::log(val + 1.0);
        result += std::sqrt(vall) * std::log(vall + 1.0);
    }
    return result;
}

int main() {
    int dataSize = 1000000;  // 数据量大小
    std::vector<double> data(dataSize);

    // 初始化数据
    for (int i = 0; i < dataSize; ++i) {
        data[i] = static_cast<double>(i + 1);
    }

    // 测量函数1的执行时间
    auto start1 = std::chrono::high_resolution_clock::now();
    double result1 = complexMath1(data);
    auto end1 = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration1 = end1 - start1;
    std::cout << "Function 1 Execution Time: " << duration1.count() << " seconds\n";

    // 测量函数2的执行时间
    auto start2 = std::chrono::high_resolution_clock::now();
    double result2 = complexMath2(data);
    auto end2 = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration2 = end2 - start2;
    std::cout << "Function 2 Execution Time: " << duration2.count() << " seconds\n";

    return 0;
}

