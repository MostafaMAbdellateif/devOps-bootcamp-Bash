#!/bin/bash

#2. Enhanced the previous script, by checking the type of string entered by a user: 
    # a. Upper Cases. 
    # b. Lower Cases. 
    # c. Numbers. 
    # d. Mix. (Upper and lower cases)
    # e. Nothing.

# shopt -s extglob

echo "please enter a string"
read str

case ${str} in
    +([A-Z]))
        echo "It's an upper Case string"
        ;;
    +([a-z]) )
        echo "It's a lower Case string"
        ;;
    +([0-9]) )
        echo "It's a number"
        ;;
    +([A-Za-z]) )
        echo "It's a mixed string (upper & lower Case)"
        ;;
    *)
        echo "Nothing"
        ;;
esac