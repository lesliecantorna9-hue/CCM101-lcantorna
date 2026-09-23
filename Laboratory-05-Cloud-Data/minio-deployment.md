# MinIO Deployment Documentation

## Deployment Overview

For this laboratory activity, I set up **MinIO** as an S3-compatible object storage service in the KillerCoda Ubuntu Playground.

The purpose of the setup was to provide a separate storage environment for a client's photo-sharing application. Instead of keeping uploaded images inside the application container, MinIO was used to store the files as objects. The deployment included running MinIO through Docker, opening the Web Console, creating the required bucket, and testing the storage service by uploading a sample file.

## 1. Docker Deployment

I deployed the MinIO server through Docker using the following command:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" quay.io/minio/minio server /data --console-address ":9001"
```

The command starts a MinIO container and prepares the ports and login information needed to access the storage service.

### Command Breakdown

| Option | Purpose |
| ------------------------------------ | --------------------------------------------------------------------- |
| `docker run` | Starts a new container using the selected MinIO image. |
| `-d` | Keeps the container running in the background. |
| `-p 9000:9000` | Makes the MinIO API available through port `9000`. |
| `-p 9001:9001` | Makes the MinIO Web Console available through port `9001`. |
| `--name minio-server` | Sets `minio-server` as the name of the Docker container. |
| `-e` | Supplies configuration values to the container as environment variables. |
| `MINIO_ROOT_USER=cloudadmin` | Defines the initial administrator username. |
| `MINIO_ROOT_PASSWORD=CloudNova2026!` | Defines the initial administrator password. |
| `quay.io/minio/minio` | Identifies the MinIO image that Docker will use. |
| `server /data` | Runs MinIO as a server and assigns `/data` as its storage path. |
| `--console-address ":9001"` | Sets port `9001` for the MinIO Web Console. |

The `-e` options were used to pass the MinIO administrator credentials into the container during startup. This allowed the Web Console to be accessed using the account configured in the Docker command.

## 2. Container Verification

Once the MinIO container had been started, I checked its status with:

```bash
docker ps
```

The command was used to confirm that the `minio-server` container was active. The output also allowed me to check whether the API and Web Console ports were correctly exposed.

The screenshot of the Docker deployment and running container was saved as:

```text
screenshots/minio-deployed.png
```

## 3. Web Console Access

To manage the MinIO server through a browser, I opened the **Traffic / Ports** or **Custom Ports** section of the KillerCoda Playground.

I entered the following port:

```text
Port: 9001
```

This opened the MinIO Web Console where I could manage the storage environment.

I used the administrator credentials configured in the Docker deployment:

```text
Username: cloudadmin
Password: CloudNova2026!
```

Port `9000` was included in the Docker configuration for MinIO's S3-compatible API. Port `9001` was assigned to the Web Console, which was the port used to access the graphical interface during the activity.

## 4. Bucket Creation

After accessing the MinIO Web Console, I went to the **Buckets** section and created a new bucket for the client's application.

The bucket was named:

```text
client-photos
```

The `client-photos` bucket was created as the storage location for the sample data used in the laboratory.

In Object Storage, a bucket works as a logical container where objects such as images, documents, and other files can be stored and organized.

## 5. Object Upload

After creating the bucket, I opened `client-photos` and used the **Upload** option to add a safe sample image or text file.

The uploaded file was displayed inside the bucket after the operation was completed. This provided a simple test that the MinIO server was accepting and storing objects correctly.

The screenshot showing the bucket and uploaded object was saved as:

```text
screenshots/minio-bucket-upload.png
```

## 6. Deployment Result

The MinIO object storage environment was successfully deployed and tested in the KillerCoda Ubuntu Playground.

The Docker container was confirmed to be running, and the MinIO Web Console was accessed through port `9001`. The `client-photos` bucket was created successfully, and a sample file was uploaded to it. These results demonstrated that the MinIO server was working as an S3-compatible object storage solution for the client's photo-sharing application.
