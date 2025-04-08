# I. Linux Fundamentals

## Understanding the Linux Kernel

### History and Evolution of Linux
*   Briefly explore the origins of Unix and the development of the Linux kernel by Linus Torvalds.
*   Differentiate between the kernel and a complete operating system distribution.

### Kernel Architecture
*   Explain the monolithic kernel architecture and its advantages/disadvantages.
*   Discuss kernel modules and their role in extending kernel functionality.

### Kernel Interaction with Hardware
*   Describe how the kernel manages hardware resources (CPU, memory, I/O).
*   Understanding device drivers and their importance.

## Navigating the Linux Filesystem

### Filesystem Hierarchy Standard (FHS)
*   Learn the standard directory structure in Linux (e.g., `/`, `/home`, `/etc`, `/var`, `/tmp`).
*   Understand the purpose of each directory.

### File Types and Permissions
*   Differentiate between regular files, directories, symbolic links, and special files.
*   Understand file permissions (read, write, execute) for user, group, and others.
*   Learn to use `ls -l` to view file permissions.

### Basic File Manipulation Commands
*   `pwd`: Print working directory
*   `cd`: Change directory
*   `ls`: List directory contents
*   `mkdir`: Create directory
*   `rmdir`: Remove directory
*   `touch`: Create an empty file
*   `rm`: Remove file or directory
*   `cp`: Copy files and directories
*   `mv`: Move or rename files and directories

## Working with the Command Line

### Shell Basics
*   Understand what a shell is (e.g., Bash, Zsh).
*   Learn about shell prompts and command syntax.
*   Explore shell environment variables (e.g., `PATH`, `HOME`).

### Command Syntax and Options
*   Understand the basic structure of a command: `command [options] [arguments]`.
*   Learn how to use the `--help` option to get information about a command.
*   Explore common command-line options (e.g., `-v`, `-r`, `-f`).

### Input/Output Redirection and Piping
*   Understand how to redirect input and output using `<`, `>`, and `>>`.
*   Learn how to pipe the output of one command to another using `|`.
    *   Example: `ls -l | grep "myfile"`

# II. User and Group Management

## Creating and Managing Users

### User Accounts
*   Understand the concept of user accounts and their purpose.
*   Learn about the root user and its privileges.

### User Management Commands
*   `useradd`: Create a new user account.
    *   Example: `sudo useradd -m newuser` (-m creates home directory)
*   `usermod`: Modify an existing user account.
    *   Example: `sudo usermod -aG sudo newuser` (adds user to sudo group)
*   `userdel`: Delete a user account.
    *   Example: `sudo userdel -r newuser` (-r removes home directory)
*   `passwd`: Change a user's password.
*   `su`: Switch user (substitute user).

## Creating and Managing Groups

### Group Accounts
*   Understand the concept of group accounts and their purpose.

### Group Management Commands
*   `groupadd`: Create a new group.
    *   Example: `sudo groupadd developers`
*   `groupmod`: Modify an existing group.
*   `groupdel`: Delete a group.
*   `groups`: Display a user's group memberships.

### Managing Group Memberships
*   Learn how to add users to groups using `usermod`.
*   Understand the `/etc/group` file and its contents.

## Understanding User Authentication

### /etc/passwd and /etc/shadow
*   Understand the purpose and contents of these files.
*   Note that `/etc/shadow` stores encrypted passwords.

### Pluggable Authentication Modules (PAM)
*   Brief overview of PAM and its role in authentication.

# III. Package Management

## Understanding Package Managers

### Package Repositories
*   Understand what package repositories are and how they work.

### Package Dependencies
*   Learn about package dependencies and how package managers handle them.

## Debian-based Systems (APT)

### APT (Advanced Package Tool)
*   `apt update`: Update the package list.
*   `apt upgrade`: Upgrade installed packages.
*   `apt install`: Install a package.
    *   Example: `sudo apt install nginx`
*   `apt remove`: Remove a package.
    *   Example: `sudo apt remove nginx`
