#!/bin/bash

cd /home/moris/ACA_repo
echo "Hello ACA course" > test_file
name="test_file"
git add $name
git commit -m  "Adding a file"
git push origin main
