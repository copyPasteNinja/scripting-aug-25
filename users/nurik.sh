#!/bin/bash

git add $1
git commit -m "$2"

if [ $# -eq 3 ]; then 
    git push origin $3
else 
    git push 
fi 
 



