# I. Introduction and Core Concepts

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Introduction and Core Concepts' section of an Nginx learning agenda. Objectives should cover understanding Nginx's purpose, history, key features, and architecture (including master/worker processes and the event loop), and how it compares to alternatives like Apache."

## What is Nginx?
"<prompt>Starting with heading level 2, explain what Nginx is, its primary purpose as a high-performance web server, reverse proxy, load balancer, mail proxy, and HTTP cache. Define its role and list its common uses."

## History and Development
"<prompt>Starting with heading level 2, provide a brief overview of Nginx's origin story, including Igor Sysoev's motivation (C10k problem), its initial release date, and key milestones in its evolution."

## Key Features
"<prompt>Starting with heading level 2, list and briefly describe the core capabilities and highlights of Nginx using a bulleted list. Ensure the list includes Load Balancing, Reverse Proxying, Caching, SSL/TLS Termination, High Performance, Scalability, Event-Driven Architecture."

## Architecture
"<prompt>Starting with heading level 2, explain the fundamental architecture of Nginx. Focus on its event-driven, asynchronous, non-blocking I/O model and the master-worker process structure. Briefly contrast this approach with traditional thread-per-request or process-per-request models (like Apache's prefork MPM) explaining the benefits for concurrency and resource usage."

### Master Process
"<prompt>Starting with heading level 3, describe the specific role and responsibilities of the Nginx master process. Detail tasks such as reading and validating configuration, binding to network ports, creating/managing worker processes, and handling signals for control (e.g., reload, stop)."

### Worker Processes
"<prompt>Starting with heading level 3, explain the function of Nginx worker processes. Emphasize that they inherit listening sockets from the master, are typically single-threaded, and handle the actual processing of client connections and requests using the event loop."

### Event Loop
"<prompt>Starting with heading level 3, detail how Nginx worker processes utilize an event loop mechanism (mentioning OS-specific methods like `epoll` on Linux or `kqueue` on BSD/macOS). Explain how this allows a single worker process to handle thousands of concurrent connections efficiently without blocking on I/O operations."

## Nginx vs. Apache vs. Others
"<prompt>Starting with heading level 2, provide a comparative analysis between Nginx and Apache httpd. Highlight key differences in their core architecture (event-driven vs. process/thread-driven), typical performance characteristics (especially concerning static content delivery and handling high concurrency - the C10k problem), configuration style (declarative blocks vs. `.htaccess`), and common primary use cases (Nginx often favored as reverse proxy/load balancer, Apache's strength historically with `.htaccess` and dynamic module loading like `mod_php`). Briefly mention other relevant web servers if applicable (e.g., LiteSpeed, Caddy)."

## Glossary: Introduction and Core Concepts
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Introduction and Core Concepts' section. Include definitions for terms like: Web Server, Reverse Proxy, Load Balancer, HTTP Cache, Mail Proxy, Event-Driven Architecture, Asynchronous I/O, Non-Blocking I/O, Master Process, Worker Process, Event Loop, C10k Problem, TLS Termination. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short, multiple-choice quiz using heading level 2 to assess understanding of the Nginx 'Introduction and Core Concepts' section. Include 3-5 questions covering Nginx's primary roles, its architectural model (master/worker, event loop), key features, and the main difference compared to Apache's common configurations."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Introduction and Core Concepts' section, highlighting the key takeaways regarding Nginx's purpose, architecture, features, and comparison to Apache."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources for further reading on Nginx's history, architecture, and the C10k problem. Include links to the official Nginx documentation and potentially relevant Wikipedia articles or foundational blog posts."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 encouraging learners to consider how Nginx's specific event-driven architecture makes it particularly well-suited for roles like reverse proxying and load balancing, after completing the 'Introduction and Core Concepts' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 to smoothly connect the foundational knowledge from the 'Introduction and Core Concepts' section to the practical steps in the next section, 'Installation and Setup'."

# II. Installation and Setup

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Installation and Setup' section of an Nginx learning agenda. Objectives should cover installing Nginx on various operating systems (Linux, Windows, macOS, Docker), using different methods (package managers, source), and managing the Nginx service."

## Linux Distributions
"<prompt>Starting with heading level 2, explain the primary methods for installing Nginx on common Linux distributions like Debian, Ubuntu, CentOS, and RHEL."

### From Official Distribution Repositories
"<prompt>Starting with heading level 3, describe the standard procedure for installing Nginx using the default package managers (`apt` for Debian/Ubuntu, `yum`/`dnf` for CentOS/RHEL). Include example commands like `sudo apt update && sudo apt install nginx` or `sudo yum install epel-release && sudo yum install nginx`. Mention potential drawbacks like possibly older versions."

### From Nginx Official Repository
"<prompt>Starting with heading level 3, explain the benefits of using the official Nginx repository (access to latest stable or mainline versions). Provide instructions on how to set up the Nginx repository and install Nginx using the package manager for both Debian/Ubuntu and RHEL/CentOS families. Highlight this as the recommended method for production environments needing newer features."

### Compiling from Source
"<prompt>Starting with heading level 3, describe the process and reasons for compiling Nginx from source code. Explain when this might be necessary (e.g., applying patches, enabling specific third-party modules, custom build flags for optimization). Outline the basic steps: downloading source, installing build dependencies, running `./configure` with desired options (mentioning common options like `--prefix` or `--with-http_ssl_module`), `make`, and `sudo make install`. Emphasize that this is an advanced method requiring careful dependency management."

## Windows
"<prompt>Starting with heading level 2, describe the process for installing and setting up Nginx on Windows. Explain downloading the official Windows build, extracting it, and basic commands for starting (`start nginx`) and stopping (`nginx -s stop` or `nginx -s quit`) the server from the command line. Mention considerations for running it as a service (e.g., using third-party tools like NSSM)."

## macOS
"<prompt>Starting with heading level 2, explain the common methods for installing Nginx on macOS, focusing on package managers like Homebrew (`brew install nginx`) or MacPorts (`sudo port install nginx`). Briefly mention compiling from source as an alternative."

## Docker
"<prompt>Starting with heading level 2, explain how to run Nginx within a Docker container. Provide a basic example using the official Nginx image: `docker run --name mynginx -p 8080:80 -d nginx`. Briefly mention mounting configuration files and document roots using volumes (`-v` flag) as a common practice."

## Initial Service Management
"<prompt>Starting with heading level 2, explain how to manage the Nginx service after installation on systems using `systemd` (common on modern Linux), `SysVinit` (older Linux), or `brew services` (macOS with Homebrew). Provide commands for starting (`sudo systemctl start nginx`), stopping (`sudo systemctl stop nginx`), restarting (`sudo systemctl restart nginx`), reloading configuration (`sudo systemctl reload nginx`), checking status (`sudo systemctl status nginx`), and enabling/disabling start on boot (`sudo systemctl enable nginx`, `sudo systemctl disable nginx`). Include equivalent commands for `service nginx start/stop/restart/reload/status` (SysVinit) and `brew services start/stop/restart nginx` (Homebrew)."

## Glossary: Installation and Setup
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Installation and Setup' section. Include definitions for terms like: Package Manager (`apt`, `yum`, `dnf`, `brew`, `port`), Repository, Compile from Source, Build Dependencies, `./configure`, `make`, Docker Image, Docker Container, Volume (Docker), Service Management (`systemd`, `SysVinit`), `systemctl`, `nginx -s signal`. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (mix of multiple-choice and command matching) using heading level 2 to assess understanding of the Nginx 'Installation and Setup' section. Include 3-5 questions covering installation commands on different OSs (e.g., Ubuntu `apt`, CentOS `yum`), the command to check Nginx status using `systemd`, and the reason for compiling from source."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Installation and Setup' section, recapping the primary installation methods across different platforms and the basic service management commands."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources for detailed installation guides. Include links to the official Nginx documentation pages for Linux packages, Windows, macOS, Docker, and compiling from source."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 prompting learners to consider the trade-offs between installing Nginx from a distribution repository versus the official Nginx repository versus compiling from source, after completing the 'Installation and Setup' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 to connect the successful installation of Nginx in the 'Installation and Setup' section to the next step of understanding its configuration files in the 'Basic Configuration' section."

# III. Basic Configuration

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Basic Configuration' section of an Nginx learning agenda. Objectives should cover locating configuration files, understanding syntax rules, identifying core configuration contexts (`main`, `events`, `http`, `server`, `location`, `upstream`), using `include` directives, utilizing variables, and testing/reloading configurations."

## Configuration File Location
"<prompt>Starting with heading level 2, identify the default locations for the main Nginx configuration file (`nginx.conf`) on common systems (e.g., `/etc/nginx/nginx.conf`, `/usr/local/nginx/conf/nginx.conf`, `/opt/homebrew/etc/nginx/nginx.conf`). Also mention common directories for included configuration snippets like `/etc/nginx/conf.d/` and `/etc/nginx/sites-enabled/`."

## Configuration Syntax
"<prompt>Starting with heading level 2, explain the basic syntax rules of Nginx configuration files. Describe directives (simple directives and block directives), parameters (space-separated values), the use of semicolons (`;`) to terminate simple directives, and curly braces (`{}`) to define blocks (contexts). Mention comment syntax (`#`)."

## Core Configuration Contexts
"<prompt>Starting with heading level 2, introduce the concept of configuration blocks or contexts, explaining their hierarchical structure and purpose. Describe the main contexts where directives reside."

### `main` / Global Context
"<prompt>Starting with heading level 3, describe the `main` or global context, which is outside any specific block. List common directives found here, such as `user`, `worker_processes`, `error_log`, `pid`, and the `events` block."

### `events` Context
"<prompt>Starting with heading level 3, explain the purpose of the `events` context. Describe key directives typically configured within it, such as `worker_connections` (maximum connections per worker) and `use` (event processing method like `epoll` or `kqueue`), `multi_accept`."

### `http` Context
"<prompt>Starting with heading level 3, describe the `http` context, which defines settings for HTTP/HTTPS traffic handling. Mention that it contains one or more `server` blocks. List common directives found here, such as `include` (for MIME types), `default_type`, `log_format`, `access_log`, `sendfile`, `keepalive_timeout`, `gzip` settings, and `server` blocks."

### `server` Context
"<prompt>Starting with heading level 3, explain the `server` context (block) within the `http` context. Describe its role in defining a virtual server to handle requests for specific domain names or IP addresses/ports. List key directives like `listen` (port and address), `server_name` (domain names), `root` (document root), `index` (default files), `ssl_certificate`, `ssl_certificate_key`, `error_page`, and `location` blocks."

### `location` Context
"<prompt>Starting with heading level 3, explain the `location` context (block) within a `server` block. Describe its purpose in matching request URIs and applying specific configurations based on the match. Introduce the different matching rules: prefix match (no modifier or `^~`), exact match (`=`), case-sensitive regex match (`~`), and case-insensitive regex match (`~*`). List common directives used inside `location`, such as `root`, `alias`, `index`, `try_files`, `proxy_pass`, `fastcgi_pass`, `return`, `rewrite`."

### `upstream` Context
"<prompt>Starting with heading level 3, explain the purpose of the `upstream` context (block), typically defined within the `http` context. Describe its role in defining named pools of backend servers used for load balancing (`proxy_pass`, `fastcgi_pass`, etc.). Show a simple example with `server` directives inside."

## Includes and Modularity
"<prompt>Starting with heading level 2, explain the use of the `include` directive for splitting the Nginx configuration into multiple, smaller, more manageable files. Describe common patterns like including all files from a directory (e.g., `include /etc/nginx/conf.d/*.conf;`) or managing virtual hosts using `sites-available` and `sites-enabled` directories (with symlinks). Emphasize the benefits for organization and maintainability."

## Variables
"<prompt>Starting with heading level 2, introduce the concept of variables in Nginx configuration (e.g., `$host`, `$uri`, `$request_uri`, `$remote_addr`, `$args`). Explain that they allow for dynamic configuration based on request properties. Briefly mention built-in variables and the possibility of defining custom variables using `map` or `set`."

## Testing Configuration
"<prompt>Starting with heading level 2, explain the critical importance of testing the Nginx configuration syntax before applying it. Demonstrate the command `sudo nginx -t` (or equivalent path to the nginx binary) and explain its output (success or specific error messages with line numbers)."

## Reloading Configuration
"<prompt>Starting with heading level 2, explain how to apply configuration changes to a running Nginx server without downtime. Describe the graceful reload process using `sudo nginx -s reload` or `sudo systemctl reload nginx`. Contrast this with restarting (`nginx -s stop` then `start`, or `systemctl restart nginx`), which drops existing connections."

## Key Point Callout: Context Hierarchy
"<prompt>Generate a highlighted callout box using heading level 2 explaining the hierarchical nature of Nginx contexts (e.g., `location` inside `server` inside `http`) and the concept of directive inheritance (directives set in higher contexts are generally inherited by lower contexts unless overridden)."

## Glossary: Basic Configuration
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Basic Configuration' section. Include definitions for: Directive (Simple/Block), Parameter, Context (`main`, `events`, `http`, `server`, `location`, `upstream`), `worker_processes`, `worker_connections`, `listen`, `server_name`, `root`, `location` (matching rules: prefix, exact, regex), `include` directive, Variable (`$variable_name`), `nginx -t`, `nginx -s reload`. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (mix of multiple-choice and fill-in-the-blank) using heading level 2 to assess understanding of the Nginx 'Basic Configuration' section. Include 3-5 questions covering the purpose of `nginx.conf`, the function of `server` and `location` blocks, the directive used to define backend server pools (`upstream`), the command to test syntax (`nginx -t`), and the command for a graceful configuration reload (`nginx -s reload`)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Basic Configuration' section, recapping the structure of configuration files, key contexts, the importance of includes, variables, testing, and reloading."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources for deeper dives into Nginx configuration. Include links to the official Nginx documentation pages covering configuration file structure, core module directives (`ngx_core_module`), HTTP core module (`ngx_http_core_module`), and the `events` module (`ngx_events_module`)."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider why splitting configurations using the `include` directive is beneficial for managing complex Nginx setups, after completing the 'Basic Configuration' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 to move from understanding the general configuration structure in the 'Basic Configuration' section to the specific task of configuring Nginx to serve static files in the 'Serving Static Content' section."

