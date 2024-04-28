
#!/bin/bash/

VARIABLE=$(id -u)

if [ $VARIABLE -ne 0 ]
then 
    echo "Please provide the sudo access"
    # if it is not a super user we need to break
else
    echo "You are a super user"

fi

dnf install mysql-server

if ( $? -eq 0 )
then 
    echo "Your installation is Success"
    #If it is successfully installed we need to break
else
    echo "Your installation is Failed"
fi