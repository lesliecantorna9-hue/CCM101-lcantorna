# Laboratory 09: Cloud Automation Engineer

## Mission Overview

This activity is about using a Bash script to back up files automatically. I also learned how to schedule tasks using Cron.

## Objectives

- Learn basic Bash commands.
- Create a backup script.
- Make the script executable.
- Schedule automatic backups using Cron.
- Document the activity in GitHub.

## Commands Executed

```bash
mkdir app-data
echo "This is critical client data." > app-data/data.txt
nano backup.sh
chmod +x backup.sh
./backup.sh
ls -l backups/
crontab -l
env EDITOR=nano crontab -e
crontab -l
```

## Skills Learned

I learned how to create a Bash script, back up files, change file permissions, and schedule automatic tasks.
