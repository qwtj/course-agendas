# Nginx #WebServer #ReverseProxy #LoadBalancer
High-performance web server, reverse proxy, load balancer, mail proxy, and HTTP cache.

## Introduction and Core Concepts #Basics #Architecture #Overview
Understanding the fundamentals of Nginx.

### What is Nginx? #Definition #Purpose
Explaining its role and common uses.

### History and Development #Origin #Evolution
Brief overview of Nginx's creation and journey.

### Key Features #Capabilities #Highlights
Load Balancing, Reverse Proxying, Caching, SSL/TLS Termination, High Performance, Scalability.

### Architecture #EventDriven #Asynchronous #NonBlocking
Overview of the master-worker process model and event-driven architecture.
Compared to thread-per-request models (like Apache's prefork).

#### Master Process #Control #Management
Responsible for reading configuration, binding ports, and managing worker processes.

#### Worker Processes #Handling #Execution
Single-threaded processes that handle actual client connections and requests.

#### Event Loop #IO #Efficiency
How Nginx handles multiple connections concurrently without blocking.

### Nginx vs. Apache vs. Others #Comparison #Alternatives
Highlighting key differences and strengths/weaknesses compared to other web servers.

## Installation and Setup #Install #Deployment #Setup
Getting Nginx installed on various operating systems.

### Linux Distributions #Debian #Ubuntu #CentOS #RHEL
Using package managers (apt, yum/dnf).

#### From Official Repositories #PackageManager #Standard
Standard installation procedures.

#### From Nginx Official Repository #Latest #Recommended
Setting up and installing from Nginx's own repositories for newer versions.

#### Compiling from Source #Custom #Build #Advanced
Building Nginx with specific modules or optimizations.

### Windows #WindowsServer #Development
Installation and setup process on Windows.

### macOS #Homebrew #Development
Using package managers like Homebrew or MacPorts.

### Docker #Containerization #DevOps
Running Nginx within Docker containers.

### Initial Service Management #Systemd #SysVinit #BrewServices
Starting, stopping, restarting, and checking the Nginx service status.

## Basic Configuration #Config #Directives #Structure
Understanding the Nginx configuration file structure and syntax.

### Configuration File Location #Paths #Defaults
Default locations (`/etc/nginx/nginx.conf`, `/usr/local/nginx/conf/nginx.conf`, etc.).

### Configuration Syntax #Rules #Format
Directives, parameters, semicolons, blocks (contexts).

### Core Configuration Contexts #Blocks #Hierarchy
Understanding the main configuration blocks.

#### `main` / Global Context #Core #Worker #Events
Top-level settings (user, worker_processes, error_log, pid, events).

#### `events` Context #Connections #Performance
Connection processing directives (`worker_connections`, `multi_accept`, `use`).

#### `http` Context #Web #Protocols
Settings related to HTTP/HTTPS traffic (`include`, `default_type`, `log_format`, `sendfile`, `keepalive_timeout`).

#### `server` Context #VirtualHost #Site
Defining virtual servers to handle requests for specific domain names or IP addresses (`listen`, `server_name`, `root`, `index`, `location`).

#### `location` Context #Routing #Matching
Matching request URIs and applying specific configurations (`proxy_pass`, `alias`, `try_files`, rewrite rules).
Matching rules: prefix, exact match (`=`), case-sensitive regex (`~`), case-insensitive regex (`~*`), preferential prefix (`^~`).

#### `upstream` Context #LoadBalancing #Backend
Defining pools of backend servers for load balancing.

### Includes and Modularity #Organization #Maintainability
Using the `include` directive to split configuration into multiple files (`/etc/nginx/conf.d/`, `/etc/nginx/sites-available/`, `/etc/nginx/sites-enabled/`).

### Variables #Dynamic #Runtime
Using built-in and custom variables in configurations.

### Testing Configuration #Validation #SyntaxCheck
Using `nginx -t` to validate configuration files before applying.

### Reloading Configuration #Apply #Graceful
Using `nginx -s reload` for graceful configuration updates without dropping connections.

## Serving Static Content #StaticFiles #Performance #WebHosting
Configuring Nginx to efficiently serve static assets like HTML, CSS, JavaScript, and images.

### `root` Directive #DocumentRoot #FilePath
Specifying the root directory for requests within a `server` or `location` block.

### `alias` Directive #Mapping #Directory
Mapping a location block to a different directory path than `root`.

### `index` Directive #DefaultFile #Homepage
Specifying default files to serve (e.g., `index.html`, `index.htm`).

### `try_files` Directive #Fallback #Routing
Checking for the existence of files in sequence and serving the first one found or performing an internal redirect/returning an error code. Commonly used for SPAs.

### Autoindexing #DirectoryListing #Optional
Enabling or disabling automatic directory listings (`autoindex on;`).

### Cache Control Headers #Caching #Browser #Performance
Setting `Expires` and `Cache-Control` headers for static assets.

### Compression (Gzip/Brotli) #Bandwidth #Performance
Enabling on-the-fly compression to reduce transfer size.

#### `gzip` Module #Compression #Standard
Configuration directives (`gzip`, `gzip_types`, `gzip_comp_level`).

#### `brotli` Module #Compression #Modern
Configuration for Brotli compression (often requires a custom build or third-party module).

### Open File Cache #Performance #Optimization
Caching file descriptors and metadata (`open_file_cache`).

## Reverse Proxying #Proxy #Gateway #Backend
Using Nginx as an intermediary to forward client requests to backend servers/applications.

### `location` Block for Proxying #Routing #Configuration
Defining locations to handle proxy requests.

### `proxy_pass` Directive #Forwarding #BackendURL
The core directive to specify the backend server URL (HTTP or HTTPS).

### Passing Headers #ClientInfo #Metadata
Controlling which headers are passed to the backend (`proxy_set_header`, `Host`, `X-Real-IP`, `X-Forwarded-For`, `X-Forwarded-Proto`).

### Buffering #Performance #Memory
Understanding and configuring proxy buffering (`proxy_buffering`, `proxy_buffers`, `proxy_buffer_size`).

### Timeouts #Reliability #Backend
Configuring timeouts for connecting, sending, and reading from the backend (`proxy_connect_timeout`, `proxy_send_timeout`, `proxy_read_timeout`).

### Error Handling #Failover #BackendStatus
Handling backend errors (`proxy_intercept_errors`, `error_page`).

### Proxying Protocols #HTTP #HTTPS #FastCGI #uWSGI #SCGI #gRPC
Configuring proxying for different protocols.

#### FastCGI Proxying (PHP) #PHP-FPM #Scripting
Using `fastcgi_pass` and related directives (`fastcgi_param`).

#### uWSGI Proxying (Python) #Python #WebApps
Using `uwsgi_pass` and related directives.

#### WebSocket Proxying #Realtime #Connections
Special configuration needed for WebSocket connections (`proxy_http_version 1.1`, `Upgrade`, `Connection` headers).

#### gRPC Proxying #RPC #Microservices
Using `grpc_pass` for gRPC backends.

## Load Balancing #Distribution #Scalability #HighAvailability
Distributing incoming traffic across multiple backend servers.

### `upstream` Context #BackendPool #Servers
Defining a named group of backend servers.

### Load Balancing Algorithms #Methods #Distribution
Different strategies for selecting a backend server.

#### Round Robin #Default #Sequential
Distributing requests sequentially across servers.

#### Least Connections (`least_conn`) #Workload #Efficiency
Sending requests to the server with the fewest active connections.

#### IP Hash (`ip_hash`) #StickySessions #Persistence
Ensuring requests from the same client IP address go to the same server.

#### Hash (`hash`) #CustomPersistence #Flexible
Distributing requests based on a hash of a specified key (e.g., URL, variable). Requires `key` parameter.

#### Least Time (`least_time`) #Performance #NginxPlus
Sending requests to the server with the lowest average response time and fewest active connections (Nginx Plus).

### Server Weights #Priority #Capacity
Assigning weights to servers in the upstream block to influence distribution.

### Server Parameters #HealthChecks #Configuration
Configuring server options within the upstream block (`max_fails`, `fail_timeout`, `backup`, `down`).

### Health Checks #Availability #Monitoring
Actively or passively monitoring backend server health.

#### Passive Health Checks #Automatic #FailureDetection
Based on connection failures and timeouts (`max_fails`, `fail_timeout`).

#### Active Health Checks (`health_check`) #Proactive #NginxPlus
Periodically sending requests to backends to verify health (Nginx Plus or open source `healthcheck` module).

### Session Persistence #StickySessions #Stateful
Maintaining user sessions on the same backend server (using `ip_hash` or sticky cookies/routes - Nginx Plus).

## Caching #Performance #Optimization #Speed
Storing backend responses to serve subsequent identical requests directly from Nginx.

### `proxy_cache_path` Directive #Storage #Configuration
Defining cache storage location, size limits, and parameters.

### `proxy_cache` Directive #Enable #Zone
Activating a defined cache zone within a `location` or `server` block.

### `proxy_cache_key` Directive #Uniqueness #Identification
Defining the key used to identify unique cacheable objects (e.g., based on scheme, request method, host, URI).

### Cache Control Headers Interaction #HTTP #Standards
How Nginx respects `Cache-Control`, `Expires`, and `Pragma` headers from the backend.

### `proxy_cache_valid` Directive #TTL #Expiration
Setting default caching times for different response status codes.

### `proxy_cache_methods` Directive #HTTPMethods #GET #HEAD
Specifying which HTTP methods' responses should be cached.

### `proxy_cache_bypass` Directive #SkipCache #Conditions
Defining conditions under which the cache should be skipped.

### `proxy_no_cache` Directive #NoStore #Conditions
Defining conditions under which Nginx should not store the response in the cache.

### Cache Purging #Invalidation #Management
Removing specific items from the cache (often requires `proxy_cache_purge` module or Nginx Plus).

### Microcaching #ShortTTL #DynamicContent
Caching dynamic content for very short periods (e.g., 1 second) to handle traffic spikes.

## HTTPS/SSL/TLS Configuration #Security #Encryption #Certificates
Securing traffic between clients and Nginx using SSL/TLS.

### Enabling HTTPS #SSL #Listen
Using the `ssl` parameter on the `listen` directive (`listen 443 ssl;`).

### SSL/TLS Certificates #Identity #Trust
Obtaining and configuring server certificates and private keys.

#### `ssl_certificate` Directive #PublicKey #CertFile
Specifying the path to the server certificate file (PEM format, often includes intermediate certs).

#### `ssl_certificate_key` Directive #PrivateKey #KeyFile
Specifying the path to the private key file.

#### Certificate Chains #Intermediate #Trust
Ensuring the full certificate chain is provided.

#### Obtaining Certificates #LetsEncrypt #CommercialCA
Using Let's Encrypt (Certbot) or purchasing from a Commercial Certificate Authority.

### SSL/TLS Protocols and Ciphers #Security #Standards
Configuring secure protocols and cipher suites.

#### `ssl_protocols` Directive #TLSVersions #Security
Specifying allowed TLS versions (e.g., `TLSv1.2 TLSv1.3`). Avoid older/insecure protocols like SSLv3.

#### `ssl_ciphers` Directive #EncryptionAlgorithms #Security
Defining the list of allowed cipher suites. Prioritize strong, modern ciphers.

#### `ssl_prefer_server_ciphers` Directive #Negotiation #Control
Ensuring Nginx's preferred cipher order is used during negotiation.

### Performance Optimizations #Speed #Efficiency
Techniques to improve SSL/TLS performance.

#### `ssl_session_cache` Directive #Resumption #Speed
Enabling session caching to speed up subsequent connections from the same client.

#### `ssl_session_tickets` Directive #Resumption #TLS1.2
Using session tickets for session resumption (alternative to session cache).

#### OCSP Stapling #CertificateValidation #Performance
Improving connection time by having Nginx fetch and cache OCSP responses (`ssl_stapling`, `ssl_stapling_verify`).

### HTTP Strict Transport Security (HSTS) #Security #Policy
Instructing browsers to always connect via HTTPS (`add_header Strict-Transport-Security`).

### HTTP/2 and HTTP/3 Support #Performance #ModernProtocols
Enabling HTTP/2 (`http2` on `listen` directive) and HTTP/3 (requires custom build/modules and UDP).

### Client Certificate Authentication #MutualTLS #Security
Configuring Nginx to require and verify client certificates (`ssl_client_certificate`, `ssl_verify_client`).

## Logging #Monitoring #Debugging #Analytics
Configuring access and error logs.

### Access Log #Requests #Traffic
Recording details about client requests.

#### `access_log` Directive #Enable #FilePath #Format
Specifying the log file path and format. Can be turned off (`access_log off;`).

#### `log_format` Directive #CustomFormat #Variables
Defining custom log formats using Nginx variables. Common formats: `combined`, `main`.

#### Conditional Logging #Filtering #Performance
Logging only specific requests based on conditions (`if`, `map`).

#### Logging to Syslog #Centralized #Management
Sending logs to a syslog server (`access_log syslog:server=...`).

### Error Log #Problems #Debugging
Recording Nginx errors and diagnostic information.

#### `error_log` Directive #Enable #FilePath #Level
Specifying the error log file path and severity level (e.g., `debug`, `info`, `notice`, `warn`, `error`, `crit`, `alert`, `emerg`).

## Rewrites and Redirects #URLManipulation #SEO #Routing
Modifying request URIs and redirecting clients.

### `return` Directive #SimpleRedirects #StatusCode
Efficiently returning a specific status code and optional URL for redirects (e.g., `return 301 https://$host$request_uri;`). Preferred for simple redirects.

### `rewrite` Directive #Regex #InternalExternal #Complex
Using regular expressions to change the request URI. Can perform internal rewrites or external redirects.

#### Rewrite Flags #Behavior #Control
`last`: Stops processing current `rewrite` directives and starts a new search for location matching the rewritten URI.
`break`: Stops processing current `rewrite` directives and processes request within the current location.
`redirect`: Returns a temporary redirect (302).
`permanent`: Returns a permanent redirect (301).

#### Common Rewrite Use Cases #SEO #Canonicalization
Adding/removing `www`, forcing HTTPS, handling trailing slashes, pretty URLs.

### `if` Directive #Conditional #Logic
Performing actions conditionally. Use with caution, as `if` can have unexpected behavior, especially inside `location` blocks. `try_files` or `map` are often better alternatives.

### `map` Directive #VariableMapping #Conditional #Efficient
Creating mappings between variables, useful for conditional logic without `if`.

## Security #Hardening #Protection #AccessControl
Implementing security measures in Nginx.

### Running Nginx with Minimal Privileges #LeastPrivilege #User
Using a non-root user for worker processes (`user` directive).

### Limiting Request Methods #HTTPVerbs #Security
Allowing only specific HTTP methods (e.g., GET, POST, HEAD) using `if` or `map`.

### Controlling Access #IPFiltering #Authentication
Restricting access based on IP address or requiring authentication.

#### `allow` and `deny` Directives #IPAccessControl #Firewall
Allowing or blocking access from specific IP addresses or ranges.

#### HTTP Basic Authentication #PasswordProtection #SimpleAuth
Requiring a username and password (`auth_basic`, `auth_basic_user_file`).

#### JWT Authentication #Tokens #ModernAuth
Validating JSON Web Tokens (often requires Nginx Plus or Lua module).

### Rate Limiting #DoS #AbusePrevention
Limiting the rate of incoming requests.

#### `limit_req_zone` Directive #RateDefinition #Memory
Defining a shared memory zone to track request rates based on a key (e.g., client IP).

#### `limit_req` Directive #ApplyRateLimit #Location
Applying the defined rate limit within a specific context (`location`, `server`, `http`). Parameters: `burst`, `nodelay`.

#### Limiting Connections #ConnectionLimit #DoS
Limiting the number of simultaneous connections from a single IP (`limit_conn_zone`, `limit_conn`).

### Mitigating Common Web Vulnerabilities #SecurityHeaders #Protection
Adding security headers (`X-Frame-Options`, `X-Content-Type-Options`, `Content-Security-Policy`, etc.). Preventing information disclosure (e.g., hiding `server` header with `server_tokens off;`).

### Web Application Firewall (WAF) #ModSecurity #IntrusionDetection
Integrating WAF modules like ModSecurity to inspect requests and block malicious activity.

## Performance Tuning #Optimization #Scalability #Speed
Optimizing Nginx configuration for maximum performance.

### Worker Processes and Connections #CPU #Concurrency
Tuning `worker_processes` (often set to number of CPU cores) and `worker_connections`.

### Keep-Alive Connections #Efficiency #Latency
Configuring `keepalive_timeout` and `keepalive_requests` to reuse TCP connections.

### Sendfile and TCP Nodelay/Nopush #Kernel #Optimization
Using kernel features for efficient file transfer (`sendfile on;`) and TCP optimizations (`tcp_nopush on;`, `tcp_nodelay on;`).

### Buffering #Memory #IO
Tuning client request body buffers (`client_body_buffer_size`), large header buffers (`large_client_header_buffers`), and proxy buffers.

### Filesystem Optimizations #Caching #IO
Using `open_file_cache` to cache file descriptors and metadata. Ensuring sufficient file descriptors (`worker_rlimit_nofile`).

### Compression Tuning #CPU #Bandwidth
Balancing compression levels (`gzip_comp_level`) against CPU usage.

### SSL/TLS Optimization #CPU #Latency
Reusing sessions (`ssl_session_cache`, `ssl_session_tickets`), OCSP stapling.

### Monitoring Performance #Metrics #Analysis
Using tools like `stub_status` module, Nginx Amplify, or other monitoring solutions.

## Modules System #Extensibility #Features #Customization
Understanding how Nginx functionality is extended through modules.

### Static vs. Dynamic Modules #Build #Loading
Modules compiled into Nginx binary vs. modules loaded dynamically at runtime (`load_module` directive).

### Core Modules #Bundled #Essential
Modules included by default providing fundamental functionality (HTTP Core, Events Core, Proxy, Rewrite, etc.).

### Optional Standard Modules #CompileTime #Features
Modules included with Nginx source but need to be enabled during compilation (e.g., `http_ssl_module`, `http_gzip_static_module`, `http_stub_status_module`).

### Third-Party Modules #Community #Custom #Extended
Modules developed by the community or vendors adding specialized features (e.g., Lua, ModSecurity, RTMP, Brotli).

### Compiling Nginx with Modules #Build #Customization
The process of adding modules during the `./configure` step before compiling.

### Nginx Plus Modules #Commercial #Advanced
Modules exclusively available with the commercial Nginx Plus subscription.

## Advanced Features #Modern #Protocols #Capabilities
Exploring more advanced Nginx capabilities.

### HTTP/2 #Performance #Multiplexing
Configuration and benefits of HTTP/2.

### HTTP/3 and QUIC #Experimental #UDP #Future
Configuration (often requires separate branch/build) and concepts of HTTP/3 over QUIC.

### Server Name Indication (SNI) #SSL #VirtualHosting
Hosting multiple HTTPS sites on a single IP address. Handled automatically by modern Nginx.

### WebSockets #Realtime #Proxying
Proxying WebSocket connections.

### gRPC Proxying #Microservices #RPC
Acting as a reverse proxy for gRPC services.

### Streaming (TCP/UDP Proxy and Load Balancing) #Layer4 #NonHTTP
Using the `stream` context for generic TCP and UDP proxying and load balancing.

#### `stream` Context #Configuration #Protocols
Defining TCP/UDP proxy and load balancing settings.

#### TCP Proxying #PassThrough #Connections

#### UDP Load Balancing #DNS #Gaming #IoT

### Server Push #HTTP2 #Performance
Proactively sending resources to the client (HTTP/2 feature, configured with `http2_push`).

### Embedded Scripting #Lua #JavaScript #Perl
Using scripting languages within Nginx configuration for complex logic.

#### ngx_http_lua_module #Lua #Flexibility #Powerful
Embedding Lua scripts for advanced request/response manipulation.

#### ngx_http_js_module (njs) #JavaScript #Scripting
Using a subset of JavaScript (njs) for configuration scripting.

## Troubleshooting and Debugging #Errors #Issues #Fixes
Diagnosing and resolving common Nginx problems.

### Checking Configuration Syntax #Validation #nginx-t
Using `nginx -t`.

### Analyzing Logs #ErrorLog #AccessLog #Debugging
Finding clues in error and access logs. Increasing `error_log` level to `debug`.

### Common Error Pages #4xx #5xx #Interpretation
Understanding the meaning of common Nginx error codes (403 Forbidden, 404 Not Found, 500 Internal Server Error, 502 Bad Gateway, 503 Service Unavailable, 504 Gateway Timeout).

### Debugging Rewrites #Logging #Testing
Using `rewrite_log on;` (in `error_log`) to debug rewrite rules.

### `stub_status` Module #Monitoring #Metrics
Getting basic connection and request statistics.

### Using Debugging Tools #strace #gdb #SystemTools
Advanced debugging using system utilities.

### Common Pitfalls #Permissions #Configuration #Backend
Frequent issues like file permissions, typos in config, backend server failures, firewall rules.

## Nginx Plus #Commercial #Enterprise #Support
Features and benefits of the commercial version of Nginx.

### Additional Features #LoadBalancing #Monitoring #Security #Streaming
Active Health Checks, Enhanced Load Balancing (Least Time, Session Persistence), Live Activity Monitoring Dashboard, JWT Authentication, WAF (based on ModSecurity), Advanced Caching Control, Extended Streaming Features.

### High Availability Options #Clustering #Failover
Configuration for active-passive or active-active HA clusters.

### Support and Services #Enterprise #Assistance
Access to professional support from Nginx Inc. (F5).

### Nginx App Protect #WAF #Security
Advanced Web Application Firewall product.

### Nginx Management Suite #ControlPlane #API #Management
Tools for managing Nginx instances at scale.

## Use Cases #Applications #Scenarios #Examples
Common deployment scenarios for Nginx.

### Web Serving #StaticContent #DynamicContent #Hosting
Serving websites directly.

### Reverse Proxy #Frontend #Applications #Security
Acting as a frontend for application servers (Node.js, Python, Java, PHP, Ruby, etc.).

### Load Balancing #Scalability #Availability
Distributing traffic across multiple application servers.

### Caching Layer #Performance #Offload
Reducing load on backend servers by caching responses.

### SSL/TLS Termination #Encryption #Offload
Handling HTTPS encryption/decryption, freeing backend servers.

### API Gateway #Microservices #Management #Security
Managing, securing, and routing API requests.

### Media Streaming #Video #Audio #Delivery
Streaming media content efficiently (e.g., using RTMP module or HLS/DASH).

### Security Gateway #WAF #AccessControl #RateLimiting
Acting as a secure entry point to a network.

## Ecosystem and Community #Resources #Tools #Support
The wider world around Nginx.

### Official Documentation #Manual #Reference
The primary source for configuration directives and modules.

### Community Resources #Forums #MailingLists #Blogs #StackOverflow
Places to find help and discussion.

### Nginx Amplify #Monitoring #SaaS #Analytics
Nginx's own monitoring and analysis tool.

### Related Tools #Certbot #Docker #Ansible #KubernetesIngress
Tools commonly used alongside Nginx (Let's Encrypt clients, containerization, configuration management, Ingress controllers).

### Nginx Conferences and Events #Learning #Networking
Opportunities to learn and connect with the community.
