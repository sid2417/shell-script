#!/bin/bash/

# Now we are discussing about arrays

# syntax: arrayname=(<here you mention the list with double codes>)

MOVIES=("Avatar" "Inception" "Titanic")

# size of the array start with 1
# index of the array start with 0
# in shell script @ means everything

echo "First movie name is : ${MOVIES[0]}"

echo "Second movie name is : ${MOVIES[1]}"

echo "Third movie name is : ${MOVIES[2]}"

echo "@ means everything now its print everything : ${MOVIES[@]}"