# Mission Reflection

This laboratory gave me a clearer idea of how containers can be used as an alternative to traditional Virtual Machines. A Virtual Machine needs to operate with a full guest operating system, which can require more memory, storage, and startup time. Docker containers are more lightweight because they share the host system's kernel while keeping the application and its required components separated. After working with Docker in KillerCoda, I saw why containers are useful for applications that need to be deployed quickly.

The `-p 8080:80` option allowed the Nginx service inside the container to be reached from the host computer. The first number represents the port available on the host, while the second number refers to the port used by Nginx inside the container. Because of this connection, I could open the service through port 8080 and use `curl` to send a request to the Nginx server. The successful response confirmed that the container and its port configuration were working properly.

Using `docker rm` deletes the specified container after it has been stopped. Any temporary information that existed only inside that container is removed along with it. This showed me that containers should not be treated as the main location for information that needs to be saved permanently. For applications that require data to survive container deletion, a persistent storage solution should be used.

Containerization can make DevOps work more efficient because developers and operations teams can work with the same application package and environment. Instead of setting up an application separately on different computers, a container can provide a more consistent way of running it. This can reduce environment-related problems and make testing and deployment easier to manage.

My GitHub portfolio continues to improve as I add each laboratory activity and document what I have learned. For Laboratory 4, I added work related to Docker, Nginx deployment, container management, and cloud-native concepts. These activities help show how my understanding has progressed from basic cloud concepts toward practical technologies used in modern application development.
