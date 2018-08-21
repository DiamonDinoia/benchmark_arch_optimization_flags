g++ main.cpp -std=c++11 -o ./build/main_gcc
g++ main.cpp -std=c++11 -O2 -o ./build/main_gcc_o2
g++ main.cpp -std=c++11 -O2 -march=native -o ./build/main_gcc_arch
clang++ main.cpp -std=c++11 -o ./build/main_clang
clang++ main.cpp -std=c++11 -O2 -o ./build/main_clang_o2
clang++ main.cpp -std=c++11 -O2 -march=native -o ./build/main_clang_arch
