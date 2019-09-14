#! usr/bin/bash

bison -d monga.y;
flex monga.l;
gcc main.c lex.yy.c monga.tab.c -o test;

for file_input in Monga-code/Correct-code/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}

	./test $file_input
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "======= $file_name \xE2\x9C\x93 ======="
	else
		echo -e "======= $file_name \xE2\x9C\x95 ======="
	fi
done

rm lex.yy.c monga.tab.c monga.tab.h test;
