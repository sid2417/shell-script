#!/bin/bash/

#sudo access 



USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Please Provide Sudo Access"
    exit 1
else
    echo "You Have Sudo Access"
fi

#colors


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


#Timestamp #logfile   #chech list installed 
#check installation was success/Failed




