#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You aresuper user."
fi

dnf install mysql -y

echo "is script proceeding?"