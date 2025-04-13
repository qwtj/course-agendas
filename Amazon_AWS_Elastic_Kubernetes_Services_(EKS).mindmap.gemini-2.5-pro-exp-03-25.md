# Amazon AWS Elastic Kubernetes Services (EKS) #ManagedKubernetes #AWS #CloudNative
EKS is a managed Kubernetes service that simplifies deploying, managing, and scaling containerized applications using Kubernetes on AWS.

## Introduction to EKS #Overview #Basics #Concepts
Understanding the fundamentals of EKS and its place in the container ecosystem.

### What is Kubernetes? #Kubernetes #Orchestration #Containers
Brief overview of Kubernetes concepts (Pods, Services, Deployments, Namespaces, etc.).

### What is EKS? #Definition #ManagedService #AWS
Explanation of EKS as a managed control plane service.

### Key Benefits of EKS #Advantages #ValueProposition #WhyEKS
Managed control plane, security, scalability, reliability, AWS integrations, community support.

### EKS vs. Self-Managed Kubernetes on EC2 #Comparison #Tradeoffs #Management
Discussing the differences in operational overhead, control, and features.

### EKS vs. ECS (Elastic Container Service) #Comparison #AWSContainers #Orchestrators
Highlighting the differences between AWS's two main container orchestrators.

## EKS Architecture #CoreArchitecture #Design #Components
The fundamental building blocks and structure of an EKS cluster.

### Control Plane Architecture #ManagedControlPlane #HighAvailability #Resilience
Managed by AWS, includes Kubernetes API server, etcd database, scheduler, controller manager. Highly available across multiple Availability Zones.

### Data Plane Architecture #WorkerNodes #Compute #ApplicationHosting
Where application containers run. Consists of worker nodes (EC2 instances or Fargate).

### Shared Responsibility Model #Security #Operations #AWSCloud
Understanding what AWS manages versus what the customer manages in EKS.

## EKS Control Plane #KubernetesControlPlane #Managed #Core
Details about the managed Kubernetes control plane provided by EKS.

### Managed Components #APIServer #etcd #Scheduler #ControllerManager
Overview of the core Kubernetes components managed by AWS.

### High Availability and Scalability #HA #Scalability #Reliability
Built-in multi-AZ redundancy and automated scaling of control plane components.

### API Server Endpoint Access #Networking #Security #Endpoint
Public, Private, and Public/Private endpoint access control options.

### Kubernetes Version Management #Upgrades #Lifecycle #Versioning
EKS support for Kubernetes versions and managed upgrade process.

## EKS Data Plane (Compute Options) #WorkerNodes #Compute #Nodes
Options for running container workloads within an EKS cluster.

### Managed Node Groups #EC2 #NodeManagement #Automation
AWS-managed EC2 instances for worker nodes, simplifying patching, updates, and scaling.
#### Launch Templates and AMIs #Configuration #Customization #OS
Using custom launch templates and Amazon Machine Images (AMIs), including EKS-optimized AMIs and Bottlerocket.
#### Node Group Scaling #Autoscaling #ClusterAutoscaler #Capacity
Using Cluster Autoscaler or Karpenter for automatic node scaling.
#### Update Strategies #RollingUpdate #BlueGreen #Lifecycle

### Self-Managed Nodes #EC2 #Flexibility #Control
Using standard EC2 Auto Scaling Groups for worker nodes, offering more control but requiring more management.
#### Configuration and Bootstrapping #UserData #kubelet #Setup
Manually configuring and joining nodes to the cluster.
#### OS and Patching #Maintenance #Operations #Security
Customer responsibility for OS patching and updates.

### AWS Fargate with EKS #Serverless #Containers #PodLevelCompute
Running Kubernetes pods without managing EC2 instances.
#### Fargate Profiles #Selectors #Namespaces #Scheduling
Defining which pods should run on Fargate based on namespaces and labels.
#### Use Cases and Limitations #ServerlessKubernetes #Tradeoffs #Cost

### Karpenter #NodeProvisioning #Autoscaling #Efficiency
Open-source, flexible, high-performance Kubernetes cluster autoscaler built by AWS. Works with diverse instance types and purchase options.

