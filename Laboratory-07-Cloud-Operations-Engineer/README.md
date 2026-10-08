# Laboratory Activity 7 - Cloud Operations Engineer

## Mission Overview

Laboratory Activity 7 introduced the role of a Cloud Operations Engineer by focusing on the monitoring and health of a cloud-based environment. During the activity, I examined the Linux server's resources, deployed an Nginx web server through Docker, tested the application with HTTP requests, reviewed its logs, and observed the container's resource consumption.

The activity demonstrated how system information, logs, and performance measurements can be used together to determine whether an application and its underlying infrastructure are functioning as expected. It also provided hands-on practice in finding errors and checking the performance of a running Docker container.

## Objectives

The activity aimed to:

- Check the host server's memory, disk space, and CPU activity.
- Establish a basic performance reference for the Linux environment.
- Deploy an Nginx web server inside a Docker container.
- Test the web server by sending HTTP requests.
- Create and identify a `404 Not Found` response.
- Inspect the logs produced by the Nginx container.
- Observe the container's CPU, memory, and network activity.
- Record technical findings using Markdown.
- Improve practical skills in cloud monitoring and troubleshooting.

## Monitoring Commands Executed

### Checking Memory

```bash
free -h
```

This command was used to view the available and used memory of the Linux host.

### Checking Disk Space

```bash
df -h /
```

This command displayed the storage information for the root (`/`) file system.

### Checking CPU and Processes

```bash
top
```

This command provided a live view of running processes and the current CPU activity of the server.

### Starting the Nginx Container

```bash
docker run -d -p 8080:80 --name client-website nginx
```

This command created the `client-website` container and ran the Nginx web server in the background. Port `8080` on the host was connected to port `80` inside the container.

### Checking the Container

```bash
docker ps
```

This command confirmed that the Nginx container was successfully running.

### Testing the Web Server

```bash
curl http://localhost:8080
```

This command was used to send requests to the Nginx server and simulate website visits.

### Testing an Invalid Page

```bash
curl http://localhost:8080/hidden-admin-page
```

This request accessed a nonexistent page so that a `404 Not Found` response could be generated and later identified in the application logs.

### Checking Container Logs

```bash
docker logs client-website
```

This command displayed the requests and responses recorded by the Nginx container, including the generated 404 error.

### Checking Container Performance

```bash
docker stats
```

This command provided live information about the container's CPU usage, memory consumption, network activity, and other resource statistics.

## Skills Learned

This laboratory activity improved my ability to monitor and troubleshoot a Linux-based cloud environment. I learned how to use basic Linux commands to examine memory, storage, CPU activity, and running processes before and during application deployment.

I also gained experience deploying an Nginx web server with Docker and testing it through HTTP requests. Creating an intentional 404 error helped me understand how application problems can appear in server logs and how those logs can be used when investigating an issue.

Using `docker stats` also gave me practical experience in observing the resources consumed by a running container. I learned that monitoring both logs and performance metrics provides useful evidence when determining the condition of an application.

Overall, this activity strengthened my understanding of cloud operations, Docker, Linux monitoring, application troubleshooting, and technical documentation. It also showed me the importance of using actual system data instead of relying only on assumptions when checking whether a cloud application is healthy.
