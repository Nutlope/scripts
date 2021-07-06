#!/bin/bash

# Script to run git add, commit and push in one command. Commit message is 1st arg so you would run like so: "commit $MESSAGE"
# Bonus tip, add an alias in .bashrc or .zshrc for running this script called commit, so you can do commit "message here".

git add .
git commit -m "$1"
git push 
