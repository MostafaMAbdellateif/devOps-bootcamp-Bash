#!/bin/bash

#1. Write a script called mychmod using for utility to give execute permission to all files in your home directory.

for file in `ls -p ~| grep -v /`
do
    chmod u+x "~/${file}"
done 