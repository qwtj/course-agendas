# HAProxy #LoadBalancer #Proxy #Networking #HighAvailability
HAProxy (High Availability Proxy) is a widely used open-source, high-performance TCP/HTTP load balancer and proxy server. It's known for its speed, efficiency, reliability, and ability to distribute traffic across multiple backend servers, enhancing application availability and performance. It's used by many high-traffic websites.

## Core Concepts and Fundamentals #Basics #Introduction #Architecture
Introduction to HAProxy, its purpose, history, and underlying principles.
HAProxy was created in 2000 by Willy Tarreau and is written in C. It's designed for efficiency in CPU and memory usage.

### What is Load Balancing? #Concept #Definition
Distributing network or application traffic across multiple servers to prevent overload and ensure reliability.

### What is a Reverse Proxy? #Concept #Definition
An intermediary server that takes client requests, passes them to backend servers, and returns the server's response to the client, hiding the backend servers' identities.

### TCP vs HTTP Proxying #Layer4 #Layer7 #Modes
HAProxy operates at both Layer 4 (TCP) and Layer 7 (HTTP), allowing for flexible traffic management based on connection-level or application-level data.

### Event-Driven Architecture #Performance #Internals
HAProxy uses an event-driven, single-process (or multi-process/threaded) model with non-blocking I/O to handle numerous concurrent connections efficiently.

### Key Terminology #Definitions
*   **Frontend:** Defines how HAProxy receives client connections (IP addresses, ports, rules).
*   **Backend:** Defines the pool of servers that receive forwarded requests.
*   **ACL (Access Control List):** Rules used to test conditions and perform actions (e.g., route traffic, block requests) based on request attributes.
*   **Health Checks:** Mechanisms to monitor backend server availability.
*   **Session Persistence (Stickiness):** Ensuring a client consistently connects to the same backend server for the duration of their session.

## Installation and Setup #Installation #Deployment #GettingStarted
Getting HAProxy installed and running on various operating systems.

### Package Managers #Linux #Distribution
Using apt (Debian/Ubuntu), yum/dnf (CentOS/Fedora/RHEL), etc.

### Building from Source #Compilation #Customization
Downloading source code and compiling HAProxy manually for specific needs or latest features.

### Docker/Containers #Containerization #Docker
Running HAProxy within Docker containers.

### Initial Startup and Service Management #Systemd #Init #Process
Starting, stopping, reloading HAProxy service using systemd or other init systems. Command-line options for startup.

## Configuration File Structure #Configuration #Syntax #Structure
Understanding the structure and syntax of the `haproxy.cfg` file.

### Global Section #Process #Settings #Security
Defines process-wide settings like security (user, group, chroot), performance tuning (maxconn, nbproc, nbthread), logging, and stats sockets.

### Defaults Section #Defaults #Parameters #Efficiency
Sets default parameters (timeouts, mode, logging options) for subsequent frontend, backend, and listen sections, reducing redundancy.

### Frontend Section #ClientFacing #Listeners #RoutingRules
Defines listening IP addresses and ports, binds configurations (SSL/TLS), ACLs for request inspection, and `use_backend` rules for routing traffic.

### Backend Section #ServerPool #LoadBalancing #HealthChecks
Defines the pool of backend servers, specifies the load balancing algorithm, configures health checks, and sets server-specific options (weight, cookies for persistence).

### Listen Section #Combined #Simplified #Proxy
Combines frontend and backend functionalities into a single section, often used for simpler TCP or HTTP proxy setups.

### Other Sections #Advanced #Specialized
Brief overview of less common sections like `resolvers` (for DNS), `mailers` (for alerts), `peers` (for state synchronization).

## Load Balancing Algorithms #LoadBalancing #Algorithms #Distribution
Methods used by HAProxy to distribute traffic among backend servers.

### Round Robin #Simple #Sequential
Distributes requests sequentially across available servers.

### Static Round Robin (static-rr) #Predictable #Weights
Similar to round robin, but respects server weights. Order is static based on weights.

### Least Connections (leastconn) #Dynamic #Workload
Directs new connections to the server with the fewest active connections. Recommended for long sessions.

### Source IP Hashing (source) #Persistence #IPBased
Directs traffic based on a hash of the client's source IP address, providing basic session persistence.

### URI Hashing (uri) #Caching #ContentBased
Directs traffic based on a hash of the request URI (or portion thereof), useful for proxy cache balancing.

