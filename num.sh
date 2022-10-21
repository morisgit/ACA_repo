#!/bin/bash

num=$1
if (( $num%3==0 ||  $num%5==0 || $num%7==0 ));
then
echo "Entered number is Divisible"
else 
echo "Entered number is not Divisible"
fi
