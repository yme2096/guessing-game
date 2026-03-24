#!/bin/bash

function file_count {
    ls -1 | wc -l
}

count=$(file_count)

echo "Guess how many files are in the current directory?"

while true
do
    read guess

    if [[ $guess -lt $count ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $count ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done
