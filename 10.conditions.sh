#!/bin/bash

## Now we are discussing about conditions

#   if[condition]           # after if inside the braces we called as condition
#       then
#            echo "that condition is true print this statement"

#   else 
#            echo "above condition is false print else statement"

#   fi              # in shell script (fi) is closing the condition

# Question:: Write the program which one is greaterthan

NUMBER=$1

if [$NUMBER -gt 10]     #For condition use this bracess   if[]
then
    echo "The Entered  $NUMBER is greaterthan 10"

else 
    echo "The entered $NUMBER is lessthan 10"

fi