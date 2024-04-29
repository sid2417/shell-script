#!/bin/bash/

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE (){
   if [ $1 -ne 0 ]
    then
        echo -e " $2 $R  INSTALLATION WAS FAILED $N" 
        exit 1
    else
        echo -e " $2 $G  SUCCESSFULLY INSTALLED $N" 
    fi
}

if [ $USERID -ne 0 ]
    then 
        echo -e "$R PLEASE PROVIDE SUDO ACCESS $N "
        exit 1
    else
    echo -e " $G YOU ALREADY HAVE SUDO ACCESS $N "  
fi

for i in $@
do  ehco -e " $Y The installed Package Name is $N: $i "
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo -e "  $i $G was Already INSTALLED $N"    
        
    else 
        #echo -e " $Y $i was NOT INSTALLED...Now we proceed to install $Y"    
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "$i package"
    fi
done

echo -e "$G The Installation Process is Going smoothly..ThankYou $N"