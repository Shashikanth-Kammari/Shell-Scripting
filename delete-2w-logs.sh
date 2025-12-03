#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G Source directory exist $N "
else
    echo -e " $R please make sure the $SOURCE_DIRECTORY $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo "File to delete $FILES"

while IFS= read -r line
do
    echo "Deleting $line"
    rm -rf $line
done <<<$FILES