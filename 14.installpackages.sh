USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

for i in $@
do
    echo "Package to Install: $i"
    dnf list installed $i
done