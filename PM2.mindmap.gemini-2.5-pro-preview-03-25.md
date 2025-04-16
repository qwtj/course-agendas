# PM2 #ProcessManager #NodeJS
PM2 (Process Manager 2) is an advanced, open-source, production-ready process manager for Node.js applications. It includes features like a built-in load balancer, application monitoring, log management, and automatic restarts to keep applications online 24/7. [2, 3, 7, 15, 19, 23]

## Introduction #Overview #Basics
What PM2 is, its purpose, and key benefits.
PM2 helps manage and keep Node.js (and other types of) applications online continuously, simplifying deployment and system administration tasks. [3, 5, 6, 19, 23]

### What is a Process Manager? #Definition #SysAdmin
Explains the role of a process manager: keeping applications running, restarting after crashes or reboots, monitoring, and managing logs. [5, 6]

### Key Features #Highlights #Capabilities
Summary of PM2's main capabilities: load balancing, zero-downtime reloads, monitoring, log management, startup scripts, deployment system, configuration management, cluster mode, watch & reload, module system, etc. [2, 7, 15]

### Target Audience #Users #UseCases
Developers and sysadmins deploying and managing Node.js applications in production environments. [13, 15, 23]

### Supported Platforms #Compatibility #OS
Works on Linux, macOS, and Windows. Supports Node.js versions from 12.X onwards and Bun since v1. [3, 7, 22]

## Installation #Setup #GettingStarted
How to install PM2 and basic setup.

### Using NPM #NPM #Install
Standard installation method using Node Package Manager (NPM).
`npm install pm2 -g` [3, 5, 13, 31, 32]

### Using Yarn #Yarn #Install
Alternative installation using Yarn.
`yarn global add pm2` [5]

### Using Bun #Bun #Install
Installation using Bun.
`bun install pm2 -g` [3]

### Verifying Installation #Check #Version
Command to check the installed PM2 version.
`pm2 --version` [5]

### Updating PM2 #Upgrade #Maintenance
Command to update PM2 to the latest version seamlessly.
`pm2 update` [3, 22]

## Core Concepts #Fundamentals #Architecture
Underlying principles and core ideas of PM2.

### Daemon Process #Background #Service
PM2 runs as a daemon process, managing applications in the background. [2, 6]

### Process List #Management #State
PM2 maintains a list of managed application processes. [3, 6, 29]

### Fork vs Cluster Mode #Modes #Comparison
Understanding the two primary modes of operation for running applications. [20, 27, 31]
Fork mode: Default, runs each app as a single process. Suitable for non-networked apps or scripts. [20]
Cluster mode: Runs multiple instances, load balances traffic, utilizes multiple CPU cores. Ideal for networked Node.js applications needing high availability and performance. [1, 9, 11, 20]

### Ecosystem File #Configuration #Management
Using `ecosystem.config.js` for declarative configuration of applications, environments, and deployment settings. [1, 10, 18, 19, 27]

## Process Management #Lifecycle #Control
Commands and features for managing application processes. [3, 15]

### Starting Applications #Start #Launch
Launching applications with PM2.
`pm2 start <app_path_or_ecosystem_file> [options]` [1, 3, 13, 40]
Common options: `--name`, `--watch`, `--instances (-i)`, `--max-memory-restart`, `--log`, `--env`. [1, 13, 40]

### Listing Processes #List #Status
Viewing the status of all managed applications.
`pm2 list` (or `ls`, `status`) [1, 3, 6, 40]

### Stopping Processes #Stop #Terminate
Stopping a specific application or all applications.
`pm2 stop <app_name|id|all>` [1, 3, 4, 40]

### Restarting Processes #Restart #Reboot
Restarting applications (involves downtime).
`pm2 restart <app_name|id|all>` [1, 3, 4, 40]

### Reloading Processes (Zero-Downtime) #Reload #Graceful
Reloading applications for updates without downtime (primarily in cluster mode). Achieves 0-second downtime by restarting processes sequentially. [1, 3, 9, 20, 31]
`pm2 reload <app_name|id|all>` [1, 3]

### Deleting Processes #Delete #Remove
Removing applications from PM2's management list.
`pm2 delete <app_name|id|all>` [1, 3, 4, 36, 40]

### Process Details #Inspect #Info
Getting detailed information about a specific process.
`pm2 describe <id|app_name>` or `pm2 show <id|app_name>` [3, 40]

