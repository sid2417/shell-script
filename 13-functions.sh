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

#then install the packages
dnf install mysql -y

#and we need to chech those installation is success or not

if [ $? -ne 0 ]
then
    echo "YOUR mysql INSTALLATION WAS FAILED"
    exit 1
else
    echo "YOUR mysql INSTALLATION WAS SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "YOUR git INSTALLATION WAS FAILED"
    exit 1
else
    echo "YOUR git INSTALLATION WAS SUCCESS"
fi


echo "script is running successfully...ThankYou"


