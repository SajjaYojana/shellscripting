#!/bin/bash

set -e
failure() {
    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$Bash_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You aresuper user."
fi

dnf install mysql -y

dnf install git -y

echo "is script proceeding?"