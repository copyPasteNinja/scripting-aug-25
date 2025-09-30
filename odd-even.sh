#!/bin/bash

# GOAL: check if number is odd or even
## START
# accept a list of numbers from the user (space-separated).
# Use a for loop to iterate over each number
# check with an if condition whether # is even or odd.
# Print whether each number is even or odd.
## END

read -p "Enter numbers (space-separated): " input

for num in $input; do 
    if (($num % 2 == 0)); then 
        echo "$num is even"
    else
        echo "$num is odd"
    fi 
done 
