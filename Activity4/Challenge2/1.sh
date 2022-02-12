#!/bin/bash

#Design script that:
#    -Get first name (str) , second name (str), phone number (int), Department (str), Salary (int)
#    -Validate for input type, reject what’s not matched the input type
#    -Don’t accept duplicated phone number
#    -Save new employee record in your database file
#    -Print the insertion done successfully

db_file="emp_db.csv"
if [[ ! -f $db_file ]]
    then 
        touch $db_file
fi

echo "Please enter your First name"
read first_name
while [[ $first_name != +([A-Za-z]) ]]
do
    echo "First name must contain only letters, Please enter a valid one"
    read first_name
done

echo "Please enter your Second name"
read second_name
while [[ $second_name != +([A-Za-z]) ]]
do
    echo "Second name must contain only letters, Please enter a valid one"
    read second_name
done

echo "Please enter your Phone number"
read phone_num
while [[ 1 == 1 ]]
do
    if [[ $phone_num != +([0-9]) ]]
        then 
            echo "Phone number must contain only numbers, Please enter a valid one"
    fi
    phone_num_exist=`awk -F : -v entered_phone=$phone_num 'entered_phone == $3 { print $3 }' $db_file`
    if [[ $phone_num_exist ]]
        then
            echo "Phone number already exist, Please enter a valid one"
    else
        break;
    fi
    read phone_num
done

echo "Please enter your Department name"
read dep_name
while [[ $dep_name != +([A-Za-z]) ]]
do
    echo "Department name must contain only letters, Please enter a valid one"
    read dep_name
done

echo "Please enter your Salary"
read salary
while [[ $salary != +([0-9]) ]]
do
    echo "Salary msut be in number format, Please enter a valid one"
    read salary
done


echo "$first_name:$second_name:$phone_num:$dep_name:$salary" >> $db_file

echo "Employee '$first_name $second_name' added successfully!"