# Mission Reflection

This laboratory activity helped me understand that keeping a cloud application running is not only about making sure the container is working. The condition of the host server is also important because containers depend on the resources provided by the host. If the server has limited memory, CPU, or disk space, the application may eventually become slow or stop working even if the container itself appears to be running normally. Checking the host resources gives an engineer useful information about the overall condition of the environment.

The `docker logs` command can also be very helpful when investigating a user's problem. For example, if a user cannot log in to a web application, the logs can be checked for failed requests, errors, or unusual activity related to the login process. This information can help narrow down the possible cause instead of trying to solve the problem through guesswork.

Logs and metrics provide different kinds of information. Logs record individual events and requests that happen inside an application, while metrics provide numerical information about system performance. In this activity, the logs showed the HTTP requests and the 404 error, while `docker stats` showed the CPU and memory resources being used by the container.

For large companies with thousands of containers, manually checking every container would not be practical. Enterprise environments can use monitoring systems such as Prometheus and Grafana to collect and display performance information from many servers and containers. These systems can also help engineers detect unusual behavior and respond to problems more quickly.

This activity improved my Linux troubleshooting skills because I became more familiar with commands such as `free`, `df`, `top`, `docker logs`, and `docker stats`. I learned how to collect actual information from the system and use it to understand application behavior. Overall, the activity gave me a better understanding of how monitoring, logs, and metrics work together in cloud operations.