# IV. Serving Static Content

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Serving Static Content' section of an Nginx learning agenda. Objectives should cover using `root`, `alias`, `index`, and `try_files` directives, configuring autoindexing, setting cache control headers, enabling Gzip/Brotli compression, and optimizing file serving with `open_file_cache`."

## `root` Directive
"<prompt>Starting with heading level 2, explain the function of the `root` directive. Describe how it specifies the document root directory from which static files will be served for requests within a `server` or `location` block. Provide a simple configuration example showing `root /var/www/html;` within a `location / { ... }` block."

## `alias` Directive
"<prompt>Starting with heading level 2, explain the function of the `alias` directive within a `location` block. Contrast it with the `root` directive, explaining that `alias` defines a direct mapping for a location to a filesystem path, effectively replacing the location part of the URI path. Provide an example like `location /images/ { alias /data/w3/images/; }` and explain how a request to `/images/logo.png` maps to `/data/w3/images/logo.png`."

## `index` Directive
"<prompt>Starting with heading level 2, explain the purpose of the `index` directive. Describe how it specifies the file(s) Nginx should look for and serve when a client requests a directory URI (ending in `/`). Provide an example like `index index.html index.htm;`."

## `try_files` Directive
"<prompt>Starting with heading level 2, explain the powerful `try_files` directive. Describe how it checks for the existence of files or directories in sequence based on the provided parameters and serves the first one found. Explain its common use cases, especially for Single Page Applications (SPAs) where it's used to route all non-file requests to `index.html` (e.g., `try_files $uri $uri/ /index.html;`). Also mention its ability to return a specific HTTP status code or perform an internal redirect to a named location."

## Autoindexing
"<prompt>Starting with heading level 2, explain the `autoindex` directive. Describe how `autoindex on;` enables Nginx to generate a directory listing automatically when no index file (as specified by the `index` directive) is found in a requested directory. Mention that this is generally disabled by default for security reasons but can be useful in specific scenarios."

## Cache Control Headers
"<prompt>Starting with heading level 2, explain the importance of setting HTTP cache control headers for static assets to improve client-side performance and reduce server load. Describe how to use the `expires` directive (e.g., `expires 30d;`) or the `add_header Cache-Control` directive (e.g., `add_header Cache-Control "public, max-age=31536000";`) typically within a `location` block matching static file types (e.g., `location ~* \.(jpg|jpeg|png|gif|ico|css|js)$`)."

## Compression (Gzip/Brotli)
"<prompt>Starting with heading level 2, explain the benefits of enabling on-the-fly compression (like Gzip or Brotli) for text-based static assets (HTML, CSS, JS, JSON, XML) to reduce bandwidth usage and improve load times."

### `gzip` Module
"<prompt>Starting with heading level 3, describe how to configure Gzip compression using the standard `ngx_http_gzip_module`. List and explain common directives: `gzip on;`, `gzip_types text/plain text/css application/json ...;` (specifying MIME types to compress), `gzip_comp_level 5;` (compression level, balancing CPU vs. size), `gzip_min_length 1000;` (minimum response size to compress), `gzip_vary on;` (adds `Vary: Accept-Encoding` header)."

### `brotli` Module
"<prompt>Starting with heading level 3, briefly introduce Brotli as a newer, often more efficient compression algorithm. Mention that enabling Brotli typically requires installing a separate module (e.g., `ngx_brotli` from Google) which might necessitate compiling Nginx from source or installing a pre-built package that includes it. Show example directives like `brotli on;`, `brotli_types ...;`, `brotli_comp_level 6;` if the module is available."

## Open File Cache
"<prompt>Starting with heading level 2, explain the `open_file_cache` directive as a performance optimization for serving static files. Describe how it allows Nginx to cache file descriptors, their sizes, and modification times, reducing the need for system calls. Provide an example configuration: `open_file_cache max=1000 inactive=20s; open_file_cache_valid 30s; open_file_cache_min_uses 2; open_file_cache_errors on;`. Mention potential caveats regarding cache coherency if files change frequently."

## Cross-Reference: Basic Configuration
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'Basic Configuration' section (Section III), reminding learners that directives like `root`, `alias`, `index`, and `try_files` are typically used within `server` or `location` blocks."

## Glossary: Serving Static Content
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Serving Static Content' section. Include definitions for: `root` directive, Document Root, `alias` directive, `index` directive, `try_files` directive, `autoindex` directive, Cache Control Headers (`Expires`, `Cache-Control`), Compression (`gzip`, `brotli`), MIME Type, `open_file_cache` directive, File Descriptor. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (multiple-choice or scenario-based) using heading level 2 to assess understanding of the Nginx 'Serving Static Content' section. Include 3-5 questions covering the difference between `root` and `alias`, the purpose of `try_files` for SPAs, how to enable Gzip compression, and the benefit of `open_file_cache`."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Serving Static Content' section, recapping the key directives (`root`, `alias`, `index`, `try_files`) and optimization techniques (caching headers, compression, `open_file_cache`) for efficient static file delivery."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about serving static content. Include links to the official Nginx documentation for `ngx_http_core_module` (covering `root`, `alias`, `location`, `try_files`), `ngx_http_index_module`, `ngx_http_autoindex_module`, `ngx_http_gzip_module`, and `ngx_http_headers_module`."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to think about the performance implications (both server-side and client-side) of implementing caching headers, compression, and open file caching for a website with many static assets, after completing the 'Serving Static Content' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 moving from serving files directly from Nginx in the 'Serving Static Content' section to using Nginx as an intermediary for backend applications in the 'Reverse Proxying' section."

# V. Reverse Proxying

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Reverse Proxying' section of an Nginx learning agenda. Objectives should cover defining reverse proxies, using `location` and `proxy_pass`, managing headers (`proxy_set_header`), configuring buffering and timeouts, handling backend errors, and proxying different protocols (HTTP, HTTPS, FastCGI, uWSGI, WebSockets, gRPC)."

## `location` Block for Proxying
"<prompt>Starting with heading level 2, explain how `location` blocks are used to define which client requests should be forwarded to a backend server or application. Provide examples of location blocks matching specific paths (e.g., `/api/`) or entire sites (`/`) that will contain proxy directives."

## `proxy_pass` Directive
"<prompt>Starting with heading level 2, explain the core `proxy_pass` directive. Describe how it specifies the protocol and address (URL) of the backend server or upstream group to which requests matching the location should be forwarded. Provide examples like `proxy_pass http://127.0.0.1:8000;` or `proxy_pass http://backend_app_servers;` (referencing an upstream block). Explain the significance of a trailing slash (`/`) in the `proxy_pass` URL regarding URI rewriting."

## Passing Headers
"<prompt>Starting with heading level 2, explain the importance of passing relevant client information to the backend server via HTTP headers. Introduce the `proxy_set_header` directive. Provide common examples and explain their purpose: `proxy_set_header Host $host;` (passes original host header), `proxy_set_header X-Real-IP $remote_addr;` (passes client IP), `proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;` (appends client IP to list), `proxy_set_header X-Forwarded-Proto $scheme;` (passes original protocol, http or https)."

## Buffering
"<prompt>Starting with heading level 2, explain Nginx's proxy buffering mechanism. Describe how Nginx can buffer responses from the backend server before sending them to the client. Explain the directives involved: `proxy_buffering on;` (enables/disables), `proxy_buffers number size;` (configures number and size of buffers), `proxy_buffer_size size;` (buffer for the first part of the response/headers). Discuss the trade-offs: buffering reduces load on slow clients interacting with fast backends but consumes memory/disk and can increase time-to-first-byte. Mention disabling buffering (`proxy_buffering off;`) for long-polling or server-sent events."

## Timeouts
"<prompt>Starting with heading level 2, explain the importance of configuring appropriate timeouts when proxying to backend servers for reliability. Describe the key timeout directives: `proxy_connect_timeout` (time for establishing connection to backend), `proxy_send_timeout` (time for transmitting request to backend), and `proxy_read_timeout` (time for reading response from backend). Provide example values (e.g., `proxy_read_timeout 90s;`)."

## Error Handling
"<prompt>Starting with heading level 2, discuss how Nginx can handle errors originating
 from the backend servers. Explain the `proxy_intercept_errors on;` directive, which allows Nginx to intercept backend errors (4xx, 5xx) and serve custom error pages defined with the `error_page` directive instead of showing the backend's raw error. Briefly mention failover capabilities (covered more in Load Balancing)."

## Proxying Protocols
"<prompt>Starting with heading level 2, explain that Nginx can proxy various protocols beyond basic HTTP."

### FastCGI Proxying (PHP)
"<prompt>Starting with heading level 3, describe how to configure Nginx to proxy requests to a FastCGI server, commonly used for PHP applications running via PHP-FPM. Introduce the `fastcgi_pass` directive (e.g., `fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;` or `fastcgi_pass 127.0.0.1:9000;`). Mention essential `fastcgi_param` directives needed to pass script information (e.g., `SCRIPT_FILENAME`, `REQUEST_METHOD`, etc.) and the use of `include fastcgi_params;`."

### uWSGI Proxying (Python)
"<prompt>Starting with heading level 3, describe how to configure Nginx to proxy requests to applications running via the uWSGI protocol, common in the Python ecosystem (e.g., Django, Flask). Introduce the `uwsgi_pass` directive (e.g., `uwsgi_pass unix:/tmp/yourapp.sock;` or `uwsgi_pass 127.0.0.1:3031;`). Mention including standard parameters using `include uwsgi_params;`."

### WebSocket Proxying
"<prompt>Starting with heading level 3, explain the special configuration required to correctly proxy WebSocket connections (used for real-time, bidirectional communication). Show the necessary `proxy_set_header` directives: `proxy_set_header Upgrade $http_upgrade;` and `proxy_set_header Connection "upgrade";`. Also mention setting `proxy_http_version 1.1;` as WebSocket requires HTTP/1.1."

### gRPC Proxying
"<prompt>Starting with heading level 3, briefly introduce gRPC as an RPC framework. Explain how Nginx can act as a reverse proxy for gRPC services using the `grpc_pass` directive (e.g., `grpc_pass grpc://grpc_backends;`). Mention that this often requires HTTP/2 enabled between the client and Nginx."

## Cross-Reference: Load Balancing & HTTPS
"<prompt>Generate a cross-reference note using heading level 2 pointing forward to the 'Load Balancing' section (Section VI) for distributing requests among multiple backend servers (using `upstream` with `proxy_pass`/`fastcgi_pass`/etc.) and the 'HTTPS/SSL/TLS Configuration' section (Section VIII) for securing the connection between the client and Nginx."

## Glossary: Reverse Proxying
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Reverse Proxying' section. Include definitions for: Reverse Proxy, `proxy_pass`, `proxy_set_header`, `X-Real-IP`, `X-Forwarded-For`, `X-Forwarded-Proto`, Proxy Buffering (`proxy_buffering`, `proxy_buffers`), Proxy Timeouts (`proxy_connect_timeout`, `proxy_read_timeout`), `proxy_intercept_errors`, `error_page`, FastCGI (`fastcgi_pass`, `fastcgi_param`), PHP-FPM, uWSGI (`uwsgi_pass`, `uwsgi_params`), WebSocket, `Upgrade` header, `Connection "upgrade"` header, gRPC (`grpc_pass`). Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (scenario-based or configuration snippet analysis) using heading level 2 to assess understanding of the Nginx 'Reverse Proxying' section. Include 3-5 questions covering the purpose of `proxy_pass`, essential headers to pass (`Host`, `X-Real-IP`), how to enable WebSocket proxying, and the directive used for PHP-FPM backends (`fastcgi_pass`)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Reverse Proxying' section, recapping how Nginx forwards requests using `proxy_pass` (and equivalents), manages headers, buffering, timeouts, and supports various backend protocols like FastCGI, uWSGI, WebSockets, and gRPC."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx reverse proxy capabilities. Include links to the official Nginx documentation for `ngx_http_proxy_module`, `ngx_http_fastcgi_module`, `ngx_http_uwsgi_module`, `ngx_http_grpc_module`, and the WebSocket proxying guide."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider the benefits of using Nginx as a reverse proxy in front of an application server (e.g., Node.js, Python/Flask, Java/Tomcat) compared to exposing the application server directly to the internet, after completing the 'Reverse Proxying' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 leading from proxying requests to a single backend server in the 'Reverse Proxying' section to distributing requests across multiple backend servers in the 'Load Balancing' section."

# VI. Load Balancing

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Load Balancing' section of an Nginx learning agenda. Objectives should cover defining upstream server pools, understanding different load balancing algorithms (Round Robin, Least Connections, IP Hash, Hash, Least Time), configuring server weights and parameters (`max_fails`, `fail_timeout`), implementing passive and active health checks, and achieving session persistence."

## `upstream` Context
"<prompt>Starting with heading level 2, explain the `upstream` context (block) used to define a named pool (group) of backend servers. Show the basic syntax: `upstream backend_pool_name { server backend1.example.com; server 192.168.1.100:8080; }`. Explain how this name is then referenced by directives like `proxy_pass`, `fastcgi_pass`, `uwsgi_pass`, etc. (e.g., `proxy_pass http://backend_pool_name;`)."

