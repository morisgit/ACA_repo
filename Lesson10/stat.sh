#!/bin/bash
#Lesson 10 task 1

mkdir -p /info
cd /info
(ip addr; uptime; last | grep  `whoami` | head -n 1; df -ah; free -m; ) > /info/"$(date +"%H-%M-%S")".txt
rm `ls -t | awk 'NR>10'`
