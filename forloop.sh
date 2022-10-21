#!/bin/bash

dir=`pwd`
num=$1

if  (( $num%2==0 ));
then
if [ ! -d "$dir/even" ];
then
mkdir even
cd $dir/even
for i in {0..20..2}
do
touch $i.txt
done
elif [ -d "$dir/even" ];
then
echo "Even directory already exists"
fi
else
if [ ! -d "$dir/odd" ];
then
mkdir odd
cd  $dir/odd
for i in {1..20..2}
do
touch $i.txt
done
elif [ -d "$dir/odd" ];
then 
echo "Odd directory already exists"
fi
fi
