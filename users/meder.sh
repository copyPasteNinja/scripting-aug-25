#!/bin/bash
FILE=$1
MSG=$2

git add $FILE
git commit -m "$MSG"
git push 

if [ $# -eq 3 ]; then   
    git push origin $3
else 
    git push 
fi