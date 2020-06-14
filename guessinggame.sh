#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is less than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is greater than the true number"
        else
            echo "Congratulation,you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
