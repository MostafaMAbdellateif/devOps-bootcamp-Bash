#!/bin/bash

#7. Create a Bash script which will take 2 numbers as command line arguments. 
#   It will print to the screen the larger of the two numbers.

if [ $1 -gt $2 ]
    then
        echo $1
else
    echo $2
fi