### Windows Container Support #WindowsNodes #DotNet #Compatibility
Running Windows-based container workloads on EKS using dedicated Windows nodes.

## Networking in EKS #VPC #CNI #Connectivity
Network configuration and components within an EKS cluster.

### VPC Integration #AWSVPC #Subnets #SecurityGroups
How EKS clusters integrate with Amazon Virtual Private Cloud (VPC).

### Amazon VPC CNI Plugin #PodNetworking #IPAllocation #NetworkingPlugin
Default Container Network Interface (CNI) plugin for EKS, assigning VPC IPs directly to pods.
#### IP Address Management (IPAM) #ENI #IPPrefix #Capacity
Managing IP address allocation for pods.
#### Custom Networking #SecondaryCIDR #NetworkConfiguration #Flexibility
Using secondary VPC CIDR blocks for pod IPs.
#### Security Groups for Pods #NetworkSecurity #FineGrainedAccess #Firewall
Assigning specific security groups directly to pods for granular network control.

### Service Discovery #CoreDNS #kube-proxy #InternalDNS
How services within the cluster discover and communicate with each other.

### Load Balancing #Ingress #ServiceTypeLoadBalancer #TrafficManagement
Exposing applications to external traffic.
#### AWS Load Balancer Controller #ALB #NLB #IngressController
Manages AWS Application Load Balancers (ALB) and Network Load Balancers (NLB) for Kubernetes Ingress and Service resources.
#### Classic Load Balancer (CLB) Support #Legacy #Networking #ELB
Older load balancer option (generally recommend ALB/NLB).

### Network Policies #Security #Firewall #TrafficFiltering
Using network policy engines (e.g., Calico) to control traffic flow between pods.

### IPv6 Support #NetworkingStandard #IPAddressing #DualStack
Running EKS clusters in IPv6 or dual-stack VPC environments.

### Egress Control #NATGateway #VPCNetworking #OutboundTraffic
Managing outbound internet access for pods.

## Storage in EKS #PersistentStorage #Volumes #DataManagement
Providing persistent storage for stateful applications running on EKS.

### Container Storage Interface (CSI) #StorageStandard #Plugins #Extensibility
The standard interface for exposing storage systems to containerized workloads.

### Amazon EBS CSI Driver #BlockStorage #PersistentVolumes #StatefulSets
Dynamically provisioning Amazon Elastic Block Store (EBS) volumes for pods.
#### Volume Types (gp2, gp3, io1, io2, etc.) #Performance #Cost #EBS
#### Snapshots and Backups #DataProtection #Recovery #EBSFeatures

### Amazon EFS CSI Driver #FileSystem #SharedStorage #NFS
Dynamically provisioning Amazon Elastic File System (EFS) file systems for shared access across pods and AZs.
#### Access Modes (ReadWriteMany) #Concurrency #SharedData #EFS

### Amazon FSx for Lustre CSI Driver #HighPerformanceComputing #ScratchStorage #FileSystem
Providing high-performance, parallel file systems for demanding workloads.

### Amazon FSx for NetApp ONTAP CSI Driver #EnterpriseStorage #NFS #SMB #MultiProtocol
Leveraging NetApp ONTAP features within Kubernetes.

### Kubernetes Storage Concepts #PV #PVC #StorageClass
Understanding Persistent Volumes (PV), Persistent Volume Claims (PVC), and Storage Classes for managing storage lifecycle.

## Security in EKS #IAM #RBAC #NetworkSecurity #Compliance
Securing EKS clusters and the applications running on them.

### IAM Integration #Authentication #Authorization #AWSIdentity
Using AWS Identity and Access Management (IAM) for cluster authentication.
#### IAM Roles for Service Accounts (IRSA) #FineGrainedAccess #PodIdentity #AWSPermissions
Assigning specific IAM roles to Kubernetes service accounts for granular access to AWS resources.
#### Cluster Creator IAM Identity #Permissions #ClusterAdmin #Bootstrap
The IAM entity that creates the cluster initially gets admin access.
#### `aws-auth` ConfigMap #IAMMapping #RBAC #Legacy
Mapping IAM users/roles to Kubernetes RBAC groups/users (less preferred than IRSA for applications).

