# Backup Script Guide

## 1. Backup Script

This script creates a compressed backup of the `app-data` folder. It saves the backup in the `backups` folder with the current date and time.

```bash
#!/bin/bash

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"
```

## 2. File Permissions

```bash
chmod +x backup.sh
```

This command allows the script to run as a program.

## 3. Cron Schedule

```bash
0 2 * * * /root/backup.sh
```

This command runs the backup script every day at 2:00 AM.

- **Minute:** `0` means the start of the hour.
- **Hour:** `2` means 2 AM.
- **Day of Month:** `*` means every day.
- **Month:** `*` means every month.
- **Day of Week:** `*` means every day of the week.
