# Laboratory 04 - Cloud-Native Engineer

## Mission Overview

In this laboratory activity, I explored how container technology is used in modern cloud environments. I compared Virtual Machines with containers and used KillerCoda to perform basic Docker operations. I also deployed an Nginx web server in a container and practiced managing its lifecycle using Docker commands.

## Objectives

* Identify the main differences between Virtual Machines and containers.
* Work with a Linux environment that supports Docker.
* Perform basic Docker commands using the terminal.
* Download and deploy an Nginx Docker image.
* Access the Nginx server through a mapped port.
* Practice starting, stopping, and removing containers.
* Record the activities using Markdown and organize them in GitHub.

## Docker Commands Executed

### Docker Environment Verification

The Docker installation and environment were checked using the following commands:

```bash
docker --version
docker info
````

### Nginx Container Deployment

The official Nginx image was downloaded and used to create a running container. The container port was connected to port 8080 on the host machine.

```bash
docker pull nginx
docker run -d --name nginx-server -p 8080:80 nginx
curl http://localhost:8080
```

### Container Lifecycle Management

The following commands were used to view the container, stop it, and remove it from the system:

```bash
docker ps
docker stop nginx-server
docker ps
docker rm nginx-server
docker ps -a
```

## Skills Learned

I learned how Docker images and containers work and how to use basic Docker commands through the Linux terminal. I was able to download the Nginx image, create a container, and make the web server accessible through port 8080. I also learned how to check running containers, stop a container, and remove it after use.

## Challenges Encountered

One challenge I encountered was understanding how the host port and container port work together. I initially needed to understand why port 8080 was assigned to the host while Nginx continued to use port 80 inside the container. After using the port mapping command and checking the result with curl, I understood that requests sent to port 8080 on the host were forwarded to Nginx on port 80 inside the container.

```