## Load Balancing Algorithms
"<prompt>Starting with heading level 2, describe the different methods Nginx can use to distribute requests among the servers defined in an `upstream` block."

### Round Robin
"<prompt>Starting with heading level 3, explain the default Round Robin algorithm. Describe how requests are distributed sequentially to each server in the upstream list in turn. Mention that server weights can influence this."

### Least Connections (`least_conn`)
"<prompt>Starting with heading level 3, explain the `least_conn` algorithm. Describe how Nginx sends the next request to the server currently handling the fewest active connections. Mention this is useful when request processing times vary significantly."

### IP Hash (`ip_hash`)
"<prompt>Starting with heading level 3, explain the `ip_hash` algorithm. Describe how it uses a hash of the client's IP address to determine which server should handle the request. Explain that this method provides basic session persistence (sticky sessions), ensuring requests from the same client usually go to the same server. Mention limitations with NAT or proxy scenarios."

### Hash (`hash`)
"<prompt>Starting with heading level 3, explain the generic `hash` algorithm. Describe how it allows distribution based on a hash of a specified key, which can be text, variables, or a combination (e.g., `hash $request_uri consistent;` or `hash $cookie_jsessionid consistent;`). Mention the optional `consistent` parameter for Ketama consistent hashing, useful for cache servers."

### Least Time (`least_time`)
"<prompt>Starting with heading level 3, introduce the `least_time` algorithm, available in Nginx Plus. Explain that it selects the server with the lowest average response time and the fewest active connections. Specify the parameters required (`header` or `last_byte`). Mention this is often the most sophisticated method for balancing based on actual server performance."

## Server Weights
"<prompt>Starting with heading level 2, explain how to use the `weight` parameter on `server` directives within an `upstream` block (e.g., `server backend1.example.com weight=3;`). Describe how higher weights cause a server to receive proportionally more requests (in Round Robin and weighted Least Connections)."

## Server Parameters
"<prompt>Starting with heading level 2, describe common parameters that can be added to `server` directives within an `upstream` block to control server behavior and health checking."
*   "<prompt>Starting with heading level 3 bullet point, explain the `max_fails` parameter: defines the number of consecutive failed connection attempts within the `fail_timeout` period that mark the server as unavailable."
*   "<prompt>Starting with heading level 3 bullet point, explain the `fail_timeout` parameter: specifies the duration during which `max_fails` must occur to mark the server down, and also the duration the server remains marked down before Nginx attempts to connect again."
*   "<prompt>Starting with heading level 3 bullet point, explain the `backup` parameter: designates a server as a backup, only receiving requests when all primary servers are unavailable."
*   "<prompt>Starting with heading level 3 bullet point, explain the `down` parameter: permanently marks a server as unavailable, useful for taking servers offline for maintenance without removing them from the configuration."

## Health Checks
"<prompt>Starting with heading level 2, explain the importance of health checks for ensuring traffic is only sent to healthy backend servers."

### Passive Health Checks
"<prompt>Starting with heading level 3, explain that Nginx performs passive health checks by default based on connection attempts and timeouts, using the `max_fails` and `fail_timeout` parameters on the `server` directives within the `upstream` block. If a connection fails or times out `max_fails` times within `fail_timeout` seconds, the server is marked as down for `fail_timeout` seconds."

### Active Health Checks (`health_check`)
"<prompt>Starting with heading level 3, introduce active health checks, available in Nginx Plus or via the open-source `nginx-upstream-check` third-party module. Explain that active checks involve Nginx periodically sending special health check requests to upstream servers independent of actual client traffic. Describe the configuration using the `health_check` directive in a `location` block used by the upstream group. Mention benefits like faster detection of recovered servers."

## Session Persistence
"<prompt>Starting with heading level 2, discuss methods for ensuring that requests from the same user session are consistently routed to the same backend server (important for stateful applications). Recap the `ip_hash` method. Introduce other methods, primarily available in Nginx Plus: sticky cookies (`sticky cookie srv_id expires=1h domain=.example.com path=/;`) and sticky routes (`sticky route $route_cookie $route_uri;`). Briefly explain how they work (Nginx sets a cookie or uses backend-provided route information)."

## Key Point Callout: Load Balancing vs. Reverse Proxy
"<prompt>Generate a highlighted callout box using heading level 2 clarifying the relationship between reverse proxying and load balancing in Nginx: Load balancing is typically implemented *using* the reverse proxy module (`proxy_pass` or similar) directed at an `upstream` block which defines the pool of servers and the balancing algorithm."

## Glossary: Load Balancing
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Load Balancing' section. Include definitions for: `upstream` context, Load Balancing Algorithm, Round Robin, Least Connections (`least_conn`), IP Hash (`ip_hash`), Hash (`hash [key] [consistent]`), Least Time (`least_time`), Server Weight (`weight`), Server Parameters (`max_fails`, `fail_timeout`, `backup`, `down`), Passive Health Check, Active Health Check (`health_check`), Session Persistence (Sticky Session), Sticky Cookie (`sticky cookie`), Sticky Route (`sticky route`). Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (configuration snippet analysis or matching) using heading level 2 to assess understanding of the Nginx 'Load Balancing' section. Include 3-5 questions covering how to define an upstream block, the default load balancing algorithm, the purpose of `least_conn`, how `ip_hash` achieves session persistence, and the roles of `max_fails` and `fail_timeout`."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Load Balancing' section, recapping the use of `upstream` blocks, different load balancing algorithms, server weighting, passive health checks via server parameters, active health checks (Nginx Plus), and session persistence techniques."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx load balancing. Include links to the official Nginx documentation for the `ngx_http_upstream_module`, HTTP load balancing guide, Nginx Plus specific features like active health checks and advanced session persistence."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to compare the suitability of different load balancing algorithms (`round-robin`, `least_conn`, `ip_hash`) for different types of web applications (e.g., stateless API vs. stateful web app), after completing the 'Load Balancing' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 connecting the concept of distributing load across backend servers in the 'Load Balancing' section to reducing that load by caching responses in the 'Caching' section."

# VII. Caching

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Caching' section of an Nginx learning agenda. Objectives should cover configuring cache paths and zones (`proxy_cache_path`, `proxy_cache`), defining cache keys (`proxy_cache_key`), understanding interaction with backend cache headers, setting cache validity (`proxy_cache_valid`), controlling cache behavior (`proxy_cache_methods`, `proxy_cache_bypass`, `proxy_no_cache`), implementing cache purging, and understanding microcaching."

## `proxy_cache_path` Directive
"<prompt>Starting with heading level 2, explain the `proxy_cache_path` directive, which defines the parameters for a cache storage area. Describe its key parameters: the local filesystem path where cached data is stored, `levels` (directory structure hierarchy), `keys_zone` (name and size of the shared memory zone for storing cache keys and metadata), `max_size` (maximum size of the on-disk cache), `inactive` (duration after which cached data is removed if not accessed). Provide a configuration example like `proxy_cache_path /var/cache/nginx levels=1:2 keys_zone=my_cache:10m max_size=10g inactive=60m use_temp_path=off;`. Mention this directive belongs in the `http` context."

## `proxy_cache` Directive
"<prompt>Starting with heading level 2, explain the `proxy_cache` directive used within a `location`, `server`, or `http` block. Describe how it enables caching by referencing the name of the shared memory zone defined by `proxy_cache_path` (e.g., `proxy_cache my_cache;`)."

## `proxy_cache_key` Directive
"<prompt>Starting with heading level 2, explain the importance of the `proxy_cache_key` directive in defining how unique cacheable objects are identified. Describe the default key (often based on scheme, host, and request URI). Show how to customize it using variables (e.g., `proxy_cache_key "$scheme$request_method$host$request_uri$is_args$args";`) to account for factors like request method or query arguments if necessary. Emphasize that a well-defined key is crucial for cache effectiveness and avoiding collisions."

## Cache Control Headers Interaction
"<prompt>Starting with heading level 2, explain how Nginx's proxy cache interacts with standard HTTP cache control headers received from the backend server. Describe how headers like `Cache-Control`, `Expires`, `Pragma`, and `Vary` from the backend response influence whether Nginx caches the response and for how long. Mention the `proxy_ignore_headers` directive if backend headers need to be overridden."

## `proxy_cache_valid` Directive
"<prompt>Starting with heading level 2, explain the `proxy_cache_valid` directive. Describe how it allows setting default caching times within Nginx for responses based on their HTTP status codes (e.g., `proxy_cache_valid 200 302 10m; proxy_cache_valid 404 1m;`). Explain that this is used when the backend response doesn't include `Expires` or `Cache-Control` headers, or when those headers are ignored."

## `proxy_cache_methods` Directive
"<prompt>Starting with heading level 2, explain the `proxy_cache_methods` directive. Describe how it specifies which HTTP request methods' responses are eligible for caching. Mention that by default, Nginx usually caches responses to `GET` and `HEAD` requests, but this can be expanded (e.g., `proxy_cache_methods GET HEAD POST;`) though caching `POST` responses requires careful consideration."

## `proxy_cache_bypass` Directive
"<prompt>Starting with heading level 2, explain the `proxy_cache_bypass` directive. Describe how it defines conditions (based on variables, often checking cookies or query strings) under which Nginx will *not* serve a response from the cache, instead always forwarding the request to the backend. Provide an example checking for a "nocache" cookie or query parameter (e.g., `proxy_cache_bypass $cookie_nocache $arg_nocache;`). Explain this is useful for logged-in users or specific dynamic requests."

## `proxy_no_cache` Directive
"<prompt>Starting with heading level 2, explain the `proxy_no_cache` directive. Contrast it with `proxy_cache_bypass`, explaining that `proxy_no_cache` defines conditions under which Nginx will still process the request (potentially serving from cache if `proxy_cache_bypass` is false) but will *not* store the response *in* the cache, even if it would otherwise be cacheable. Provide a similar example based on variables."

## Cache Purging
"<prompt>Starting with heading level 2, discuss the need for cache invalidation or purging when backend content changes. Explain that basic Nginx open source doesn't have a built-in purge command. Mention common solutions: Nginx Plus offers the `proxy_cache_purge` directive, or using third-party modules like `ngx_cache_purge`, or implementing custom solutions (e.g., conditional bypass based on a header, or deleting files directly from the cache path with caution)."

## Microcaching
"<prompt>Starting with heading level 2, introduce the concept of microcaching. Explain it as a strategy of caching dynamic content for very short durations (e.g., 1-10 seconds) using directives like `proxy_cache_valid 200 1s;`. Describe its benefit in handling sudden traffic spikes by absorbing repetitive requests within that short window, significantly reducing load on backend applications while still serving relatively fresh content."

## Key Point Callout: Cache Key Importance
"<prompt>Generate a highlighted callout box using heading level 2 emphasizing the critical role of the `proxy_cache_key`. Explain that an improperly defined key can lead to serving stale or incorrect content, or drastically reduce cache hit rates."

## Glossary: Caching
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Caching' section. Include definitions for: Cache Hit, Cache Miss, `proxy_cache_path` (and parameters: `levels`, `keys_zone`, `max_size`, `inactive`), `proxy_cache` (zone name), `proxy_cache_key`, `proxy_cache_valid`, `proxy_cache_methods`, `proxy_cache_bypass`, `proxy_no_cache`, Cache Purging/Invalidation (`proxy_cache_purge`), Microcaching. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (configuration snippet analysis or true/false) using heading level 2 to assess understanding of the Nginx 'Caching' section. Include 3-5 questions covering where `proxy_cache_path` is defined, how to enable caching for a location (`proxy_cache`), the purpose of `proxy_cache_valid`, the difference between `proxy_cache_bypass` and `proxy_no_cache`, and the concept of microcaching."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Caching' section, recapping the setup of cache storage (`proxy_cache_path`), enabling caching (`proxy_cache`), defining keys (`proxy_cache_key`), controlling validity and behavior (`proxy_cache_valid`, bypass/no_cache directives), and strategies like purging and microcaching."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx caching. Include links to the official Nginx documentation for the `ngx_http_proxy_module` (caching directives section), the Nginx content caching guide, and potentially articles or blog posts discussing advanced caching patterns or purging strategies."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider the trade-offs (performance gains vs. potential for stale content) when deciding on cache durations (`proxy_cache_valid`, `inactive`) for different types of web content, after completing the 'Caching' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 linking the performance benefits of caching in the 'Caching' section to the critical aspect of securing web traffic using HTTPS in the 'HTTPS/SSL/TLS Configuration' section."

