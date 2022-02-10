#!/bin/bash

#8. Create a Bash script which will accept a file as a command line argument and analysis it in certain ways. 
#   e.g.you could check if the file is executable or writable. 
#   You should print a certain message if true and another if false

if [ -f $1 ];
    then 
        if [ -w $1 ]
            then
                echo "File $1 is writable"
        fi
        if [ -x $1 ]
            then 
                echo "File $1 is executable"
        fi
        if [ -r $1 ]
            then 
                echo "File $1 is readable"
        fi
else 
    echo "File does not exist"
fi