# Network Protocols #Networking #Communication #Standards
Defines sets of established rules dictating how data is formatted, transmitted, and received between devices (computers, servers, routers, etc.) in a network. They ensure devices can communicate regardless of underlying infrastructure or design differences.

## Fundamentals of Network Protocols #Basics #Concepts #Introduction
Core ideas and principles underpinning network communication.
### Definition and Purpose #WhatAreProtocols #Function
Explanation of what protocols are and why they are essential for network operation, enabling interoperability and structured data exchange.
### Standardization Bodies #Standards #Organizations #Governance
Organizations responsible for defining and publishing network protocols.
#### IETF (Internet Engineering Task Force) #IETF #RFC
Develops and promotes Internet standards, primarily through RFC documents.
#### IEEE (Institute of Electrical and Electronics Engineers) #IEEE #HardwareStandards
Develops standards for hardware and lower-level protocols (e.g., Ethernet, Wi-Fi).
#### ISO (International Organization for Standardization) #ISO #OSIModel
Develops a wide range of international standards, including the OSI reference model.
#### ITU (International Telecommunications Union) #ITU #TelecomStandards
Defines standards related to telecommunications.
#### W3C (World Wide Web Consortium) #W3C #WebStandards
Develops standards for the World Wide Web (e.g., HTML, CSS, often interacting with HTTP).
### Protocol Characteristics #Attributes #Features
Key properties used to describe and differentiate protocols.
#### Connection-Oriented vs. Connectionless #Stateful #Stateless #Reliability
Describes whether a session is established before data transfer (e.g., TCP) or data is sent without prior setup (e.g., UDP).
#### Reliability #ErrorHandling #Sequencing #Acknowledgement
Mechanisms ensuring data arrives correctly, in order, and without loss (e.g., TCP acknowledgements).
#### Flow Control #Congestion #DataRate
Mechanisms to prevent a sender from overwhelming a receiver.
#### Error Detection and Correction #Integrity #Checksums
Methods to detect and potentially correct errors occurring during transmission.
#### Addressing and Routing #Pathfinding #AddressingSchemes
How devices are identified and how data paths are determined across networks.
#### Encapsulation #Layering #DataWrapping
The process of adding protocol headers and trailers to data as it passes down the protocol stack.

## Network Protocol Models #Frameworks #Layering #Architecture
Conceptual frameworks that standardize network functions into layers.
### OSI Model (Open Systems Interconnection) #OSI #SevenLayers #Conceptual
A 7-layer theoretical model providing a standard framework for network communication. Often used for teaching and understanding network functions.
#### Layer 7: Application Layer #UserInterface #HighLevelProtocols
Interfaces directly with end-user applications. Provides network services like web browsing, email, file transfer (e.g., HTTP, SMTP, FTP, DNS).
#### Layer 6: Presentation Layer #Syntax #DataFormat #Encryption
Translates data between application and network formats, handles data encryption, compression, and representation (e.g., SSL/TLS, ASCII, JPEG).
#### Layer 5: Session Layer #DialogControl #Connections
Establishes, manages, and terminates connections (sessions) between applications (e.g., NetBIOS, PAP, RPC).
#### Layer 4: Transport Layer #EndToEnd #Reliability #Segmentation
Provides reliable end-to-end data transfer, segmentation, flow control, and error correction (e.g., TCP, UDP, SCTP).
#### Layer 3: Network Layer #Routing #LogicalAddressing #Packets
Handles logical addressing (IP addresses) and routing of packets across different networks (e.g., IP, ICMP, IGMP, OSPF).
#### Layer 2: Data Link Layer #Framing #PhysicalAddressing #Switches
Manages physical addressing (MAC addresses), framing, error detection at the physical link level, and controls access to the medium (e.g., Ethernet, PPP, ARP, Frame Relay, Wi-Fi MAC).
#### Layer 1: Physical Layer #TransmissionMedia #Bits #Hardware
Defines physical characteristics of the network: media (cables, wireless), voltage levels, data rates, connectors (e.g., Ethernet PHY, USB, Bluetooth PHY, DSL, SONET).
### TCP/IP Model (Internet Protocol Suite) #TCPIP #FourLayers #Practical
A 4-layer model that is the foundation of the modern internet. More practical and widely implemented than OSI.
#### Application Layer (TCP/IP) #OSILayers5-7 #UserServices
Combines OSI's Application, Presentation, and Session layers. Handles protocols for specific applications (e.g., HTTP, FTP, SMTP, DNS, SNMP, Telnet).
#### Transport Layer (TCP/IP) #OSILayer4 #HostToHost
Equivalent to OSI's Transport Layer. Manages end-to-end communication (e.g., TCP, UDP, QUIC).
#### Internet Layer (TCP/IP) #OSILayer3 #IPAddressing #Routing
Equivalent to OSI's Network Layer. Handles addressing, packaging, and routing functions (e.g., IP, ICMP, ARP, IGMP).
#### Network Access Layer (TCP/IP) #OSILayers1-2 #LinkLayer #HardwareInterface
Combines OSI's Data Link and Physical layers. Deals with physical network hardware and media access (e.g., Ethernet, Wi-Fi, PPP).
### Comparison of OSI and TCP/IP #ModelsComparison #Differences
Similarities and differences in structure, purpose, and implementation. TCP/IP is practical and widely used; OSI is a more detailed theoretical reference.

