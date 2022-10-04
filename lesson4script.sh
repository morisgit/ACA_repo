#!/bin/bash

cd /home/moris/ACA_repo
echo "Hello ACA course" > test_file
name="test_file"
git add test_file
git commit -m  "Adding a file"
git push origin main
