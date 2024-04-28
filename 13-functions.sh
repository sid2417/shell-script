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
    echo "INSTALLATION WAS FAILED"
    exit 1
else
    echo $2
fi

}

#then install the packages
dnf install mysql -y

#and we need to chech those installation is success or not
VALIDATE $? "YOUR INSTALLATION WAS SUCCESS"

dnf install git -y

VALIDATE $? "YOUR INSTALLATION WAS SUCCESS"

echo "script is running successfully...ThankYou"


