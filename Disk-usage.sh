#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)    
THRESHOLD=15

while IFS=read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -c 1-2 )
    FOLDER=$(echo $line | awk '{print $N}')
    if [ $USAGE -ge $THRESHOLD ]
    then
        echo "$FOLDER is more than $THRESHOLD, Current usageis : $USAGE"
    fi

done <<< $DISK_USAGE