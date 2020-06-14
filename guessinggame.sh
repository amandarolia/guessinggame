#!/usr/bin/env bash

num_file=$(ls | wc -l)
guess() {
read user_data
if [[ $user_data -eq $num_file ]]; then
	echo "right!"
else
	if [[ $user_data -gt $num_file ]]; then
	echo "Greater than actual number"
	else
	echo "Lesser than actual number"
	fi
fi
}
echo "Guess the number of files in the current directory"
guess #calling guess function
