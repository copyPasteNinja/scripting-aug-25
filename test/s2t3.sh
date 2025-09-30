#!/bin/bash 

# Task: Write a script that checks if a directory exists. 
# If it doesn't, print a message and check the exit status of the last command using $?.

if [ $# -eq 0 ]; then 
    echo "Script requires at least 1 argument"
    exit
fi 

if [ -d $1 ]; then 
    echo "The $1 directory does exist" 
else
    echo "The $1 directory does not exist"
    ls $1
    echo "Exit status: $?"
fi