# VIII. HTTPS/SSL/TLS Configuration

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'HTTPS/SSL/TLS Configuration' section of an Nginx learning agenda. Objectives should cover enabling HTTPS, configuring certificates (`ssl_certificate`, `ssl_certificate_key`), managing certificate chains, understanding certificate acquisition (Let's Encrypt), setting secure protocols and ciphers (`ssl_protocols`, `ssl_ciphers`), optimizing TLS performance (`ssl_session_cache`, OCSP Stapling), implementing HSTS, enabling HTTP/2 and HTTP/3, and configuring client certificate authentication."

## Enabling HTTPS
"<prompt>Starting with heading level 2, explain the basic steps to enable HTTPS on a virtual server. Show how to modify the `listen` directive to include the port `443` and the `ssl` parameter (e.g., `listen 443 ssl;`). Mention that on modern Nginx versions, the `ssl` parameter might implicitly enable required SSL/TLS settings, but explicit configuration is still recommended."

## SSL/TLS Certificates
"<prompt>Starting with heading level 2, explain the role of SSL/TLS certificates in authenticating the server and enabling encryption. Describe the two main files required: the server certificate and the private key."

### `ssl_certificate` Directive
"<prompt>Starting with heading level 3, explain the `ssl_certificate` directive. Describe that it specifies the path to the server's public certificate file in PEM format. Emphasize that this file should ideally contain the server certificate followed by the intermediate certificate(s) concatenated together to form the complete certificate chain."

### `ssl_certificate_key` Directive
"<prompt>Starting with heading level 3, explain the `ssl_certificate_key` directive. Describe that it specifies the path to the server's private key file corresponding to the public certificate. Stress the importance of keeping this file secure and readable only by the Nginx master process user (usually root) and the Nginx worker user."

### Certificate Chains
"<prompt>Starting with heading level 3, elaborate on the concept of certificate chains (server certificate -> intermediate CA -> root CA). Explain why it's crucial to provide the intermediate certificates along with the server certificate in the file specified by `ssl_certificate` to avoid trust errors in browsers."

### Obtaining Certificates
"<prompt>Starting with heading level 3, briefly discuss common methods for obtaining SSL/TLS certificates. Mention Commercial Certificate Authorities (CAs) where certificates are purchased. Focus on Let's Encrypt as a popular free, automated CA. Describe the typical workflow using tools like Certbot (`certbot --nginx`) to automatically obtain and configure certificates for Nginx, including handling renewals."

## SSL/TLS Protocols and Ciphers
"<prompt>Starting with heading level 2, explain the importance of configuring secure and modern protocols and cipher suites to protect against known vulnerabilities."

### `ssl_protocols` Directive
"<prompt>Starting with heading level 3, explain the `ssl_protocols` directive. Recommend enabling only currently secure protocols, typically TLS versions 1.2 and 1.3 (e.g., `ssl_protocols TLSv1.2 TLSv1.3;`). Strongly advise against enabling older, insecure protocols like SSLv3, TLSv1.0, or TLSv1.1."

### `ssl_ciphers` Directive
"<prompt>Starting with heading level 3, explain the `ssl_ciphers` directive. Describe how it defines the list of encryption algorithms (cipher suites) Nginx will offer to clients. Recommend using established "strong cipher" lists (e.g., from Mozilla's SSL Config Generator) that prioritize Perfect Forward Secrecy (PFS) and Authenticated Encryption with Associated Data (AEAD) ciphers, while excluding weak or broken ones. Provide an example of a modern cipher string."

### `ssl_prefer_server_ciphers` Directive
"<prompt>Starting with heading level 3, explain the `ssl_prefer_server_ciphers on;` directive. Describe how it ensures that Nginx's preferred order of cipher suites is used during the TLS handshake negotiation, rather than the client's preference, helping enforce the use of stronger ciphers."

## Performance Optimizations
"<prompt>Starting with heading level 2, discuss techniques to reduce the computational overhead associated with SSL/TLS handshakes."

### `ssl_session_cache` Directive
"<prompt>Starting with heading level 3, explain the `ssl_session_cache` directive. Describe how it enables a shared cache for storing TLS session parameters, allowing clients to reuse sessions (session resumption) on subsequent connections, thus avoiding the full handshake overhead. Provide an example configuration: `ssl_session_cache shared:SSL:10m;` (10MB shared cache named SSL) and `ssl_session_timeout 10m;`."

### `ssl_session_tickets` Directive
"<prompt>Starting with heading level 3, explain `ssl_session_tickets on;` as an alternative or complementary mechanism for session resumption (primarily TLS 1.2 and earlier). Briefly describe how session tickets work (encrypted session state stored on the client). Mention potential security considerations regarding key rotation (`ssl_session_ticket_key`). Note that TLS 1.3 has its own session resumption mechanism."

### OCSP Stapling
"<prompt>Starting with heading level 3, explain OCSP Stapling as a performance and privacy enhancement. Describe how it allows Nginx to periodically fetch and cache the Online Certificate Status Protocol (OCSP) response for its certificate from the CA and "staple" it to the TLS handshake. Explain that this saves the client from having to make a separate OCSP query, speeding up connection establishment and improving privacy. Show the required directives: `ssl_stapling on;`, `ssl_stapling_verify on;`, and `ssl_trusted_certificate /path/to/ca_chain.pem;` (path to trust chain including root and intermediates)."

## HTTP Strict Transport Security (HSTS)
"<prompt>Starting with heading level 2, explain the HTTP Strict Transport Security (HSTS) mechanism. Describe how the `add_header Strict-Transport-Security "max-age=31536000; includeSubDomains";` directive instructs browsers to always connect to the site using HTTPS for the specified duration (`max-age`), preventing protocol downgrade attacks. Mention the `preload` directive for submitting the domain to browser HSTS preload lists."

## HTTP/2 and HTTP/3 Support
"<prompt>Starting with heading level 2, discuss enabling modern HTTP versions which require HTTPS."
*   "<prompt>Starting with heading level 3 bullet point, explain how to enable HTTP/2 support by adding the `http2` parameter to the `listen` directive (e.g., `listen 443 ssl http2;`). Briefly mention its benefits like multiplexing and header compression."
*   "<prompt>Starting with heading level 3 bullet point, introduce HTTP/3 support over QUIC (UDP). Mention that enabling HTTP/3 currently often requires specific Nginx builds or modules, is still evolving, and involves adding UDP listeners (`listen 443 quic reuseport;`) and the `add_header Alt-Svc` directive. Note its potential benefits for connection establishment and performance over lossy networks."

## Client Certificate Authentication
"<prompt>Starting with heading level 2, explain Mutual TLS (mTLS) or client certificate authentication. Describe scenarios where the server requires the client to present its own certificate for authentication. Introduce the key directives: `ssl_client_certificate /path/to/ca.crt;` (specifies the CA certificate used to verify client certs) and `ssl_verify_client on | optional | optional_no_ca;` (enforces client certificate verification). Mention the `$ssl_client_verify` variable for conditional access based on verification status."

## Key Point Callout: Security Best Practices
"<prompt>Generate a highlighted callout box using heading level 2 summarizing key security best practices for TLS configuration: Use strong protocols (TLS 1.2/1.3), strong ciphers, enable HSTS, keep certificates up-to-date, and protect the private key."

## Cross-Reference: Server Block
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'Basic Configuration' section (Section III), reminding learners that HTTPS/TLS directives (`listen 443 ssl`, `ssl_certificate`, etc.) are configured within the `server` block."

## Glossary: HTTPS/SSL/TLS Configuration
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'HTTPS/SSL/TLS Configuration' section. Include definitions for: HTTPS, SSL, TLS, Certificate Authority (CA), Server Certificate (`ssl_certificate`), Private Key (`ssl_certificate_key`), Certificate Chain, Let's Encrypt, Certbot, TLS Protocols (`ssl_protocols`), Cipher Suite (`ssl_ciphers`), Perfect Forward Secrecy (PFS), `ssl_prefer_server_ciphers`, Session Resumption, `ssl_session_cache`, `ssl_session_tickets`, OCSP Stapling (`ssl_stapling`), HSTS (`Strict-Transport-Security` header), HTTP/2 (`http2`), HTTP/3, QUIC, Client Certificate Authentication (mTLS), `ssl_client_certificate`, `ssl_verify_client`. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (configuration identification or matching) using heading level 2 to assess understanding of the Nginx 'HTTPS/SSL/TLS Configuration' section. Include 3-5 questions covering the directive to specify the certificate file, the directive for enabling only TLS 1.2/1.3, the purpose of OCSP Stapling, how to enable HTTP/2, and the header used for HSTS."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'HTTPS/SSL/TLS Configuration' section, recapping the process of enabling HTTPS, configuring certificates, protocols, ciphers, performance optimizations (session cache, OCSP stapling), HSTS, HTTP/2, and client certificate authentication."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx TLS/SSL configuration. Include links to the official Nginx documentation for `ngx_http_ssl_module`, the Nginx HTTPS configuration guide, Let's Encrypt documentation, and the Mozilla SSL Configuration Generator."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 prompting learners to consider the ongoing maintenance required for a secure HTTPS setup (e.g., certificate renewals, monitoring protocol/cipher recommendations), after completing the 'HTTPS/SSL/TLS Configuration' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 connecting the security aspects covered in 'HTTPS/SSL/TLS Configuration' to the essential practice of monitoring server activity and diagnosing issues through logging in the 'Logging' section."

# IX. Logging

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Logging' section of an Nginx learning agenda. Objectives should cover configuring access logs (`access_log`, `log_format`), defining custom log formats, implementing conditional logging, logging to syslog, configuring error logs (`error_log`), and understanding log levels."

## Access Log
"<prompt>Starting with heading level 2, explain the purpose of the access log: to record details about incoming client requests processed by Nginx."

### `access_log` Directive
"<prompt>Starting with heading level 3, explain the `access_log` directive. Describe how it specifies the path to the log file and, optionally, the log format name. Show examples: `access_log /var/log/nginx/access.log combined;` or `access_log off;` to disable logging for a specific context (e.g., location serving static assets)."

### `log_format` Directive
"<prompt>Starting with heading level 3, explain the `log_format` directive, defined in the `http` context. Describe how it allows defining named, custom log formats using Nginx variables. Show the definition of the common `combined` format as an example, explaining some key variables like `$remote_addr`, `$remote_user`, `$time_local`, `$request`, `$status`, `$body_bytes_sent`, `$http_referer`, `$http_user_agent`. Encourage using custom formats to log specific required information (e.g., `$request_time`, `$upstream_response_time`)."

### Conditional Logging
"<prompt>Starting with heading level 3, introduce conditional logging as a way to reduce log volume or log specific requests differently. Explain how to use a variable (often set via a `map` directive) with the `access_log` directive's `if` parameter (e.g., `map $status $loggable { ~^[23] 0; default 1; } access_log /var/log/nginx/error_requests.log combined if=$loggable;`). Advise caution and suggest that filtering logs post-processing might be more efficient."

### Logging to Syslog
"<prompt>Starting with heading level 3, explain how to configure Nginx to send access logs directly to a syslog server instead of a local file. Show the syntax using the `syslog:` prefix: `access_log syslog:server=192.168.1.10:514,facility=local7,tag=nginx,severity=info combined;`. Mention benefits for centralized log management."

## Error Log
"<prompt>Starting with heading level 2, explain the purpose of the error log: to record diagnostic information, warnings, and errors encountered by Nginx during startup and request processing."

### `error_log` Directive
"<prompt>Starting with heading level 3, explain the `error_log` directive. Describe how it specifies the file path for error messages and the minimum severity level to log. List the available severity levels in descending order: `debug`, `info`, `notice`, `warn`, `error`, `crit`, `alert`, `emerg`. Explain that `error` is often the default. Provide an example: `error_log /var/log/nginx/error.log warn;`. Mention that `error_log` can also be configured to log to `stderr` or `syslog`."

## Key Point Callout: Log Rotation
"<prompt>Generate a highlighted callout box using heading level 2 explaining that Nginx itself does not perform log rotation. Mention that standard system tools like `logrotate` on Linux are typically used to manage log file sizes by periodically archiving and compressing old logs and signaling Nginx (`nginx -s reopen`) to open new log files."

## Glossary: Logging
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Logging' section. Include definitions for: Access Log (`access_log`), Log Format (`log_format`), Common Log Variables (`$remote_addr`, `$time_local`, `$request`, `$status`, `$body_bytes_sent`, `$
http_referer`, `$http_user_agent`, `$request_time`), Conditional Logging (`if=`), Syslog, Error Log (`error_log`), Log Levels (`debug`, `info`, `notice`, `warn`, `error`, `crit`, `alert`, `emerg`), Log Rotation (`logrotate`), `nginx -s reopen`. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (matching or fill-in-the-blank) using heading level 2 to assess understanding of the Nginx 'Logging' section. Include 3-5 questions covering the directive to define a custom access log format (`log_format`), the directive to set the error log file and level (`error_log`), a common access log variable for client IP (`$remote_addr`), the default access log format name (`combined`), and the purpose of the `warn` error log level."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Logging' section, recapping the configuration of access logs (path, format, conditional, syslog) and error logs (path, level), and the importance of log rotation."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx logging. Include links to the official Nginx documentation for the `ngx_http_log_module`, `ngx_core_module` (`error_log` directive), Nginx logging guide, and potentially tutorials on configuring `logrotate` for Nginx."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider what information they would include in a custom `log_format` for debugging performance issues related to upstream servers, after completing the 'Logging' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 moving from observing server behavior through logs in the 'Logging' section to actively modifying request URIs and redirecting clients in the 'Rewrites and Redirects' section."

# X. Rewrites and Redirects

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Rewrites and Redirects' section of an Nginx learning agenda. Objectives should cover using the `return` directive for simple redirects, using the `rewrite` directive with regex and flags (`last`, `break`, `redirect`, `permanent`), understanding common rewrite use cases (canonicalization, HTTPS forcing), understanding the pitfalls of the `if` directive, and using the `map` directive for conditional logic."

## `return` Directive
"<prompt>Starting with heading level 2, explain the `return` directive as the preferred method for simple redirects. Describe how it stops processing and directly returns a specified HTTP status code (e.g., 301, 302, 307) and, optionally, a redirect URL or response body text. Provide examples: `return 301 https://$host$request_uri;` (force HTTPS), `return 404;` (return Not Found). Emphasize its efficiency compared to `rewrite` for simple cases."

## `rewrite` Directive
"<prompt>Starting with heading level 2, explain the `rewrite` directive for performing more complex URI modifications using regular expressions (PCRE). Describe its syntax: `rewrite regex replacement [flag];`. Explain how the `regex` captures parts of the incoming request URI, and the `replacement` string (which can use captures like `$1`, `$2`) forms the new URI."

### Rewrite Flags
"<prompt>Starting with heading level 3, describe the different flags that control the behavior of the `rewrite` directive after a successful match and replacement:"
*   "<prompt>Starting with heading level 4 bullet point, explain the `last` flag: Stops processing the current set of `rewrite` directives and restarts the location search process using the newly rewritten URI. Crucial for internal rewrites."
*   "<prompt>Starting with heading level 4 bullet point, explain the `break` flag: Stops processing the current set of `rewrite` directives and continues processing the request within the *current* location block using the rewritten URI."
*   "<prompt>Starting with heading level 4 bullet point, explain the `redirect` flag: Performs an external temporary redirect by returning a 302 status code with the rewritten URI as the `Location` header."
*   "<prompt>Starting with heading level 4 bullet point, explain the `permanent` flag: Performs an external permanent redirect by returning a 301 status code with the rewritten URI as the `Location` header."

### Common Rewrite Use Cases
"<prompt>Starting with heading level 3, provide examples of common scenarios where `rewrite` is used:"
*   "<prompt>Starting with heading level 4 bullet point, show an example for Canonicalization (e.g., adding/removing `www`): `rewrite ^/(.*)$ http://www.example.com/$1 permanent;` (inside a non-www server block)."
*   "<prompt>Starting with heading level 4 bullet point, show an example for Forcing HTTPS: (Note: `return` is often better) `rewrite ^(.*)$ https://$host$1 permanent;` (inside an HTTP server block)."
*   "<prompt>Starting with heading level 4 bullet point, show an example for Handling Trailing Slashes: `rewrite ^/(.*)/$ /$1 permanent;` (remove trailing slash)."
*   "<prompt>Starting with heading level 4 bullet point, show an example for Pretty URLs (internal rewrite): `rewrite ^/users/(\d+)$ /profile.php?id=$1 last;` (rewrite user-friendly URL to backend script)."

## `if` Directive
"<prompt>Starting with heading level 2, introduce the `if` directive for conditional processing. Explain its basic syntax `if (condition) { ... }`. **Strongly caution** against its overuse, especially inside `location` blocks, referencing the "If Is Evil" principle in Nginx configuration. Explain that `if` can have unexpected behavior due to its procedural nature clashing with Nginx's declarative model. Suggest alternatives like `try_files`, `return`, or `map` whenever possible."

## `map` Directive
"<prompt>Starting with heading level 2, explain the `map` directive (defined in the `http` context) as a more reliable and often more efficient way to create conditional logic based on variables. Describe its syntax: `map $variable_to_check $new_variable_to_set { ... }`. Show an example mapping `$http_user_agent` to a `$is_mobile` variable, or mapping `$host` to a specific backend group name. Explain how the resulting variable (`$new_variable_to_set`) can then be used safely in other directives (e.g., `proxy_pass http://$mapped_backend;` or `access_log /path/to/log if=$loggable_variable;`)."

## Key Point Callout: `return` vs. `rewrite`
"<prompt>Generate a highlighted callout box using heading level 2 summarizing when to use `return` versus `rewrite`: Use `return` for simple, direct status code returns or redirects (especially 301/302). Use `rewrite` for complex URI transformations based on regular expressions, particularly for internal rewrites (`last` flag) or when capture groups are needed in the replacement URL."

## Cross-Reference: Location Matching
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'Basic Configuration' section (Section III), reminding learners about `location` block matching, as `rewrite` directives are processed within the context of a matched location, and the `last` flag restarts this matching process."

## Glossary: Rewrites and Redirects
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Rewrites and Redirects' section. Include definitions for: URL Rewriting, Redirect (Temporary/Permanent), `return` directive, `rewrite` directive, Regular Expression (Regex), Rewrite Flags (`last`, `break`, `redirect`, `permanent`), Capture Groups (`$1`, `$2`), `if` directive, "If Is Evil", `map` directive. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (scenario-based or configuration analysis) using heading level 2 to assess understanding of the Nginx 'Rewrites and Redirects' section. Include 3-5 questions covering the best directive for a simple 301 redirect (`return`), the `rewrite` flag for internal rewrites (`last`), the flag for permanent external redirects (`permanent`), a common pitfall of the `if` directive, and the purpose of the `map` directive."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Rewrites and Redirects' section, recapping the use of `return` for simple redirects, `rewrite` for complex transformations with flags, the cautionary use of `if`, and the preferred `map` directive for variable mapping and conditional logic."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx rewrites and redirects. Include links to the official Nginx documentation for the `ngx_http_rewrite_module`, the `map` directive (`ngx_http_map_module`), common pitfalls like "If Is Evil", and tutorials on common rewrite rules."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider why Nginx generally recommends declarative directives like `map` or `try_files` over the procedural `if` directive for handling conditional logic in configurations, after completing the 'Rewrites and Redirects' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 linking the control over request handling provided by rewrites and redirects in the 'Rewrites and Redirects' section to the broader topic of protecting the server and applications in the 'Security' section."

# XI. Security

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Security' section of an Nginx learning agenda. Objectives should cover running Nginx with non-root privileges, limiting request methods, controlling access via IP (`allow`/`deny`) and basic auth (`auth_basic`), implementing rate limiting (`limit_req`, `limit_conn`), mitigating common vulnerabilities with security headers, hiding the Nginx version, and understanding the role of WAFs like ModSecurity."

## Running Nginx with Minimal Privileges
"<prompt>Starting with heading level 2, explain the security principle of least privilege. Describe the `user` directive (typically in the `main` context, e.g., `user www-data;`) and how it ensures that Nginx worker processes run as a specified non-root user and group, limiting potential damage if a worker process is compromised."

## Limiting Request Methods
"<prompt>Starting with heading level 2, explain why limiting allowed HTTP methods (verbs) can enhance security (e.g., disallowing `TRACE` or unused methods like `DELETE` if not needed by the application). Show how to achieve this, often using conditional logic (e.g., within a `location` block, using `if ($request_method !~ ^(GET|HEAD|POST)$) { return 405; }`). Mention that returning `405 Method Not Allowed` is the standard response."

## Controlling Access
"<prompt>Starting with heading level 2, describe methods for restricting access to specific resources or the entire server."

### `allow` and `deny` Directives
"<prompt>Starting with heading level 3, explain how to use the `allow` and `deny` directives (from `ngx_http_access_module`) within `http`, `server`, `location`, or `limit_except` blocks to control access based on client IP addresses or CIDR blocks. Provide examples: `allow 192.168.1.0/24; deny all;`. Explain the order of evaluation (first match wins unless `deny all` is last)."

### HTTP Basic Authentication
"<prompt>Starting with heading level 3, describe how to set up simple password protection using HTTP Basic Authentication. Explain the `auth_basic` directive (provides the realm message, e.g., `auth_basic "Restricted Area";`) and the `auth_basic_user_file` directive (points to a file containing username:password pairs, e.g., `auth_basic_user_file /etc/nginx/.htpasswd;`). Mention the need to create the password file using tools like `htpasswd`."

### JWT Authentication
"<prompt>Starting with heading level 3, briefly introduce JSON Web Tokens (JWT) as a modern authentication method. Mention that validating JWTs directly in Nginx typically requires Nginx Plus (`auth_jwt` directive) or using third-party modules like `nginx-lua-jwt` with the Lua module for more complex validation logic."

## Rate Limiting
"<prompt>Starting with heading level 2, explain the importance of rate limiting to prevent abuse, brute-force attacks, and Denial of Service (DoS) by restricting the rate at which clients can make requests or establish connections."

### `limit_req_zone` Directive
"<prompt>Starting with heading level 3, explain the `limit_req_zone` directive (defined in the `http` context). Describe its parameters: the key used to track requests (e.g., `$binary_remote_addr` for client IP), the `zone` name and size (shared memory), and the `rate` (e.g., `rate=5r/s` for 5 requests per second). Example: `limit_req_zone $binary_remote_addr zone=mylimit:10m rate=5r/s;`."

### `limit_req` Directive
"<prompt>Starting with heading level 3, explain the `limit_req` directive (used in `http`, `server`, or `location`). Describe how it applies a defined rate limit zone. Explain its parameters: `zone` (name of the zone), `burst` (how many requests can exceed the rate before delaying/rejecting), and `nodelay` or `delay` (whether to reject immediately or delay excess requests within the burst limit). Example: `limit_req zone=mylimit burst=10 nodelay;`."

### Limiting Connections (`limit_conn`)
"<prompt>Starting with heading level 3, explain how to limit the number of simultaneous connections from a single key (usually client IP). Describe the `limit_conn_zone` directive (similar to `limit_req_zone` but defines a zone for connection counting, e.g., `limit_conn_zone $binary_remote_addr zone=addr:10m;`) and the `limit_conn` directive (applies the limit within a context, e.g., `limit_conn addr 10;` limits to 10 concurrent connections per IP)."

## Mitigating Common Web Vulnerabilities
"<prompt>Starting with heading level 2, discuss how Nginx configuration can help mitigate certain web security risks."
*   "<prompt>Starting with heading level 3 bullet point, explain Adding Security Headers: Show how to use the `add_header` directive to add important security headers like `X-Frame-Options "SAMEORIGIN";`, `X-Content-Type-Options "nosniff";`, `Referrer-Policy "strict-origin-when-cross-origin";`, and potentially a basic `Content-Security-Policy`. Cross-reference HSTS from the TLS section."
*   "<prompt>Starting with heading level 3 bullet point, explain Preventing Information Disclosure: Show how to use `server_tokens off;` (in `http`, `server`, or `location`) to prevent Nginx from revealing its exact version number in error pages and the `Server` HTTP response header."

## Web Application Firewall (WAF)
"<prompt>Starting with heading level 2, introduce the concept of a Web Application Firewall (WAF). Explain its role in inspecting HTTP traffic and blocking malicious requests (like SQL injection, XSS) based on predefined rulesets. Mention that integrating a WAF with Nginx often involves using third-party modules like ModSecurity (`modsecurity-nginx`) or commercial solutions like Nginx App Protect (part of Nginx Plus)."

## Key Point Callout: Defense in Depth
"<prompt>Generate a highlighted callout box using heading level 2 emphasizing the concept of 'Defense in Depth' - security is layered, and Nginx security features should complement application-level security, network firewalls, and secure OS configurations."

## Cross-Reference: TLS/SSL & Logging
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'HTTPS/SSL/TLS Configuration' section (Section VIII) for crucial transport layer security and the 'Logging' section (Section IX) for monitoring potentially malicious activity or blocked requests."

## Glossary: Security
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Security' section. Include definitions for: Least Privilege (`user` directive), `allow`/`deny` directives, HTTP Basic Authentication (`auth_basic`, `auth_basic_user_file`, `.htpasswd`), JWT (`auth_jwt`), Rate Limiting, `limit_req_zone`, `limit_req` (`burst`, `nodelay`), Connection Limiting, `limit_conn_zone`, `limit_conn`, Security Headers (`X-Frame-Options`, `X-Content-Type-Options`, `Referrer-Policy`, `Content-Security-Policy`), Information Disclosure, `server_tokens off`, Web Application Firewall (WAF), ModSecurity. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (configuration identification or scenario-based) using heading level 2 to assess understanding of the Nginx 'Security' section. Include 3-5 questions covering the directive to set the worker process user (`user`), how to block all IPs except one range (`allow`/`deny`), the two main directives for rate limiting requests (`limit_req_zone`, `limit_req`), the directive to hide the Nginx version (`server_tokens`), and the purpose of a WAF."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Security' section, recapping key security measures including running as non-root, access control (IP, basic auth), rate limiting (requests, connections), security headers, hiding server tokens, and the role of WAFs."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx security. Include links to the official Nginx documentation sections on security controls, the access module, auth basic module, limit req module, limit conn module, relevant OWASP resources (like cheat sheets for headers), and ModSecurity documentation."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider how rate limiting settings (`rate`, `burst`) might need to be adjusted based on the expected traffic patterns and functionality of different parts of a web application (e.g., login page vs. static asset download), after completing the 'Security' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 connecting the security hardening techniques in the 'Security' section to optimizing Nginx for maximum performance and efficiency in the 'Performance Tuning' section."

# XII. Performance Tuning

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Performance Tuning' section of an Nginx learning agenda. Objectives should cover tuning worker processes (`worker_processes`) and connections (`worker_connections`), configuring keep-alive connections (`keepalive_timeout`), utilizing kernel features (`sendfile`, `tcp_nopush`, `tcp_nodelay`), adjusting buffers (`client_body_buffer_size`, `large_client_header_buffers`), optimizing filesystem interactions (`open_file_cache`, `worker_rlimit_nofile`), tuning compression (`gzip_comp_level`), optimizing SSL/TLS (session cache, OCSP stapling), and understanding basic performance monitoring (`stub_status`)."

## Worker Processes and Connections
"<prompt>Starting with heading level 2, revisit the core performance tuning directives."
*   "<prompt>Starting with heading level 3 bullet point, discuss `worker_processes`: Explain its role in determining the number of worker processes Nginx will spawn. Recommend setting it to `auto` (which usually defaults to the number of available CPU cores) as a starting point for CPU-bound workloads. Discuss scenarios where fewer might be better (memory constraints) or more (if highly I/O bound with blocking operations, though rare for Nginx)."
*   "<prompt>Starting with heading level 3 bullet point, discuss `worker_connections`: Explain that this directive (in the `events` context) sets the maximum number of simultaneous connections a single worker process can handle. Clarify that the total max connections is roughly `worker_processes * worker_connections`. Explain its dependency on the system's file descriptor limit (`ulimit -n`). Recommend setting it to a reasonably high value (e.g., 1024, 4096, or higher) based on expected load and system limits."

## Keep-Alive Connections
"<prompt>Starting with heading level 2, explain the benefit of HTTP keep-alive connections for reducing latency by reusing TCP connections for multiple requests between a client and Nginx. Describe the relevant directives:"
*   "<prompt>Starting with heading level 3 bullet point, explain `keepalive_timeout`: Sets the timeout during which a keep-alive connection will stay open on the server side (e.g., `keepalive_timeout 65s;`)."
*   "<prompt>Starting with heading level 3 bullet point, explain `keepalive_requests`: Sets the maximum number of requests that can be served over a single keep-alive connection (e.g., `keepalive_requests 100;`)."

## Sendfile and TCP Nodelay/Nopush
"<prompt>Starting with heading level 2, explain kernel-level optimizations for network I/O."
*   "<prompt>Starting with heading level 3 bullet point, explain `sendfile on;`: Describe how this directive enables the use of the `sendfile()` system call, allowing data to be copied directly from one file descriptor (file) to another (socket) within the kernel, avoiding data copying between kernel and user space, highly beneficial for serving static files."
*   "<prompt>Starting with heading level 3 bullet point, explain `tcp_nopush on;`: Describe how this (used with `sendfile on;`) enables the TCP_CORK socket option on Linux. Explain that it instructs TCP to accumulate data from multiple Nginx write operations into larger packets before sending, optimizing for throughput, especially when sending response headers and the start of a file together."
*   "<prompt>Starting with heading level 3 bullet point, explain `tcp_nodelay on;`: Describe how this enables the TCP_NODELAY socket option. Explain that it disables Nagle's algorithm, reducing latency for small, frequent data packets, typically enabled when `keepalive_timeout` is greater than 0."

## Buffering
"<prompt>Starting with heading level 2, discuss tuning various buffers to optimize memory usage and performance based on request characteristics."
*   "<prompt>Starting with heading level 3 bullet point, explain `client_body_buffer_size`: Sets the buffer size for reading the client request body. If the body is larger, it might be written to a temporary file. Adjust based on typical POST request sizes."
*   "<prompt>Starting with heading level 3 bullet point, explain `large_client_header_buffers number size;`: Configures the maximum number and size of buffers used for reading large client request headers (e.g., those with many cookies). Increase if clients send unusually large headers."
*   "<prompt>Starting with heading level 3 bullet point, Cross-reference Proxy Buffering: Briefly mention that tuning proxy buffers (`proxy_buffers`, `proxy_buffer_size` - Section V) is crucial when Nginx acts as a reverse proxy."

## Filesystem Optimizations
"<prompt>Starting with heading level 2, discuss optimizations related to filesystem access."
*   "<prompt>Starting with heading level 3 bullet point, Cross-reference `open_file_cache`: Remind learners of the `open_file_cache` directive (Section IV) for caching file descriptors and metadata, crucial for sites serving many static files."
*   "<prompt>Starting with heading level 3 bullet point, explain `worker_rlimit_nofile`: Describe how this directive (in the `main` context) sets the limit on the number of open file descriptors (RLIMIT_NOFILE) for worker processes, overriding the system default if needed. Explain its importance, as each connection, proxied connection, and open file consumes a file descriptor. Set this high enough to accommodate `worker_connections` and cached files (e.g., `worker_rlimit_nofile 65535;`)."

## Compression Tuning
"<prompt>Starting with heading level 2, revisit compression settings from a performance perspective."
*   "<prompt>Starting with heading level 3 bullet point, discuss `gzip_comp_level`: Explain that higher compression levels (1-9) use more CPU but result in smaller file sizes. Recommend balancing CPU usage against bandwidth savings; a moderate level (e.g., 4-6) is often a good compromise."
*   "<prompt>Starting with heading level 3 bullet point, discuss `gzip_min_length`: Remind learners that compressing very small files can be inefficient; setting a minimum size avoids unnecessary CPU usage."

## SSL/TLS Optimization
"<prompt>Starting with heading level 2, cross-reference key SSL/TLS performance optimizations discussed previously."
*   "<prompt>Starting with heading level 3 bullet point, cross-reference Session Cache/Tickets: Remind learners about `ssl_session_cache` and `ssl_session_tickets` (Section VIII) for reducing handshake overhead through session resumption."
*   "<prompt>Starting with heading level 3 bullet point, cross-reference OCSP Stapling: Remind learners about `ssl_stapling` (Section VIII) for improving client connection times."

## Monitoring Performance
"<prompt>Starting with heading level 2, introduce basic methods for monitoring Nginx performance metrics."
*   "<prompt>Starting with heading level 3 bullet point, explain the `stub_status` module: Describe how to enable `ngx_http_stub_status_module` (often requires enabling at compile time or may be included in packages). Show how to configure a `location` block with the `stub_status` directive. Explain the basic metrics provided (active connections, accepts, handled, requests, reading, writing, waiting)."
*   "<prompt>Starting with heading level 3 bullet point, mention Nginx Amplify / Other Tools: Briefly introduce Nginx Amplify as a more comprehensive monitoring tool (SaaS) from Nginx. Mention that standard system monitoring tools (like `top`, `htop`, `vmstat`, `iostat`) and Application Performance Monitoring (APM) solutions can also provide valuable insights."

## Key Point Callout: Benchmarking
"<prompt>Generate a highlighted callout box using heading level 2 stressing the importance of *benchmarking* before and after applying performance tuning changes. Explain that tuning is context-dependent, and changes should be validated with realistic load testing tools (like `ab`, `wrk`, `k6`, `JMeter`) to ensure they actually improve performance for the specific workload and don't introduce regressions."

## Glossary: Performance Tuning
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Performance Tuning' section. Include definitions for: `worker_processes` (auto), `worker_connections`, `keepalive_timeout`, `keepalive_requests`, `sendfile`, `tcp_nopush` (TCP_CORK), `tcp_nodelay` (TCP_NODELAY/Nagle's Algorithm), `client_body_buffer_size`, `large_client_header_buffers`, `worker_rlimit_nofile` (File Descriptors), `gzip_comp_level`, `stub_status` module, Benchmarking. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (multiple-choice or matching) using heading level 2 to assess understanding of the Nginx 'Performance Tuning' section. Include 3-5 questions covering the recommended setting for `worker_processes` (auto), the purpose of `worker_connections`, the directive enabling zero-copy file serving (`sendfile`), the directive setting the file descriptor limit for workers (`worker_rlimit_nofile`), and the module for basic connection stats (`stub_status`)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Performance Tuning' section, recapping key tuning areas: worker configuration, keep-alive connections, network I/O optimizations (`sendfile`, TCP settings), buffers, filesystem settings, compression levels, SSL/TLS optimizations, and basic monitoring with `stub_status`. Emphasize the need for benchmarking."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx performance tuning. Include links to the official Nginx performance tuning guide, documentation for core/events/HTTP modules mentioned, articles on Linux network stack tuning, and tutorials for benchmarking tools like `wrk` or `k6`."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to think about the potential trade-offs involved in performance tuning (e.g., increased memory usage vs. lower CPU, higher throughput vs. latency) and why understanding the specific workload is crucial, after completing the 'Performance Tuning' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 connecting the optimization of Nginx's core behavior in 'Performance Tuning' to understanding how its functionality is extended through the 'Modules System' in the next section."

