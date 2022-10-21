#!/bin/bash

echo "Enter your password"
read pass

count=`echo $pass | awk '{print length}'`

if [[ $count -lt 8 || $count -gt 32 ]]
then
echo "Entered password is incorrect"
rand=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo "Your temporary password is  $rand"

else
echo "Your password is: $pass"
fi
