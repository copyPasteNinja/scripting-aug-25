#!/bin/bash

SERVICE=$1

systemctl status $SERVICE > /dev/null
if [ $? -ne 0 ]; then 
    clear
    echo "Invalid service name"
    exit
fi

service_status="$(systemctl status $SERVICE | grep "Active" | awk -F " " '{print $2}')"
timestamp="$(date "+%Y:%m:%d-%H:%M:%S")"

touch $SERVICE-logs-$timestamp.log  ## apache-logs-2025:09:24-00:20:21.log

if [ $service_status = "active" ]; then 
    echo "service is running" > $SERVICE-logs-$timestamp.log
else 
    echo "service is down" > $SERVICE-logs-$timestamp.log
fi