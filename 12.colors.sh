#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

validate() {
    if [ $1 -ne 0 ]
    then 
        echo -e "$2... $R FAILURE $N"
        exit 1   
    else
        echo -e "$2...$R SUCCESS $N"
    fi    
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

dnf install mysql -y &>>SLOGFILE
validate $? "Installing MySQL"

dnf install git -y &>>SLOGFILE
validate $? "Installing GIT"