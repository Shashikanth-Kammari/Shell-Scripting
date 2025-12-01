#!/bin/bash

USERID=(id -u)

SCRIPTNAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%f-%H-%M-%S)
LOGFILE=/tmp/$SCRIPTNAME_$TIMESTAMP.log

VALIDATE(){
    if($1 -ne 0)
        echo "$2.....FAILURE"
        exit 1
    else
        echo "$2.....SUCCESS"
    fi
}

if[ $USREID -ne 0 ]
    echo "Please run the script as a root user"
    exit 1
else
    echo "your root user"
fi

dnf install mysql -y &>>LOGFILE
VALIDATE $? "Mysql installing"
dnf install gitt -y &>>LOGFILE
VALIDATE $? "Git installing"

    