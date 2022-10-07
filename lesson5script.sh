#!/bin/bash

#Creating directory for archivated files
base_dir=`pwd`
arch_dir=$base_dir/archive_directory
if [ ! -d $arch_dir ]
then
mkdir $arch_dir
fi

#Creating log file
echo "Enter username: "
read uname
echo "Your username is $uname"
if
is_exist="$(grep $uname -w /etc/passwd)"
then
touch  $uname-$(date "+%Y-%m-%d-%H-%M-%S")
file_name=$base_dir/$uname*

#Checking ssh service enabled or disabled and store result in the created log file
sudo  systemctl status sshd | grep ssh > $file_name
grep ssh /var/log/auth.log >> $file_name
gzip  $file_name

mv $file_name $arch_dir
else
echo "Your username is not valid"
fi
