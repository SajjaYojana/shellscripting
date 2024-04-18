#!/bin/bash


USERID=$(id -u)

validate() {
    echo "Exit status: $1"
    echo "Whats the status: $2"
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You aresuper user."
fi

dnf install mysql -y
Validate $? "Installing MySQL"

dnf install git -y
Validate $? "Installing GIT"