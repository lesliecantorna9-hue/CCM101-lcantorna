# MinIO Deployment Documentation

## Deployment Overview

For this laboratory activity, I deployed **MinIO**, an S3-compatible object storage server, inside the KillerCoda Ubuntu Playground using Docker.

The goal of the deployment was to create a working proof-of-concept object storage environment for the client's photo-sharing application. The deployment allowed me to run MinIO in a container, access its Web Console, create a storage bucket, and upload a sample object.

## 1. Docker Deployment

The MinIO server was deployed using Docker with the following command:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" quay.io/minio/minio server /data --console-address ":9001"
```

The command creates a Docker container using the MinIO image and configures the ports and administrator credentials required for the deployment.

### Command Breakdown

| Option | Purpose |
| ------------------------------------ | --------------------------------------------------------------------- |
| `docker run` | Creates and starts a new Docker container. |
| `-d` | Runs the container in detached mode. |
| `-p 9000:9000` | Maps port `9000` from the host to the MinIO API port. |
| `-p 9001:9001` | Maps port `9001` from the host to the MinIO Web Console. |
| `--name minio-server` | Assigns the name `minio-server` to the container. |
| `-e` | Defines an environment variable inside the container. |
| `MINIO_ROOT_USER=cloudadmin` | Sets the administrator username for MinIO. |
| `MINIO_ROOT_PASSWORD=CloudNova2026!` | Sets the administrator password for MinIO. |
| `quay.io/minio/minio` | Specifies the MinIO Docker image. |
| `server /data` | Starts MinIO as a server and uses `/data` as the storage location. |
| `--console-address ":9001"` | Configures the MinIO Web Console to use port `9001`. |

The `-e` options are used to provide environment variables to the container. In this deployment, the variables were used to configure the administrator username and password when MinIO was started.

## 2. Container Verification

After deploying MinIO, I verified that the container was running by using:

```bash
docker ps
```

The command displays the active Docker containers. I checked the output to confirm that the `minio-server` container was running and that the required ports were mapped correctly.

The deployment screenshot was saved in the `screenshots` folder using the following filename:

```text
screenshots/minio-deployed.png
```

## 3. Web Console Access

After confirming that the container was running, I opened the **Traffic / Ports** or **Custom Ports** section in the KillerCoda Playground.

I entered port `9001` to access the MinIO Web Console.

```text
Port: 9001
```

The MinIO administrator credentials configured during deployment were:

```text
Username: cloudadmin
Password: CloudNova2026!
```

After entering the credentials, I was able to access the MinIO Web Console.

Port `9000` was also mapped during deployment because it is used by the MinIO S3-compatible API. Port `9001` was configured specifically for the Web Console.

## 4. Bucket Creation

After logging into the MinIO Web Console, I opened the **Buckets** section and selected the option to create a new bucket.

The required bucket name was:

```text
client-photos
```

The bucket was created successfully and was used as the storage location for the sample object.

A bucket acts as a logical container for objects in an object storage system. It allows files and other stored data to be organized within a specific storage location.

## 5. Object Upload

After creating the `client-photos` bucket, I opened the bucket and selected the **Upload** option.

I uploaded a safe sample image or text file from the local computer.

After the upload process was completed, the file appeared inside the `client-photos` bucket. This confirmed that the MinIO server could successfully receive and store an object.

The screenshot showing the bucket and uploaded object was saved as:

```text
screenshots/minio-bucket-upload.png
```

## 6. Deployment Configuration

The main configuration used for the MinIO deployment is shown below:

| Configuration | Value |
| -------------------------------- | -------------------------------- |
| Storage Server | MinIO |
| Container Platform | Docker |
| Docker Image | `quay.io/minio/minio` |
| Container Name | `minio-server` |
| API Port | `9000` |
| Web Console Port | `9001` |
| Storage Directory | `/data` |
| Administrator Username | `cloudadmin` |
| Administrator Password | `CloudNova2026!` |
| Bucket Name | `client-photos` |
| Deployment Environment | KillerCoda Ubuntu Playground |

## 7. Environment Variables

The Docker deployment used two environment variables to configure the MinIO administrator account.

The first variable was:

```text
MINIO_ROOT_USER=cloudadmin
```

This variable sets the administrator username used to log into the MinIO Web Console.

The second variable was:

```text
MINIO_ROOT_PASSWORD=CloudNova2026!
```

This variable sets the administrator password used for the MinIO account.

Environment variables make it possible to provide configuration values when the Docker container is created. This makes the deployment process easier because the required settings can be included directly in the Docker command.

For a real production environment, administrator credentials should be protected and should not be placed in a public GitHub repository.

## 8. Port Configuration

The Docker deployment exposed two MinIO ports.

### Port 9000

Port `9000` was used for the MinIO S3-compatible API.

```text
9000:9000
```

The first port represents the host port, while the second port represents the port inside the MinIO container.

### Port 9001

Port `9001` was used for the MinIO Web Console.

```text
9001:9001
```

This port allowed the graphical MinIO management interface to be accessed through the KillerCoda Playground.

## 9. Screenshot Evidence

The laboratory activity required screenshots as evidence of the completed deployment.

The first screenshot shows the MinIO container after the Docker deployment and container verification.

```text
screenshots/minio-deployed.png
```

The second screenshot shows the MinIO Web Console with the created `client-photos` bucket and the uploaded sample object.

```text
screenshots/minio-bucket-upload.png
```

These screenshots provide evidence that the MinIO server was deployed successfully and that the storage operations were completed.

## 10. Deployment Result

The MinIO object storage server was successfully deployed using Docker inside the KillerCoda Ubuntu Playground.

The `minio-server` container was verified using the `docker ps` command. The MinIO Web Console was accessed through port `9001`, and the administrator credentials configured through the environment variables were used to log in.

The required `client-photos` bucket was successfully created, and a sample object was uploaded into the bucket. The successful upload confirmed that the object storage environment was working correctly.

## 11. Conclusion

This laboratory activity demonstrated how MinIO can be used to create an S3-compatible object storage environment for a cloud application.

Docker made the deployment easier because the MinIO server could be started inside a container with the required ports and configuration settings. The MinIO Web Console also provided an easy way to create buckets and manage uploaded objects.

The completed setup provides a proof-of-concept storage environment for the client's photo-sharing application. Instead of storing user-uploaded images directly inside the web server container, the application can use object storage to keep the images separately.
