#!/bin/bash

#Create a directory with a name of<yourName>-<currentDate>
#Write a bash script to:
#    Create twenty-five empty (0 KB) files (Hint: Use thetouchcommand)
#    The file names should be<yourName><number>,<yourName><number+1>,<yourName><number+2> and so on
#    Design the script so that each time you execute it, it creates the next batch of 25 files with increasing numbers starting with the last or max number that already exists
#    Do not hard code these numbers. You need to generate them using automation
#Test the script. Display along list of the directory and its contents to validate that the script created the expected files.

my_name="MostafaAbdellatif"
current_date=$(date '+%Y-%m-%d')
folder_name="$my_name-$current_date"

if [ ! -d "$folder_name" ]
    then
        mkdir "$folder_name"
fi

max_file_number=`ls -f ./$folder_name | grep "^$my_name" | sed "s/$my_name*//g" | sort -V | tail -1`
if [ ! $max_file_number ]
    then
        max_file_number=0
fi

for ((a=1; a<=25; a++))
do
    touch "$folder_name/$my_name"$(($a + $max_file_number))
done

ls $folder_name