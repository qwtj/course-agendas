# I. Introduction to Docker

## Understanding Containerization

### Defining Containerization
*   Isolation of application and dependencies.
*   Lightweight compared to Virtual Machines (VMs).
*   Consistent environment across different infrastructures.

### Docker's Role in Containerization
*   Docker as a platform for building, shipping, and running containers.
*   Docker architecture: Docker Client, Docker Host, Docker Registry.

## Docker Concepts

### Docker Images
*   Read-only templates used to create containers.
*   Image layers and their benefits (caching, reuse).
*   Dockerfile: A script containing instructions to build a Docker image.
    ```dockerfile
    FROM ubuntu:latest
    RUN apt-get update && apt-get install -y nginx
    EXPOSE 80
    CMD ["nginx", "-g", "daemon off;"]
    ```

### Docker Containers
*   Runnable instance of a Docker image.
*   Isolation from the host system and other containers.
*   Lifecycle: Create, start, stop, restart, destroy.

### Docker Registry
*   Storage and distribution center for Docker images.
*   Docker Hub: A public registry managed by Docker.
*   Private registries for organizations.

# II. Working with Docker Images

## Building Docker Images

### Writing Dockerfiles
*   Understanding Dockerfile instructions (e.g., `FROM`, `RUN`, `COPY`, `ADD`, `CMD`, `ENTRYPOINT`, `ENV`, `EXPOSE`, `VOLUME`, `WORKDIR`, `USER`).
*   Optimizing Dockerfiles for smaller image size and faster build times.
    *   Combining multiple `RUN` commands using `&&`.
    *   Using `.dockerignore` to exclude unnecessary files.

### Building Images from Dockerfiles
*   Using the `docker build` command.
    ```bash
    docker build -t my-app:latest .
    ```
*   Understanding build context.
*   Tagging images.

## Managing Docker Images

### Listing Images
*   Using the `docker images` command.

### Inspecting Images
*   Using the `docker inspect` command to view image metadata.

### Pushing and Pulling Images
*   Logging in to Docker Hub or a private registry using `docker login`.
*   Pushing images to a registry using `docker push`.
    ```bash
    docker push my-username/my-app:latest
    ```
*   Pulling images from a registry using `docker pull`.
    ```bash
    docker pull my-username/my-app:latest
    ```

### Removing Images
*   Using `docker rmi` to remove images.

# III. Working with Docker Containers

## Creating and Running Containers

### Running Containers
*   Using the `docker run` command.
    ```bash
    docker run -d -p 8080:80 my-app:latest
    ```
*   Understanding common options: `-d` (detached mode), `-p` (port mapping), `-v` (volume mounting), `-e` (environment variables), `--name` (container name).

### Listing Containers
*   Using the `docker ps` command (running containers).
*   Using the `docker ps -a` command (all containers).

### Starting and Stopping Containers
*   Using `docker start` and `docker stop`.
*   Using `docker restart`.

### Executing Commands Inside Containers
*   Using `docker exec`.
    ```bash
    docker exec -it my-container bash
    ```

### Inspecting Containers
*   Using `docker inspect` to view container metadata.

## Managing Container Lifecycle

### Removing Containers
*   Using `docker rm` to remove stopped containers.
*   Using `docker rm -f` to force removal of running containers (use with caution).

### Monitoring Container Resources
*   Using `docker stats` to monitor CPU, memory, and network usage.

### Viewing Container Logs
*   Using `docker logs` to view container output.

# IV. Docker Networking

## Understanding Docker Networks

### Default Networks
*   `bridge`: Default network used by Docker.
*   `host`: Bypasses Docker's network isolation (not recommended for production).
*   `none`: No network connectivity.

### Creating Custom Networks
*   Using `docker network create`.
    ```bash
    docker network create my-network
    ```
*   Specifying network drivers (e.g., `bridge`, `overlay`).

## Connecting Containers to Networks

### Connecting Containers to a Network During Creation
*   Using the `--network` option with `docker run`.

### Connecting Existing Containers to a Network
*   Using `docker network connect`.

## Container Communication

### Communication within a Network
*   Containers can communicate with each other using their container names as hostnames within the same network.

### Port Mapping
*   Exposing container ports to the host using `-p` with `docker run`.

# V. Docker Volumes

## Understanding Docker Volumes

### Data Persistence in Containers
*   Containers are ephemeral; data is lost when a container is removed.

### Volumes vs. Bind Mounts
*   **Volumes:** Managed by Docker, stored in a Docker-managed location on the host filesystem.  Preferred for persistent data.
*   **Bind Mounts:**  Map a directory on the host directly into the container.  Suitable for development where you need to quickly reflect code changes in the container.

## Creating and Managing Volumes

### Creating Volumes
*   Using `docker volume create`.
    ```bash
    docker volume create my-volume
    ```

### Listing Volumes
*   Using `docker volume ls`.

### Inspecting Volumes
*   Using `docker volume inspect`.

## Using Volumes with Containers

### Mounting Volumes
*   Using the `-v` option with `docker run`.
    ```bash
    docker run -d -v my-volume:/data my-app:latest
    ```

### Sharing Volumes Between Containers
*   Mounting the same volume in multiple containers.

### Backing Up and Restoring Volumes
*   Using `docker run` with volume mounting to create a backup container.

# VI. Docker Compose

## Introduction to Docker Compose

### Defining Multi-Container Applications
*   Docker Compose as a tool for defining and managing multi-container Docker applications.
*   Using a `docker-compose.yml` file to define services, networks, and volumes.

## Writing Docker Compose Files

### `docker-compose.yml` Syntax
*   Understanding the `version`, `services`, `networks`, and `volumes` sections.
*   Defining services: `image`, `build`, `ports`, `volumes`, `environment`, `depends_on`, `networks`.
    ```yaml
    version: "3.9"
    services:
      web:
        image: nginx:latest
        ports:
          - "80:80"
        volumes:
          - ./html:/usr/share/nginx/html
    ```

## Managing Applications with Docker Compose

### Starting and Stopping Applications
*   Using `docker-compose up` to start the application.
*   Using `docker-compose down` to stop and remove the application.

### Scaling Services
*   Using `docker-compose up --scale` to scale services.

### Viewing Logs
*   Using `docker-compose logs`.

### Building Images
*   Using `docker-compose build`.

# VII. Advanced Docker Topics

## Docker Security

### Image Security
*   Scanning images for vulnerabilities using tools like `docker scan` and Clair.
*   Using base images from trusted sources.
*   Minimizing the number of layers in an image.

### Container Security
*   Running containers as non-root users.
*   Using resource limits (CPU, memory) to prevent resource exhaustion.
*   Using seccomp profiles to restrict system calls.
*   Using AppArmor or SELinux for mandatory access control.

## Docker Swarm

### Introduction to Docker Swarm
*   Docker Swarm as a container orchestration tool.
*   Nodes, managers, and workers.

### Creating a Swarm
*   Initializing a swarm using `docker swarm init`.
*   Joining worker nodes using `docker swarm join`.

### Deploying Services to a Swarm
*   Using `docker service create` to deploy services to the swarm.
*   Defining services: replicas, networks, volumes, resource limits.
*   Updating services using `docker service update`.
*   Scaling services using `docker service scale`.

## Docker and Kubernetes (Overview)
*   Understanding Kubernetes as a more advanced container orchestration platform.
*   Brief comparison of Docker Swarm and Kubernetes.
*   Key Kubernetes concepts: Pods, Deployments, Services, Namespaces.
