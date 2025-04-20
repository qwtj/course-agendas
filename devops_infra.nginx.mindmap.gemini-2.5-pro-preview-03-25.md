```markdown
# NGINX #WebServer #ReverseProxy #LoadBalancer
NGINX is high-performance open-source software for web serving, reverse proxying, caching, load balancing, media streaming, and more. It's known for its stability, rich feature set, simple configuration, and low resource consumption.

## Introduction and Core Concepts #Overview #Basics #Architecture
Understanding the fundamental principles and architecture of NGINX.
### What is NGINX? #Definition #Purpose
Open-source software for web serving, reverse proxy, caching, load balancing, and more. [1, 5, 10]
### Key Use Cases #Applications
Serving static content, reverse proxying, load balancing, SSL/TLS termination, API gateway, HTTP caching, media streaming. [1, 5, 11, 10]
### Architecture #Design #Internals
Event-driven, asynchronous, non-blocking architecture. [5, 9, 11]
Master process and worker processes model. [5, 19, 26]
Low resource consumption compared to traditional models. [5, 9]
### NGINX vs. Apache #Comparison #Alternatives
Performance differences (especially concurrency). [9, 16]
Configuration style differences. [9]
Module ecosystem comparison. [9, 1]
Concurrency models (event-driven vs. process/thread-based). [9]
Use case strengths (static vs. dynamic content, .htaccess). [9, 16]
### NGINX Versions #Editions #Products
NGINX Open Source (OSS). [5, 3]
NGINX Plus (Commercial version with additional features). [1, 5, 3, 23]
Other F5 NGINX Products (NGINX App Protect, NGINX Instance Manager, NGINX Ingress Controller, NGINX Gateway Fabric, NGINX Unit, NGINX Service Mesh, NGINX One). [1, 3, 23]

## Installation and Setup #GettingStarted #Installation
Procedures for installing NGINX on various platforms.
### Installation Methods #Setup #Packages
Using package managers (apt, yum, brew). [4, 7]
Compiling from source. [7]
Docker images.
### Supported Operating Systems #Compatibility #Platforms
Linux distributions (Ubuntu, CentOS, Debian, RHEL).
FreeBSD.
macOS.
Windows (Limited functionality).
### Initial Verification #Testing #Startup
Starting, stopping, and reloading NGINX service. [26]
Checking NGINX status.
Default file locations (`/etc/nginx`, `/usr/local/nginx/conf`). [2, 12]

## Configuration Fundamentals #Configuration #Directives
Understanding the structure and syntax of NGINX configuration files.
### Configuration File Structure #Syntax #Files
Main configuration file (`nginx.conf`). [2, 12, 19, 24]
Included files and directories (`conf.d/`, `sites-available/`, `sites-enabled/`). [2, 12]
Order of configuration loading. [12]
### Directives and Contexts (Blocks) #Syntax #Structure
Simple directives (key-value pairs ending with `;`). [19, 26]
Block directives/Contexts (`http`, `server`, `location`, `events`, `upstream`). [19, 24, 26]
Inheritance rules between contexts.
### Variables #DynamicConfig #Variables
Using built-in NGINX variables (e.g., `$host`, `$request_uri`, `$remote_addr`).
Custom variables using `map` and `geo`. [20]
### Basic Commands #CLI #Management
Testing configuration syntax (`nginx -t`). [2]
Reloading configuration (`nginx -s reload`). [26]
Stopping NGINX (`nginx -s stop`, `nginx -s quit`). [26]
Viewing compiled modules and version (`nginx -V`). [21]

## Web Server Functionality #WebServer #HTTP
Using NGINX to serve web content directly.
### Serving Static Content #StaticFiles #ContentDelivery
Configuring `root` and `alias` directives. [5, 11, 24]
Defining `index` files. [24, 10]
Setting up MIME types (`mime.types` file). [12]
Efficient file serving (`sendfile`, `tcp_nopush`, `tcp_nodelay`).
Directory listings (`autoindex`). [4]
### Virtual Hosts (Server Blocks) #VirtualHosting #Domains
Configuring `server` blocks. [24, 26]
Using `server_name` for domain matching (including wildcards, regex). [27]
Listening on specific ports and IP addresses (`listen`). [24]
Default server configuration (`default_server`). [27]
### Location Blocks #Routing #Matching
Matching request URIs (`location`). [24, 26]
Prefix matching, exact matching (`=`), regex matching (`~`, `~*`), preferred prefix (`^~`).
Order of location processing.
Using `try_files`. [24]
### Handling Common Web Protocols #Protocols #Standards
HTTP/1.0, HTTP/1.1.
HTTP/2 support. [8, 13]
HTTP/3 support (QUIC). [8]
WebSocket proxying. [2]

## Reverse Proxy Functionality #ReverseProxy #Gateway
Using NGINX as an intermediary for backend servers.
### Basic Reverse Proxy Setup #Proxying #Backend
`proxy_pass` directive. [10, 15, 26]
Passing request headers (`proxy_set_header`). [10, 27]
Handling redirects from backend servers.
### Buffering #ProxyBuffer #Performance
Proxy buffering (`proxy_buffering`). [15]
Buffer size configuration (`proxy_buffers`, `proxy_buffer_size`). [2, 15]
Implications for performance and latency. [15]
### SSL/TLS Offloading (Termination) #SSL #TLS #Security
Configuring NGINX to handle HTTPS traffic. [2, 10, 11]
Passing decrypted traffic to backend servers. [27]
Performance benefits. [2]
### Common Reverse Proxy Use Cases #Applications
Frontend for application servers (Node.js, Python/uWSGI/Gunicorn, PHP-FPM, Java/Tomcat). [27, 10]
API Gateway pattern implementation. [1, 23]
Microservices routing. [5, 11]

## Load Balancing #LoadBalancing #Scalability #HighAvailability
Distributing traffic across multiple backend servers.
### Upstream Module #Upstream #BackendPool
Defining backend server groups (`upstream` block).
Listing servers within the group (`server` directive).
### Load Balancing Algorithms #Methods #Distribution
Round Robin (default). [2, 8]
Least Connections (`least_conn`). [2, 8]
IP Hash (`ip_hash`) for session persistence. [8]
Generic Hash (`hash`).
Random.
### Server Weights and Parameters #Configuration #Tuning
Assigning weights to servers (`weight`).
Marking servers as down (`down`) or backup (`backup`).
Maximum connections (`max_conns`).
Failure handling (`max_fails`, `fail_timeout`).
### Health Checks #Monitoring #Availability
Passive health checks (based on `fail_timeout`, `max_fails`).
Active health checks (NGINX Plus feature). [1]
Configuring health check parameters.

## Caching #Caching #Performance
Storing responses to speed up future requests.
### HTTP Caching Basics #HTTPCache #Speed
`proxy_cache_path` directive (defines cache storage). [2, 10]
`proxy_cache` directive (enables caching in a location/server). [10]
Cache key configuration (`proxy_cache_key`).
### Cache Control Headers #Headers #Expiration
Respecting `Cache-Control`, `Expires` headers from backend.
Overriding backend headers (`proxy_cache_valid`). [10]
Ignoring specific headers (`proxy_ignore_headers`).
### Fine-Tuning Cache Behavior #Optimization #Control
Cache bypassing (`proxy_cache_bypass`).
Cache locking (`proxy_cache_lock`) to prevent cache stampede.
Using stale content (`proxy_cache_use_stale`).
Microcaching strategies.
### Purging Cache #Management #Invalidation
Conditional purging (e.g., specific header or HTTP method).
Using external tools or NGINX Plus features for cache purging.

## Security Features #Security #Hardening
Configuring NGINX to enhance web application security.
### SSL/TLS Configuration #Encryption #HTTPS
Generating and installing SSL/TLS certificates (e.g., Let's Encrypt). [10]
Configuring protocols (TLSv1.2, TLSv1.3). [2, 22]
Choosing strong cipher suites. [4, 22]
Enabling HSTS (HTTP Strict Transport Security).
OCSP Stapling.
Session tickets/caching optimization. [2, 22]
Custom Diffie-Hellman parameters. [22]
Forcing HTTPS redirection. [22]
### Access Control #Authorization #Restrictions
IP-based restrictions (`allow`, `deny`). [4, 7]
HTTP Basic Authentication (`auth_basic`, `auth_basic_user_file`).
JWT validation (NGINX Plus or Lua module).
### Rate Limiting #DoS #Throttling
Limiting request rate (`limit_req_zone`, `limit_req`). [4, 6]
Limiting connections (`limit_conn_zone`, `limit_conn`).
Burst queueing.
### Mitigating Common Web Attacks #Protection #WAF
Disabling server tokens (`server_tokens off`). [4]
Protecting against XSS (`X-XSS-Protection` header). [4, 18]
Preventing Clickjacking (`X-Frame-Options` header). [18, 22]
Enabling `Content-Security-Policy` (CSP). [6]
Limiting allowed HTTP methods. [6, 18]
Using NGINX App Protect (WAF - NGINX Plus/Add-on) or ModSecurity. [1, 18, 7]
Secure file permissions for NGINX files/directories. [4, 7]
Running NGINX as an unprivileged user. [22]
### Security Headers #Headers #Hardening
Adding security-related HTTP headers (`add_header`). [4, 22]
Examples: `X-Content-Type-Options`, `Referrer-Policy`, `Permissions-Policy`.

## Performance Tuning and Optimization #Performance #Tuning #Optimization
Adjusting NGINX settings for maximum efficiency.
### Worker Processes and Connections #Concurrency #Resources
`worker_processes` (often set to `auto` or number of CPU cores). [2, 8, 16]
`worker_connections` (max connections per worker). [2, 8, 16]
Understanding the relationship between workers, connections, and system limits.
### Buffers #Memory #IO
Client request buffers (`client_body_buffer_size`, `client_header_buffer_size`). [2, 15]
Large client header buffers (`large_client_header_buffers`).
Output buffers (`output_buffers`).
Impact on memory usage and disk I/O. [2, 15]
### Timeouts #Connections #Latency
`keepalive_timeout` (client connections). [15, 16]
`send_timeout`.
Proxy timeouts (`proxy_connect_timeout`, `proxy_send_timeout`, `proxy_read_timeout`). [15]
Client timeouts (`client_header_timeout`, `client_body_timeout`).
### Compression #Bandwidth #Latency
Enabling Gzip compression (`gzip on`). [2, 8, 16]
Configuring compression level (`gzip_comp_level`). [8]
Specifying compressible MIME types (`gzip_types`). [8]
Brotli compression (requires separate module). [8]
### Keepalive Connections #Efficiency #TCP
Client keepalive (`keepalive_requests`, `keepalive_timeout`). [15, 16]
Upstream keepalive (`keepalive` directive in `upstream`). [15, 16]
Benefits for reducing latency. [16]
### File System Caching #StaticFiles #IO
`open_file_cache` directive (caches file descriptors and metadata). [13]
`open_file_cache_valid`. [13]
`open_file_cache_min_uses`. [13]
`open_file_cache_errors`.
### Thread Pools (for Blocking Operations) #Threading #Performance
Offloading blocking operations (like disk I/O) to separate threads (`aio threads`).
Using thread pools for specific tasks. [15]
### CPU Affinity #Performance #Hardware
Pinning worker processes to specific CPU cores (`worker_cpu_affinity`). [15, 16]

## Monitoring and Logging #Monitoring #Logging #Troubleshooting
Observing NGINX behavior and diagnosing issues.
### Access Logs #Requests #Tracking
Configuring log format (`log_format`).
Specifying log file location (`access_log`).
Conditional logging.
Log buffering (`buffer` parameter). [2, 15]
### Error Logs #Errors #Debugging
Configuring error log location and level (`error_log`).
Understanding different log levels (debug, info, notice, warn, error, crit, alert, emerg).
### Real-time Monitoring #Metrics #Status
Stub Status Module (`stub_status`).
NGINX Plus Live Activity Monitoring dashboard. [28]
NGINX Amplify (SaaS monitoring platform). [3, 4]
Integration with external monitoring tools (Prometheus, Grafana, Datadog, ELK Stack, Splunk). [2, 4]
### Key Metrics to Monitor #KPIs #Health
Requests per second. [13]
Active connections. [13]
Error rates (4xx, 5xx). [13]
Request processing time. [13]
CPU and memory usage.
Bandwidth usage.
Cache hit/miss ratio.

## Modules and Extensibility #Modules #Extensibility #Customization
Extending NGINX functionality with modules.
### Module Architecture #Plugins #Core
Core modules (built-in). [14, 25]
Third-party modules. [14, 17, 25]
Static vs. Dynamic modules. [14, 17, 21]
### Standard Modules Overview #Builtin #Features
HTTP Core, Events Core, Stream Core. [20]
Proxy modules (`ngx_http_proxy_module`, `ngx_stream_proxy_module`).
Rewrite module (`ngx_http_rewrite_module`).
SSL module (`ngx_http_ssl_module`).
Many others (Gzip, Headers, Auth Basic, Stub Status, etc.). [28]
### Dynamic Modules #Loading #Flexibility
Loading modules at runtime (`load_module` directive). [17, 21]
NGINX Plus module repository. [17]
Compiling third-party modules dynamically. [17]
Enabling/disabling dynamic modules. [21]
### Third-Party Modules #Community #Addons
Popular examples (Lua, Perl, JavaScript/njs, RTMP, GeoIP, Image Filter, Brotli, ModSecurity). [14, 20, 21]
Finding and compiling third-party modules. [17]
Security considerations.
### Scripting with NGINX #Scripting #Automation
Lua scripting (via `lua-nginx-module`/OpenResty). [20]
NGINX JavaScript module (njs). [17, 20]
Perl module. [20]
Use cases for scripting (complex logic, custom access control). [20]

## NGINX Plus Features #Commercial #Enterprise
Capabilities exclusive to the commercial NGINX Plus offering.
### Advanced Load Balancing #LoadBalancing #Enterprise
Active health checks. [1]
Session persistence enhancements (sticky learn, sticky route). [1]
Least Time algorithm.
DNS service discovery integration. [1]
### Enhanced Monitoring and Management #Monitoring #Management
Live activity monitoring dashboard. [1, 28]
RESTful API for stats and configuration (`NGINX Plus API`). [1]
NGINX Instance Manager integration. [3, 23]
### Security Enhancements #Security #WAF
NGINX App Protect WAF integration. [1, 23]
Advanced rate limiting options.
Single Sign-On (SSO) integration capabilities. [28]
### High Availability (HA) #HA #Failover
Active-passive and active-active HA configurations. [1]
Integration with keepalived.
Cloud provider HA solutions (AWS ELB, Azure Load Balancer, GCP Load Balancer). [28]
### Media Streaming Features #Streaming #Media
Support for HLS, HDS, MPEG-DASH adaptive streaming.
Bandwidth control and stream security.
### Other Enterprise Features #Plus #Commercial
JWT authentication support.
Key-value store.
Commercial support from F5.

## Use Cases and Architectures #Deployment #Patterns
Common deployment patterns and scenarios involving NGINX.
### Static Content Acceleration #CDN #Performance
Using NGINX purely for fast static file delivery. [5, 11]
Offloading static assets from application servers.
### Application Gateway #Gateway #Frontend
Acting as the single entry point for web applications. [1, 23]
Handling SSL, routing, caching, security at the edge.
### Microservices Infrastructure #Microservices #API
API Gateway implementation. [1, 11]
Ingress controller for Kubernetes. [1, 23]
Service discovery integration.
Inter-service communication proxy.
### Mail Proxy #Mail #SMTP #IMAP #POP3
Proxying email protocols (SMTP, IMAP, POP3). [1, 28]
SSL/TLS termination for mail servers.
Authentication proxying.
### NGINX in Containerized Environments #Docker #Kubernetes
Official NGINX Docker images.
Using NGINX as an Ingress Controller in Kubernetes. [1, 23]
Sidecar proxy pattern in service meshes (though NGINX Service Mesh exists). [1]

## Troubleshooting #Debugging #Issues
Diagnosing and resolving common NGINX problems.
### Configuration Errors #Syntax #Validation
Using `nginx -t` to validate syntax. [2]
Interpreting error messages during startup or reload.
Common pitfalls (typos, incorrect context, missing semicolons).
### Performance Bottlenecks #Slowdown #Analysis
Analyzing logs (access, error) for slow requests or errors. [6, 7]
Using monitoring tools to identify resource constraints (CPU, memory, disk I/O, network).
Checking backend server performance.
Analyzing `stub_status` or NGINX Plus metrics.
### Connection Issues #Networking #Connectivity
Refused connections (NGINX not running, firewall).
Timeouts (backend unresponsive, network latency, timeout settings too low).
502 Bad Gateway errors (backend issues).
504 Gateway Timeout errors (backend taking too long).
### SSL/TLS Problems #Certificates #Encryption
Certificate errors (expired, mismatched name, chain issues).
Protocol/cipher negotiation failures.
Mixed content warnings.
### Logging and Debugging Techniques #Diagnosis #Tools
Enabling debug logging (`error_log ... debug;`).
Using tools like `curl`, `openssl s_client` for testing.
Analyzing network traffic (`tcpdump`, Wireshark).

## Comparison with Alternatives #Alternatives #Landscape
Brief comparison with other similar technologies.
### Apache HTTP Server #Apache #Comparison
Strengths and weaknesses revisited. [9, 16]
When to choose one over the other.
Using both together (NGINX as reverse proxy for Apache). [16]
### HAProxy #HAProxy #Comparison
Focus on load balancing and proxying.
Performance characteristics.
Configuration differences.
### Caddy #Caddy #Comparison
Automatic HTTPS by default.
Simpler configuration for basic use cases.
Feature set comparison.
### Envoy #Envoy #Comparison
Designed for cloud-native/microservices (service mesh).
Extensive API-driven configuration.
Focus on observability.
### LiteSpeed Web Server #LiteSpeed #Comparison
Performance claims.
Apache compatibility features (.htaccess).
Licensing model.

## Community and Future #Ecosystem #Development #Future
Resources and the ongoing development of NGINX.
### Official Documentation #Docs #Resources
NGINX.org and NGINX.com documentation. [3, 17, 21]
Wiki and blog posts.
### Community Support #Help #Forum
Mailing lists. [7]
Forums.
Stack Overflow.
IRC channels (#nginx on Libera.Chat). [21]
### Third-Party Resources #Learning #Books
Books, tutorials, online courses. [21]
Community blogs and articles.
### Contributing to NGINX #Development #OpenSource
Reporting bugs.
Submitting patches (more complex for core).
Developing third-party modules.
### Future Development #Roadmap #Trends
Ongoing performance improvements.
Enhanced HTTP/3 support.
Further integration with cloud-native ecosystems (Kubernetes, Service Mesh).
Evolution of NGINX Plus and related F5 products. [23]
```