*   `apt purge`: Remove a package and its configuration files.
*   `apt search`: Search for a package.
*   `apt show`: Show information about a package.

### dpkg (Debian Package)
*   `dpkg -i`: Install a `.deb` package file.
*   `dpkg -r`: Remove a package.
*   `dpkg -P`: Purge a package.
*   `dpkg -l`: List installed packages.

## Red Hat-based Systems (YUM/DNF)

### YUM (Yellowdog Updater, Modified)
*   `yum update`: Update the package list and installed packages.
*   `yum install`: Install a package.
    *   Example: `sudo yum install httpd`
*   `yum remove`: Remove a package.
    *   Example: `sudo yum remove httpd`
*   `yum search`: Search for a package.
*   `yum info`: Show information about a package.

### DNF (Dandified Yum) - Modern replacement for YUM
*   `dnf update`: Update the package list and installed packages.
*   `dnf install`: Install a package.
    *   Example: `sudo dnf install httpd`
*   `dnf remove`: Remove a package.
    *   Example: `sudo dnf remove httpd`
*   `dnf search`: Search for a package.
*   `dnf info`: Show information about a package.

# IV. Networking Fundamentals

## Network Configuration

### IP Addressing
*   Understanding IPv4 and IPv6 addresses, subnet masks, and default gateways.
*   Private vs. public IP addresses.

### Network Interface Configuration
*   Identify network interfaces (e.g., `eth0`, `wlan0`).
*   Learn to configure network interfaces using command-line tools (e.g., `ifconfig`, `ip`).
*   Understand configuration files (e.g., `/etc/network/interfaces` on Debian, `/etc/sysconfig/network-scripts/ifcfg-*` on Red Hat).

### DNS Configuration
*   Understand the role of DNS servers.
*   Learn how to configure DNS settings in `/etc/resolv.conf`.

## Network Tools

### Basic Network Utilities
*   `ping`: Test network connectivity.
*   `traceroute` (or `tracepath`): Trace the route to a host.
*   `netstat` (deprecated, replaced by `ss`): Display network connections, routing tables, and interface statistics.
*   `ss`: Display socket statistics (a more modern replacement for `netstat`).
*   `nslookup` (or `dig`): Query DNS servers.
*   `ifconfig` (deprecated, replaced by `ip`): Configure and display network interface information.
*   `ip`: A more powerful and modern tool for network configuration and troubleshooting.

### Network Troubleshooting
*   Diagnosing network connectivity issues using the above tools.

# V. Process Management

## Understanding Processes

### Process IDs (PIDs)
*   Understand the concept of a process ID.

### Process States
*   Learn about different process states (e.g., running, sleeping, stopped, zombie).

### Parent-Child Relationships
*   Understand the parent-child relationship between processes.

## Process Management Commands

### Viewing Processes
*   `ps`: Display a snapshot of current processes.
*   `top`: Display a dynamic real-time view of running processes.
*   `htop`: An interactive process viewer (requires installation).

### Controlling Processes
*   `kill`: Send a signal to a process (e.g., `kill -9 PID` for a hard kill).
*   `killall`: Kill processes by name.
*   `pkill`: Kill processes based on more advanced criteria (e.g., user, group).
*   `bg`: Place a process in the background.
*   `fg`: Bring a process to the foreground.

### Process Scheduling
*   `nice`: Run a process with a specified priority.
*   `renice`: Change the priority of a running process.

# VI. System Monitoring and Logging

## System Monitoring Tools

### Resource Usage Monitoring
*   `top`: Monitor CPU usage, memory usage, and swap usage.
*   `vmstat`: Report virtual memory statistics.
*   `iostat`: Report I/O statistics.
*   `df`: Display disk space usage.
*   `du`: Estimate file space usage.
*   `free`: Display the amount of free and used memory in the system.

## System Logging

### Syslog
*   Understand the role of syslog in centralizing system logs.

