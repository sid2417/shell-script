#!/bin/bash/

# Now we are installing multiple packages 
#Sudo Access
USERID=$((id -u))
if [ $? -ne 0 ]
then 
    echo "Please Provide Sudo Access"
else
    echo "You Have Sudo Access"
fi
#date
# xorg gcc fail2ban git mysql

TIMESTAMP=$(date +%F-%H-%M-%S)
FILE_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE=/tmp/$FILE_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE ()
{
    if [ $1 -ne 0 ]
    then 
        echo "$i Installation was FAILED"
    else    
        echo "$1i Installation was SUCCESSFULL"
}

for i in $@
do 
    echo "The current package Name is : $i"
    dnf list installed $i
    if [ $? -ne 0 ]
    then    
        echo "We Need to Install $i"
        dnf install $i -y
        VALIDATE $? "Installation of $i"
        
    else
        echo "$i is already Installed ...We skipped the Installation Process"
    fi
done

