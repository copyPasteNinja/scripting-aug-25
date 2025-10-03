#!/bin/bash
## PSUEDOCOE ##
## take argument of 2: file to add, commit message
## add file to stashing
## commit with the provided message
## push to github

git add $1
git commit -m "$2"

if [ $# -eq 3 ]; then 
    git push origin $3
else 
    git push 
fi 
 



