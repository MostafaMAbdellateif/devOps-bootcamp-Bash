#!/bin/bash

#2. Write a script called mybackup using for utility to create a backup of only files in your home directory. 
mkdir ./backup
for file in `ls -p ~| grep -v /`
do
    cp "~/$file" "./backup"
done 