# XIII. Modules System

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Modules System' section of an Nginx learning agenda. Objectives should cover understanding the modular architecture of Nginx, differentiating between static and dynamic modules, identifying core modules, optional standard modules, and third-party modules, understanding the process of compiling Nginx with modules, and recognizing Nginx Plus exclusive modules."

## Static vs. Dynamic Modules
"<prompt>Starting with heading level 2, explain the two ways modules can be incorporated into Nginx:"
*   "<prompt>Starting with heading level 3 bullet point, describe Static Modules: Explain that historically, most Nginx modules (including core and many optional ones) were compiled directly into the main Nginx binary during the build process (`./configure`, `make`). Adding or removing static modules required recompiling Nginx."
*   "<prompt>Starting with heading level 3 bullet point, describe Dynamic Modules: Explain that newer Nginx versions support dynamically loadable modules (`.so` files). These modules can be loaded at runtime using the `load_module` directive (in the `main` context, e.g., `load_module modules/ngx_http_geoip_module.so;`). Mention this offers more flexibility for adding features without recompiling the core binary, similar to Apache's DSO mechanism."

## Core Modules
"<prompt>Starting with heading level 2, explain that Core Modules provide the fundamental functionality of Nginx. List some essential core modules like `ngx_core_module` (basic directives like `worker_processes`, `error_log`), `ngx_events_module` (event handling like `worker_connections`, `use`), `ngx_http_core_module` (fundamental HTTP processing like `server`, `location`, `root`, `alias`), and explain that these are always built-in."

