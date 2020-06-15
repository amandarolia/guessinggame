#!/usr/bin/env bash

# This script/code will take hidden files take in count
# run the code by using bash guessinggame.sh

num_file=$(ls -A1 | wc -l)

input_senitation() {
	read -p "Guess the number of files in Current Directory: " user_data
	if ! [[ "$user_data" =~ ^[0-9]+$ ]]; then
		echo "Enter valid Integer";
		input_senitation;
	fi
}

guess() {
while true;	# keep asking till user guess the right number
input_senitation
do
	if [[ $user_data -eq $num_file ]]; then
		echo "right!"; 
		break;
	else
		if [[ $user_data -gt $num_file ]]; then
		echo "Greater than actual number";
		else
		echo "Lesser than actual number";
		fi
	fi
done
}

echo "Guessing Game is loaded..."

guess	# calling guess function
