#!/bin/bash
cd /config

# Add all changes to Git
git add .

# Commit the changes with a timestamp
git commit -m "Automated backup $(date +'%Y-%m-%d %H:%M:%S')"

# Push the changes to the master branch on GitHub
git push origin master