## Optional Standard Modules
"<prompt>Starting with heading level 2, describe Optional Standard Modules as those included with the Nginx source code distribution but not necessarily enabled by default during compilation. Explain that enabling them often requires using specific flags during the `./configure` step when compiling from source (e.g., `--with-http_ssl_module`, `--with-http_gzip_static_module`, `--with-http_stub_status_module`, `--with-http_realip_module`). Mention that pre-built packages (from distributions or Nginx) often include a common set of these modules."

## Third-Party Modules
"<prompt>Starting with heading level 2, explain that the Nginx ecosystem includes many modules developed by the community or commercial vendors to add specialized functionality not present in the standard distribution. Provide examples of popular third-party modules like `ngx_http_lua_module` (for Lua scripting), `ModSecurity` (WAF), `ngx_brotli` (Brotli compression), RTMP module (media streaming), `nginx-upstream-check` (active health checks for open source). Mention that using these often requires compiling Nginx from source and adding the module using `--add-module=/path/to/module/source` or `--add-dynamic-module=...` during configuration."

## Compiling Nginx with Modules
"<prompt>Starting with heading level 2, briefly outline the process of compiling Nginx from source specifically to include optional standard or third-party modules. Recap the steps: download Nginx source, download module source (if third-party), run `./configure` with appropriate flags (`--with-module_name`, `--add-module=path`, `--add-dynamic-module=path`), run `make`, run `sudo make install`. Emphasize checking module documentation for specific dependencies and configuration flags."

## Nginx Plus Modules
"<prompt>Starting with heading level 2, explain that Nginx Plus, the commercial version, includes a set of exclusive, pre-built modules offering advanced features beyond the open-source version. List some examples like advanced load balancing (`least_time`, sticky sessions), active health checks, live activity monitoring dashboard, JWT validation (`auth_jwt`), key-value store, Nginx App Protect WAF, and extended streaming capabilities. Mention these modules are typically loaded dynamically and are part of the subscription."

## Key Point Callout: Dynamic Modules Flexibility
"<prompt>Generate a highlighted callout box using heading level 2 highlighting the advantage of dynamic modules: they allow adding features without recompiling Nginx, simplifying upgrades and maintenance, especially when using pre-built Nginx binaries."

## Cross-Reference: Compiling from Source
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'Installation and Setup' section (Section II) for the general process of compiling Nginx from source."

## Glossary: Modules System
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Modules System' section. Include definitions for: Module, Static Module, Dynamic Module (`load_module`), Core Module (`ngx_core_module`, `ngx_events_module`, `ngx_http_core_module`), Optional Standard Module (`--with-...`), Third-Party Module (`--add-module`), Nginx Plus Module. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (true/false or matching) using heading level 2 to assess understanding of the Nginx 'Modules System' section. Include 3-5 questions covering the difference between static and dynamic modules, the directive to load a dynamic module (`load_module`), whether `ngx_http_core_module` is optional, how third-party modules are typically added when compiling, and an example of an Nginx Plus feature."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Modules System' section, recapping Nginx's modular design, static vs. dynamic modules, the categories (core, optional, third-party, Plus), and the basic process for including modules during compilation."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about the Nginx modules system. Include links to the official Nginx documentation page listing modules, articles discussing dynamic modules, guides on compiling Nginx, and the Nginx Plus feature comparison page."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider the pros and cons of using a pre-built Nginx package with many modules included versus compiling a lean Nginx binary with only the necessary modules, after completing the 'Modules System' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 connecting the extensibility provided by modules in the 'Modules System' section to exploring some of the advanced capabilities these modules enable in the 'Advanced Features' section."

# XIV. Advanced Features

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Advanced Features' section of an Nginx learning agenda. Objectives should cover configuring HTTP/2, understanding HTTP/3 and QUIC concepts, recognizing SNI's role, proxying WebSockets and gRPC, configuring TCP/UDP stream proxying/load balancing, understanding HTTP/2 Server Push, and using embedded scripting (Lua, njs)."

## HTTP/2
"<prompt>Starting with heading level 2, revisit HTTP/2 support. Briefly recap enabling it (`http2` parameter on `listen` directive for HTTPS servers). Elaborate on its key features and benefits: multiplexing (handling multiple requests/responses over a single TCP
 connection), header compression (HPACK), stream prioritization, and server push. Emphasize that HTTPS is a practical requirement for browser support of HTTP/2."

## HTTP/3 and QUIC
"<prompt>Starting with heading level 2, discuss the emerging HTTP/3 protocol built on top of QUIC (which runs over UDP). Explain the motivation: overcoming TCP head-of-line blocking and faster connection establishment (0-RTT or 1-RTT). Recap that enabling it typically requires specific Nginx builds/modules, UDP listener configuration (`listen 443 quic reuseport;`), and advertising support via the `Alt-Svc` header. Mention it's still less common than HTTP/2 but growing."

## Server Name Indication (SNI)
"<prompt>Starting with heading level 2, explain Server Name Indication (SNI) as an essential TLS extension. Describe how SNI allows a client to specify the hostname it's trying to reach during the TLS handshake. Explain that this enables Nginx to host multiple distinct HTTPS virtual servers (each with its own certificate) on a single IP address and port (443). Mention that SNI is handled automatically by modern Nginx versions when multiple `server` blocks listen on the same IP:port with different `server_name` and `ssl_certificate` directives; explicit configuration is usually not needed."

