#!/bin/bash

# while [ condition ]; do
#     # commands
# done

count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    count=$((count+1))
done

# while true; do 
#     echo "Infinity"
# done