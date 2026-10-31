# CloudNova – User and Deployment Manual

## Introduction

CloudNova is a self-hosted cloud storage system powered by Nextcloud and MariaDB. It is deployed using Docker Compose on Ubuntu Server 24.04 LTS.

This manual provides instructions for starting, accessing, managing, and backing up the CloudNova system.

## System Requirements

- Ubuntu Server 24.04 LTS
- Oracle VirtualBox
- Docker Engine
- Docker Compose
- Nextcloud
- MariaDB 10.11
- Internet connection

## Starting the CloudNova Server

1. Open Oracle VirtualBox.
2. Start the Ubuntu Server virtual machine.
3. Log in to Ubuntu.
4. Open the terminal.
5. Navigate to the project directory:

```cd ~/cloudnova```

## Starting Docker Services

Start the Nextcloud and MariaDB containers:

```docker compose up -d```

Check the container status:

```docker compose ps```

Make sure the containers are running.

## Accessing Nextcloud

1. Open a web browser.
2. Enter the following address:

```http://localhost:8080```

3. Enter your Nextcloud username and password.
4. Access the Nextcloud dashboard.

Note: Access through localhost:8080 is for the host computer running the virtual machine with the configured port forwarding.

## Managing Docker Services

To stop the services:

```docker compose stop```

To restart the services:

```docker compose restart```

To view container logs:

```docker compose logs```

## Manual Backup

To manually run the backup script:

```cd ~/cloudnova./backup.sh```

The script creates backups of:

- MariaDB database
- Nextcloud files

## Checking Backup Files

To view generated backup files:

```ls -lh ~/cloudnova/backups```

Backup files are stored in:
```/home/ubuntu/cloudnova/backups```

## Automated Backup

CloudNova uses Cron to schedule automatic execution of the backup script.

To view the current user's Cron jobs:

```crontab -l```

To edit scheduled tasks:

```crontab -e```

## Security Management

Check the UFW firewall status:

```sudo ufw status```

Review the firewall rules before making changes.

## Important Reminders

- Do not delete Docker volumes unless you intend to remove stored data.
- Keep database credentials private.
- Check backup files regularly.
- Ensure Docker services are running before accessing Nextcloud.
- Keep copies of important backup files in a separate safe location.

## Conclusion

This manual provides the basic procedures for operating and maintaining the CloudNova self-hosted cloud storage system using Nextcloud, MariaDB, Docker Compose, and Ubuntu Server 24.04 LTS.
