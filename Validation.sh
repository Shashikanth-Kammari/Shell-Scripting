#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%f+%H+%M+%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/Shell-scripting/SCRIPTNAME-TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE(){
    if [ $i -nq 0 ]
    then
        echo -e "$2 $R FAILURE $N"
    else
        echo -e "$2 $G SUCESSES $N "
    fi
}

dnf install $i&>>$LOGFILE
VALIDATE $? "Installationof $i"