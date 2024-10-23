#!/bin/bash
cd /config

# Log the start of the backup
echo "Starting Git backup" > /config/git_backup.log

# Configure Git user details
git config user.name "Tobin Dunn"
git config user.email "tobin@thedunnhome.com"

# Add all changes to Git
git add . >> /config/git_backup.log 2>&1

# Commit the changes with a timestamp
git commit -m "Automated backup $(date +'%Y-%m-%d %H:%M:%S')" >> /config/git_backup.log 2>&1

# Force push the changes using HTTPS and personal access token
git push https://dobytunn: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@github.com/dobytunn/Home-Assistant-Config.git --force >> /config/git_backup.log 2>&1

echo "Backup completed" >> /config/git_backup.log