### Kubernetes RBAC #Authorization #Roles #ClusterRoles #Bindings
Using native Kubernetes Role-Based Access Control for fine-grained permissions within the cluster.

### Control Plane Security #ManagedSecurity #EndpointSecurity #Audit
AWS responsibility for securing the managed control plane; endpoint access controls.

### Data Plane Security #NodeSecurity #RuntimeSecurity #VulnerabilityScanning
Securing worker nodes (OS hardening, patching) and container runtimes.
#### Security Groups #NetworkFirewall #NodeLevelSecurity #EC2Security
Applying security groups at the node level.
#### Secrets Management #SensitiveData #AWSSecretsManager #ParameterStore #K8sSecrets
Securely managing sensitive information like passwords, tokens, and keys. Integration with AWS Secrets Manager and Parameter Store.

### Network Security #NetworkPolicies #SecurityGroupsForPods #Encryption
Securing network traffic within the cluster and at its boundaries.

### Image Security #ECRScanning #Vulnerabilities #ContainerImages
Scanning container images stored in Amazon Elastic Container Registry (ECR) for vulnerabilities.

### Compliance #Certifications #Auditing #Standards
EKS compliance with standards like PCI DSS, SOC, ISO, HIPAA.

### Runtime Security #ThreatDetection #Falco #ContainerSecurityTools
Tools and practices for detecting and responding to security threats at runtime.

## Observability (Monitoring & Logging) #Monitoring #Logging #Tracing #Metrics
Gaining insights into cluster and application performance and behavior.

### Amazon CloudWatch Integration #AWSMonitoring #Metrics #Logs #Alarms
Native integration for collecting logs and metrics.
#### CloudWatch Container Insights #Dashboards #PerformanceMonitoring #ResourceUtilization
Provides dashboards and detailed metrics for EKS clusters, nodes, pods, and containers.
#### CloudWatch Logs #CentralizedLogging #LogGroups #LogStreams
Collecting logs from control plane and application pods. Fluentd/Fluent Bit common agents.

### Prometheus and Grafana #OpenSource #Monitoring #Metrics #Dashboards
Popular open-source stack for metrics collection and visualization. AWS Managed Service for Prometheus (AMP) and Grafana (AMG) options available.

### AWS Distro for OpenTelemetry (ADOT) #OpenTelemetry #Tracing #Metrics #ObservabilityStandard
AWS-supported distribution of OpenTelemetry for collecting traces and metrics. Integration with AWS X-Ray.

### AWS X-Ray Integration #DistributedTracing #ApplicationPerformance #Debugging
Tracing requests as they flow through microservices running on EKS.

### Control Plane Logging #Audit #APIServerLogs #Troubleshooting
Enabling logs for Kubernetes API server, authenticator, scheduler, and controller manager for auditing and debugging. Sent to CloudWatch Logs.

### Cluster Auditing with AWS CloudTrail #APICalls #UserActivity #SecurityAuditing
Tracking API calls made to the EKS service and within the Kubernetes API server (via CloudWatch).

## Cluster Operations & Management #Lifecycle #CLI #Automation #GitOps
Day-to-day tasks involved in managing an EKS cluster.

### Creating EKS Clusters #Provisioning #Setup #eksctl #Console #CLI #IaC
Methods for creating new clusters.
#### `eksctl` #OfficialCLI #SimplifiedCreation #ManagementTool
Popular command-line tool for EKS cluster creation and management.
#### AWS Management Console #GUI #WebInterface #ClusterManagement
Using the AWS web console.
#### AWS CLI/SDKs #Scripting #Automation #ProgrammaticAccess
Using the AWS Command Line Interface or Software Development Kits.
#### Infrastructure as Code (IaC) #Terraform #CloudFormation #CDK #Pulumi
Defining and managing EKS infrastructure using code (e.g., Terraform EKS module, AWS CDK EKS construct).

