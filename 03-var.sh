#!/bin/bash/

#Declaring variable
Person1=$1       ###Here no space between variable=value
Person2=$2  

#Here $1 considered as first person
#Here $2 considered as second person

#while execute the srcipt you provide the names from outside like a arguments

## $ dollar is used for to identify the variable 
##Now you have to chage the value into any name

#Referring variable
echo "$Person1:: Hi $Person2, How are you"
echo "$Person2:: Hello $Person1, am fine, where are you going"
echo "$Person1:: I am going to library "
echo "$Person2:: Ohh, its ok, am going to theater"