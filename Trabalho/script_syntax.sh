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
