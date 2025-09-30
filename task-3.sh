#!/bin/bash

# Goal: Write a script that renames all .txt files in a directory by appending "_backup" to their names.
## PSEUDOCODE 
## START
## Use a for loop to go through each .txt file 
## rename each file adding "_backup" suffix
## END

for file in *.txt; do
    NAME=$(echo $file | awk -F "." '{print $1}')
    EXT=$(echo $file | awk -F "." '{print $2}')

    mv $file $NAME"_backup."$EXT
done