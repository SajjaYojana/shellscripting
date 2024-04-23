#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

validate(){
    if [ $1 -ne 0 ]
    then 
        echo "$2....FAILURE"
        exit 1   
    else
        echo "$2...SUCCESS"
    fi    
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

dnf install mysql -y &>>LOGFILE
validate $? "Installing MySQL"

dnf install git -y &>>LOGFILE
validate $? "Installing GIT"