### Automatic Restarts #FaultTolerance #Recovery
PM2 automatically restarts applications if they crash or exit unexpectedly (default behavior). [5, 19, 23]
Can configure restart delays (`--restart-delay`). [1]
Can disable auto-restart (`--no-autorestart`). [1]
Can set max restarts (`--max-restarts`). [40]
Can set cron pattern for forced restarts (`--cron`). [1]

### Graceful Shutdown #Shutdown #Cleanup
Handling signals (like SIGINT) for graceful shutdown, allowing apps to finish requests and clean up resources before exiting. Essential for zero-downtime reloads. [5, 9, 20, 31]

## Log Management #Logging #Debugging
Features for handling application logs. [2, 8, 15]

### Viewing Logs #Tail #Stream
Displaying real-time logs for specific or all applications.
`pm2 logs [app_name|id] [--lines N]` [1, 3, 4, 40]
Options for JSON (`--json`) or formatted (`--format`) output. [3]

### Log File Location #Path #Files
Logs are typically stored in `$HOME/.pm2/logs`. [8]
Separate files for standard output (`out`) and standard error (`error`).

### Log Configuration #Options #Settings
Configurable via CLI options (`--log`, `--out-file`, `--error-file`) or ecosystem file (`log_file`, `out_file`, `error_file`). [1, 8, 13, 27]
Can merge logs from cluster instances (`--merge-logs` or `merge_logs: true`). [8, 27]
Can disable logging to disk by setting output files to `/dev/null` or `NULL`. [8]
Can add timestamps (`--time` or `time: true`). [1]

### Flushing Logs #Clear #Reset
Clearing log files.
`pm2 flush [app_name|id|all]` [3, 4]

### Log Rotation #Rotation #Maintenance
Managing log file sizes and preventing disk space exhaustion. [8, 24]
Using `pm2-logrotate` module for automatic rotation, compression, and retention policies. [8, 24]
Can configure max log size, rotation interval, compression, etc. [24]
Native logrotate setup: `pm2 logrotate -u <user>`. [8]

## Monitoring #Metrics #Performance
Tools for monitoring application status and resource usage. [2, 4, 6, 26]

### Terminal Monitoring #CLI #Dashboard
Real-time terminal-based dashboard for monitoring CPU, memory, logs, and process status. [1, 6, 26, 40]
`pm2 monit` [1, 3, 6, 40]

### Web Dashboard (PM2.io / PM2+) #Cloud #SaaS
Cloud-based monitoring dashboard (PM2.io, formerly Keymetrics/PM2+) for cross-server monitoring, diagnostics, alerting, and advanced features. [1, 3, 14, 26, 28, 30]
Requires linking PM2 instance: `pm2 link <secret> <public>` or `pm2 plus`. [1, 30]

### Resource Usage Monitoring #CPU #Memory
Tracking CPU and memory usage per process. [4, 6, 26]
Visible in `pm2 list` and `pm2 monit`.

### Memory Limit Auto-Restart #MemoryManagement #Threshold
Automatically restarting/reloading an application if it exceeds a specified memory threshold. [2, 13, 26, 27]
Set via `--max-memory-restart <limit>` or `max_memory_restart` in ecosystem file. [1, 10, 13, 27]

### Host Monitoring #Server #Vitals
Optional monitoring of overall server/host vitals (CPU, memory). [3, 22]
Enable with: `pm2 set pm2:sysmonit true` then `pm2 update`. [3, 22]

## Cluster Mode #Clustering #LoadBalancing
Leveraging multiple CPU cores for Node.js applications. [1, 2, 9, 11, 16, 20]

### Enabling Cluster Mode #Activation #Instances
Starting an application in cluster mode using the `-i` or `instances` option. [1, 9, 16, 32, 40]
`pm2 start app.js -i <number_of_instances>`
`<number_of_instances>` can be a specific number, `max` or `0` (all cores), or `-1` (all cores minus one). [3, 9, 16]

### How it Works #Mechanism #NodeCluster
Utilizes the native Node.js `cluster` module to spawn worker processes that share server ports (HTTP, TCP, UDP). [9, 16]

### Load Balancing #Distribution #Scaling
PM2 automatically load balances incoming connections across all running instances in the cluster. [1, 3, 7, 16, 23]

### Zero-Downtime Reloads #HighAvailability #Updates
Cluster mode enables graceful reloads (`pm2 reload`) without interrupting service. [3, 11, 20]

### Stateless Applications #BestPractice #StateManagement
Requirement for applications running in cluster mode to be stateless. Shared state should be managed externally (e.g., Redis, database). [9, 11, 16]