### Other Algorithms #Advanced #SpecificUse
Including `hdr` (based on HTTP header), `url_param` (based on URL parameter), `rdp-cookie` (for RDP persistence), `random`.

## Health Checking #HighAvailability #Monitoring #ServerStatus
Mechanisms HAProxy uses to determine if backend servers are healthy and capable of serving requests.

### Active Health Checks #Proactive #Polling
HAProxy actively probes backend servers at regular intervals.
*   **TCP Checks:** Basic connection attempt to the server port. Optionally checks a different port.
*   **HTTP Checks (`option httpchk`):** Sends an HTTP request (e.g., GET /, OPTIONS *) and verifies the response status code (expects 2xx, 3xx by default). Can check specific URLs and methods.
*   **Specific Protocol Checks:** MySQL, PostgreSQL, Redis, SMTP, LDAP checks.
*   **Check Parameters:** `inter` (interval), `rise` (success threshold), `fall` (failure threshold), `timeout check`.

### Passive Health Checks (`observe`) #Reactive #OnError
HAProxy monitors ongoing client connections for errors (e.g., connection failures, bad HTTP responses). If errors exceed a threshold (`error-limit`), the server is marked down (`on-error mark-down`).

### Agent Checks #Advanced #ServerSide
Requires a small agent running on the backend server that reports detailed status (e.g., CPU load, custom metrics) back to HAProxy.

### Server State Management #Availability #Failover
How HAProxy manages server states (UP, DOWN, NOLB, MAINT) and transitions between them based on health checks. Setting initial state (`init-addr`).

## Session Persistence (Stickiness) #Sessions #Stateful #UserExperience
Techniques to ensure a client's subsequent requests are directed to the same backend server.

### Cookie-Based Persistence #HTTP #Cookies
HAProxy sets a cookie in the client's browser to track the assigned server.
*   **Insert Mode:** HAProxy inserts its own cookie.
*   **Prefix Mode:** HAProxy prefixes an existing application cookie.
*   **Rewrite Mode:** HAProxy overwrites an existing application cookie.

### Stick Tables #Advanced #State #Counters
Using HAProxy's in-memory storage to track client identifiers (source IP, cookies, headers, etc.) and map them to specific backend servers. Can also store counters for rate limiting, etc.
*   **Storing Data:** Source IP, HTTP headers, SSL/TLS identifiers.
*   **Stickiness:** `stick on`, `stick match`, `stick store`.
*   **Counters:** `sc-inc-gpc0()`.

### Source IP Persistence #Layer4 #Simple
Using the `balance source` algorithm (less reliable with NAT/proxies).

### Application Session Persistence (`appsession`) #ApplicationCookie #Passthrough
Using an existing cookie set by the application server.

## SSL/TLS Termination and Handling #Security #Encryption #Certificates
Managing encrypted connections.

### SSL/TLS Termination #Offloading #Decryption
HAProxy decrypts incoming HTTPS traffic and forwards unencrypted HTTP traffic to backend servers, reducing server load. Requires certificate configuration (`crt` directive).

### SSL/TLS Passthrough #EndToEnd #NoDecryption
HAProxy forwards encrypted HTTPS traffic directly to backend servers without decryption (Mode TCP).

### SSL/TLS Re-encryption #SecureBackend #Encryption
HAProxy decrypts incoming HTTPS, potentially inspects/modifies the request, and then re-encrypts it before sending it to backend servers.

### Certificate Management #Certs #PEM #ACME
Handling SSL certificates (PEM files), using multiple certificates (SNI), and integrating with Let's Encrypt/ACME.

### Security Parameters #Ciphers #Protocols #Options
Configuring allowed cipher suites (`ssl-default-bind-ciphers`), TLS protocol versions (`ssl-min-ver`), and other security options (`ssl-default-bind-options`).

### Client Certificate Authentication #MutualTLS #Authentication
Configuring HAProxy to request and verify client-side SSL certificates.

## High Availability (HA) for HAProxy Itself #Redundancy #Failover #Infrastructure
Ensuring the load balancer itself is not a single point of failure.

### Keepalived + VRRP #Linux #VirtualIP #Failover
Using Keepalived with the Virtual Router Redundancy Protocol (VRRP) to manage a floating Virtual IP (VIP) address between two or more HAProxy instances (Active/Passive or Active/Active).

