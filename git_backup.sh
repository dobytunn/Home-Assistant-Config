#!/bin/bash
cd /config

echo "Starting Git backup" > /config/git_backup.log

# Add all changes to Git
/usr/bin/git add . >> /config/git_backup.log 2>&1


# Commit the changes with a timestamp
/usr/bin/git commit -m "Automated backup $(date +'%Y-%m-%d %H:%M:%S')" >> /config/git_backup.log 2>&1

# Push the changes to the master branch on GitHub
/usr/bin/git push origin master --force >> /config/git_backup.log 2>&1

echo "Backup completed" >> /config/git_backup.log
