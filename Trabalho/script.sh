#! usr/bin/bash
#Nome: Thiago Lages de Alencar
#Matricula: 1721629

c_files="main.c test.c util.c lex.yy.c monga.tab.c node.c symbol_table.c"

bison -d monga.y;
flex monga.l;
gcc $c_files -Wall -o test;

bash script_lexical.sh
bash script_syntax.sh
bash script_tree.sh

rm lex.yy.c monga.tab.c monga.tab.h test;
