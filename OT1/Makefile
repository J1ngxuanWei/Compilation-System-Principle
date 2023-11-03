# 定义编译器和编译选项
CXX = g++
CXXFLAGS = -std=c++11 -Wall -w

# 定义目标文件和源文件列表
TARGET = 2112495wjx
SOURCES = Mymain.cpp nfa2dfa.cpp operate.cpp preprocess.cpp reg2nfa.cpp sim.cpp parameter.cpp
OBJECTS = $(SOURCES:.cpp=.o)

# 默认目标
all: $(TARGET) clean

# 生成可执行文件
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJECTS)

# 生成目标文件
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 清除目标文件和中间文件
clean:
	del $(OBJECTS)

# 链接之后执行清理操作
.PHONY: all clean
