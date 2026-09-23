# MinIO Deployment Documentation

## Introduction

For this laboratory activity, I deployed MinIO, an S3-compatible object storage server, inside the KillerCoda Ubuntu Playground using Docker.

The purpose of the deployment was to create a proof-of-concept object storage environment for a client developing a photo-sharing application. The storage server was used to create a bucket and store a sample file.

## 1. Deployment Environment

The deployment was completed using the following environment:

- **Platform:** KillerCoda Ubuntu Playground
- **Operating System:** Ubuntu
- **Container Platform:** Docker
- **Storage Server:** MinIO
- **MinIO Image:** `minio/minio`
- **API Port:** `9000`
- **Web Console Port:** `9001`
- **Bucket Name:** `client-photos`

## 2. Deploying MinIO Using Docker

I used Docker to download and start the MinIO server.

The exact Docker command used was:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
minio/minio server /data --console-address ":9001"
