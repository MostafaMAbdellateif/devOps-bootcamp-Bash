#!/bin/bash

# 4. Design a script that accept 3 arguments(option[-i, -c, -d], word, file) based on the option if it:
    # -i: print the lines that contain the givenword.
    # -c: print the number of matched given word.
    # -d: print the file after deleting the lines that contain the given word.

case $1 in
    -i)
        grep $2 $3
        ;;
    -c)
        grep -c $2 $3
        ;;
    -d)
        sed "/$2/d" $3
        ;;
    *)
        echo "you have to enter 1 of three options (-i, -c, -d)"
        ;;
esac