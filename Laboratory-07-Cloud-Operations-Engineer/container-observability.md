# Container Observability

## Application Logs

### 404 Error Log

```text
172.17.0.1 - - [08/Oct/2026:11:49:38 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

Application logs help cloud engineers understand what happened inside an application by recording requests and errors. In this case, the log shows that the requested `/hidden-admin-page` could not be found and resulted in a 404 error, which gives the engineer useful information when troubleshooting the application.

## Container Metrics

- **Memory Usage:** 2.742MiB
- **CPU Percentage:** 0.00%
