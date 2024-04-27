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