## Physical Layer Protocols (Layer 1) #Hardware #Signals #Media
Protocols defining the electrical, mechanical, and timing specifications for data transmission.
### Ethernet Physical Layers #Ethernet #Copper #Fiber
Standards like 10BASE-T, 100BASE-TX, 1000BASE-T (Copper), 100BASE-FX, 1000BASE-SX/LX (Fiber).
### DSL (Digital Subscriber Line) #DSL #Broadband #Telephony
Protocols like ADSL, VDSL, SDSL for broadband over telephone lines.
### SONET/SDH #SONET #SDH #OpticalNetworking
Synchronous Optical Networking/Synchronous Digital Hierarchy standards for optical fiber communication.
### Cable Modem Standards (DOCSIS) #DOCSIS #CableInternet #Broadband
Data Over Cable Service Interface Specification for internet access over cable TV infrastructure.
### Wireless Physical Layers #WirelessPHY #Radio #Infrared
Specifications for Wi-Fi (IEEE 802.11 PHY), Bluetooth PHY, IrDA.
### USB Physical Layer #USB #PeripheralConnection
Physical specifications for Universal Serial Bus connections.

## Data Link Layer Protocols (Layer 2) #MACaddress #Framing #ErrorDetection
Protocols governing data transfer between directly connected nodes and managing access to the physical medium.
### Ethernet (IEEE 802.3) #Ethernet #LAN #Switches
Defines MAC addressing, frame format, and CSMA/CD access method for wired LANs.
### ARP (Address Resolution Protocol) #ARP #AddressMapping #IPv4
Maps IP addresses (Layer 3) to MAC addresses (Layer 2) within a local network.
### PPP (Point-to-Point Protocol) #PPP #DialUp #WANLink
Used to establish direct connections between two nodes, often used for dial-up and DSL connections.
### Frame Relay #FrameRelay #WAN #PacketSwitching
WAN protocol providing connection-oriented communication via packet switching.
### ATM (Asynchronous Transfer Mode) #ATM #CellRelay #HighSpeed
High-speed networking standard using fixed-size cells for data transfer.
### IEEE 802.11 (Wi-Fi) MAC Layer #WiFi #WLAN #CSMACA
MAC layer protocols for wireless LANs, including CSMA/CA access method.
### VLAN Tagging (IEEE 802.1Q) #VLAN #NetworkSegmentation #Trunking
Standard for tagging Ethernet frames to manage Virtual Local Area Networks (VLANs).

