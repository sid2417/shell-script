#!/bin/bash/

# Now we are using functions
# we are installing Mysql and git
#first we need sudo access

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "Please Provide SUDO ACCESS TO INSTALL THE PACKAGES"
    exit 1
else
    echo "YOU ARE A SUPER USER"
fi


VALIDATE()
{

if [ $1 -ne 0 ]
then
    echo "$2 ...FAILED"
    exit 1
else
    echo "$2 ... SUCCESS"
fi

}

dnf install mysqll -y
VALIDATE $? "YOUR mysql INSTALLATION :"

dnf install git -y
VALIDATE $? "YOUT git INSTALLATION :"

echo "script is running successfully...ThankYou"


