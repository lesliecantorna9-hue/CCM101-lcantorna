# Laboratory 06 - Cloud Deployment Engineer

## Mission Overview

This laboratory activity is about deploying a private cloud storage system using Docker Compose. It uses Nextcloud for the web application and MariaDB for storing database information.

The activity demonstrates how multiple containers can work together. By using a YAML configuration file, the entire application can be deployed and managed more easily.

## Objectives

After completing this laboratory activity, I should be able to:

* Describe how a two-tier application works.
* Create and understand a Docker Compose YAML file.
* Use Nano to write and edit configuration files.
* Run Nextcloud and MariaDB together in separate containers.
* Understand how containers communicate with each other.
* Apply Infrastructure as Code in cloud deployment.
* Organize and document laboratory activities in GitHub.

## Commands Executed

The following commands are used to configure and deploy the application:

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down
```

## Skills Learned

During this activity, I developed the following skills:

* Understanding two-tier architecture
* Creating YAML configuration files
* Deploying applications with Docker Compose
* Managing multiple Docker containers
* Configuring application and database services
* Connecting containers through a network
* Using Linux terminal commands
* Applying Infrastructure as Code
* Writing technical documentation in Markdown
* Managing a GitHub portfolio
