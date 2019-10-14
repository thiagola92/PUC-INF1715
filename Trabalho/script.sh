#! usr/bin/bash
#Nome: Thiago Lages de Alencar
#Matricula: 1721629

c_files="main.c test.c util.c lex.yy.c monga.tab.c node.c symbol_table.c binding.c"

bison -d monga.y;
flex monga.l;
gcc $c_files -Wall -o test;

for file_input in tests/correct/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}
		
	printf "$file_name: "

	file_output=tests/correct/$file_name\.output
	./test $file_input > $file_output
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "no error"
	else
	  echo -e "error, log in the output file"
	fi
done

rm lex.yy.c monga.tab.c monga.tab.h test;