### Updating EKS Clusters #KubernetesVersions #AddonVersions #PlatformUpdates
Managing Kubernetes version upgrades and platform version updates.

### Deleting EKS Clusters #Cleanup #Deprovisioning #ResourceRemoval
Properly tearing down clusters and associated resources.

### Accessing the Cluster #kubectl #kubeconfig #Authentication
Configuring `kubectl` to interact with the EKS cluster API server.

### GitOps Workflows #FluxCD #ArgoCD #DeclarativeManagement #CI/CD
Using Git as the single source of truth for cluster configuration and application deployment.

### Backup and Restore #etcdBackup #Velero #DisasterRecovery #StatefulApplications
Strategies for backing up cluster state (etcd) and application data (using tools like Velero).

## EKS Add-ons & Integrations #Extensibility #Features #Ecosystem
Extending EKS functionality with managed and self-managed add-ons and integrating with other AWS services.

### EKS Managed Add-ons #CoreComponents #LifecycleManagement #AWSManaged
AWS manages the installation and lifecycle of critical components.
#### CoreDNS #ServiceDiscovery #DNSResolution #ClusterDNS
#### kube-proxy #NetworkProxy #ServiceRouting #Networking
#### Amazon VPC CNI #PodNetworking #IPAllocation #NetworkingPlugin
#### EBS CSI Driver #Storage #BlockStorage #PersistentVolumes
#### AWS Load Balancer Controller (optional) #Ingress #LoadBalancing #Networking
#### Other Add-ons (GuardDuty Agent, etc.) #Security #Monitoring #Extensions

### Installing Self-Managed Add-ons #Helm #KubernetesOperators #Customization
Deploying additional components using tools like Helm or Operators.
#### Cluster Autoscaler #NodeScaling #CapacityManagement #Efficiency
#### Metrics Server #ResourceMetrics #HPA #kubectlTop
#### ExternalDNS #DNSManagement #Route53 #ServiceExposure
#### Cert-manager #TLS #CertificateManagement #LetsEncrypt
#### Ingress Controllers (Nginx, Traefik, etc.) #TrafficRouting #Alternatives
#### Service Meshes (Istio, Linkerd, App Mesh) #TrafficManagement #Observability #Security
#### Logging Agents (Fluentd, Fluent Bit) #LogCollection #Observability
#### Monitoring Agents (Prometheus Node Exporter, kube-state-metrics) #MetricsCollection #Observability

### AWS Service Integrations #AWSEcosystem #CloudNative #Synergy
Leveraging other AWS services with EKS.
#### IAM #Identity #Authentication #Authorization
#### VPC #Networking #Isolation #Security
#### CloudWatch #Monitoring #Logging #Alarms
#### CloudTrail #Auditing #APITracking #Security
#### ECR #ContainerRegistry #ImageStorage #Scanning
#### Route 53 #DNS #ServiceDiscovery #ExternalDNS
#### AWS Secrets Manager / Parameter Store #SecretsManagement #Configuration
#### AWS App Mesh #ServiceMesh #AWSNative #TrafficControl
#### Elastic Load Balancing (ALB/NLB) #TrafficIngress #LoadBalancing
#### S3 / EBS / EFS / FSx #Storage #DataPersistence #FileSystems

## Cost Management & Optimization #Pricing #Billing #Savings #Efficiency
Understanding and managing the costs associated with running EKS.

### EKS Pricing Model #ControlPlaneFee #NodeCosts #DataTransfer #FargatePricing
Breakdown of costs: per-cluster fee for the control plane, compute costs (EC2/Fargate), storage, load balancers, data transfer.

### Compute Cost Optimization #RightSizing #SpotInstances #SavingsPlans #ReservedInstances
Strategies for reducing EC2 and Fargate costs. Using Spot Instances with Managed Node Groups or Karpenter. Leveraging Savings Plans and Reserved Instances.

### Cost Allocation #Tagging #Reporting #CostExplorer
Using AWS cost allocation tags to track EKS costs by application, team, or environment. Analyzing costs with AWS Cost Explorer.

