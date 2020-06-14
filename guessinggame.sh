#!/usr/bin/env bash

# This script/code will take hidden files take in count
# run the code by using bash guessinggame.sh


num_file=$(ls -l | wc -l)

guess() {
while true;	# keep asking till user guess the right number

read -p "Guess the number of files in Current Directory: " user_data
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
