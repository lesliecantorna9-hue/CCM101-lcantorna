# Docker Compose Guide

## What Does the `services:` Block Do?

The `services:` section is where the different components of an application are configured. Each service specifies the Docker image and settings needed to run a container. In this project, it organizes the Nextcloud application and MariaDB database so they can work together.

## How Did the Nextcloud App Container Find the Database Container?

Docker Compose allows containers to communicate through an internal network. Nextcloud uses the database service name as its hostname, allowing it to locate MariaDB without needing the database container's IP address. The connection is configured through environment variables in the Compose file.

## What is the Difference Between `docker run` and `docker-compose up -d`?

The `docker run` command is mainly used to launch and configure containers individually. When an application needs multiple containers, each one may require a separate command. On the other hand, Docker Compose uses a YAML file to manage multiple services together, making deployment and configuration easier. The `-d` option allows the containers to run in the background while the terminal remains available for other commands.
