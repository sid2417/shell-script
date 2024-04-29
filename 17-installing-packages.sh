#!/bin/bash/

# Now we are installing multiple packages 
# &>>$LOG_FILE
#Sudo Access


USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo -e " $Y Please Provide Sudo Access $N"
    exit 1
else
    echo -e " $G You Have Sudo Access $N"
fi

echo -e " $G welcome to the Installation $N"

#date
# xorg gcc fail2ban git mysql

TIMESTAMP=$(date +%F-%H-%M-%S)
SRCIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$SRCIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE ()
{
    if [ $1 -ne 0 ]
    then 
        echo -e " $R $2 is FAILED $N"
        exit 1
    else    
        echo -e "$G $2 is SUCCESSFULL $N"
    fi
}

for i in $@
do 
    echo -e "$Y The current package Name is $N: $i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -ne 0 ]
    then    
        echo -e "$G We Need to Install $G $i "
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "Installation of $i"
        
    else
        echo -e "$Y $i is already Installed ...We skipped the Installation Process $Y"
    fi
done


echo -e "$G The Process is Going smoothly..ThankYou $N"