### Environment Variables #Identification #ClusterVars
`NODE_APP_INSTANCE` environment variable is set for each instance (e.g., '0', '1', ...), allowing specific logic per instance if needed. [16]

## Ecosystem File #Configuration #Management
Using `ecosystem.config.js` for advanced configuration. [1, 10, 18, 27]

### Purpose #Goal #Benefit
Centralizes configuration for multiple applications, environments, deployment settings, and environment variables. [10, 18, 27]

### Structure #Format #Syntax
JavaScript file exporting an object with `apps` and `deploy` properties. [10, 18]
`apps`: Array of application configuration objects. [10]
`deploy`: Object defining deployment environments and settings. [10]

### Generating an Ecosystem File #Scaffold #Template
Command to create a sample file:
`pm2 ecosystem` [1, 18]

### Common App Options #Settings #AppConfig
`name`, `script`, `args`, `instances`, `exec_mode` (fork/cluster), `watch`, `ignore_watch`, `max_memory_restart`, `env`, `env_<environment_name>`, `log_date_format`, `out_file`, `error_file`, `merge_logs`, `cwd`, `interpreter`, `interpreter_args`, `cron_restart`, `restart_delay`. [1, 10, 19, 27]

### Environment Variables #EnvVars #Environments
Defining environment-specific variables using `env`, `env_production`, `env_development`, etc. [10, 19, 27, 31]
Starting with specific environment: `pm2 start ecosystem.config.js --env production`. [27]

### Watch and Reload #Development #AutoReload
Automatically restarting the application when files change. [2, 27]
Enable with `--watch` flag or `watch: true` in ecosystem file. [1, 13, 27, 40]
Can specify paths to watch or ignore (`ignore_watch`).

## Deployment #Deploy #Provisioning
Built-in system for deploying applications to remote servers. [2, 18, 25, 39]

### Concept #Workflow #Automation
Automates SSH connection, Git pull/clone, dependency installation, and application reload/restart on one or multiple servers. [18, 25, 39]

### Configuration (`deploy` section) #DeployConfig #Settings
Defined within the `deploy` section of the ecosystem file. [10, 18]
Key properties per environment: `user`, `host` (can be an array), `ref` (git branch/tag), `repo`, `path` (deployment destination), `ssh_options`, `pre-setup`, `post-setup`, `pre-deploy`, `pre-deploy-local`, `post-deploy`. [18, 31, 39]

### Commands #Actions #Execution
`pm2 deploy <config_file> <environment> setup`: Initial server setup (creates directories). [18]
`pm2 deploy <config_file> <environment> update`: Deploy latest version. [18]
`pm2 deploy <config_file> <environment> revert [n]`: Rollback to a previous deployment. [18]
`pm2 deploy <config_file> <environment> exec "<command>"`: Run arbitrary command on remote hosts. [18, 39]

### Requirements #Prerequisites #SSH
Remote servers need PM2 installed and SSH access configured (often using SSH keys). [25, 39]
Remote server needs Git permissions for the repository. [25, 39]

### SSH Key Management #Authentication #Security
Ensuring the deployment machine and remote servers have correct SSH keys configured for Git access. [25, 39]
Using `ssh-copy-id` to install public keys. [18, 39]

### Force Option #Override #Git
Using `--force` to bypass checks for local Git changes before deployment. [39]

## Startup Script Generation #Boot #Persistence
Ensuring PM2 and managed applications restart automatically after server reboots. [2, 3, 12, 21, 29, 32, 33]

### Purpose #Reliability #Uptime
Maintain application availability across server restarts. [3, 12, 21, 29, 33]

### Generating the Script #Command #Setup
Detects the init system (systemd, upstart, launchd, rc.d, openrc, systemv) and generates the appropriate configuration. [3, 12, 21, 33]
`pm2 startup [platform] [-u user] [--hp home_path]` [3, 12, 21, 32]
Requires running the output command, often with root privileges. [12, 21, 32]

### Saving Process List #Save #Freeze
Saving the current list of running processes that should be resurrected on boot. [3, 12, 21, 29, 32, 33]
`pm2 save` [3, 12, 21, 29, 32]
Saved state is typically stored in `$HOME/.pm2/dump.pm2`.

### Disabling Startup Script #Remove #Disable
Removing the generated startup configuration. [3, 12, 21, 36]
`pm2 unstartup [platform]` [3, 12, 21, 36]

### Updating Startup Script #Refresh #Maintenance
Usually involves running `pm2 unstartup` followed by `pm2 startup` again. [12, 21]
Necessary if Node.js/PM2 path changes (e.g., after NVM updates). [33]

