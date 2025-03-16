# I. Introduction to NGINX

## Understanding NGINX Fundamentals

### NGINX Architecture: Event-driven, asynchronous, non-blocking
Example: Explain how NGINX handles multiple connections concurrently compared to traditional thread-based servers.

### Core Functionalities: Web server, reverse proxy, load balancer, HTTP cache
Example: Illustrate each functionality with real-world use cases (e.g., serving static content, protecting backend servers).

### Key Configuration Files: `nginx.conf`, virtual host configurations
Example: Locate and describe the main sections (`http`, `server`, `location`) within a sample `nginx.conf` file.

## Installing and Configuring NGINX

### Installation Methods: Package managers (apt, yum), compiling from source
Example: Steps for installing NGINX on Ubuntu using `apt`.
```bash
sudo apt update
sudo apt install nginx
```

### Basic Configuration: Editing `nginx.conf` for simple websites
Example: Setting the `root` directory and `index` file for a website.
```nginx
server {
    listen 80;
    server_name example.com;
    root /var/www/example.com;
    index index.html;
}
```

### Managing NGINX Service: Starting, stopping, restarting, reloading
Example: Using `systemctl` to manage the NGINX service.
```bash
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
```
# II. Serving Static Content and Basic HTTP Configuration

## Optimizing Static Content Delivery

### Configuring `root` and `index` directives
Example: Explain the purpose of `root` and `index` in relation to serving static files.

### Setting MIME Types: Ensuring correct content-type headers
Example: Adding or modifying MIME types in `nginx.conf`.
```nginx
http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;
}
```

### Caching Static Assets: Using `expires` directive
Example: Configuring browser caching for images and other static files.
```nginx
location ~* \.(jpg|jpeg|png|gif|ico|css|js)$ {
    expires 30d;
}
```

## HTTP Configuration Essentials

### Understanding HTTP Status Codes: 200, 301, 404, 500, etc.
Example: Describe the meaning of each status code and when it's used.

### Handling Redirects: Using `return` and `rewrite` directives
Example: Implementing a 301 redirect from an old URL to a new URL.
```nginx
server {
    listen 80;
    server_name old-example.com;
    return 301 $scheme://www.example.com$request_uri;
}
```

### Configuring Error Pages: Customizing error responses
Example: Creating a custom 404 error page.
```nginx
error_page 404 /404.html;
location = /404.html {
    root /var/www/example.com;
    internal;
}
```

# III. Reverse Proxy and Load Balancing

## Implementing Reverse Proxy

### Configuring NGINX as a Reverse Proxy: Directing traffic to backend servers
Example: Setting up a reverse proxy for a simple application running on port 3000.
```nginx
server {
    listen 80;
    server_name example.com;

    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

### Proxy Buffering: Understanding `proxy_buffering` and related directives
Example: Explaining the benefits and drawbacks of proxy buffering.

### Headers and Security: `proxy_set_header`, `X-Forwarded-For`, and related considerations
Example: Setting appropriate headers to pass client information to backend servers.

## Load Balancing Techniques

### Upstream Configuration: Defining backend servers in `upstream` blocks
Example: Creating an upstream block with multiple backend servers.
```nginx
upstream backend {
    server backend1.example.com;
    server backend2.example.com;
}
```

### Load Balancing Methods: Round Robin, Least Connections, IP Hash
Example: Configuring each load balancing method within an upstream block.
```nginx
upstream backend {
    # Round Robin (default)
    server backend1.example.com;
    server backend2.example.com;

    # Least Connections
    # least_conn;
    # server backend1.example.com;
    # server backend2.example.com;

    # IP Hash
    # ip_hash;
    # server backend1.example.com;
    # server backend2.example.com;
}
```

### Health Checks: Monitoring backend server availability
Example: Using the `ngx_http_healthcheck_module` to implement health checks (requires compilation or dynamic module loading).

# IV. Security and Performance Optimization

## Security Best Practices

### SSL/TLS Configuration: Obtaining and installing certificates
Example: Generating a self-signed certificate and configuring NGINX to use it.

### Implementing HTTPS: Redirecting HTTP to HTTPS
Example: Configuring a server block to redirect all HTTP traffic to HTTPS.

### Security Headers: Setting `Strict-Transport-Security`, `X-Frame-Options`, `X-Content-Type-Options`, etc.
Example: Adding security headers to the `nginx.conf`.
```nginx
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
add_header X-Frame-Options "SAMEORIGIN" always;
add_header X-Content-Type-Options "nosniff" always;
```

### Rate Limiting: Protecting against abuse
Example: Limiting the number of requests from a specific IP address.

## Performance Tuning

### Gzip Compression: Reducing response sizes
Example: Enabling gzip compression in the `nginx.conf`.
```nginx
gzip on;
gzip_proxied any;
gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
```

### Caching: Configuring NGINX as a cache
Example: Setting up a basic caching configuration.

### Keep-Alive Connections: Reusing connections to reduce latency
Example: Tuning `keepalive_timeout` and `keepalive_requests` parameters.
# V. Advanced NGINX Configuration

## Working with Dynamic Content

### Proxying to Application Servers: PHP-FPM, Node.js, Python WSGI
Example: Configuring NGINX to proxy requests to a PHP-FPM server.
```nginx
location ~ \.php$ {
    include snippets/fastcgi-php.conf;
    fastcgi_pass unix:/run/php/php7.4-fpm.sock; # Adjust the socket path
}
```

### Using NGINX with Docker: Containerizing NGINX and applications
Example: Creating a Dockerfile for NGINX.

### Websockets: Configuring NGINX for WebSocket proxying
Example: Setting up NGINX to proxy WebSocket connections.
```nginx
location /ws/ {
    proxy_pass http://backend_server;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection "upgrade";
}
```

## Modules and Customization

### Dynamic Modules: Loading and using dynamic modules
Example: Compiling and loading a third-party NGINX module.

### Lua Scripting with NGINX: Using `ngx_lua` module
Example: Using Lua to implement custom logic within NGINX.

### Monitoring and Logging: Configuring detailed logging and monitoring NGINX performance
Example: Setting up custom log formats and using tools like `ngx-http-stub-status-module` for basic monitoring.
```nginx
log_format main '$remote_addr - $remote_user [$time_local] "$request" '
                '$status $body_bytes_sent "$http_referer" '
                '"$http_user_agent" "$http_x_forwarded_for"';
```
