#!/bin/bash/

# Now we are using functions with logs and timestamp


TIMESTAMP=(date +%F-%M-%H-%S)
FILE-NAME=$((echo "$0" | cut -d "." -f1))
FOLDER=/tmp/($FILE-NAME-$TIMESTAMP.log)


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

dnf install mysql -y >>$TIMESTAMP
VALIDATE $? "YOUR mysql INSTALLATION :"

dnf install git -y >>$TIMESTAMPSSS
VALIDATE $? "YOUT git INSTALLATION :"

echo "script is running successfully...ThankYou"


