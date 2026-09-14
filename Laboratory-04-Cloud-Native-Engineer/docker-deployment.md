````markdown
# Docker Deployment

## Checkpoint 3 - Docker Verification

### Docker Version

```bash
docker --version
````

This command was used to confirm that Docker was available in the KillerCoda environment and to identify the installed version.

### Docker Information

```bash
docker info
```

This command displayed details about the Docker system and helped verify that the Docker daemon was active and ready to use.

## Checkpoint 4 - Nginx Deployment

### Download Nginx Image

```bash
docker pull nginx
```

I used this command to obtain the official Nginx image from the Docker registry so it could be used for the deployment.

### Create and Start Nginx Container

```bash
docker run -d --name nginx-server -p 8080:80 nginx
```

This command started a new Nginx container in detached mode and forwarded requests from host port 8080 to port 80 inside the container.

### Check the Nginx Server

```bash
curl http://localhost:8080
```

This command sent a request to the deployed web server and allowed me to confirm that Nginx was responding successfully.

## Checkpoint 5 - Container Lifecycle

### Check Active Containers

```bash
docker ps
```

This command displayed the containers that were currently active, including the Nginx container.

### Stop Nginx Container

```bash
docker stop nginx-server
```

I used this command to shut down the Nginx container without deleting it from the Docker environment.

### Check the Running Containers Again

```bash
docker ps
```

After stopping the container, this command confirmed that the Nginx container was no longer running.

### Delete the Container

```bash
docker rm nginx-server
```

This command deleted the stopped Nginx container from the Docker environment.

### Confirm Container Removal

```bash
docker ps -a
```

I used this command to display all containers and confirm that the removed Nginx container was no longer listed.

```
```
