# Kubernetes #Orchestration #Containers #CloudNative
An open-source system for automating deployment, scaling, and management of containerized applications.

## Core Concepts #Fundamentals #Basics #Theory
Fundamental ideas and principles underlying Kubernetes.

### What is Kubernetes? #Definition #Introduction
Explaining the purpose and benefits of Kubernetes (K8s).

### Containers & Containerization #Docker #OCI #Runtime
Understanding the basic unit of deployment (containers) and runtimes.
#### Docker #Runtime #Build
#### containerd #Runtime
#### CRI-O #Runtime #OCI

### Imperative vs. Declarative Management #Configuration #Philosophy
Understanding the two approaches to managing resources.

### Desired State Management #Automation #Reconciliation
Kubernetes constantly works to match the cluster's actual state to the desired state defined by the user.

### API-Centric Design #API #Extensibility
Kubernetes is built around a RESTful API.

## Architecture #Design #Components #Cluster
The high-level structure and components of a Kubernetes cluster.

### Control Plane Components #MasterNodes #Management
Components that manage the cluster state and make global decisions.
#### kube-apiserver #API #Frontend
Exposes the Kubernetes API. Acts as the frontend for the control plane.
#### etcd #Database #StateStore #Distributed
Consistent and highly-available key-value store used as Kubernetes' backing store for all cluster data.
#### kube-scheduler #Scheduling #Placement
Watches for newly created Pods with no assigned node and selects a node for them to run on.
#### kube-controller-manager #Controllers #Loops
Runs controller processes.
##### Node Controller #Nodes #Health
##### Replication Controller #Pods #Scaling
##### Endpoints Controller #Services #Pods
##### Service Account & Token Controllers #Security #Identity
#### cloud-controller-manager #CloudProvider #Integration
Embeds cloud-specific control logic. Allows linking cluster into cloud provider's API.

### Worker Node Components #WorkerNodes #Execution
Components running on worker nodes, maintaining running pods and providing the Kubernetes runtime environment.
#### kubelet #Agent #NodeAgent #PodLifecycle
An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.
#### kube-proxy #Networking #ServiceDiscovery #LoadBalancing
Maintains network rules on nodes. Enables network communication to Pods from network sessions inside or outside of the cluster.
#### Container Runtime #Execution #Docker #containerd #CRI-O
Software responsible for running containers (e.g., Docker, containerd).

### Addons #Features #DNS #UI #Monitoring
Cluster features implemented by pods and services.
#### DNS #ServiceDiscovery #CoreDNS
Cluster DNS is a DNS server, in addition to other DNS server(s) in your environment, which serves DNS records for Kubernetes services.
#### Web UI (Dashboard) #GUI #Management
A general-purpose, web-based UI for Kubernetes clusters.
#### Container Resource Monitoring #Metrics #Observability
Records generic container metrics in a central database and provides a UI for browsing that data.
#### Cluster-level Logging #Logging #Observability
Responsible for saving container logs to a central log store with search/browsing interface.

## Kubernetes Objects & Workloads #APIObjects #Resources #Workloads
The persistent entities in the Kubernetes system used to represent the state of the cluster and define applications.

### Pods #BasicUnit #Containers #Execution
The smallest and simplest Kubernetes object. Represents a single instance of a running process in your cluster. Often contains one container, but can contain multiple tightly coupled containers.
#### Pod Lifecycle #Phases #Conditions #RestartPolicy
Understanding how pods are created, run, and terminated.
#### Multi-container Pods #Sidecar #Ambassador #Adapter
Patterns for using multiple containers within a single Pod.

### Controllers & Workload Resources #Management #Automation #Scaling
Objects that manage Pods and provide higher-level abstractions for running applications.
#### Deployments #StatelessApps #RollingUpdates #Rollback
Manages stateless applications, handling updates and rollbacks.
#### ReplicaSets #Replication #Scaling
Ensures a specified number of Pod replicas are running at any given time. Usually managed by Deployments.
#### StatefulSets #StatefulApps #Databases #Ordered #Persistent
Manages stateful applications, providing stable network identifiers, persistent storage, and ordered deployment/scaling.
#### DaemonSets #NodeAgents #Monitoring #Logging
Ensures that all (or some) Nodes run a copy of a Pod. Useful for cluster services like log collectors or monitoring agents.
#### Jobs #Batch #OneOff #Tasks
Creates one or more Pods and ensures that a specified number of them successfully terminate. Used for batch processing.
#### CronJobs #Scheduled #TimeBased #Tasks
Manages time-based Jobs (like cron tasks).

