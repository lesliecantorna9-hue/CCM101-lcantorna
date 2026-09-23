# Laboratory 05 – Cloud Data Engineer

## Mission Overview

This laboratory activity introduced the concepts and practical use of cloud storage. It focused on understanding how Block Storage, File Storage, and Object Storage handle data and why each type is useful for specific computing needs.

During the hands-on portion, I worked with Docker and MinIO to build a simple object storage environment in the KillerCoda Playground. The MinIO service was started inside a Docker container, configured with administrator credentials, and made accessible through the assigned ports. After opening the MinIO Console, I created the `client-photos` bucket and placed a sample file inside it.

The activity provided a practical example of how cloud storage can separate application data from the application server while providing an organized way to store and manage files.

---

## Objectives

The objectives of this laboratory activity were to:

- Explain the purpose of Block, File, and Object Storage.
- Compare the characteristics of different storage models.
- Set up MinIO as an S3-compatible storage service.
- Use Docker to run a cloud storage application.
- Configure MinIO with administrator environment variables.
- Connect to a containerized service using port forwarding.
- Create and manage a storage bucket.
- Store a sample file as an object.
- Record the deployment process using Markdown documentation.
- Add the completed laboratory work to the GitHub portfolio.

---

## Tools Used

| Tool | Purpose |
|---|---|
| **KillerCoda Playground** | Used as the temporary cloud-based environment for performing the laboratory tasks. |
| **Ubuntu** | Used for executing Linux and Docker commands. |
| **Docker** | Used to create and run the MinIO container. |
| **MinIO** | Used as the object storage platform for the activity. |
| **Web Browser** | Used to open the MinIO management interface. |
| **GitHub Repository** | Used to organize and submit the laboratory documentation and evidence. |
| **Markdown** | Used for writing the project documentation. |

---

## Skills Learned

This laboratory activity helped me understand how different cloud storage technologies are used depending on the requirements of an application. I learned that Block Storage works like storage attached to a computing system, File Storage organizes information through files and directories, while Object Storage is designed to manage individual objects with associated metadata. I also learned how to launch a storage service through Docker without having to install MinIO directly on the operating system. Working with the Docker command helped me understand how container ports and environment variables affect a running service. Using the MinIO Console also gave me practical experience with creating a bucket and managing stored objects. In addition, I became more familiar with checking Docker containers through the Linux terminal and documenting technical procedures. Overall, the activity improved my understanding of how cloud storage can be used in applications that handle many files and helped me become more comfortable working with containerized services.
