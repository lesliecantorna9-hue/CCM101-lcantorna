# Storage Types Research

## Overview

Cloud storage can be divided into several models based on how information is stored and accessed. The three common models are **Block Storage, File Storage, and Object Storage**. Each one has its own method of organizing data, making them suitable for different applications and computing environments.

## Comparison of Cloud Storage Types

| Storage Type       | Description                                                                                                                                    | Primary Use Case                                                                                              | Cloud Provider Example                         |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| **Block Storage**  | Divides information into separate blocks that can be attached to a computer or virtual machine and used as a storage disk.                   | Virtual machine storage, operating systems, databases, and applications that need fast and direct data access. | **Amazon Elastic Block Store (Amazon EBS)**    |
| **File Storage**   | Keeps information in files and folders using a familiar directory structure that allows users and applications to access shared files.       | Shared folders, business documents, media files, and applications that need a common file system.             | **Amazon Elastic File System (Amazon EFS)**    |
| **Object Storage** | Saves data as objects that contain the actual file, additional information called metadata, and a unique identifier for accessing the object. | Photos, videos, backups, logs, archives, and other large collections of unstructured information.             | **Amazon Simple Storage Service (Amazon S3)**  |

## Why Object Storage is a suitable choice for storing their user-uploaded images

Object Storage is suitable for the client's photo-sharing application because the main data being handled consists of image files. These images can be stored separately as objects and organized inside buckets, making the storage easier to manage as the number of uploaded files increases. It also works well for applications because objects can be accessed through APIs instead of requiring a traditional file system. In this laboratory, MinIO was used to demonstrate this type of storage through an S3-compatible environment.
