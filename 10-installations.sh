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

if [ $? -ne 0 ]
then 
    echo "Installation of mysql ...FAILURE"
    exit 1
else
    echo "Installation of mysql ...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of GIT...FAILURE"
    exit 1
else
    echo "Installation of GIT ...SUCCESS"
fi

echo "is script proceeding?"