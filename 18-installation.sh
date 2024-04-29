#!/bin/bash/

#sudo access 

TIMESTAMP=$(date +%F-%H-%M-%S)
SRCIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$SRCIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo -e " $G Please Provide Sudo Access $N"
    exit 1
else
    echo -e " $Y Already You Have Sudo Access $N"
fi

#colors




#Timestamp #logfile   #chech list installed 
#check installation was success/Failed