### Log Files
*   Location of important log files:
    *   `/var/log/syslog` or `/var/log/messages`: General system logs
    *   `/var/log/auth.log` or `/var/log/secure`: Authentication logs
    *   `/var/log/kern.log`: Kernel logs
*   Using `tail -f` to monitor log files in real-time.
*   Using `grep` to search for specific entries in log files.

### Log Rotation
*   Understand the purpose of log rotation and how it is configured (e.g., using `logrotate`).

# VII. Basic Security

## Firewalls

### Understanding Firewalls
*   Explain the role of firewalls in network security.

### iptables (Legacy)
*   Basic concepts of iptables rules, chains, and tables.
*   Example: Allow SSH traffic: `sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT`

### firewalld (Modern)
*   Using `firewall-cmd` to manage firewall rules.
*   Zones, services, and ports.
*   Example: Allow HTTP traffic: `sudo firewall-cmd --permanent --add-service=http`

## SSH (Secure Shell)

### SSH Key-based Authentication
*   Generating SSH key pairs using `ssh-keygen`.
*   Copying the public key to the remote server using `ssh-copy-id`.
*   Disabling password authentication for enhanced security.

### SSH Configuration
*   Securing SSH by changing the default port, disabling root login, and limiting access by IP address.
*   Understanding the `/etc/ssh/sshd_config` file.

## File Permissions and Ownership

### Understanding chmod, chown, and chgrp
*   `chmod`: Change file permissions (e.g., `chmod 755 myfile`).
*   `chown`: Change file ownership (e.g., `chown user:group myfile`).
*   `chgrp`: Change file group ownership (e.g., `chgrp group myfile`).

# VIII. Automation and Scripting

## Basic Shell Scripting

### Shell Scripting Basics
*   Understanding shell script syntax (e.g., variables, control flow).

### Creating and Executing Shell Scripts
*   Creating a simple shell script (e.g., `#!/bin/bash`).
*   Making a script executable using `chmod +x`.

### Variables and Operators
*   Using variables in shell scripts.
*   Arithmetic and string operators.

### Control Flow
*   `if`, `then`, `else`, `elif`, `fi` statements.
*   `for` and `while` loops.
*   `case` statements.

## Cron Jobs

### Scheduling Tasks with Cron
*   Understanding the cron table format.
*   Editing the crontab using `crontab -e`.
*   Scheduling tasks to run at specific times (e.g., daily, weekly, monthly).
*   Example: Backing up files daily. `0 0 * * * /path/to/backup_script.sh`

# IX. Virtualization (Introductory)

## Concepts of Virtualization

### Hypervisors
*   Explain the role of hypervisors (e.g., KVM, VirtualBox, VMware).
*   Type 1 vs. Type 2 hypervisors.

### Virtual Machines (VMs)
*   Understanding virtual machines and their benefits.

## Using VirtualBox (Example)

### Installing VirtualBox
*   Installing VirtualBox on your Linux system.

### Creating and Managing VMs
*   Creating a new virtual machine.
*   Configuring VM settings (e.g., CPU, memory, network).
*   Installing an operating system inside the VM.
*   Starting, stopping, and pausing VMs.

# X. Containerization (Introductory)

## Concepts of Containerization

### Docker and Containers
*   Understanding Docker and containers.
*   Differences between VMs and containers.

### Docker Images and Dockerfiles
*   Understanding Docker images and how they are built from Dockerfiles.

## Basic Docker Commands

### Docker Installation
*   Installing Docker on your Linux system.

### Managing Containers
*   `docker pull`: Download a Docker image from a registry.
*   `docker run`: Create and run a container from an image.
    *   Example: `docker run -d -p 80:80 nginx` (runs nginx in detached mode and maps port 80)
*   `docker ps`: List running containers.
*   `docker stop`: Stop a running container.
*   `docker rm`: Remove a stopped container.
*   `docker images`: List available Docker images.
*   `docker rmi`: Remove a Docker image.
