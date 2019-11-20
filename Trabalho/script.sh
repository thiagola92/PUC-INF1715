#! usr/bin/bash
#Nome: Thiago Lages de Alencar
#Matricula: 1721629

c_files="main.c test.c util.c lex.yy.c monga.tab.c node.c symbol_table.c binding.c type.c code.c"

bison -d monga.y;
flex monga.l;
gcc $c_files -Wall -o compiler;

echo "=============CORRECT CODE============="

for file_input in tests/correct/*\.monga; do
  file_name=$(basename "$file_input")
  file_name=${file_name%\.monga}
    
  printf "$file_name: "

  file_ll=tests/correct/$file_name\.ll
  file_bc=tests/correct/$file_name\.bc

  ./compiler $file_input > $file_ll
  status=$?

  if [ $status -eq "0" ]; then
    echo "no compiling error, executing llc-6.0"
    # llc-6.0 $file_ll
    llvm-as-6.0 $file_ll
    # lli-6.0 $file_bc
  else
    echo "error, log in the output file"
  fi
done

echo "=============WRONG CODE============="

for file_input in tests/wrong/*\.monga; do
  file_name=$(basename "$file_input")
  file_name=${file_name%\.monga}
    
  printf "$file_name: "

  file_ll=tests/wrong/$file_name\.ll
  file_bc=tests/wrong/$file_name\.bc

  ./compiler $file_input > $file_ll
  status=$?

  if [ $status -eq "0" ]; then
    echo "no compiling error, executing llc-6.0"
    # llc-6.0 $file_ll
    llvm-as $file_ll
    # lli-6.0 $file_bc
  else
    echo "error, log in the output file"
  fi
done

rm lex.yy.c monga.tab.c monga.tab.h compiler;