### Service Discovery & Services #Networking #LoadBalancing #Abstraction
Abstract way to expose an application running on a set of Pods as a network service.
#### ClusterIP #Internal #ServiceDiscovery
Exposes the Service on a cluster-internal IP. Default type.
#### NodePort #External #NodeIP
Exposes the Service on each Node's IP at a static port.
#### LoadBalancer #External #CloudProvider
Exposes the Service externally using a cloud provider's load balancer.
#### ExternalName #DNS #Alias #CNAME
Maps the Service to the contents of the `externalName` field (e.g., `foo.bar.example.com`), by returning a CNAME record.
#### Headless Services #DirectPodAccess #StatefulSets
Used when you don't need load-balancing and a single Service IP. Allows direct connection to Pods.

### Ingress #Routing #ExternalAccess #HTTP #HTTPS #Layer7
Manages external access to services in a cluster, typically HTTP. Can provide load balancing, SSL termination, and name-based virtual hosting.
#### Ingress Controllers #Nginx #Traefik #Implementation
Actual implementation/proxy that fulfills the Ingress rules.
#### Ingress Resources #Configuration #Rules

## Networking #CNI #Connectivity #Policy
How networking is implemented within and around a Kubernetes cluster.

### Container Network Interface (CNI) #Plugins #Standard #Interface
A specification and libraries for writing plugins to configure network interfaces in Linux containers.
#### Popular CNI Plugins #Calico #Flannel #Weave #Cilium

### Cluster Networking Model #PodToPod #IPPerPod
Fundamental requirements: All containers can communicate with all other containers without NAT. All nodes can communicate with all containers (and vice-versa) without NAT. The IP that a container sees itself as is the same IP that others see it as.

### Service Networking #kube-proxy #iptables #IPVS
How kube-proxy implements Services (ClusterIP, NodePort, LoadBalancer).

### Network Policies #Security #Firewall #Isolation
Specification of how groups of pods are allowed to communicate with each other and other network endpoints.

### DNS in Kubernetes #ServiceDiscovery #CoreDNS #kube-dns
How Kubernetes manages DNS for services and pods.

## Storage #Persistence #Volumes #Data
Managing persistent data for applications running in Kubernetes.

### Volumes #Abstraction #Data #Lifecycle
An abstraction that allows data to persist beyond the lifecycle of a single Pod.
#### emptyDir #Temporary #Scratch
A temporary volume that shares the Pod's lifecycle.
#### hostPath #NodeFS #Debugging #Caution
Mounts a file or directory from the host node's filesystem into your Pod. Use with caution.
#### Persistent Volumes (PV) #ClusterResource #AdminProvisioned
A piece of storage in the cluster that has been provisioned by an administrator or dynamically provisioned using Storage Classes. It is a resource in the cluster just like a node.
#### Persistent Volume Claims (PVC) #UserRequest #Binding
A request for storage by a user. It is similar to a Pod consuming node resources; PVCs consume PV resources.
#### Storage Classes #DynamicProvisioning #StorageTypes #Tiers
Provide a way for administrators to describe the "classes" of storage they offer. Different classes might map to quality-of-service levels, or to backup policies, or to arbitrary policies determined by the cluster administrators.
#### Volume Snapshots #Backup #PointInTime
Creating snapshots of persistent volumes.
#### Container Storage Interface (CSI) #Standard #Plugins #Extensibility
A standard for exposing arbitrary block and file storage systems to containerized workloads on CO systems like Kubernetes.

## Configuration #ConfigMaps #Secrets #ApplicationConfig
Managing application configuration separate from container images.

### ConfigMaps #ConfigurationData #KeyValues #Files
Used to store non-confidential configuration data in key-value pairs or as configuration files. Pods can consume ConfigMaps as environment variables, command-line arguments, or as configuration files in a volume.

### Secrets #SensitiveData #Credentials #Tokens
Used to store sensitive information, such as passwords, OAuth tokens, and ssh keys. Stored data is base64 encoded (not encrypted by default, requires additional setup for encryption at rest). Pods can consume Secrets as environment variables or as files in a volume.

### Environment Variables #Injection #Configuration
Injecting configuration data directly as environment variables into containers.

### Downward API #Metadata #PodInfo #NodeInfo
Mechanism to pass metadata about the Pod or Cluster (like Pod IP, labels, node name) into containers.

## Observability #Monitoring #Logging #Tracing #Health
Gaining insights into the cluster and application behavior.

### Monitoring #Metrics #Performance #Alerting
Collecting and analyzing metrics from the cluster and applications.
#### Resource Metrics Pipeline #kubelet #metrics-server #cAdvisor
Collecting basic CPU/Memory usage for nodes and pods.
#### Full Metrics Pipeline #Prometheus #Grafana #CustomMetrics
Advanced monitoring solutions for collecting detailed metrics.
#### Horizontal Pod Autoscaler (HPA) #Autoscaling #Metrics
Automatically scales the number of Pods in a workload resource based on observed metrics (like CPU utilization).
#### Vertical Pod Autoscaler (VPA) #ResourceAllocation #Autoscaling
Automatically adjusts CPU and memory reservations for Pods to match actual usage.

