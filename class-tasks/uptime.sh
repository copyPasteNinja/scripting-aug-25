#!/bin/bash

# Get uptime in minutes
# If uptime < 5:
#    Print "System was recently rebooted"
# Else:
#    Print "System is stable"

## Use Digital Ocean for this task
## uptime provides more options

## example output:  uptime -p up 5 days, 1 hour, 4 minutes
UPTIME=$(uptime -p)

if [[ "$UPTIME" =~ "day" || "$UPTIME" =~ "hour" ]]; then 
    echo "System has not been rebooted in the past 5 minutes"
    exit
fi

MIN=$(uptime -p | awk -F " " '{print $2}')
if [ $MIN -lt 5 ]; then 
    echo "System was recently rebooted"
else
    echo "System has not been rebooted in the past 5 minutes"
fi