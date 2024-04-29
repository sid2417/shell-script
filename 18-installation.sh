#!/bin/bash/

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#Timestamp 
TIME_STAMP=$(date +%F-%H-%M-%S)
#logfile  
SCRIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$TIME_STAMP-$LOG_FILE.log

USER_ID=$(id -u)
if [ $USER_ID -eq 0 ]
    then 
    echo -e " $G YOU ALREADY HAVE SUDO ACCESS $N "
    else
    echo -e "$R PLEASE PROVIDE SUDO ACCESS $N "
    exit 1
fi

for i in $@
do 
    ehco -e " $Y The installed Package Name is : $i $N"
    dnf list installed $i -y
    if [ $? -eq 0 ]
    then 
        echo -e " $G $i was Already INSTALLED $N"
    else 
        echo -e " $Y $i was NOT INSTALLED...Now we proceed to install $Y"
        dnf install $i -y
        VALIDATE $? "$i package"
    fi
done

VALIDATE ()
{   if ($1 -eq 0)
    then
        echo -e " $G $2 SUCCESSFULLY INSTALLED $N"
    else
        echo -e " $R $2 INSTALLATION WAS FAILED $N"
        exit 1
    fi
}

