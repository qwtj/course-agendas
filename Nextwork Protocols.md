# I. Networking Fundamentals

## Understanding Network Concepts
### Defining a Network
*   Nodes, links, and resources.
### Network Topologies
*   Bus, Star, Ring, Mesh, Hybrid topologies: diagrams, advantages, and disadvantages.
### Network Types
*   LAN, WAN, MAN, PAN: characteristics and typical uses.

## Understanding the OSI Model
### Layers of the OSI Model
*   Physical, Data Link, Network, Transport, Session, Presentation, Application.
### Functionality of Each Layer
*   Specific tasks and responsibilities of each layer.
### Data Encapsulation
*   How data is encapsulated and de-encapsulated as it moves through the layers.
*   Example: HTTP request encapsulation.

# II. TCP/IP Protocol Suite

## Introduction to TCP/IP
### History and Development of TCP/IP
### Comparing TCP/IP and OSI Models
### Key Protocols in the TCP/IP Suite
*   TCP, IP, UDP, HTTP, DNS, SMTP, etc.

## IP Addressing
### IPv4 Addressing
*   Structure of an IPv4 address.
*   Classes of IP addresses (A, B, C, D, E).
*   Public vs. Private IP addresses.
### Subnetting
*   Understanding subnet masks.
*   Calculating subnets and hosts per subnet.
*   CIDR notation.
### IPv6 Addressing
*   Structure of an IPv6 address.
*   IPv6 address types (unicast, multicast, anycast).
*   IPv6 address notation.

## TCP and UDP
### Transmission Control Protocol (TCP)
*   Connection-oriented protocol.
*   Three-way handshake.
*   Reliable data transfer, error correction.
*   Flow control and congestion control.
### User Datagram Protocol (UDP)
*   Connectionless protocol.
*   Unreliable data transfer.
*   Use cases for UDP.
### Port Numbers
*   Well-known ports, registered ports, dynamic ports.
*   Examples: HTTP (80), HTTPS (443), DNS (53).

# III. Core Networking Protocols

## Domain Name System (DNS)
### DNS Hierarchy
*   Root servers, top-level domains (TLDs), authoritative name servers.
### DNS Records
*   A, AAAA, CNAME, MX, NS, TXT records: definitions and use cases.
### DNS Resolution Process
*   Recursive and iterative queries.
### Practical DNS Commands
*   `nslookup`, `dig`.

## Dynamic Host Configuration Protocol (DHCP)
### DHCP Operation
*   DHCP Discover, Offer, Request, Acknowledge (DORA) process.
### DHCP Lease
*   Understanding lease times.
### DHCP Configuration
*   Configuring a DHCP server: IP address pools, reservations, options.

## Routing Protocols
### Static Routing
*   Configuring static routes.
*   Advantages and disadvantages.
### Dynamic Routing
*   Distance-vector routing (RIP).
*   Link-state routing (OSPF).
### Autonomous Systems (AS)
*   Interior Gateway Protocols (IGP) vs. Exterior Gateway Protocols (EGP).
*   Border Gateway Protocol (BGP).

# IV. Application Layer Protocols

## Hypertext Transfer Protocol (HTTP)
### HTTP Methods
*   GET, POST, PUT, DELETE, PATCH.
### HTTP Status Codes
*   1xx, 2xx, 3xx, 4xx, 5xx ranges: understanding common status codes.
### HTTP Headers
*   Request and response headers: examples and usage.
### HTTPS
*   HTTP over SSL/TLS.
*   Certificate Authorities (CAs).

## Simple Mail Transfer Protocol (SMTP)
### SMTP Architecture
*   Mail User Agent (MUA), Mail Transfer Agent (MTA), Mail Delivery Agent (MDA).
### SMTP Commands
*   HELO, MAIL FROM, RCPT TO, DATA.
### Email Security
*   SPF, DKIM, DMARC.

## File Transfer Protocol (FTP)
### FTP Modes
*   Active and passive FTP.
### FTP Commands
*   USER, PASS, LIST, RETR, STOR.
### Secure FTP Alternatives
*   SFTP (SSH File Transfer Protocol), FTPS (FTP over SSL/TLS).

# V. Network Security Protocols

## Secure Shell (SSH)
### SSH Architecture
*   Client-server model.
### SSH Key Exchange
### SSH Tunneling
*   Port forwarding.
### Practical SSH Commands
*   `ssh`, `scp`.

## Transport Layer Security (TLS) / Secure Sockets Layer (SSL)
### TLS/SSL Handshake
### Cryptographic Algorithms
*   Symmetric and asymmetric encryption.
*   Hashing algorithms.
### Certificates
*   X.509 certificates.
*   Certificate Authorities (CAs).

## Virtual Private Networks (VPNs)
### VPN Types
*   Site-to-site VPN, remote access VPN.
### VPN Protocols
*   IPsec, OpenVPN, L2TP/IPsec.
### VPN Security Considerations

# VI. Network Monitoring and Troubleshooting

## Network Monitoring Tools
### Ping
*   Understanding ping output.
### Traceroute
*   Tracing the path of a packet.
### Wireshark
*   Packet capture and analysis.

## Network Troubleshooting Techniques
### Identifying Network Issues
### Common Network Problems
*   Connectivity issues, DNS resolution problems, slow network performance.
### Using Network Diagnostics
*   `ifconfig` or `ipconfig`, `netstat`, `tcpdump`.
