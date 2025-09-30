#!/bin/bash

# GOAL: Write a script that displays a menu with case
## PSEUDOCODE 
## START
# print the options for users 
    # Show today's date 
    # List files in the current directory.
    # Show the current user.
    # Exit.
# Ask user for an input
# Use a case statement to handle user input and execute the corresponding commands.
## END

# [[ "$UPTIME" =~ "day" || "$UPTIME" =~ "hour" ]]

until [[ "1 2 3 4" =~ "$choice" ]]; do 

    echo "1) Show today's date" 
    echo "2) List files in the current directory."
    echo "3) Show the current user."
    echo "4) Exit."

    read -p "Enter your choice: " choice
    clear

    case $choice in 

        1) echo "Today's Date: $(date)";;
        2) ls ;; 
        3) whoami ;; 
        4) exit ;; 
        *) echo "Invalid input." ;;

    esac
done