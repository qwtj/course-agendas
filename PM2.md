# I. Introduction to PM2

## Understanding PM2 and its Purpose

### Defining Process Management

### Key Features of PM2

*   Automatic Restarts
*   Load Balancing
*   Logging
*   Monitoring

### Use Cases for PM2

*   Node.js Applications
*   Other Application Types (Python, Ruby, etc.)

## Installing and Setting up PM2

### Prerequisites

*   Node.js and npm Installation
*   Checking Node.js Version (`node -v`)
*   Checking npm Version (`npm -v`)

### Installing PM2 Globally

*   Using npm: `npm install -g pm2`
*   Verifying Installation: `pm2 --version`

# II. Basic PM2 Usage

## Starting Applications with PM2

### Running a Simple Node.js Application

*   Example: `node app.js` (where `app.js` is your Node.js application file).

### Starting Applications with PM2

*   Command: `pm2 start app.js`

### Naming Applications

*   Using the `--name` option: `pm2 start app.js --name my-app`

### Starting Different Types of Applications

*   Python: `pm2 start app.py --interpreter python3`
*   Other Interpreted Languages (Ruby, etc.)

## Managing Processes

### Listing Running Processes

*   Command: `pm2 list` or `pm2 ls`

### Monitoring Process Resources

*   Command: `pm2 monit`

### Stopping Processes

*   Command: `pm2 stop <app_name|id>`
*   Example: `pm2 stop my-app` or `pm2 stop 0`

### Restarting Processes

*   Command: `pm2 restart <app_name|id>`

### Deleting Processes

*   Command: `pm2 delete <app_name|id>`

# III. PM2 Configuration Files

## Understanding Ecosystem Files

### Purpose of Ecosystem Files

*   Centralized application configuration
*   Version control of deployment settings

### Creating an Ecosystem File

*   Generating a basic file: `pm2 init` creates `ecosystem.config.js` or `ecosystem.config.json`

## Ecosystem File Structure (ecosystem.config.js)

### Common Configuration Options

*   `name`: Application name
*   `script`: Path to the application's main file
*   `args`: Command-line arguments passed to the script
*   `instances`: Number of instances to run (for load balancing)
*   `autorestart`: Automatic restart on crash (true/false)
*   `watch`: Watch for file changes and restart (true/false or array of paths)
*   `max_memory_restart`: Restart when memory usage exceeds a limit (e.g., "200M")
*   `env`: Environment variables

### Example Ecosystem Configuration

```javascript
module.exports = {
  apps : [{
    name   : "my-app",
    script : "./app.js",
    instances : "max",
    autorestart : true,
    watch : false,
    max_memory_restart : "1G",
    env : {
      NODE_ENV: "development"
    },
    env_production : {
      NODE_ENV: "production"
    }
  }]
};
```

## Using Ecosystem Files

### Starting Applications Using the Ecosystem File

*   Command: `pm2 start ecosystem.config.js`

### Reloading Applications

*   Command: `pm2 reload ecosystem.config.js` (graceful restart)

### Deploying Different Environments

*   Using `env_production` and setting `NODE_ENV`
*   Starting with a specific environment: `pm2 start ecosystem.config.js --env production`

# IV. Advanced PM2 Features

## Clustering and Load Balancing

### Understanding Clustering

*   Running multiple instances of an application
*   Utilizing all available CPU cores

### Starting Applications in Cluster Mode

*   Using `instances: 'max'` in ecosystem.config.js
*   Alternatively, `pm2 start app.js -i max`

### Benefits of Clustering

*   Improved performance
*   Increased reliability

## Monitoring and Logging

### Real-time Monitoring

*   Command: `pm2 monit`
*   CPU usage, memory usage, request rates

### Log Management

*   PM2's default log location
*   Using `pm2 logs` to view logs
*   Customizing log file locations in ecosystem file

## PM2 Startup System

### Generating Startup Script

*   Command: `pm2 startup`
*   Follow the instructions to configure PM2 to start on boot.

### Saving Process List

*   Command: `pm2 save` (saves the current process list for auto-restart)

### Deleting Startup Configuration
*   Command: `pm2 unstartup`

## Updates and Maintenance

### Updating PM2

*   Command: `npm install -g pm2`
*   Restarting PM2 after update: `pm2 update`

### Zero-Downtime Reloads

*   Using `pm2 reload` (graceful restart)

# V. Practical Exercises and Projects

## Project 1: Deploying a Simple API

### Create a Basic Node.js API (Express.js)
### Configure PM2 to run the API in production
### Implement basic logging

## Project 2: Load Balancing with PM2

### Modify API to use clustering (multiple instances)
### Monitor performance with `pm2 monit`

## Project 3: Automating Deployment with PM2 and Git

### Set up a git repository for your application
### Create a deployment script that restarts the PM2 process on a git pull

## Project 4: Monitoring and Troubleshooting

### Simulate a crash in your PM2 process
### Configure PM2 to automatically restart the application
### Analyze logs to identify the cause of the crash.