### Logging #Events #Troubleshooting #Analysis
Collecting, aggregating, and analyzing logs from containers and cluster components.
#### Node-level Logging #dockerlogs #journald
Basic logging agent on each node.
#### Cluster-level Logging Architectures #Sidecar #NodeAgent #EFK #Loki
Patterns for collecting logs centrally (e.g., Elasticsearch/Fluentd/Kibana, Loki/Promtail/Grafana).

### Tracing #DistributedTracing #RequestFlow #Debugging
Tracking requests as they propagate through distributed systems.
#### OpenTelemetry #Jaeger #Zipkin #Standard

### Health Checks & Probes #Liveness #Readiness #Startup
Mechanisms for kubelet to check container health.
#### Liveness Probes #Restart #Health
Indicates whether the container is running. If fails, kubelet kills the container.
#### Readiness Probes #ServiceTraffic #Availability
Indicates whether the container is ready to serve requests. If fails, endpoint controller removes Pod's IP from Service endpoints.
#### Startup Probes #SlowStartingApps #Initialization
Indicates whether the application within the container is started. All other probes are disabled if a startup probe is provided, until it succeeds.

## Security #Authentication #Authorization #NetworkPolicy #Secrets
Securing the Kubernetes cluster and applications running on it.

### Authentication #Users #ServiceAccounts #Identity
Verifying the identity of users or processes accessing the API.
#### User Accounts vs Service Accounts #Human #Machine
Distinction between human users and in-cluster processes.
#### Authentication Strategies #Certificates #Tokens #OIDC #Webhooks

### Authorization #Permissions #RBAC #ABAC
Determining what authenticated users or processes are allowed to do.
#### Role-Based Access Control (RBAC) #Roles #RoleBindings #ClusterRoles
Standard mechanism for controlling access based on roles assigned to subjects (users, groups, service accounts).
#### Attribute-Based Access Control (ABAC) #Policies #Attributes #Legacy
Legacy authorization mechanism based on policies and attributes.
#### Webhook Authorization #External #CustomLogic
Delegating authorization decisions to an external service.

### Admission Control #Validation #Mutation #PolicyEnforcement
Intercepting requests to the API server after authentication and authorization for validation or mutation.
#### Admission Controllers #BuiltIn #Webhook
ValidatingWebhookConfiguration, MutatingWebhookConfiguration.
#### Policy Engines #OPA #Gatekeeper #Kyverno
Using policy engines for enforcing custom policies via admission control.

### Secrets Management #SensitiveData #EncryptionAtRest #Vault
Securely storing and managing sensitive data.
#### Encryption at Rest #etcd #Security
Encrypting sensitive data stored in etcd.
#### External Secret Stores #Vault #CloudKMS

### Network Policies #NetworkSegmentation #FirewallRules
Controlling traffic flow between Pods and network endpoints.

### Pod Security Policies / Pod Security Admission #SecurityContext #Privileges #Deprecated #PSA
Defining security contexts for Pods (e.g., running as non-root, restricting host access). PodSecurityPolicy is deprecated, replaced by Pod Security Admission Controller.
#### Security Contexts #Capabilities #UserIDs #SELinux

### Image Security #Scanning #Provenance #Registry
Securing container images.
#### Vulnerability Scanning #Clair #Trivy
#### Image Signing #Notary #cosign

## Scheduling #Placement #Affinity #Taints #Tolerations
How Pods are assigned to Nodes in the cluster.

### kube-scheduler Deep Dive #Algorithm #Predicates #Priorities
Understanding the default scheduler's process.

### Node Affinity / Anti-Affinity #Attraction #Repulsion #Labels
Attracting Pods to or repelling Pods from sets of nodes based on node labels.

### Pod Affinity / Anti-Affinity #Colocation #Separation #Topology
Attracting Pods to or repelling Pods from other Pods based on pod labels and topology domains.

### Taints and Tolerations #NodeRestrictions #AllowScheduling
Taints allow a node to repel a set of pods. Tolerations are applied to pods, allowing (but not requiring) them to schedule onto nodes with matching taints.

### Node Selectors #SimplePlacement #Labels
Simplest way to constrain Pods to nodes with specific labels.

### Priority and Preemption #Importance #ResourceScarcity
Assigning priorities to Pods; higher priority Pods can preempt lower priority Pods if resources are scarce.

### Custom Schedulers #Extensibility #SpecificNeeds
Developing and deploying alternative or additional schedulers.

