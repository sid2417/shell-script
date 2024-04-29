#!/bin/bash/

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#Timestamp 
TIME_STAMP=("date +%F-%H-%M-%S")
#logfile  
SCRIPT_NAME=(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$TIME_STAMP-$LOG_FILE.log

for i in ($@)
do 
    ehco "The installed Package Name is : $i"
    dnf list installed $i -y
    if [ $? -eq 0 ]
    then 
        echo "$i was Already INSTALLED"
    else 
        echo "$i was NOT INSTALLED...Now we proceed to install"
        dnf install $i -y
        VALIDATE $? "$i package"

done

VALIDATE 
{   if ($1 -eq 0)
    then
        echo "$2 SUCCESSFULLY INSTALLED"
    else
        echo "$2 INSTALLATION WAS FAILED"
}

