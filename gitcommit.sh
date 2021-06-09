#!/bin/bash

# Script to run git add, commit and push in one command. Commit message is 1st arg

git add .
git commit -m "$1"
git push 
