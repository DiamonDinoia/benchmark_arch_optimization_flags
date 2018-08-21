g++ main.cpp -S -o ./asm/main_gcc
g++ main.cpp -S -O2 -o ./asm/main_gcc_o2
g++ main.cpp -S -march=native -O2 -o ./asm/main_gcc_arch
clang++ main.cpp -S -o ./asm/main_clang
clang++ main.cpp -S -O2 -o ./asm/main_clang_o2
clang++ main.cpp -S -O2 -march=native -o ./asm/main_clang_arch
