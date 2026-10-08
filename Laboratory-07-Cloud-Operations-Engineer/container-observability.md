# Container Observability

## Application Logs

### 404 Error Log

```text
172.17.0.1 - - [05/Oct/2026:01:49:54 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

Application logs help cloud engineers see what is happening inside a running application. In this activity, the logs allowed me to confirm that the request for `/hidden-admin-page` failed and returned a 404 status, which makes it easier to identify and investigate the problem.

## Container Metrics

- **Memory Usage:** 2.742MiB
- **CPU Percentage:** 0.00%

The container was using only a small amount of memory and CPU during the monitoring period. These metrics help determine whether the container is using excessive resources or operating normally.