### Active/Passive Setup #Primary #Backup
One HAProxy instance is active, handling traffic, while the other is passive (standby), ready to take over if the primary fails.

### Active/Active Setup #LoadSharing #Performance
Multiple HAProxy instances actively handle traffic, often using techniques like ECMP routing or DNS load balancing alongside VRRP/Keepalived. Requires careful state synchronization if needed.

### State Synchronization #Peers #StickTables
Synchronizing stick table data between HAProxy peers to maintain session persistence during failover.

## Monitoring, Logging, and Statistics #Observability #Metrics #Troubleshooting
Observing HAProxy's status, performance, and diagnosing issues.

### Stats Page #WebUI #Realtime #Metrics
Built-in web interface (`stats enable`) providing real-time metrics on frontends, backends, servers (status, connections, bytes, errors). Securing the stats page is crucial (`stats auth`, IP restrictions).

### Runtime API (Stats Socket) #CLI #Automation #Management
Unix socket allowing administrative commands to dynamically manage HAProxy (enable/disable servers, change weights, view stats, update maps) without restarts.

### Logging #Syslog #Events #Debugging
Configuring HAProxy to send logs (traffic logs, event logs) to syslog. Customizing log formats (`log-format`).

### Integration with Monitoring Systems #Prometheus #Grafana #Datadog
Exposing metrics for consumption by external monitoring tools (e.g., Prometheus exporter).

### Tracing #Debugging #RequestLifecycle
Advanced debugging features to trace request processing flow.

## Security Features #Security #Protection #AccessControl
Features beyond SSL/TLS to enhance security.

### Access Control Lists (ACLs) #Rules #Filtering #Conditions
Defining conditions based on various request attributes (source IP, path, headers, method, etc.) to control traffic flow, block requests, or apply specific actions.

### Rate Limiting #AbusePrevention #DoS #StickTables
Using stick tables to track request rates per client (e.g., by source IP) and block or delay excessive requests.

### HTTP Request Blocking/Tarpitting #Security #MaliciousTraffic
Denying or intentionally slowing down malicious requests identified by ACLs.

### Security Headers #HTTP #Hardening
Adding security-related HTTP headers to responses (e.g., HSTS, X-Frame-Options).

### DDoS Mitigation Support #Protection #VolumeAttacks
Basic DDoS mitigation capabilities through connection limits, rate limiting, and filtering. Enterprise versions offer more advanced features.

### Authentication #AccessControl #Verification
Basic HTTP authentication, client certificate authentication, OAuth 2.0 integration.

## Performance Tuning and Optimization #Performance #Tuning #Scalability
Optimizing HAProxy for high throughput and low latency.

### `maxconn` Tuning #Connections #Limits #Resources
Setting appropriate maximum connection limits globally and per frontend/backend based on system resources and expected load.

### Timeout Tuning #Connections #Reliability
Adjusting various timeout values (`timeout connect`, `timeout client`, `timeout server`, `timeout http-request`, `timeout queue`) to match application behavior and prevent resource exhaustion.

### Buffer Tuning (`tune.bufsize`) #Memory #Efficiency
Adjusting buffer sizes for request/response handling.

### Threading (`nbthread`) and Processes (`nbproc`) #Concurrency #CPU #Scaling
Utilizing multiple threads or processes to leverage multi-core CPUs effectively. Using `cpu-map` for pinning.

### Connection Reuse (`http-reuse`) #Efficiency #Backend
Optimizing backend connection reuse (keep-alive) to reduce latency and server load.

### Kernel Tuning (sysctl) #OSLevel #Networking
Adjusting OS-level network parameters (e.g., `net.ipv4.tcp_max_syn_backlog`, `net.core.somaxconn`, file descriptor limits).

### SSL/TLS Optimization #CPU #Offloading #Ciphers
Choosing efficient cipher suites, utilizing hardware acceleration (if available), optimizing SSL session cache.

### Compression #Bandwidth #Performance
Enabling gzip compression to reduce bandwidth usage.

### Caching #Performance #StaticContent
Basic caching capabilities to store and serve frequently accessed objects directly from HAProxy.

## Advanced Features and Extensibility #Advanced #Extensibility #Customization
Capabilities beyond basic load balancing and proxying.

### Stick Tables #State #Counters #RateLimiting
In-depth use for complex state tracking, rate limiting, abuse detection, and more.

