===FAIL===
clang-6.0 -emit-llvm -S -Wall -O0 c.c
llc-6.0 c.ll
as c.s -o c.out
ld c.out -e main -o c
./c

===WORK===
clang-6.0 -emit-llvm -S -Wall -O0 c.c
llvm-as c.ll
lli-6.0 c.bc

C file >> LLVM file >> LLVM bitcode

===MONGA===
llvm-as c.ll
lli-6.0 c.bc
