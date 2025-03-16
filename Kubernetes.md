# I. Kubernetes Fundamentals

## Understanding Containerization

### Docker Basics
*   Creating Docker images: `docker build -t my-image .`
*   Running Docker containers: `docker run -d -p 80:80 my-image`
*   Dockerfiles: `FROM`, `RUN`, `CMD`, `ENTRYPOINT`, `COPY` directives. Example:
    ```dockerfile
    FROM ubuntu:latest
    RUN apt-get update && apt-get install -y nginx
    COPY index.html /var/www/html/
    EXPOSE 80
    CMD ["nginx", "-g", "daemon off;"]
    ```
*   Docker Compose: Defining multi-container applications. Example:
    ```yaml
    version: "3.9"
    services:
      web:
        image: nginx:latest
        ports:
          - "80:80"
      db:
        image: postgres:13
    ```

### Containerization Benefits and Drawbacks
*   Portability, scalability, resource efficiency.
*   Security considerations and potential complexities.

## Kubernetes Architecture

### Understanding Kubernetes Components
*   `kube-apiserver`: API endpoint for managing the cluster.
*   `kube-scheduler`: Assigns pods to nodes.
*   `kube-controller-manager`: Manages controllers (replication, node, etc.).
*   `kubelet`: Agent running on each node, managing pods.
*   `kube-proxy`: Network proxy, handling service routing.
*   `etcd`: Distributed key-value store for cluster state.

### Node Architecture
*   Operating system, container runtime (Docker, containerd, CRI-O).
*   `kubelet` and `kube-proxy` services.

### Kubernetes Objects
*   Pods, Services, Deployments, Namespaces, Volumes, ConfigMaps, Secrets.

# II. Core Kubernetes Concepts

## Pods: The Basic Building Block

### Defining Pods
*   YAML syntax for defining Pods.
*   Example:
    ```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      name: my-pod
    spec:
      containers:
        - name: my-container
          image: nginx:latest
          ports:
            - containerPort: 80
    ```
*   Multi-container Pods: Use cases and configurations.

### Managing Pods
*   Creating Pods: `kubectl apply -f pod.yaml`
*   Listing Pods: `kubectl get pods`
*   Describing Pods: `kubectl describe pod my-pod`
*   Deleting Pods: `kubectl delete pod my-pod`

### Pod Lifecycle
*   Pending, Running, Succeeded, Failed, Unknown states.
*   Restart policies: `Always`, `OnFailure`, `Never`.

## Services: Exposing Applications

### Service Types
*   `ClusterIP`: Internal IP address, accessible only within the cluster.
*   `NodePort`: Exposes the service on each node's IP at a static port.
*   `LoadBalancer`: Provisions an external load balancer (e.g., AWS ELB, GCP Load Balancer).
*   `ExternalName`: Maps a service to an external DNS name.

### Defining Services
*   YAML syntax for defining Services.
*   Selectors: Matching Pods to Services.
*   Example:
    ```yaml
    apiVersion: v1
    kind: Service
    metadata:
      name: my-service
    spec:
      selector:
        app: my-app
      ports:
        - protocol: TCP
          port: 80
          targetPort: 80
      type: ClusterIP
    ```

### Managing Services
*   Creating Services: `kubectl apply -f service.yaml`
*   Inspecting Services: `kubectl get svc my-service`, `kubectl describe svc my-service`

## Deployments: Managing Applications

### Defining Deployments
*   YAML syntax for defining Deployments.
*   Replicas: Specifying the desired number of Pods.
*   Rolling updates: Minimizing downtime during updates.
*   Rollbacks: Reverting to previous versions.
*   Example:
    ```yaml
    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: my-deployment
    spec:
      replicas: 3
      selector:
        matchLabels:
          app: my-app
      template:
        metadata:
          labels:
            app: my-app
        spec:
          containers:
            - name: my-container
              image: nginx:latest
              ports:
                - containerPort: 80
    ```

