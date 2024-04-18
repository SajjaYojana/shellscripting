#!/bin/bash


USERID=$(id -u)

validate() {
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
    echo "You aresuper user."
fi

dnf install mysql -y
validate $? "Installing MySQL"

dnf install git -y
validate $? "Installing GIT"