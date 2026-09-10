# Linux Investigation Using KillerCoda

A Linux environment was investigated using KillerCoda to identify its basic system information. The investigation focused on the operating system, CPU, memory, and disk space. Different Linux commands were used to obtain the required information from the terminal.

## 1. Operating System

The following command was used to identify the Linux operating system and its version:

```bash
cat /etc/os-release
```

This command displays important information about the installed Linux distribution, including its name, version, and other operating system details.

### Evidence 1 – Operating System

![KillerCoda Terminal 1 - Operating System](screenshots/killercoda-terminal1.png)
---

## 2. CPU Information

The following command was used to examine the CPU information:

```bash
lscpu
```

This command provides details about the processor, including the CPU architecture, number of CPUs, processor model, and other CPU-related information.

### Evidence 2 – CPU Information

![KillerCoda Terminal 2 - CPU Information](screenshots/killercoda-terminal2.png)
---

## 3. Memory

The following command was used to check the memory available in the Linux environment:

```bash
free -h
```

This command displays the system's memory usage in a human-readable format. It shows the total, used, free, and available memory.

### Evidence 3 – Memory

![KillerCoda Terminal 3 - Memory](screenshots/killercoda-terminal3.png)
## 4. Disk Space

The following command was used to check the available and used disk space:

```bash
df -h
```

This command displays the size, used space, available space, and percentage of disk usage for the mounted file systems.

### Evidence 4 – Disk Space

![KillerCoda Terminal 4 - Disk Space](screenshots/killercoda-terminal4.png)

# Linux System Information Summary

| System Information | Command Used          | Result                  |
| ------------------ | --------------------- | ----------------------- |
| Operating System   | `cat /etc/os-release` | See Terminal Evidence 1 |
| CPU Information    | `lscpu`               | See Terminal Evidence 2 |
| Memory             | `free -h`             | See Terminal Evidence 3 |
| Disk Space         | `df -h`               | See Terminal Evidence 4 |

# Cloud Migration

If this Linux server were migrated to the cloud, it could be hosted using virtual machine services offered by major cloud providers. These services provide virtual computing resources where a Linux server can be deployed and managed.

| Cloud Provider              | Service That Could Host the Linux Server |
| --------------------------- | ---------------------------------------- |
| AWS                         | Amazon EC2                               |
| Microsoft Azure             | Azure Virtual Machines                   |
| Google Cloud Platform (GCP) | Compute Engine                           |

These cloud services provide virtual computing environments where Linux servers can run without requiring a physical server on-site. The resources of the virtual machine, such as CPU, memory, and storage, can also be adjusted depending on the requirements of the server.
