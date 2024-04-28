#!/bin/bash/

# Now we are using functions with Colors 


TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


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
    echo -e "$2 ... $R FAILED $N"  # here -e is mandatory (-e means Enabling)
    exit 1
else
    echo -e "$2 ... $G SUCCESS $N" # here -e is mandatory (-e means Enabling)
fi

}

dnf install mysql -y &>>$LOG_FILE 
VALIDATE $? "YOUR mysql INSTALLATION :"

dnf install git -y &>>$LOG_FILE
VALIDATE $? "YOUT git INSTALLATION :"

echo "script is running successfully...ThankYou"