### Networking Costs #DataTransfer #NATGateway #LoadBalancers #PrivateLink
Understanding costs related to data transfer between AZs, internet egress, NAT Gateways, and Load Balancers.

### Storage Costs #EBS #EFS #FSx #Snapshots
Costs associated with persistent storage volumes and backups.

### Monitoring and Logging Costs #CloudWatch #ManagedPrometheus #ThirdPartyTools
Costs for CloudWatch metrics, logs, and potentially managed monitoring services or third-party tools.

### Optimization Strategies #Karpenter #ClusterAutoscaler #ResourceRequestsLimits #IdleResourceCleanup
Using autoscalers effectively, setting proper resource requests/limits, cleaning up unused resources.

## EKS Use Cases & Best Practices #Applications #Scenarios #Recommendations
Common applications for EKS and recommended practices for successful deployment and operation.

### Common Use Cases #Microservices #WebApplications #BatchProcessing #MachineLearning #CI/CD #StatelessApps #StatefulApps
Examples of workloads well-suited for EKS.

### Best Practices #Security #Networking #Operations #Cost #Scalability #Reliability
Recommendations across various domains.
#### Security Best Practices #IAM #RBAC #NetworkPolicy #Secrets #ImageScanning #LeastPrivilege
#### Networking Best Practices #VPCDesign #CNIConfiguration #LoadBalancing #DNS
#### Operational Best Practices #IaC #GitOps #Monitoring #Logging #Upgrades #Backup
#### Cost Optimization Best Practices #RightSizing #Spot #SavingsPlans #Tagging
#### Scalability and Performance Best Practices #Autoscaling #ResourceLimits #NodeSelection #LoadTesting
#### Reliability Best Practices #MultiAZ #HealthChecks #GracefulShutdown #DisasterRecovery

## Advanced EKS Concepts #BeyondBasics #SpecializedTopics #HybridCloud
Topics for users with deeper EKS experience or specific requirements.

### EKS Anywhere #HybridCloud #OnPremises #BareMetal #VMware
Running EKS curated Kubernetes clusters on your own infrastructure (on-premises, bare metal, vSphere).

### EKS Distro (EKS-D) #OpenSource #KubernetesDistribution #SelfManaged
The same open-source Kubernetes distribution used by AWS for EKS, available for self-hosting.

### Custom AMIs and Launch Templates #NodeCustomization #OSConfiguration #BootstrapScripts
Building custom machine images and using launch templates for fine-grained node configuration.

### GPU Support #MachineLearning #HighPerformanceComputing #AcceleratedComputing
Using EC2 instances with GPUs for ML training/inference and HPC workloads.

### Bottlerocket OS #LinuxDistribution #ContainerOptimized #Security #MinimalOS
A security-focused, minimal Linux-based OS designed by AWS for hosting containers.

### Kernel Tuning and OS Optimization #Performance #NodeConfiguration #sysctl
Modifying kernel parameters (`sysctl`) on worker nodes for specific performance needs.

### Multi-Cluster Management #Federation #CentralizedManagement #FleetManagement
Strategies and tools for managing multiple EKS clusters (e.g., Anthos, Rancher, custom solutions).

## EKS Alternatives & Comparisons #CloudNativeLandscape #OtherOrchestrators #Choices
Understanding where EKS fits within the broader container orchestration landscape.

### Other AWS Container Services #ECS #FargateStandalone #AppRunner
Comparing EKS with Elastic Container Service (ECS), Fargate without EKS, and AWS App Runner.

### Other Managed Kubernetes Services #GKE #AKS #CloudComparison
Comparing EKS with Google Kubernetes Engine (GKE) and Azure Kubernetes Service (AKS).

### On-Premises / Hybrid Kubernetes Platforms #OpenShift #Rancher #Tanzu #Comparison
Comparing EKS/EKS Anywhere with platforms like Red Hat OpenShift, SUSE Rancher, VMware Tanzu.

### Self-Managing Kubernetes #Kubeadm #k3s #RKE #DIYKubernetes
The pros and cons of building and managing your own Kubernetes clusters from scratch.
