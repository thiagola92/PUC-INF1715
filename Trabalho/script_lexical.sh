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
