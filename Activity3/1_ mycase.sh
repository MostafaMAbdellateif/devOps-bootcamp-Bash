#!/bin/bash

#1. Write a script called mycase, using the case utility to checks the type of character entered by a user: 
    #a. Upper Case. 
    #b. Lower Case. 
    #c. Number. 
    #d. Nothing. 

echo "please enter one character"
read char

case ${char} in
    [A-Z])
        echo "It's an upper Case character"
        ;;
    [a-z])
        echo "It's a lower Case character"
        ;;
    [0-9])
        echo "It's a number"
        ;;
    *)
        echo "Nothing"
        ;;
esac