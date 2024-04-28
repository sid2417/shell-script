#!/bin/bash/

# Now we are using functions with logs and timestamp


TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


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

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "YOUR mysql INSTALLATION :"

dnf install git -y &>>$LOG_FILE
VALIDATE $? "YOUT git INSTALLATION :"

echo "script is running successfully...ThankYou"


