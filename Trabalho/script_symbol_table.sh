echo "===== Testing tree ====="
for file_input in tests/symbol_table/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}
		
	printf "$file_name: "

	file_output=tests/symbol_table/$file_name\.output
	./test $file_input tree > $file_output
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "no error"
	fi
done