### Lua Scripting #CustomLogic #Flexibility
Embedding Lua scripts to implement custom logic, modify requests/responses, or create complex routing rules.

### Stream Processing Offload Engine (SPOE) #ExternalProcessing #Extensibility
Offloading specific tasks (e.g., complex authentication, content adaptation) to external agents (SPOE agents) for processing.

### Content Switching #Routing #ACLs
Using ACLs to route requests to different backends based on various criteria (Host header, URL path, etc.).

### HTTP Request/Response Rewriting and Redirection #Manipulation #URLs
Modifying HTTP headers, URL paths, or issuing redirects based on defined rules.

### DNS Resolution #DynamicBackends #ServiceDiscovery
Configuring HAProxy to resolve backend server hostnames via DNS at runtime, allowing for dynamic backend updates. Using `resolvers` sections and `server-template`.

### gRPC Support #Protocols #Microservices
Load balancing and proxying for gRPC traffic.

### HTTP/2 and HTTP/3 Support #Protocols #Performance
Handling modern HTTP protocols on both client and server sides.

## Common Use Cases and Architectures #Deployment #Scenarios #Examples
Typical deployment patterns for HAProxy.

### Web Application Load Balancing #HTTP #HTTPS #Scalability
Standard use case for distributing traffic across web/application servers.

### API Gateway Proxy #Microservices #Routing #Security
Acting as a single entry point for microservices, handling routing, authentication, and rate limiting.

### Database Load Balancing #TCP #MySQL #PostgreSQL
Load balancing TCP connections for database clusters (read replicas). Requires careful health checking and persistence configuration.

### Kubernetes Ingress Controller #Kubernetes #Containers #Orchestration
Using HAProxy Ingress Controller to manage external access to services in a Kubernetes cluster.

### TCP Forwarding #Layer4 #GenericTCP
Proxying generic TCP traffic for various applications (e.g., SSH, SMTP, custom protocols).

### Edge Load Balancer #Security #Performance #CDNLike
Deploying HAProxy at the network edge for initial traffic handling, security filtering, and potentially basic caching.

## Troubleshooting #Debugging #Errors #Issues
Identifying and resolving common problems.

### Configuration Validation (`haproxy -c`) #SyntaxCheck #Validation
Using the command-line tool to check configuration file syntax before reloading/restarting.

### Analyzing Logs #Errors #StatusCodes #Debugging
Interpreting HAProxy logs (syslog, `/var/log/haproxy.log`) to understand connection termination states, backend errors, and status codes.

### Using the Stats Page #Realtime #Diagnosis
Checking server status, connection counts, and error indicators on the stats page. Hovering over down servers often reveals the health check failure reason.

### Common Errors #Issues #Solutions
*   **503 Service Unavailable:** No backend servers available (all down, config error, queue full).
*   **Connection Timed Out:** Network issues, backend server unresponsive, firewall blocking, HAProxy timeouts too short.
*   **Connection Refused:** HAProxy service not running, wrong port, firewall blocking HAProxy's listener port.
*   **Configuration Errors:** Syntax errors, permission issues, port conflicts, inability to bind sockets (`net.ipv4.ip_nonlocal_bind` for VRRP).
*   **Health Check Failures:** Incorrect check configuration, backend service down, network path issue, firewall blocking check port.

### Using `systemctl` and `journalctl` #ServiceManagement #SystemLogs
Checking the HAProxy service status and systemd logs for startup or process-level errors.

### Using Network Tools #tcpdump #netstat #ss
Analyzing network traffic and listening ports to diagnose connectivity issues.

## HAProxy Community vs Enterprise #Editions #Features #Support
Differences between the open-source and commercial versions.

### HAProxy Community Edition #OpenSource #Free #Core
The free, open-source version with core features, maintained by the community and HAProxy Technologies. New features land in dev branches first.

### HAProxy Enterprise (HAPEE) #Commercial #Support #Addons
Commercial version built upon the community edition, offering additional features (advanced WAF, bot management, device intelligence, etc.), enterprise support, professional services, and stable backported features.

### HAProxy ALOHA #Appliance #Hardware #Virtual
Hardware or virtual appliance based on HAProxy Enterprise, providing a turn-key solution.

### HAProxy Fusion Control Plane #Management #Automation #Observability
Centralized management, monitoring, and automation platform for HAProxy Enterprise instances.
