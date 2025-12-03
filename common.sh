#!/bin/bash

USERID=(id -u)

SCRIPTNAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%f-%H-%M-%S)
LOGFILE=/tmp/$SCRIPTNAME_$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
        echo -e "$2..... $R FAILURE  $N "
        exit 1
    else
        echo -e "$2.....$G SUCCESS $N"
    fi
}

check-root(){
    if [  $USREID -ne 0 ]
        echo "Please run the script as a root user"
        exit 1
    else
        echo "your root user"
    fi

}