## WebSockets
"<prompt>Starting with heading level 2, revisit WebSocket proxying. Recap the necessary configuration directives (`proxy_http_version 1.1;`, `proxy_set_header Upgrade $http_upgrade;`, `proxy_set_header Connection "upgrade";`). Emphasize its use for establishing persistent, bidirectional communication channels between clients and backend applications, suitable for chat apps, live notifications, real-time gaming, etc."

## gRPC Proxying
"<prompt>Starting with heading level 2, revisit gRPC proxying. Recap the use of the `grpc_pass` directive to forward requests to gRPC backend services. Mention that Nginx can handle HTTP/2 termination, load balancing, health checks, and TLS encryption for gRPC services, making it a suitable frontend or API gateway component in microservice architectures."

## Streaming (TCP/UDP Proxy and Load Balancing)
"<prompt>Starting with heading level 2, introduce the Nginx Stream module (`ngx_stream_core_module`) for handling non-HTTP traffic at Layer 4 (TCP and UDP)."

### `stream` Context
"<prompt>Starting with heading level 3, explain that stream module configuration resides within a top-level `stream { ... }` context (parallel to the `http { ... }` context) in `nginx.conf`. Define `server` blocks within the `stream` context."

### TCP Proxying
"<prompt>Starting with heading level 3, describe how to configure Nginx as a generic TCP proxy. Show a simple `server` block within `stream` using `listen` for the TCP port and `proxy_pass` pointing to the backend TCP server address/port (e.g., for proxying SSH, databases, MQTT brokers). Mention load balancing using `upstream` blocks is also possible here."

### UDP Load Balancing
"<prompt>Starting with heading level 3, describe how Nginx can load balance UDP-based protocols. Show a `server` block within `stream` using `listen` with the `udp` parameter and `proxy_pass` pointing to an `upstream` block containing UDP servers. Mention common use cases like DNS, RADIUS, or some gaming protocols. Note specific directives like `proxy_timeout` and `proxy_responses` relevant for UDP."

## Server Push
"<prompt>Starting with heading level 2, explain the HTTP/2 Server Push feature. Describe how it allows the server to proactively send resources (like CSS, JS files) to the client cache *before* the client explicitly requests them, potentially speeding up page rendering. Show the `http2_push` directive used within a `location` block (e.g., `location = /index.html { http2_push /style.css; http2_push /script.js; }`). Mention the `http2_push_preload on;` directive to automatically push resources indicated by `Link: rel=preload` headers from the backend. Discuss potential pitfalls like pushing unnecessary resources."

## Embedded Scripting
"<prompt>Starting with heading level 2, introduce the capability of extending Nginx configuration logic using embedded scripting languages for complex request handling, conditional logic, or custom access control beyond standard directives."

### ngx_http_lua_module
"<prompt>Starting with heading level 3, describe the powerful `ngx_http_lua_module` (often requires separate installation or compilation). Explain how it allows embedding Lua scripts directly into the Nginx configuration using directives like `content_by_lua_block`, `access_by_lua_block`, `rewrite_by_lua_block`. Mention its use for tasks like complex API gateway logic, custom authentication, dynamic request modification, and interacting with external services (e.g., Redis, databases)."

### ngx_http_js_module (njs)
"<prompt>Starting with heading level 3, describe the `ngx_http_js_module` which provides Nginx JavaScript (njs), a subset of JavaScript specifically designed for Nginx scripting. Explain its similar capabilities to the Lua module, allowing scripting at various request processing phases using directives like `js_content`, `js_access`, `js_filter`. Mention it's developed by the Nginx team and aims for high performance and integration."

## Cross-Reference: Reverse Proxy & Load Balancing
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the 'Reverse Proxying' (Section V) and 'Load Balancing' (Section VI) sections, noting that WebSockets and gRPC proxying build upon those core concepts, and the `stream` module provides similar functionality for TCP/UDP."

## Glossary: Advanced Features
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Advanced Features' section. Include definitions for: HTTP/2 Multiplexing, Header Compression (HPACK), HTTP/3, QUIC, Server Name Indication (SNI), WebSocket, gRPC, Stream Module (`ngx_stream_core_module`), TCP Proxying, UDP Load Balancing, Server Push (`http2_push`), Embedded Scripting, `ngx_http_lua_module`, Lua, njs (`ngx_http_js_module`). Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (matching or scenario-based) using heading level 2 to assess understanding of the Nginx 'Advanced Features' section. Include 3-5 questions covering the primary benefit of HTTP/2 multiplexing, the protocol underlying HTTP/3 (QUIC/UDP), the TLS extension enabling multiple HTTPS sites on one IP (SNI), the context used for TCP/UDP proxying (`stream`), and an example of an embedded scripting module (Lua or njs)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Advanced Features' section, recapping capabilities like HTTP/2, HTTP/3, SNI, WebSocket/gRPC proxying, TCP/UDP stream handling, Server Push, and embedded scripting with Lua/njs."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx advanced features. Include links to the official Nginx documentation for HTTP/2, HTTP/3 (if available), SNI, WebSocket proxying, gRPC proxying, the Stream module, Server Push, the Lua module, and the njs module."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider which advanced Nginx feature (e.g., stream proxying, gRPC support, Lua/njs scripting) might be most beneficial for a specific type of application or infrastructure they are familiar with, after completing the 'Advanced Features' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 moving from exploring advanced Nginx capabilities in 'Advanced Features' to the practical skills needed for diagnosing and resolving issues in the 'Troubleshooting and Debugging' section."

# XV. Troubleshooting and Debugging

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Troubleshooting and Debugging' section of an Nginx learning agenda. Objectives should cover checking configuration syntax (`nginx -t`), effectively analyzing access and error logs, interpreting common Nginx error codes (4xx/5xx), debugging rewrite rules (`rewrite_log`), using `stub_status` for basic monitoring, being aware of advanced debugging tools (`strace`, `gdb`), and recognizing common configuration pitfalls (permissions, typos, backend issues)."

## Checking Configuration Syntax
"<prompt>Starting with heading level 2, reiterate the critical first step in troubleshooting: validating the configuration syntax using `nginx -t`. Emphasize checking the output carefully for `syntax is ok` and `test is successful` messages, or for specific error messages indicating the problematic file and line number."

## Analyzing Logs
"<prompt>Starting with heading level 2, stress the importance of logs as the primary source of information for diagnosing problems."

### Error Log Analysis
"<prompt>Starting with heading level 3, explain how to effectively use the `error_log`. Recommend checking it first when encountering issues. Explain the significance of different log levels (`error`, `warn`, `crit` often indicate problems). Demonstrate how to temporarily increase the log level to `debug` (`error_log /path/to/error.log debug;`) for a specific problematic request or context to get extremely detailed information about Nginx's internal processing steps. Caution that debug logging is very verbose and should only be enabled temporarily for specific diagnostics due to performance impact."

### Access Log Analysis
"<prompt>Starting with heading level 3, explain how the `access_log` can help identify problematic requests. Show how to look for unexpected status codes (4xx, 5xx), long response times (`$request_time`, `$upstream_response_time` if logged), or patterns of requests leading to errors. Mention using command-line tools like `grep`, `awk`, `sort`, `uniq` to filter and analyze access logs."

## Common Error Pages
"<prompt>Starting with heading level 2, explain the meaning of common HTTP status codes generated by Nginx, especially those indicating errors:"
*   "<prompt>Starting with heading level 3 bullet point, explain 403 Forbidden: Usually related to file permissions (worker process user cannot read files/directories) or access control rules (`deny`, `allow`)."
*   "<prompt>Starting with heading level 3 bullet point, explain 404 Not Found: File or directory specified by `root`/`alias` + URI doesn't exist, or `try_files` failed to find a match."
*   "<prompt>Starting with heading level 3 bullet point, explain 500 Internal Server Error: Often indicates an error within Nginx itself (e.g., configuration issue indirectly causing a crash, scripting error in Lua/njs) or sometimes deliberately returned by backend via `proxy_intercept_errors`."
*   "<prompt>Starting with heading level 3 bullet point, explain 502 Bad Gateway: Nginx successfully connected to the upstream server (e.g., backend app, PHP-FPM) but received an invalid or unparseable response. Indicates a problem with the backend application/service."
*   "<prompt>Starting with heading level 3 bullet point, explain 503 Service Unavailable: Nginx could not connect to the upstream server (it might be down, overloaded, or not listening), or an `upstream` server is marked as down by health checks, or rate/connection limits are exceeded without a burst queue."
*   "<prompt>Starting with heading level 3 bullet point, explain 504 Gateway Timeout: Nginx connected to the upstream server but did not receive a response within the configured timeout period (`proxy_read_timeout`, `fastcgi_read_timeout`, etc.). Indicates the backend application is taking too long to process the request."

## Debugging Rewrites
"<prompt>Starting with heading level 2, explain how to specifically debug complex `rewrite` rules. Introduce the `rewrite_log on;` directive. Explain that enabling it causes Nginx to log the rewrite processing steps to the `error_log` at the `notice` level, showing the matched regex, the rewritten URI, and the flag used."

## `stub_status` Module
"<prompt>Starting with heading level 2, revisit the `stub_status` module as a quick diagnostic tool. Explain how checking the `Active connections` and the breakdown (reading, writing, waiting) can give a basic idea of server load and whether connections are being processed efficiently or getting stuck."

## Using Debugging Tools
"<prompt>Starting with heading level 2, briefly mention advanced system-level tools for deeper debugging when logs are insufficient:"
*   "<prompt>Starting with heading level 3 bullet point, explain `strace`: Describe how `strace` can trace system calls made by Nginx processes, useful for diagnosing low-level issues like file access problems or network connection errors."
*   "<prompt>Starting with heading level 3 bullet point, explain `gdb`: Mention the GNU Debugger (`gdb`) for attaching to running Nginx processes or analyzing core dumps in case of crashes, allowing inspection of internal state (requires debugging symbols, often available in separate `-dbg` packages)."

## Common Pitfalls
"<prompt>Starting with heading level 2, list frequently encountered configuration mistakes and issues:"
*   "<prompt>Starting with heading level 3 bullet point, discuss File Permissions: Incorrect ownership or permissions on document root directories, log files, socket files (for FastCGI/uWSGI), or TLS private keys preventing the Nginx worker process user (`www-data`, `nginx`, etc.) from accessing them."
*   "<prompt>Starting with heading level 3 bullet point, discuss Configuration Typos: Simple syntax errors like missing semicolons (`;`), incorrect braces (`{}`), misspelled directives or variables."
*   "<prompt>Starting with heading level 3 bullet point, discuss Backend Server Failures: The upstream application server (Node.js, PHP-FPM, etc.) crashing, not running, not listening on the correct port/socket, or having internal errors (leading to 502/503/504)."
*   "<prompt>Starting with heading level 3 bullet point, discuss Firewall Rules: System firewall (`iptables`, `firewalld`, `ufw`) or cloud security groups blocking traffic on required ports (e.g., 80, 443, or backend ports)."
*   "<prompt>Starting with heading level 3 bullet point, discuss DNS Resolution Issues: Nginx failing to resolve upstream server hostnames specified in `proxy_pass` (use `resolver` directive if needed)."
*   "<prompt>Starting with heading level 3 bullet point, discuss Resource Limits: Hitting system limits like maximum open file descriptors (`ulimit -n`) or memory limits."

## Key Point Callout: Systematic Approach
"<prompt>Generate a highlighted callout box using heading level 2 advising a systematic troubleshooting approach: 1. Check config (`nginx -t`). 2. Check error log. 3. Check access log. 4. Check backend server status/logs. 5. Check network connectivity/firewalls. 6. Isolate the issue (e.g., does static content work? does a simple proxy pass work?). 7. Increase log levels or use debug tools if necessary."

## Glossary: Troubleshooting and Debugging
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Troubleshooting and Debugging' section. Include definitions for: `nginx -t`, Debug Logging (`error_log debug`), Common Errors (403, 404, 500, 502, 503, 504), `rewrite_log`, `stub_status`, `strace`, `gdb`, File Permissions, Backend Server, Firewall, DNS Resolution (`resolver` directive). Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (scenario diagnosis or command identification) using heading level 2 to assess understanding of the Nginx 'Troubleshooting and Debugging' section. Include 3-5 questions covering the command to check syntax, the log file to check first for errors (`error_log`), the meaning of a 502 error (Bad Gateway - backend problem), the directive to debug rewrites (`rewrite_log`), and a common cause of 403 errors (permissions)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Troubleshooting and Debugging' section, recapping the key steps: syntax checks, log analysis (error, access), understanding common errors, rewrite debugging, basic monitoring, awareness of advanced tools, and common pitfalls like permissions and backend failures."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx troubleshooting. Include links to the official Nginx debugging guide, common pitfalls documentation, articles on interpreting error codes, and tutorials for `strace` or `gdb` usage with Nginx."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to think about a recent time they encountered a web server error (even as a user) and how the knowledge from this section might help them diagnose the potential cause (client-side, Nginx config, backend app, network), after completing the 'Troubleshooting and Debugging' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 moving from general troubleshooting in the 'Troubleshooting and Debugging' section to exploring the specific features and benefits of the commercial Nginx offering in the 'Nginx Plus' section."

# XVI. Nginx Plus

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Nginx Plus' section of an Nginx learning agenda. Objectives should cover identifying key features exclusive to Nginx Plus (active health checks, advanced load balancing, session persistence, monitoring dashboard, JWT auth, WAF, key-value store), understanding high availability options, recognizing the availability of professional support, and being aware of related products like Nginx App Protect and Management Suite."

