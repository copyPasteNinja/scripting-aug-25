#!/bin/bash 

ls /var/log | wc -l > count.txt
ls /var/log | wc | awk -F " " '{print $1}' >> count.txt
echo "There are $(ls /var/log | wc -l) files inside /var/log"

