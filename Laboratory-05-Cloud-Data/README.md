# Laboratory 05 – Cloud Data Engineer

## Mission Overview

This laboratory activity focuses on cloud storage technologies and the role of Object Storage in modern cloud applications. The activity begins by examining the differences between **Block Storage, File Storage, and Object Storage** and understanding how each storage type is used for different workloads.

For the practical portion of the mission, I deployed **MinIO**, an S3-compatible object storage server, using Docker in the KillerCoda Ubuntu Playground. I configured the MinIO server using environment variables, mapped the API and Web Console ports, accessed the MinIO Web Console, created a bucket named `client-photos`, and uploaded a sample file into the bucket.

The activity demonstrates how object storage can provide a scalable and accessible solution for storing large amounts of unstructured data such as images, videos, documents, and backups.

---

## Objectives

The objectives of this laboratory activity were to:

- Differentiate between Block, File, and Object Storage.
- Understand the primary use cases of different cloud storage types.
- Deploy an S3-compatible Object Storage server using Docker.
- Configure MinIO using environment variables.
- Map and access specific container ports.
- Access the MinIO Web Console through port `9001`.
- Create a storage bucket named `client-photos`.
- Upload and verify a sample object inside the bucket.
- Document cloud storage operations using Markdown.
- Maintain and expand a professional GitHub Cloud Computing portfolio.

---

## Tools Used

| Tool | Purpose |
|---|---|
| **KillerCoda** | Provided the browser-based Ubuntu and Docker environment for the laboratory. |
| **Ubuntu Linux** | Provided the command-line environment for deploying and managing MinIO. |
| **Docker** | Used to deploy and run MinIO as a containerized service. |
| **MinIO** | Provided the S3-compatible object storage server. |
| **Web Browser** | Used to access and manage the MinIO Web Console. |
| **GitHub** | Used to store, organize, and document the laboratory portfolio. |
| **Markdown** | Used to create the required technical documentation files. |

---

## Skills Learned

Through this laboratory activity, I developed a better understanding of the three major cloud storage models: Block Storage, File Storage, and Object Storage, including their differences, characteristics, and common use cases. I also gained practical experience deploying MinIO as a containerized object storage service using Docker and learned how environment variables can be used to configure administrator credentials. In addition, I learned how port mapping allows a service running inside a container to be accessed through a web browser. I also gained experience using the MinIO Web Console to create a bucket named `client-photos` and upload an object. This activity improved my confidence in using Linux commands such as `docker run` and `docker ps` and helped me understand how containerized cloud services can be deployed and managed. Finally, I strengthened my technical documentation skills by organizing Markdown files, screenshots, and deployment information in a structured GitHub Cloud Computing portfolio.
