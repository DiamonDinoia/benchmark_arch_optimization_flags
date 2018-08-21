## Benchmark and assembly analysis gcc/llvm architecture specific optimization
Here I'm testing the differences between gcc/llvm with various optimization flags. Both performance and assembly are analyzed.

- To build `./build.sh`
- To run `./run.sh`
- To generate the asm `./generate.sh`

### The following combinations are tested:
- GCC
- GCC -O2
- GCC -O2 -march=native
- CLANG 
- CLANG -O2
- CLANG -O2 -march=native

### Test configurations
CPU: `Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz`.  
OS: `Ubuntu 16-04` kernel 4.18.3 custom compiled.  
main: `dummy pi calculator`.  
gcc (Ubuntu 8.1.0-5ubuntu1~16.04) 8.1.0  
clang version 7.0.0 (trunk 338359) (llvm/trunk 338357)  

# Results
iterations 1000000000 value 3.14159  

- `clang` time 5.70893s  
- `gcc` time 9.08183s  
- `clang` -O2 time 6.01251s  
- `gcc` -O2 time 5.13561s  
- `clang` -march=native -O2 time 1.21312s  
- `gcc` -march=native -O2 time 4.7192s  

### References
- http://lists.llvm.org/pipermail/cfe-dev/2016-March/048049.html
- http://sdf.org/~riley/blog/2014/10/30/march-mtune/
- https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html