## Network Layer Protocols (Layer 3) #IPaddress #Routing #Packets
Protocols responsible for logical addressing, routing packets across multiple networks, and path determination.
### IP (Internet Protocol) #IP #Addressing #RoutingFoundation
The core protocol providing logical addressing and packet delivery across the internet.
#### IPv4 #IPv4 #IPAddressingV4
The legacy version of IP with 32-bit addresses.
#### IPv6 #IPv6 #IPAddressingV6 #FutureInternet
The newer version of IP with 128-bit addresses, designed to overcome IPv4 limitations.
### ICMP (Internet Control Message Protocol) #ICMP #ErrorReporting #Diagnostics
Used for sending error messages and operational information (e.g., ping, traceroute).
### IGMP (Internet Group Management Protocol) #IGMP #Multicast #GroupMembership
Used by hosts and routers to manage membership in IP multicast groups.
### Routing Protocols #Routing #PathSelection #NetworkTopology
Protocols used by routers to exchange routing information and determine the best paths for data. (Detailed in separate ## section)

## Transport Layer Protocols (Layer 4) #EndToEnd #Reliability #Ports
Protocols providing end-to-end communication services, managing data segmentation, reliability, and flow control.
### TCP (Transmission Control Protocol) #TCP #Reliable #ConnectionOriented
Provides reliable, ordered, and error-checked delivery of data streams. Establishes a connection before data transfer. Widely used for web, email, file transfer.
### UDP (User Datagram Protocol) #UDP #Unreliable #Connectionless
Provides a simpler, connectionless datagram service. Faster but less reliable than TCP. Used for DNS, DHCP, VoIP, streaming media.
### QUIC (Quick UDP Internet Connections) #QUIC #UDPBased #EncryptedTransport
Modern transport protocol running over UDP, designed to improve performance (especially for HTTP/3) and incorporates TLS encryption.
### SCTP (Stream Control Transmission Protocol) #SCTP #Reliable #MessageOriented
Combines features of TCP and UDP, offering reliable, message-oriented transport with multi-streaming capabilities.

## Application Layer Protocols (Layer 7 / TCP/IP Application Layer) #UserServices #Applications #SpecificTasks
Protocols used directly by end-user applications to provide specific network services.
### Web Protocols #Web #Browsing
#### HTTP (Hypertext Transfer Protocol) #HTTP #WebBrowsing #Stateless
Foundation protocol for data communication on the World Wide Web (request-response).
#### HTTPS (HTTP Secure) #HTTPS #SecureWeb #Encryption
Secure version of HTTP using SSL/TLS encryption.
### File Transfer Protocols #FileTransfer #DataExchange
#### FTP (File Transfer Protocol) #FTP #FileTransfer #Insecure
Standard protocol for transferring files between computers. (Ports 20, 21)
#### SFTP (SSH File Transfer Protocol) #SFTP #SecureFTP #SSHBased
Secure file transfer over an SSH connection. (Port 22)
#### FTPS (FTP Secure) #FTPS #SecureFTP #SSLBased
FTP secured with SSL/TLS encryption.
#### SMB/CIFS (Server Message Block / Common Internet File System) #SMB #CIFS #WindowsSharing
Protocol for shared access to files, printers, and serial ports (primarily Windows networks).
#### NFS (Network File System) #NFS #UnixSharing #DistributedFS
Protocol for distributed file system access (primarily Unix/Linux systems).
### Email Protocols #Email #MailServices
#### SMTP (Simple Mail Transfer Protocol) #SMTP #EmailSending #Port25
Used for sending email messages between servers and from clients to servers. (Port 25)
#### POP3 (Post Office Protocol version 3) #POP3 #EmailRetrieval #Download
Used by clients to retrieve email from a mail server (typically downloads and deletes from server). (Port 110)
#### IMAP (Internet Message Access Protocol) #IMAP #EmailRetrieval #Sync
Used by clients to access and manage email on a mail server (allows synchronization across clients). (Port 143)
### Naming and Addressing Protocols #Naming #Addressing #Configuration
#### DNS (Domain Name System) #DNS #NameResolution #Port53
Translates human-readable domain names into numerical IP addresses. (Port 53)
#### DHCP (Dynamic Host Configuration Protocol) #DHCP #IPConfiguration #Automation
Automatically assigns IP addresses and other network configuration parameters to devices. (Ports 67, 68)
### Remote Access Protocols #RemoteAccess #Terminal #Management
#### SSH (Secure Shell) #SSH #SecureLogin #RemoteCommand #Port22
Provides secure command-line access, tunneling, and other secure network services over an insecure network. (Port 22)
#### Telnet #Telnet #InsecureLogin #RemoteTerminal #Port23
Provides unencrypted remote terminal access. Largely superseded by SSH due to security risks. (Port 23)
### Time Synchronization Protocols #TimeSync #ClockAccuracy
#### NTP (Network Time Protocol) #NTP #TimeSynchronization #Port123
Used to synchronize computer clocks across a network. (Port 123)
### Network Management Protocols #Management #Monitoring #Configuration
(Detailed in separate ## section)
### Voice and Video Protocols #VoIP #VideoConferencing #RealTime
(Detailed in separate ## section)

## Routing Protocols #Routing #PathDetermination #NetworkLayer
Specialized protocols used by routers to discover networks and determine the best paths for packet forwarding.
### Interior Gateway Protocols (IGP) #IGP #IntraAS #LocalRouting
Used within a single autonomous system (AS).
#### Distance Vector Protocols #DistanceVector #HopCount #RoutingByRumor
Routers share their entire routing table with neighbors.
##### RIP (Routing Information Protocol) #RIP #Simple #SmallNetworks
Older protocol, uses hop count as metric, slower convergence.
##### EIGRP (Enhanced Interior Gateway Routing Protocol) #EIGRP #CiscoProprietary #AdvancedDV
Cisco proprietary protocol, uses composite metric (DUAL algorithm), faster convergence than RIP.
#### Link State Protocols #LinkState #NetworkMap #SPF
Routers build a complete map of the network topology and calculate best paths using SPF algorithm.
##### OSPF (Open Shortest Path First) #OSPF #Standard #Scalable
Widely used, open standard, hierarchical design, fast convergence.
##### IS-IS (Intermediate System to Intermediate System) #ISIS #Standard #ServiceProvider
Another link-state protocol, often used in large service provider networks.
### Exterior Gateway Protocols (EGP) #EGP #InterAS #InternetRouting
Used between different autonomous systems.
#### BGP (Border Gateway Protocol) #BGP #InternetBackbone #PathVector
The core routing protocol of the internet, uses path attributes and policies to make routing decisions between large networks/ISPs.
### MPLS (Multi-Protocol Label Switching) #MPLS #LabelSwitching #TrafficEngineering
Not strictly a routing protocol, but directs data based on short path labels rather than long network addresses, improving forwarding speed and enabling traffic engineering. Often considered Layer 2.5.

## Network Security Protocols #Security #Encryption #Authentication
Protocols designed to secure network communications and data.
### Transport Layer Security #TLS #SSL #Encryption #Authentication
#### TLS/SSL (Transport Layer Security / Secure Sockets Layer) #TLS #SSL #WebSecurity
Cryptographic protocols providing secure communication over networks (e.g., HTTPS). TLS is the successor to SSL.
### Network Layer Security #IPsec #VPN #NetworkEncryption
#### IPsec (Internet Protocol Security) #IPsec #VPN #Tunneling
Suite of protocols for securing IP communications by authenticating and encrypting each IP packet (used for VPNs).
### Application Layer Security #ApplicationSecurity #SecureProtocols
#### SSH (Secure Shell) #SSH #SecureManagement #Tunneling
Provides secure channel for remote login, file transfer (SFTP), and tunneling other protocols.
#### HTTPS (HTTP Secure) #HTTPS #SecureWebBrowsing #WebEncryption
Secures HTTP communication using TLS/SSL.
#### SFTP (SSH File Transfer Protocol) #SFTP #SecureFileTransfer
File transfer built on top of SSH.
#### FTPS (FTP Secure) #FTPS #SecureFTP #TLSFTP
FTP secured using TLS/SSL.
### Wireless Security Protocols #WirelessSecurity #WiFiSecurity #WPA
#### WEP (Wired Equivalent Privacy) #WEP #Insecure #Deprecated
Older, insecure Wi-Fi security standard. Deprecated.
#### WPA/WPA2/WPA3 (Wi-Fi Protected Access) #WPA #WPA2 #WPA3 #WiFiEncryption
Standards providing increasingly strong security for Wi-Fi networks. WPA3 is the current standard.
### Authentication Protocols #Authentication #IdentityVerification
#### Kerberos #Kerberos #TicketBasedAuth #WindowsAuth
Network authentication protocol using tickets to allow nodes to prove their identity over a non-secure network. Widely used in Windows Active Directory.
#### RADIUS (Remote Authentication Dial-In User Service) #RADIUS #AAA #NetworkAccess
Client/server protocol providing centralized Authentication, Authorization, and Accounting (AAA) management.
#### TACACS+ (Terminal Access Controller Access-Control System Plus) #TACACS+ #AAA #Cisco
Cisco proprietary AAA protocol, often seen as more flexible than RADIUS for device administration.
#### CHAP (Challenge Handshake Authentication Protocol) #CHAP #Authentication #PPP
Authenticates a user or network host to an authenticating entity, often used with PPP.

## Network Management Protocols #Management #Monitoring #Troubleshooting
Protocols used to monitor, manage, and configure network devices and performance.
### SNMP (Simple Network Management Protocol) #SNMP #Monitoring #Configuration #Ports161-162
Standard protocol for collecting and organizing information about managed devices on IP networks and for modifying that information to change device behavior. (Ports 161, 162)
### ICMP (Internet Control Message Protocol) #ICMP #Diagnostics #Ping #Traceroute
Also used for basic network diagnostics and status reporting (e.g., Ping, Traceroute).
### NetFlow/sFlow/IPFIX #NetFlow #sFlow #IPFIX #TrafficAnalysis
Protocols for collecting IP traffic information, providing data for network traffic analysis and monitoring. NetFlow (Cisco), sFlow (Industry Standard), IPFIX (IETF Standard based on NetFlow v9).
### RMON (Remote Monitoring) #RMON #NetworkMonitoring #Statistics
Standard monitoring specification that enables network monitors and consoles to exchange network-monitoring data.

## Wireless Network Protocols #Wireless #Mobility #RF
Protocols specifically designed for wireless communication.
### IEEE 802.11 (Wi-Fi) Suite #WiFi #WLAN #WirelessLAN
Family of standards for Wireless Local Area Networks (WLANs). Includes PHY and MAC layer specifications.
### Bluetooth #Bluetooth #PAN #ShortRangeWireless
Short-range wireless technology standard for exchanging data over short distances (Personal Area Networks - PANs).
### Cellular Protocols #Cellular #MobileNetworking #WANWireless
#### GSM (Global System for Mobile Communications) #GSM #2G
#### UMTS (Universal Mobile Telecommunications System) #UMTS #3G
#### LTE (Long-Term Evolution) #LTE #4G
#### 5G NR (New Radio) #5G #NextGenMobile
### IoT Wireless Protocols #IoT #LowPowerWireless #SensorNetworks
#### Zigbee #Zigbee #MeshNetwork #LowPowerIoT
Low-power, low-data-rate wireless mesh network standard (based on IEEE 802.15.4).
#### Z-Wave #ZWave #HomeAutomation #LowPowerIoT
Wireless communications protocol primarily for home automation.
#### LoRaWAN #LoRaWAN #LPWAN #LongRangeIoT
Low Power Wide Area Network protocol for long-range, low-power IoT devices.
#### Thread #Thread #IPv6BasedIoT #MeshNetwork
IPv6-based low-power mesh networking protocol for IoT devices.

## Voice and Video Protocols (VoIP/Multimedia) #VoIP #Video #RealTime #Streaming
Protocols supporting real-time voice and video transmission over IP networks.
### SIP (Session Initiation Protocol) #SIP #Signaling #VoIPSetup
Signaling protocol for initiating, managing, and terminating real-time sessions (voice, video, messaging).
### H.323 #H323 #Signaling #MultimediaCommunication
ITU standard suite for multimedia communications over packet networks (older alternative to SIP).
### RTP (Real-time Transport Protocol) #RTP #MediaDelivery #VoIPData
Delivers audio and video data over IP networks, typically runs over UDP.
### RTCP (RTP Control Protocol) #RTCP #QoS #RTPControl
Provides out-of-band control information and QoS feedback for RTP streams.
### MGCP (Media Gateway Control Protocol) #MGCP #GatewayControl #VoIP
Protocol for controlling Media Gateways in a VoIP system.

## Storage Network Protocols #Storage #SAN #NAS
Protocols facilitating access to storage devices over a network.
### NFS (Network File System) #NFS #FileBasedStorage #UnixNAS
Allows remote hosts to mount file systems over a network (File-level access, common in Unix/Linux).
### SMB/CIFS (Server Message Block / Common Internet File System) #SMB #CIFS #FileBasedStorage #WindowsNAS
Allows sharing of files, printers, etc. (File-level access, common in Windows).
### iSCSI (Internet Small Computer System Interface) #iSCSI #BlockBasedStorage #SANoverIP
Transports SCSI commands over IP networks, enabling block-level storage access over Ethernet (IP SAN).
### Fibre Channel Protocol (FCP) #FCP #FibreChannel #BlockBasedStorage #SAN
Maps SCSI commands over Fibre Channel networks for high-speed block-level access (Traditional SAN).

## Emerging Protocols and Future Trends #Future #EmergingTech #NextGen
New protocols and developments shaping the future of networking.
### HTTP/3 #HTTP3 #QUICBased #WebPerformance
The next major version of HTTP, utilizing QUIC for improved web performance and security.
### QUIC #QUIC #UDPTransport #Encrypted
Transport layer protocol aiming to reduce latency and improve security compared to TCP+TLS.
### IoT Protocols #IoTProtocols #MQTT #CoAP
Protocols designed for constrained devices and networks.
#### MQTT (Message Queuing Telemetry Transport) #MQTT #PublishSubscribe #IoTComms
Lightweight publish/subscribe messaging protocol ideal for IoT communication.
#### CoAP (Constrained Application Protocol) #CoAP #RESTfulIoT #UDPBased
Specialized web transfer protocol for use with constrained nodes and networks (often over UDP).
### Named Data Networking (NDN) / Content-Centric Networking (CCN) #NDN #CCN #FutureInternetArchitecture
Alternative internet architecture focusing on named content rather than host locations.
### Software-Defined Networking (SDN) Protocols #SDN #NetworkControl #OpenFlow
Protocols enabling the separation of the control plane from the data plane.
#### OpenFlow #OpenFlow #SDNStandard #ControlPlane
Key protocol allowing communication between SDN controllers and network devices (switches, routers).
