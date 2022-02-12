#!/bin/bash

#3. Design script that used to reset user password
#    -You will get the user id
#   -If user id not exist ask him to re-enter valid id, 
#   -if exist 
#        Ask user to enter old password 
#        -if right ask him for new password and then update it to the DB, 
#        -if not ask him to re-enter the right old password.

db_file="ids.csv"

echo "----- reset password -----"
echo "Please write your ID"
read user_id

while [[ 1 == 1 ]]
do
    is_exist=`awk -F : -v entered_id=$user_id 'entered_id == $1 { print $1 }' $db_file`
    if [[ $is_exist ]]
        then
            break
    else
        echo "ID does not exist, Please enter a valid ID"
        read user_id
    fi
done

name=`awk -F : -v entered_id=$user_id 'entered_id == $1 { print $2 }' $db_file`
echo "Welcome $name, please enter your old password"
read entered_pass

current_pass=`awk -F : -v entered_id=$user_id 'entered_id == $1 { print $3 }' $db_file`

while [[ $current_pass != $entered_pass ]]
do
    echo "Wrong password, try again"
    read entered_pass
done

echo "That's correct, now please enter your new password"
read updated_pass
sed -i "s/$user_id:$name:$current_pass/$user_id:$name:$updated_pass/g" $db_file

echo "Password changed successfully"