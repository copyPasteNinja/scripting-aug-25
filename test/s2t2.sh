#!/bin/bash

# Task: Write a script that logs its own process ID and the number of arguments passed.
# The script should append this information to a file called process_log.txt.

echo "Process ID is: $$" >> process_log.txt
echo "Arguments passed: $#" >> process_log.txt

cat process_log.txt
