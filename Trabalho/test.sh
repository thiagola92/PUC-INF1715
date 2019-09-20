#! usr/bin/bash

bison -d monga.y;
flex monga.l;
gcc main.c lex.yy.c monga.tab.c test.c -Wall -o test;

echo "===== Testing lexical ====="
for file_input in tests/lexical/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}

	file_answer=tests/lexical/$file_name\.answer
	file_output=tests/lexical/$file_name\.output
	./test $file_input > $file_output lexical

	diff $file_answer $file_output > /dev/null
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "$file_name \xE2\x9C\x93"
	else
		echo -e "$file_name \xE2\x9C\x95"
		diff $file_answer $file_output
	fi

	rm $file_output
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

rm lex.yy.c monga.tab.c monga.tab.h test;
