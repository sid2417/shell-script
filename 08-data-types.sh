#!/bin/bash

# now we are dealing with Data types
# Here we are passing arguments from outside

Num1=$1
Num2=$2

SUM=$(($Num1+$Num2))

# Here we need to mention two braces (()) 
# inside braces we need to mention the condition
# Before condition we need to mention $ then only it is considered as Dolar
# like $((mention the condition))

echo "Here we are adding two numbers total sum is : $SUM"

echo "Here we are adding two numbers $Num1 + $Num2 total sum is : $SUM"

# if suppose you mention sh filename.sh 10 20 
# above output is 10 + 20 = 30

# if suppose you mention sh filename.sh 10 anystring
# above output is 10 + 0= 10
#Shell script considered string as Zero