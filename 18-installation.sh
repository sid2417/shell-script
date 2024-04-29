#!/bin/bash/

#sudo access 
USER_ID=$(id -u)
if [ $USER_ID -eq 0 ]
then 
    echo -e "$G YOU ALREADY HAVE SUDO ACCESS $N"
else
    echo -e "$Y PLEASE PROVIED SUDO ACCESS $N"
fi

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


#Timestamp #logfile   #chech list installed 
#check installation was success/Failed




