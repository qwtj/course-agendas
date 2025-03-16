# I. Introduction to Squid Proxy

## Understanding Proxy Servers

### Definition and Purpose of Proxy Servers
*   Explanation of a proxy server acting as an intermediary between clients and servers.
*   Illustrative example: User -> Squid Proxy -> Web Server.

### Types of Proxy Servers
*   Forward Proxy: Protecting internal clients when accessing external resources.
*   Reverse Proxy: Protecting internal servers and load balancing.
*   Transparent Proxy: Intercepting and redirecting traffic without explicit client configuration.

## Squid Proxy Overview

### What is Squid?
*   Description of Squid as a caching and forwarding HTTP web proxy.
*   Open-source and widely used.

### Key Features of Squid
*   Caching: Reducing bandwidth usage and improving response times.
*   Access Control: Restricting access to specific websites or content.
*   HTTPS Support: Handling secure connections.
*   Authentication: Verifying user identity.
*   Logging: Tracking user activity.

# II. Squid Installation and Configuration

## Installing Squid

### Package Manager Installation
*   Using `apt` on Debian/Ubuntu: `sudo apt update && sudo apt install squid`.
*   Using `yum` on CentOS/RHEL: `sudo yum install squid`.
*   Using `brew` on macOS: `brew install squid`.

### Verifying Installation
*   Checking the Squid version: `squid -v`.
*   Checking the Squid service status: `sudo systemctl status squid` (Linux).

## Basic Configuration

### Squid Configuration File
*   Location of the configuration file: `/etc/squid/squid.conf`.

### Key Configuration Directives
*   `http_port`: Specifies the port Squid listens on (default: 3128).  Example: `http_port 3128`.
*   `cache_mem`: Sets the amount of RAM Squid uses for caching. Example: `cache_mem 256 MB`.
*   `cache_dir`: Specifies the directory for storing cached objects. Example: `cache_dir ufs /var/spool/squid 100 16 256`.
*   `access_log`: Defines the location and format of access logs. Example: `access_log /var/log/squid/access.log squid`.

### Access Control Lists (ACLs)
*   Defining ACLs: `acl aclname acltype aclvalue ...`.
*   Common ACL types: `src`, `dst`, `port`, `time`, `url_regex`.
*   Examples:
    *   `acl localnet src 192.168.1.0/24`: Defines a network.
    *   `acl SSL_ports port 443`: Defines SSL port.
    *   `acl Safe_ports port 80 21 443 70 210 1025-65535`: Defines a set of safe ports.

### HTTP Access Control
*   Using `http_access` to allow or deny access based on ACLs: `http_access allow/deny aclname`.
*   Example:
    ```
    http_access deny !Safe_ports
    http_access deny CONNECT !SSL_ports
    http_access allow localnet
    http_access deny all
    ```

### Restarting Squid
*   Applying configuration changes: `sudo systemctl restart squid` (Linux).
*   Testing the configuration file for errors before restarting: `squid -k parse`.

# III. Advanced Squid Configuration

## Caching Hierarchy

### Understanding Cache Peers
*   Configuring Squid to use other proxy servers as upstream caches.
*   `cache_peer` directive: `cache_peer hostname type port icp_port options`.
*   Example: `cache_peer parent.example.com parent 3128 3130`.

### ICP (Internet Cache Protocol)
*   Protocol used for querying cache peers.
*   Deprecated; consider using `http` instead.

## Authentication

### Basic Authentication
*   Requiring users to authenticate to access the internet.
*   Using `auth_param basic program` to specify the authentication program.
*   Example: `auth_param basic program /usr/lib/squid/basic_ncsa_auth /etc/squid/passwd`.
*   Creating a password file using `htpasswd`: `htpasswd -c /etc/squid/passwd username`.

### NTLM Authentication
*   Authenticating against a Windows domain.
*   Requires `ntlm_auth` helper.
*   Example: `auth_param ntlm program /usr/lib/squid/ntlm_auth --helper-protocol=squid-2.5`.

### Kerberos Authentication
*   Secure authentication using Kerberos.
*   Requires `negotiate_auth` helper.

## SSL Bumping (HTTPS Interception)

### Generating SSL Certificates
*   Creating a Certificate Authority (CA) and a server certificate.
*   Using `openssl`:
    ```bash
    openssl genrsa -out ca.key 2048
    openssl req -new -x509 -key ca.key -out ca.crt -days 3650
    openssl genrsa -out server.key 2048
    openssl req -new -key server.key -out server.csr
    openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365
    ```

### Configuring Squid for SSL Bumping
*   Adding necessary directives to `squid.conf`:
    ```
    https_port 3129 cert=/path/to/server.crt key=/path/to/server.key generate-host-certificates=on dynamic_cert_mem_cache_size=16MB
    ssl_bump peek step1 all
    ssl_bump splice all
    ```

### Installing the CA Certificate on Clients
*   Ensuring clients trust the CA certificate to avoid SSL warnings.

## Traffic Shaping and Delay Pools

### Understanding Delay Pools
*   Limiting bandwidth usage for specific users or websites.
*   Configuring `delay_pools` and `delay_class` directives.

### Implementing Traffic Shaping Rules
*   Example:
    ```
    delay_pools 1
    delay_class 1 1
    delay_parameters 1 128000/128000
    acl slowusers src 192.168.1.100
    delay_access 1 allow slowusers
    delay_access 1 deny all
    ```

# IV. Squid Monitoring and Troubleshooting

## Log Analysis

### Access Logs
*   Understanding the format of Squid access logs.
*   Analyzing logs to identify performance issues or security threats.
*   Using tools like `grep`, `awk`, or dedicated log analysis software.

### Cache Logs
*   Analyzing cache logs to understand caching efficiency.

## Monitoring Tools

### `squidclient`
*   Using `squidclient` to send HTTP requests through Squid.
*   Example: `squidclient -p 3128 http://www.example.com`.

### `cachemgr.cgi`
*   Built-in web interface for monitoring Squid status and statistics.
*   Requires configuring access control for the `cachemgr` ACL.

## Troubleshooting Common Issues

### Connectivity Problems
*   Verifying network connectivity between clients, Squid, and destination servers.
*   Checking firewall rules.

### Caching Issues
*   Ensuring Squid is caching objects correctly.
*   Checking cache hit ratios.

### Authentication Problems
*   Verifying authentication configuration and credentials.
*   Checking the authentication helper process.
