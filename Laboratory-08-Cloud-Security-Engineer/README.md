# Laboratory 08: Cloud Security Engineer

## Mission Overview

This activity is about securing a web server using the UFW firewall. It includes running an Nginx container and setting firewall rules.

## Objectives

- Learn about the Principle of Least Privilege.
- Understand the attack surface.
- Deploy an Nginx web server using Docker.
- Set firewall rules for SSH and port 8080.
- Check the firewall status.

## Commands Executed

```bash
docker --version
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
sudo ufw allow 8080/tcp
sudo ufw status numbered
curl -I --max-time 5 http://localhost:8080
```

## Skills Learned

I learned how to run a web server using Docker, test it with curl, set firewall rules, and check the server's security.
