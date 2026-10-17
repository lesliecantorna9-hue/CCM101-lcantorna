# Firewall Configuration

## 1. SSH Rule

```bash
sudo ufw allow ssh
```

This allows SSH connections so I can access the server remotely.

## 2. Default Rules

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

These rules block incoming connections by default and allow outgoing connections.

## 3. Enable the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

These commands turn on the firewall and show its status.

## 4. Allow Port 8080

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

This allows TCP traffic on port 8080 for the web server.

## 5. Security Risk

Enabling the firewall before allowing SSH may block remote access to the server.