## Cluster Administration & Operations #Management #Maintenance #Installation
Tasks related to setting up, managing, and maintaining Kubernetes clusters.

### Cluster Installation & Configuration #kubeadm #k3s #ManagedServices #BareMetal
Methods for creating Kubernetes clusters.
#### kubeadm #Toolkit #SelfHosted
A tool for bootstrapping best-practice Kubernetes clusters.
#### k3s / k0s / MicroK8s #Lightweight #Edge #IoT
Lightweight Kubernetes distributions.
#### Managed Kubernetes Services #EKS #GKE #AKS #Cloud
Cloud provider offerings (AWS EKS, Google GKE, Azure AKS).
#### Bare Metal Installation #OnPremises #Manual

### Cluster Upgrades #Versioning #Maintenance
Strategies for upgrading Kubernetes control plane and node components.

### Node Management #Adding #Removing #Maintenance #Cordon #Drain
Managing the lifecycle of worker nodes in the cluster.

### Backup and Restore #etcd #DisasterRecovery
Strategies for backing up the cluster state (etcd) and restoring it.

### Monitoring Cluster Health #Components #Nodes #APIServer
Checking the status and health of core cluster components.

### Cluster Federation / Multi-Cluster #Scalability #Availability #HybridCloud
Managing multiple Kubernetes clusters.
#### Kubefed v2 #ControlPlane #Federation
#### Other Multi-Cluster Tools #Submariner #Istio

### Cost Management #Optimization #ResourceUsage #CloudSpend
Tracking and optimizing resource consumption and costs associated with running Kubernetes, especially in the cloud.

## Extensibility #Customization #CRD #Operators
Ways to extend Kubernetes functionality.

### Custom Resource Definitions (CRDs) #CustomObjects #APIExtension
Defining new types of objects in the Kubernetes API.

### Operators #Automation #CustomControllers #ApplicationManagement
Custom controllers that use CRDs to manage applications and their components following Kubernetes principles.
#### Operator Framework / SDK #Development #Tools
#### Helm vs Operators #Packaging #Management

### API Aggregation #ExtensionAPIServers
Running additional API servers alongside the core Kubernetes API server.

### Webhooks #Admission #Authorization #Mutation #Validation
Using HTTP callbacks to extend Kubernetes behavior (Admission, Authorization).

## Ecosystem & Related Tools #CNCF #Integrations #Tooling
The broader landscape of tools and projects around Kubernetes.

### Helm #PackageManager #Templating #Charts
The package manager for Kubernetes, helping define, install, and upgrade applications using Charts.

### Service Meshes #Istio #Linkerd #ConsulConnect #TrafficManagement #Security #Observability
Dedicated infrastructure layer for handling service-to-service communication, providing features like traffic management, security, and observability.

### Serverless on Kubernetes #Knative #OpenFaaS #FaaS
Running serverless workloads and functions-as-a-service on Kubernetes.

### CI/CD Integration #JenkinsX #ArgoCD #Flux #GitOps #DevOps
Integrating Kubernetes into continuous integration and continuous delivery pipelines. GitOps practices.

### Cloud Native Computing Foundation (CNCF) #Governance #Projects #Landscape
The foundation hosting Kubernetes and many related projects. Understanding the CNCF landscape.

### Monitoring & Logging Tools #Prometheus #Grafana #Fluentd #Elasticsearch #Loki
Specific tools commonly used for observability in Kubernetes.

### Networking Tools #Calico #Cilium #Flannel #WeaveNet
Specific CNI plugins and networking tools.

### Storage Solutions #Ceph #Rook #Longhorn #Portworx #CloudStorage
Specific storage solutions integrated with Kubernetes via CSI.

## Use Cases & Best Practices #Patterns #Applications #Optimization

### Stateless Applications #WebApps #APIs
Common use case for Deployments.

### Stateful Applications #Databases #MessageQueues
Use cases for StatefulSets and persistent storage.

### Batch Processing & Cron Jobs #DataProcessing #ScheduledTasks
Using Jobs and CronJobs effectively.

### CI/CD Systems #Build #Test #Deploy
Running CI/CD infrastructure on Kubernetes.

### Machine Learning #MLOps #Kubeflow #Training #Inference
Leveraging Kubernetes for machine learning workloads.

### Resource Management Best Practices #Requests #Limits #Quotas
Setting resource requests and limits correctly. Using ResourceQuotas.

### Security Best Practices #RBAC #NetworkPolicy #Secrets #LeastPrivilege
Implementing security measures effectively.

### High Availability & Reliability Patterns #MultiReplica #AntiAffinity #MultiZone
Designing resilient applications and clusters.

### GitOps #Declarative #VersionControl #Automation
Managing infrastructure and applications declaratively using Git as the source of truth.
