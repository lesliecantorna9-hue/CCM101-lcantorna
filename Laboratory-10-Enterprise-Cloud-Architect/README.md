# CloudNova: Enterprise Cloud Architect

##  Project Overview

CloudNova is a self-hosted cloud storage system developed using Nextcloud and deployed on Ubuntu Server 24.04 LTS through Docker and Docker Compose.

It provides a platform for storing, managing, uploading, and accessing files through a web browser. MariaDB is used for database management, while Docker Volumes provide persistent storage.

## Project Objectives

- Deploy a functional private cloud storage system.
- Configure Nextcloud using Docker Compose.
- Integrate MariaDB as the database.
- Implement persistent storage.
- Configure server security using UFW.
- Create a backup script using Bash.
- Schedule automated backups using Cron.
- Document the project using GitHub.

##  Technologies Used

| Technology | Purpose |
|---|---|
| VirtualBox | Virtual machine platform |
| Ubuntu Server 24.04 LTS | Server operating system |
| Docker | Container platform |
| Docker Compose | Container management |
| Nextcloud | Cloud storage application |
| MariaDB | Database management |
| Docker Volumes | Persistent storage |
| UFW | Firewall management |
| Bash | Backup scripting |
| Cron | Scheduled tasks |
| GitHub | Project documentation |

## Application Access

CloudNova can be accessed through a web browser.

*Local access address:*

[http://127.0.1.1:8080](http://127.0.1.1:8080)

Open Google Chrome or another browser in the Ubuntu environment and enter the address above in the address bar.

## System Features

- Web-based cloud storage access
- User authentication
- File uploading and downloading
- File management
- Database integration
- Persistent data storage
- Backup script
- Firewall configuration

## Installation and Deployment

The project was deployed on Ubuntu Server 24.04 LTS using Docker Compose.

Start the containers:

```docker compose up -d```

Check running containers:

```docker compose ps```

Access Nextcloud through a web browser:

http://localhost:8080

## Backup and Security

CloudNova includes:

- UFW firewall configuration
- Bash backup script
- Cron scheduling
- Persistent Docker volumes
