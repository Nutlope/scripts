#!/bin/bash

# Script to run git add, commit and push in one command. Commit message is 1st arg so you would run like so: "commit $MESSAGE"

git add .
git commit -m "$1"
git push 
