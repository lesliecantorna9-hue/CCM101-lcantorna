
# Backup Script Guide

## Purpose

The backup script creates a compressed `.tar.gz` archive of the `app-data` directory. It adds a timestamp to each backup filename so that backups created at different times can be identified easily.

## Full Bash Script

```bash
#!/bin/bash
# Automated File Backup Script

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Starting the automated backup..."

# Prepare the destination directory
mkdir -p "$BACKUP_DIR"

# Create a compressed archive of the source directory
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup finished successfully at $TIMESTAMP!"
```

## File Permissions

The command `chmod +x backup.sh` gives the script permission to execute. This allows you to run it directly with `./backup.sh`, as long as you have the necessary permissions and the file is saved in the current directory.

```bash
chmod +x backup.sh
./backup.sh
```

## Cron Schedule

Cron expression:

```cron
0 2 * * * /root/backup.sh
```

The five time fields mean:

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | Runs at minute zero |
| Hour | `2` | Runs at 2:00 AM |
| Day of Month | `*` | Runs on every day of the month |
| Month | `*` | Runs in every month |
| Day of Week | `*` | Runs on every day of the week |

The command `/root/backup.sh` specifies the script that Cron will execute. This schedule runs the backup every day at 2:00 AM according to the system's time zone.

To add the schedule, open the Cron editor:

```bash
crontab -e
```

Add this line, save the file, and exit the editor:

```cron
0 2 * * * /root/backup.sh
```

To confirm that the schedule was saved, use:

```bash
crontab -l
```

## Verification

The command `ls -l backups/` displays the backup archives created by the script. Check that a `.tar.gz` file appears in the output.

```bash
ls -l backups/
```

To inspect the contents of a backup archive, use the following command, replacing `backup_FILENAME.tar.gz` with the actual filename:

```bash
tar -tzf backups/backup_FILENAME.tar.gz
```

This command lists the files stored inside the compressed archive without extracting them. If the expected files appear, you can confirm that the archive contains the backed-up data.
