#! usr/bin/bash
#Nome: Thiago Lages de Alencar
#Matricula: 1721629

c_files="main.c test.c util.c lex.yy.c monga.tab.c node.c symbol_table.c"

bison -d monga.y;
flex monga.l;
gcc $c_files -Wall -o test;

echo "===== Testing lexical ====="
for file_input in tests/lexical/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}

	file_answer=tests/lexical/$file_name\.answer
	file_output=tests/lexical/$file_name\.output
	./test $file_input lexical > $file_output

	diff $file_answer $file_output > /dev/null
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "$file_name \xE2\x9C\x93"
	else
		echo -e "$file_name \xE2\x9C\x95"
		diff $file_answer $file_output
	fi
done

echo "===== Testing syntax ====="
function test_syntax {
	for file_input in $1; do
		file_name=$(basename "$file_input")
		file_name=${file_name%\.input}
		
		printf "$file_name: "

		./test $file_input syntax
		status=$?

		if [ $status -eq "0" ]; then
			echo -e "no error"
		fi
	done
}

echo ">> Correct code";
test_syntax "tests/syntax/correct/*"

echo ">> Wrong code"
test_syntax "tests/syntax/wrong/*"

echo "===== Testing tree ====="
for file_input in tests/tree/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}
		
	printf "$file_name: "

	file_output=tests/tree/$file_name\.output
	./test $file_input tree > $file_output
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "no error"
	fi
done

rm lex.yy.c monga.tab.c monga.tab.h test;