### Managing Deployments
*   Creating Deployments: `kubectl apply -f deployment.yaml`
*   Scaling Deployments: `kubectl scale deployment my-deployment --replicas=5`
*   Updating Deployments: `kubectl set image deployment/my-deployment my-container=nginx:1.21`
*   Rolling back Deployments: `kubectl rollout undo deployment/my-deployment`

## Namespaces: Organizing Resources

### Creating Namespaces
*   `kubectl create namespace my-namespace`

### Using Namespaces
*   Specifying a namespace: `kubectl get pods -n my-namespace`
*   Setting the default namespace: `kubectl config set-context --current --namespace=my-namespace`

# III. Advanced Kubernetes Concepts

## Volumes and Persistent Volumes

### Volume Types
*   `emptyDir`, `hostPath`, `nfs`, `gcePersistentDisk`, `awsElasticBlockStore`, `azureDisk`.

### Persistent Volumes (PV) and Persistent Volume Claims (PVC)
*   Dynamic provisioning: Automatically creating volumes.
*   Storage classes: Defining different storage options.
*   Example:
    ```yaml
    apiVersion: v1
    kind: PersistentVolumeClaim
    metadata:
      name: my-pvc
    spec:
      accessModes:
        - ReadWriteOnce
      resources:
        requests:
          storage: 10Gi
    ```

## ConfigMaps and Secrets

### Managing Configuration Data with ConfigMaps
*   Creating ConfigMaps: `kubectl create configmap my-config --from-literal=key1=value1 --from-file=file.txt`
*   Mounting ConfigMaps as volumes or environment variables.

### Managing Sensitive Data with Secrets
*   Creating Secrets: `kubectl create secret generic my-secret --from-literal=username=admin --from-literal=password=password`
*   Encoding and decoding Secrets: Base64 encoding.

## Networking

### Ingress Controllers
*   Exposing applications to the outside world.
*   Using Ingress resources for routing traffic.
*   Example (using Nginx Ingress Controller):

    ```yaml
    apiVersion: networking.k8s.io/v1
    kind: Ingress
    metadata:
      name: my-ingress
    spec:
      rules:
      - host: myapp.example.com
        http:
          paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: my-service
                port:
                  number: 80
    ```
### Network Policies
*   Controlling traffic flow between Pods.
*   Defining ingress and egress rules.

## Monitoring and Logging

### Metrics Server
*   Collecting resource usage metrics.
*   `kubectl top` command.

### Prometheus and Grafana
*   Deploying Prometheus for collecting metrics.
*   Configuring Grafana dashboards for visualization.

### Logging with ELK Stack (Elasticsearch, Logstash, Kibana)
*   Shipping logs to Elasticsearch.
*   Analyzing logs with Kibana.

## Security

### Role-Based Access Control (RBAC)
*   Defining Roles and ClusterRoles.
*   Binding Roles to users or groups using RoleBindings and ClusterRoleBindings.

### Pod Security Policies (PSP) / Pod Security Admission (PSA)
*   Defining security constraints for Pods.
*   Restricting capabilities, volume access, and network access.

# IV. Kubernetes Tooling

## kubectl CLI

### Common Commands
*   `kubectl get`, `kubectl describe`, `kubectl apply`, `kubectl delete`, `kubectl exec`, `kubectl logs`.

### Contexts and Configurations
*   Managing multiple Kubernetes clusters.
*   `kubectl config use-context`, `kubectl config get-contexts`.

## Helm: Package Manager for Kubernetes

### Helm Charts
*   Creating Helm charts: `helm create my-chart`
*   Templating: Using Go templates to customize deployments.

### Managing Releases
*   Installing charts: `helm install my-release my-chart`
*   Upgrading charts: `helm upgrade my-release my-chart`
*   Rolling back charts: `helm rollback my-release 1`

## Operators

### Custom Resources
*   Extending the Kubernetes API.

### Operator SDK
*   Building operators to automate complex tasks.
