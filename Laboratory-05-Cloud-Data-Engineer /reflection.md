# Mission Reflection

This laboratory activity gave me a better understanding of how cloud storage can be selected based on the type of data and the needs of an application. I learned that block storage, file storage, and object storage have different functions. For an application that handles a large collection of photos, object storage is useful because it is designed to store individual files as objects. This makes it easier for the application to keep and access many images without depending on a traditional computer file system.

Deploying MinIO with Docker also showed me how containers can simplify the setup of cloud services. Instead of installing MinIO manually, I used a Docker command that already included the image, ports, username, password, and storage configuration. I also used `docker ps` to check the running container. This helped me understand that deployment is not finished until the service has been tested and confirmed to be working.

I learned that a bucket is an important part of object storage because it provides a place where objects can be stored and managed. During the activity, I created the `client-photos` bucket and used it to hold the sample file. Uploading the file through the MinIO Web Console helped me understand the actual process of adding data to an object storage system.

For organizations that handle important data, protecting information should be planned carefully. They can use regular backups, replication, versioning, and additional storage locations to provide recovery options. These techniques can help reduce the effect of hardware problems, accidental deletion, or other unexpected issues.

This activity also improved my confidence in using the Linux terminal. I became more familiar with Docker commands and learned how each option affects the deployment. I also realized that reading command output is important when checking for problems. Overall, the activity gave me useful hands-on experience with Docker and MinIO while helping me understand the practical use of cloud storage in real applications.