## Additional Features
"<prompt>Starting with heading level 2, provide an overview of significant features available in Nginx Plus that extend beyond the open-source version, categorized by area:"
*   "<prompt>Starting with heading level 3 bullet point, discuss Enhanced Load Balancing: Mention advanced algorithms like Least Time, sophisticated session persistence mechanisms (sticky cookie, sticky route), and draining connections (`max_conns`, `drain`)."
*   "<prompt>Starting with heading level 3 bullet point, discuss Active Health Checks: Explain the built-in active health check system (`health_check` directive) that proactively probes upstream servers, allowing faster detection of failures and recoveries compared to passive checks."
*   "<prompt>Starting with heading level 3 bullet point, discuss Live Activity Monitoring Dashboard: Describe the built-in web dashboard (`/api/` or `/dashboard.html`) providing real-time metrics (connections, requests, cache status, upstream server stats, health status, etc.) accessible via API or a graphical interface."
*   "<prompt>Starting with heading level 3 bullet point, discuss Enhanced Security: Mention built-in JWT validation (`auth_jwt`), OpenID Connect integration, advanced rate limiting options, and integration with Nginx App Protect WAF."
*   "<prompt>Starting with heading level 3 bullet point, discuss Advanced Caching Control: Mention features like `proxy_cache_purge` for easier cache invalidation."
*   "<prompt>Starting with heading level 3 bullet point, discuss Extended Streaming Features: Mention features like enhanced logging, monitoring, access control, and SSL/TLS features specifically for the `stream` module."
*   "<prompt>Starting with heading level 3 bullet point, discuss Key-Value Store: Introduce the `keyval` directive and module for creating dynamic configuration variables based on lookups in an in-memory key-value store, manageable via API."

## High Availability Options
"<prompt>Starting with heading level 2, explain that Nginx Plus can be deployed in high availability (HA) active-passive or active-active clusters to prevent the Nginx instance itself from being a single point of failure. Mention the use of standard clustering mechanisms (like `keepalived` with VRRP) often facilitated by Nginx Plus features like the monitoring API for triggering failover."

## Support and Services
"<prompt>Starting with heading level 2, emphasize that a primary benefit of Nginx Plus is access to commercial support directly from Nginx (F5). Explain that this includes technical assistance, patches, and updates, which is crucial for enterprise environments requiring guaranteed response times and expert help."

## Nginx App Protect
"<prompt>Starting with heading level 2, introduce Nginx App Protect as Nginx's advanced Web Application Firewall (WAF) and security monitoring solution. Explain that it integrates tightly with Nginx Plus (often as an add-on module) to provide protection against sophisticated attacks like the OWASP Top 10, bot mitigation, and detailed security logging/analytics."

## Nginx Management Suite
"<prompt>Starting with heading level 2, briefly describe the Nginx Management Suite as a centralized control plane for managing Nginx Plus and Nginx Open Source instances at scale. Mention its key components like Instance Manager (for inventory, configuration deployment, certificate management) and API Connectivity Manager (for managing API gateways)."

## Key Point Callout: Open Source vs. Plus Decision
"<prompt>Generate a highlighted callout box using heading level 2 summarizing the key decision factors between Nginx Open Source and Nginx Plus: Open Source is powerful and sufficient for many use cases. Choose Plus for advanced load balancing/health checks, enterprise-grade session persistence, built-in monitoring dashboard, JWT validation, integrated WAF (App Protect), scalable management (Management Suite), and commercial support."

## Cross-Reference: Relevant Open Source Features
"<prompt>Generate a cross-reference note using heading level 2 pointing back to sections covering features where Nginx Plus offers enhancements, such as 'Load Balancing' (Section VI), 'Caching' (Section VII - Purging), and 'Security' (Section XI - JWT)."

## Glossary: Nginx Plus
"<prompt>Generate a glossary section using heading level 2 for key terms introduced in the Nginx 'Nginx Plus' section. Include definitions for: Nginx Plus, Active Health Checks (`health_check`), Least Time Load Balancing, Sticky Cookie/Route, Live Activity Monitoring (Dashboard/API), JWT Validation (`auth_jwt`), Key-Value Store (`keyval`), High Availability (HA), `keepalived`, VRRP, Nginx App Protect (WAF), Nginx Management Suite (Instance Manager, API Connectivity Manager), Commercial Support. Format as '### Term Name' followed by the definition."

## Self-Assessment Quiz
"<prompt>Generate a short quiz (feature matching or true/false) using heading level 2 to assess understanding of the Nginx 'Nginx Plus' section. Include 3-5 questions covering a key feature exclusive to Plus (e.g., active health checks, live dashboard), the method for advanced session persistence (sticky cookie/route), the name of the Nginx WAF product (App Protect), and the primary non-feature benefit of Plus (support)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Nginx Plus' section, recapping the key advantages including enhanced load balancing, active health checks, monitoring, security features (JWT, WAF), HA capabilities, commercial support, and related management products."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources about Nginx Plus. Include links to the official Nginx Plus product page, feature comparison (OSS vs. Plus), Nginx App Protect page, Nginx Management Suite page, and Nginx Plus datasheets or whitepapers."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to consider a scenario where the features of Nginx Plus (e.g., active health checks, commercial support) would provide significant value over the open-source version, after completing the 'Nginx Plus' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 linking the specific features of Nginx Plus in the 'Nginx Plus' section to a broader look at common Nginx deployment scenarios in the 'Use Cases' section."

# XVII. Use Cases

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Use Cases' section of an Nginx learning agenda. Objectives should cover recognizing Nginx's common roles, including web serving (static/dynamic), reverse proxying, load balancing, caching, SSL/TLS termination, API gateway implementation, media streaming, and acting as a security gateway."

## Web Serving
"<prompt>Starting with heading level 2, describe Nginx's original and fundamental use case: efficiently serving static content (HTML, CSS, JS, images) directly to clients. Briefly mention its capability to serve dynamic content via proxying (FastCGI, uWSGI, etc.) making it a complete web server solution for many websites."

## Reverse Proxy
"<prompt>Starting with heading level 2, reiterate Nginx's role as a reverse proxy. Explain how it acts as a single frontend entry point for one or more backend application servers (Node.js, Python, Java, PHP, Ruby, etc.). Emphasize benefits like hiding backend topology, centralized logging, handling SSL/TLS, and providing a buffer between clients and application logic."

## Load Balancing
"<prompt>Starting with heading level 2, highlight Nginx's strength as a high-performance load balancer. Explain how it distributes incoming client requests across multiple backend application servers using various algorithms (`round-robin`, `least_conn`, `ip_hash`, etc.) to improve application scalability, reliability, and availability."

## Caching Layer
"<prompt>Starting with heading level 2, describe using Nginx as a caching layer. Explain how its `proxy_cache` mechanism can store responses from backend servers (both static assets and dynamic API responses via microcaching) and serve them directly to subsequent clients, significantly reducing latency and offloading work from backend systems."

## SSL/TLS Termination
"<prompt>Starting with heading level 2, explain the common practice of SSL/TLS termination (or offloading). Describe how Nginx handles the encryption and decryption of HTTPS traffic from clients, allowing backend servers to communicate over plain HTTP internally (within a trusted network). Mention benefits like centralizing certificate management and reducing the CPU load on application servers."

## API Gateway
"<prompt>Starting with heading level 2, describe the use of Nginx as an API Gateway, especially in microservices architectures. Explain how it can provide a unified entry point for external API consumers, handling tasks like request routing, load balancing across microservices, authentication/authorization (e.g., API keys, JWT validation with Plus/Lua), rate limiting, request/response transformation, and logging/monitoring for multiple backend APIs."

## Media Streaming
"<prompt>Starting with heading level 2, mention Nginx's capability for efficient media streaming. Explain how modules like the third-party RTMP module enable live streaming, or how Nginx can be configured for pseudo-streaming or serving segmented formats like HLS and DASH, often combined with caching for delivering video and audio content at scale."

## Security Gateway
"<prompt>Starting with heading level 2, summarize Nginx's role as a security gateway or perimeter defense layer. Explain how features like SSL/TLS termination, access control (IP filtering, basic auth), rate limiting, and integration with WAFs (ModSecurity, Nginx App Protect) allow Nginx to act as a secure entry point, protecting backend applications from direct exposure and various attacks."

## Key Point Callout: Combining Use Cases
"<prompt>Generate a highlighted callout box using heading level 2 emphasizing that Nginx instances often combine multiple use cases simultaneously. For example, a single Nginx setup commonly acts as an SSL terminator, reverse proxy, load balancer, and caching layer all at once."

## Cross-Reference: Feature Sections
"<prompt>Generate a cross-reference note using heading level 2 pointing back to the specific sections that detail the configuration for each use case mentioned: 'Serving Static Content' (IV), 'Reverse Proxying' (V), 'Load Balancing' (VI), 'Caching' (VII), 'HTTPS/SSL/TLS' (VIII), 'Security' (XI), 'Advanced Features' (XIV - Streaming, Scripting for API Gateway)."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Use Cases' section, recapping the diverse roles Nginx excels at, including web serving, reverse proxying, load balancing, caching, SSL termination, API gateway functions, media streaming, and acting as a security entry point."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to external resources showcasing Nginx use cases. Include links to official Nginx solution pages (e.g., for load balancing, API gateway, microservices), case studies, and blog posts or tutorials demonstrating specific implementations."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners to identify which Nginx use case they find most compelling or relevant to their own projects or work, and why, after completing the 'Use Cases' section."

## Transition to Next Section
"<prompt>Generate a brief transition statement using heading level 2 moving from the practical applications of Nginx in the 'Use Cases' section to exploring the resources and community surrounding Nginx in the final 'Ecosystem and Community' section."

# XVIII. Ecosystem and Community

## Learning Objectives
"<prompt>Generate learning objectives as a bulleted list using heading level 2 for the 'Ecosystem and Community' section of an Nginx learning agenda. Objectives should cover identifying key resources like official documentation, community forums, mailing lists, and blogs, understanding the role of Nginx Amplify, recognizing tools commonly used with Nginx (Certbot, Docker, Ansible, Kubernetes Ingress), and being aware of Nginx-related events."

## Official Documentation
"<prompt>Starting with heading level 2, emphasize the Nginx official documentation (nginx.org/en/docs/) as the primary and most authoritative resource. Highlight its structure, including module references, configuration guides, and specific topic explanations. Encourage learners to consult the documentation frequently when configuring or troubleshooting."

## Community Resources
"<prompt>Starting with heading level 2, list various places where users can find help, share knowledge, and discuss Nginx:"
*   "<prompt>Starting with heading level 3 bullet point, mention Official Forums: Point to the official Nginx community forums."
*   "<prompt>Starting with heading level 3 bullet point, mention Mailing Lists: Describe the official Nginx mailing lists (e.g., nginx, nginx-devel) for questions and discussions."
*   "<prompt>Starting with heading level 3 bullet point, mention Blogs and Tutorials: Mention the official Nginx blog and numerous third-party blogs, websites (like DigitalOcean, Stack Overflow), and tutorial sites that offer practical guides and examples."
*   "<prompt>Starting with heading level 3 bullet point, mention Stack Overflow: Highlight Stack Overflow (with the `nginx` tag) as a major Q&A resource for specific technical problems."

## Nginx Amplify
"<prompt>Starting with heading level 2, describe Nginx Amplify as a SaaS (Software as a Service) monitoring tool specifically designed for Nginx (both Open Source and Plus). Explain its capabilities: collecting detailed metrics, visualizing performance, analyzing configurations for potential issues or security vulnerabilities, and providing alerts. Mention it requires installing an agent on the monitored servers."

## Related Tools
"<prompt>Starting with heading level 2, mention tools and technologies frequently used in conjunction with Nginx:"
*   "<prompt>Starting with heading level 3 bullet point, discuss Certbot / Let's Encrypt: Reiterate the common use of Certbot for automatically obtaining and renewing SSL/TLS certificates for Nginx."
*   "<prompt>Starting with heading level 3 bullet point, discuss Docker: Remind learners that Nginx is often run inside Docker containers, managed via Docker Compose or container orchestration platforms."
*   "<prompt>Starting with heading level 3 bullet point, discuss Configuration Management (Ansible, Puppet, Chef): Explain that tools like Ansible are widely used to automate the deployment and configuration management of Nginx instances across multiple servers."
*   "<prompt>Starting with heading level 3 bullet point, discuss Kubernetes Ingress Controllers: Explain that Nginx is the basis for one of the most popular Kubernetes Ingress controllers, which manages external access to services within a Kubernetes cluster, handling routing, SSL, and load balancing."

## Nginx Conferences and Events
"<prompt>Starting with heading level 2, mention that Nginx (F5) and the community sometimes organize conferences (like the historical Nginx Conf, now often part of F5 events) and meetups. Highlight these as opportunities for deeper learning, discovering new features, and networking with other Nginx users and developers."

## Key Point Callout: Community Power
"<prompt>Generate a highlighted callout box using heading level 2 emphasizing the strength and importance of the large, active Nginx community for sharing knowledge, developing third-party modules, and providing support through forums and Q&A sites."

## Section Summary
"<prompt>Generate a concise summary paragraph using heading level 2 for the Nginx 'Ecosystem and Community' section, recapping the key resources (docs, forums, blogs), monitoring tools (Amplify), complementary technologies (Certbot, Docker, Ansible, Kubernetes), and community events."

## Further Exploration
"<prompt>Generate a bulleted list using heading level 2 with links to key ecosystem resources. Include links to the Nginx documentation homepage, Nginx blog, Nginx community forum/mailing list info, Nginx Amplify page, Certbot website, Docker Hub Nginx image, Ansible Nginx roles (Galaxy), and the Kubernetes Nginx Ingress controller documentation."

## Reflective Prompt
"<prompt>Generate a reflective question using heading level 2 asking learners where they would look first for help if they encountered an Nginx configuration problem they couldn't solve using the official documentation, after completing the 'Ecosystem and Community' section."
