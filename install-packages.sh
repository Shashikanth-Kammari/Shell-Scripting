#!/bin/bash

source ./common.sh

check-root()

for i in $@
do
    echo "package installed: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i already installed...$Y SKIPPING $N"
    else
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installation $i"
    fi
done
#Run as a root user  sudo sh <scriptname>.sh mysql git 

#we need to give the variable as a paramaeters