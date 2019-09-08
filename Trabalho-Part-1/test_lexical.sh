#! usr/bin/bash

for file_input in Monga-Examples/*\.input; do
	file_name=$(basename "$file_input")
	file_name=${file_name%\.input}

	file_answer=Monga-Examples/$file_name\.answer

	file_output=Monga-Examples/$file_name\.output
	./test $file_input > $file_output

	diff $file_answer $file_output > /dev/null
	status=$?

	if [ $status -eq "0" ]; then
		echo -e "======= $file_name \xE2\x9C\x93 ======="
	else
		echo -e "======= $file_name \xE2\x9C\x95 ======="
		diff $file_answer $file_output
	fi
done
