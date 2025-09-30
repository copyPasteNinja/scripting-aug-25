#!/bin/bash 

# Task: Write a script that takes three arguments (name, age, and city) and prints a summary.
# If fewer than three arguments are provided, it should print a message asking for more information.


if [ $# -lt 3 ]; then 
    echo "Please enter your name, age and city"
    read -p "Enter your name: " name 
    read -p "Enter your age: " age 
    read -p "Enter your city: " city     
    cat << EOF
Your name: $name
Your age: $age
Your city: $cityw
EOF
else
    echo "Your name: $1"
    echo "Your age: $2"
    echo "Your city: $3"
fi 