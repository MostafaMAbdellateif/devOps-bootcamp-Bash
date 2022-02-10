#!/bin/bash

#9. Create a Bash script which will print a message based upon which day ofthe week it is (e.g.'Happy weekend day' for Friday and Saturday).

day_of_the_week=$(date +%u)
case ${day_of_the_week} in
    6 | 5 )
        echo "Today is a weekend, Enjoy!"
        ;;

    4 )
        echo "Today is the last day of work"
        ;;

    *)
        echo "Let's do some work"
        ;;
esac