### Platform Specifics #InitSystems #Systemd #Launchd
Details about how PM2 integrates with different init systems (e.g., systemd service files, launchd plists). [21, 33]
Windows requires external libraries like `pm2-windows-service` or `pm2-windows-startup`. [33]

## Module System #Plugins #Extendability
Extending PM2 functionality with modules. [2]

### Concept #Architecture #Addons
PM2 allows installing modules to add features (e.g., log rotation, server monitoring).

### Key Modules #Examples #Popular
`pm2-logrotate`: Automatic log rotation. [8, 24]
`pm2-server-monit`: Server monitoring integration with PM2.io dashboard. [30]

### Installing Modules #Installation #Manage
`pm2 install <module-name>`

### Managing Modules #List #Remove
`pm2 module:list`
`pm2 module:delete <module-name>`

## Advanced Features #Extras #Specialized

### Programmatic API #API #Scripting
Using PM2 programmatically within Node.js applications. [2]
Allows starting, stopping, managing processes via code.

### Source Map Support #Debugging #SourceCode
Enables mapping errors back to original source code (e.g., TypeScript, minified JS). [2, 20]
Often configured via ecosystem file.

### Container Integration #Docker #Containers
Running PM2 effectively inside Docker containers. [2, 22]
Using `pm2-runtime` or `pm2-docker` as entry points instead of `node`. [22, 36] These commands keep PM2 running in the foreground, suitable for containers.

### Development Workflow (`pm2-dev`) #Dev #Watch
`pm2-dev` executable provides Nodemon-like functionality for development, restarting on file changes. [5, 36]
`pm2-dev start <app_path>`

## Use Cases & Integrations #Applications #Scenarios

### Node.js Applications #WebApp #API
Primary use case: managing web servers, APIs, microservices built with Node.js/Express/Koa/etc. [3, 13, 19]

### Microservices Management #Microservices #Orchestration
Using ecosystem files to manage multiple interdependent services. [3, 19, 31]

### Static Site Serving #Static #Frontend
While not its primary purpose, can be used to serve static files via simple Node.js servers.

### Running Non-Node.js Scripts #Python #Ruby #Binary
PM2 can manage processes written in other languages or even binaries. [3, 22]
Specify interpreter using `interpreter` option in ecosystem file or via CLI.

### Integration with Deployment Pipelines #CI_CD #Automation
Using PM2 deployment commands within CI/CD pipelines.

### Integration with Monitoring Systems #Prometheus #Grafana
Exporting metrics for external monitoring tools (may require custom modules or exporters).

## Troubleshooting #Debugging #Errors

### Common Issues #Problems #FAQ
Diagnosing common problems like startup failures, crashes, high resource usage.

### Checking PM2 Daemon Logs #DaemonLogs #Internal
Inspecting PM2's own logs for internal errors: `$HOME/.pm2/pm2.log`.

### Analyzing Application Logs #AppLogs #Errors
Using `pm2 logs` to find application-specific errors. [4]

### SSH/Deployment Errors #DeployIssues #Permissions
Troubleshooting Git clone permission errors during deployment, often related to SSH key setup. [25, 39]

### Memory Issues #MemoryLeaks #Limits
Investigating memory leaks or processes exceeding `max_memory_restart` limits.

## Alternatives #Comparison #Competitors
Other tools that provide similar process management functionalities. [14, 17, 22, 37]

### Forever #ForeverJS #Alternative
Simpler CLI tool for ensuring scripts run continuously. [14, 22]

### Nodemon #Nodemon #Development
Primarily a development tool for auto-restarting during code changes. Not recommended for production process management. [14, 22, 27]

### Supervisor / Supervisord #Supervisor #Python
A process control system, often used in Python ecosystems but can manage any process. [14, 22]

### Systemd #Systemd #Linux
Native Linux init system and service manager, can directly manage Node.js processes as services. [14]

### Docker #Docker #Containers
Containerization platform providing process isolation and management. Often used *with* PM2 (using `pm2-runtime`). [14]

### Kubernetes (K8s) #Kubernetes #Orchestration
Container orchestration platform for managing applications at scale, often used with Docker. [14]

### StrongLoop PM (Deprecated) #StrongLoop #Alternative
Previous process manager from StrongLoop. [14]

### Others #Naught #God #Passenger
Less common alternatives like Naught, God (Ruby), Phusion Passenger, node-windows, etc. [22]
