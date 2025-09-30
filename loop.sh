#!/bin/bash 

## For loop syntax ##
# for item list; do
#     # command1 
#     # command2
#     # command3
# done

# for file in *.sh; do 
#     echo "File ending with .sh: $file"
#     mv $file test/
# done

# for arg in $@; do 
#     echo "Argument: $arg"
# done 

# echo "hello"
users="$(cat /etc/passwd | awk -F ":" '{print $1}' | tail -n 130)"

for user in $users; do 
    rm test/$user.txt
    echo "This user $user exists in /etc/passwd"
done
