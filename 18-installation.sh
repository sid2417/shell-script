#!/bin/bash/

USER_ID=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
#logfile  
SCRIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$TIME_STAMP-$SCRIPT_NAME.log
#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#Timestamp 

VALIDATE ()
{   if ($1 -ne 0)
    then
        echo -e " $R $2 INSTALLATION WAS FAILED $N" 
        exit 1
    else
        echo -e " $G $2 SUCCESSFULLY INSTALLED $N" 
    fi
}

if [ $USER_ID -ne 0 ]
    then 
        echo -e "$R PLEASE PROVIDE SUDO ACCESS $N "
        exit 1
    else
    echo -e " $G YOU ALREADY HAVE SUDO ACCESS $N "  
fi



for i in $@
do 
    ehco -e " $Y The installed Package Name is : $i $N"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then 
        echo -e " $G $i was Already INSTALLED $N"    
        #echo -e " $Y $i was NOT INSTALLED...Now we proceed to install $Y"
        
        
    else 
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "$i package"
    fi
done

echo -e "$G The Installation Process is Going smoothly..ThankYou $N"