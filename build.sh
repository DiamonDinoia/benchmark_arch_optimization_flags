g++ main.cpp -o ./build/main_gcc
g++ main.cpp -O2 -o ./build/main_gcc_o2
g++ main.cpp -march=native -O2 -o ./build/main_gcc_arch
clang++ main.cpp -o ./build/main_clang
clang++ main.cpp -O2 -o ./build/main_clang_o2
clang++ main.cpp -O2 -march=native -o ./build/main_clang_arch
