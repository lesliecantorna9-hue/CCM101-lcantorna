#!/bin/bash

BACKUP_DIR="/home/ubuntu/cloudnova/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

echo "Starting CloudNova backup..."

sudo docker exec nextcloud-db sh -c \
'mariadb-dump --user=root --password="$MYSQL_ROOT_PASSWORD" nextcloud' \
"$BACKUP_DIR/database-$DATE.sql" || exit 1

sudo docker run --rm \
-v cloudnova_nextcloud_data:/source:ro \
-v "$BACKUP_DIR":/backup \
alpine tar -czf "/backup/nextcloud-files-$DATE.tar.gz" -C /source . || exit 1

echo "Backup completed successfully!"
echo "Backup location: $BACKUP_DIR"
