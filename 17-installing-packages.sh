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
TIMESTAMP=$((date +%F-%H-%M-%S))
FILE_NAME=$((echo "$0" | cut -d "." -f1))
LOG_FILE=/tmp/$FILE_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

ALREADY_IN_LIST=dnf list installed 
INSTALL=dnf install 

for i in $@
do 
    echo "The current package Name is : $i"
    if [ $i -ne $ALREADY_IN_LIST $i]
    then 
        echo "This package $i is Not Installed"
        VALIDATE $? INSTALL
    else    
        echo "This package $i is Already Installed, now we are SKIPPING"
    fi
done

VALIDATE()
{
    if [ $1 -ne 0 ]
    then    
        echo "$INSTALL $i"
    else 
        echo "IT IS ALREADY INSTALLED"
    fi
}




