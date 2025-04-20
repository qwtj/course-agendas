# Google Cloud Platform Essentials #GCP #CloudComputing #Overview
Introduction to the fundamental concepts, services, and infrastructure of Google Cloud Platform.

## Introduction to Cloud Computing and GCP #CloudConcepts #GCPFundamentals #GettingStarted
Basic principles of cloud computing and how GCP fits into the landscape.
*   Understanding IaaS, PaaS, SaaS models.
*   Benefits of using GCP (Scalability, Reliability, Security, Cost-effectiveness).

### GCP Global Infrastructure #Infrastructure #GlobalNetwork #Regions #Zones
The physical foundation of Google Cloud.
*   Regions and Zones: Geographic locations for deploying resources.
*   Edge Network Locations: Points of presence for content delivery and reduced latency.
*   Network Backbone: Google's private global network.

### Interacting with GCP #ManagementTools #API #SDK #Console
Methods for managing and accessing GCP resources.
*   Google Cloud Console: Web-based graphical user interface.
*   Cloud Shell: Browser-based command-line access with pre-installed tools.
*   Cloud SDK (gcloud, gsutil, bq): Command-line tools for managing resources.
*   Client Libraries & APIs: Programmatic access for applications.

### GCP Resource Hierarchy #Organization #Projects #Folders #Resources
How resources are organized and managed within GCP.
*   Organization Node: Root node for a company.
*   Folders: Grouping projects (e.g., by department).
*   Projects: Core organizational unit containing resources.
*   Resources: The actual services being used (VMs, buckets, databases).

## Compute Services #Compute #VMs #Containers #Serverless
Services for running applications and workloads.

### Compute Engine (GCE) #IaaS #VirtualMachines #VMs
Scalable virtual machines in the cloud.
*   Instance Types: Predefined vs. Custom machine types.
*   Images: Public and custom OS images.
*   Persistent Disks: Block storage for VMs.
*   Instance Groups: Managed collections of VMs (Managed/Unmanaged).
*   Autoscaling: Automatically adjust the number of VMs.
*   Preemptible VMs: Short-lived, low-cost instances.

### Google Kubernetes Engine (GKE) #Containers #Kubernetes #Orchestration
Managed environment for deploying, managing, and scaling containerized applications using Kubernetes.
*   Clusters: The foundation of GKE (Control plane + Nodes).
*   Nodes & Node Pools: Worker machines running containerized applications.
*   Pods, Services, Deployments: Core Kubernetes concepts.
*   Autopilot vs. Standard modes.

### App Engine #PaaS #WebApps #MobileBackends
Fully managed platform for building and deploying scalable web and mobile applications.
*   Standard Environment: Sandbox environment with specific runtimes.
*   Flexible Environment: Docker container-based environment.
*   Scaling, Versioning, Traffic Splitting.

### Cloud Functions #Serverless #FaaS #EventDriven
Event-driven, serverless compute platform for running code in response to events.
*   Triggers: Events from GCP services (e.g., Cloud Storage upload, Pub/Sub message).
*   Supported Runtimes (Node.js, Python, Go, Java, etc.).
*   Use Cases: Microservices, APIs, background tasks.

### Cloud Run #Serverless #Containers #ManagedCompute
Fully managed compute platform to run stateless containers invocable via web requests or Pub/Sub events.
*   Serverless Containers: Deploy containers without managing infrastructure.
*   Pay-per-use model.
*   Integrates with other GCP services.

## Storage Services #Storage #ObjectStorage #BlockStorage #FileStorage
Services for storing data in various formats.

### Cloud Storage #ObjectStorage #Buckets #Blobs
Scalable and durable object storage for unstructured data.
*   Buckets: Containers for storing objects.
*   Objects: Individual pieces of data (files).
*   Storage Classes: Standard, Nearline, Coldline, Archive (based on access frequency/cost).
*   Object Versioning & Lifecycle Management.
*   Signed URLs & Permissions.

### Persistent Disk #BlockStorage #VMStorage #Disks
Durable and high-performance block storage for Compute Engine VMs.
*   Standard, Balanced, SSD options.
*   Snapshots for backups.
*   Regional vs. Zonal disks.

### Filestore #FileStorage #NFS #ManagedNAS
Managed file storage service (NFS) for applications requiring a shared filesystem.
*   Use cases: Content management systems, shared application data.

### Cloud Storage Transfer Service #DataMigration #Transfer #OnlineData
Service for transferring data into Cloud Storage buckets from various sources (online data sources, other clouds, on-premises).

## Database Services #Databases #RelationalDB #NoSQL #DataManagement
Managed database services for various data needs.

### Cloud SQL #RelationalDB #ManagedDB #MySQL #PostgreSQL #SQLServer
Fully managed relational database service for MySQL, PostgreSQL, and SQL Server.
*   Automatic Backups, Replication, Failover.
*   Scalability and High Availability options.

### Cloud Spanner #RelationalDB #GlobalDB #DistributedSQL
Globally distributed, horizontally scalable, and strongly consistent relational database service.
*   Combines benefits of relational and NoSQL databases.
*   High Availability (99.999% SLA).

### Firestore #NoSQL #DocumentDB #ServerlessDB
Scalable NoSQL document database for mobile, web, and server development.
*   Real-time synchronization and offline support.
*   Strong consistency model.

### Bigtable #NoSQL #WideColumn #BigDataDB #HBaseAPI
Fully managed, scalable NoSQL wide-column database service, suitable for large analytical and operational workloads.
*   High throughput and low latency.
*   Ideal for time-series data, IoT, analytics.

### Memorystore #InMemoryDB #Caching #Redis #Memcached
Fully managed in-memory data store service for Redis and Memcached.
*   Used for caching and session management to improve application performance.

## Networking Services #Networking #VPC #LoadBalancing #DNS #CDN
Services for defining and managing networks, connecting services, and delivering content.

### Virtual Private Cloud (VPC) #Network #Isolation #Subnets #Firewalls
Globally distributed, scalable, and flexible virtual network within GCP.
*   Subnets: IP address ranges within a VPC.
*   Firewall Rules: Control traffic flow to/from resources.
*   Routes: Define paths for network traffic.
*   Shared VPC & VPC Network Peering.

### Cloud Load Balancing #LoadBalancing #HighAvailability #Scalability
Distributes user traffic across multiple instances of applications.
*   Global vs. Regional Load Balancers.
*   HTTP(S), TCP, UDP Load Balancing options.
*   Health Checks.

### Cloud DNS #DNS #DomainNames #ManagedDNS
Scalable, reliable, and managed Domain Name System (DNS) service.
*   Public and Private DNS zones.
*   High availability and low latency.

### Cloud CDN (Content Delivery Network) #CDN #Caching #ContentDelivery
Uses Google's global edge network to cache content closer to users, reducing latency.
*   Integrates with Cloud Load Balancing.

### Cloud Interconnect & Cloud VPN #HybridCloud #Connectivity #VPN #DirectConnect
Services for connecting on-premises networks or other clouds to GCP VPCs.
*   Dedicated Interconnect: High-bandwidth private connection.
*   Partner Interconnect: Connect via a partner.
*   Cloud VPN: Secure IPsec VPN tunnels over the public internet.

## Big Data & Analytics Services #BigData #Analytics #DataWarehousing #DataProcessing
Services for processing, analyzing, and visualizing large datasets.

### BigQuery #DataWarehouse #SQL #Analytics #ServerlessData
Serverless, highly scalable, and cost-effective cloud data warehouse.
*   SQL Interface for querying massive datasets.
*   Built-in ML capabilities (BigQuery ML).
*   Streaming data ingestion.

### Dataflow #DataProcessing #StreamProcessing #BatchProcessing #ApacheBeam
Fully managed streaming and batch data processing service based on Apache Beam.
*   Serverless and autoscaling.
*   Unified programming model for batch and stream.

### Dataproc #ManagedHadoop #Spark #BigDataClusters
Managed Apache Spark and Apache Hadoop service.
*   Easily provision and manage clusters.
*   Integrates with other GCP services.

### Pub/Sub #Messaging #EventIngestion #Decoupling
Scalable, asynchronous messaging service for decoupling services and ingesting event streams.
*   Publisher/Subscriber model.
*   Global availability.

### Dataprep #DataPreparation #DataCleaning #Wrangling
Intelligent, serverless data preparation tool for visually exploring, cleaning, and preparing data for analysis.

### Looker (formerly Data Studio) #DataVisualization #Reporting #BI
Tool for creating interactive dashboards and reports to visualize data.
*   Connects to various data sources including BigQuery, Google Sheets, etc.

## AI & Machine Learning Services #AI #ML #ArtificialIntelligence #MachineLearning
Services for building, training, and deploying machine learning models.

### Vertex AI #MLPlatform #UnifiedAI #MLOps
Unified AI platform to build, deploy, and scale ML models faster.
*   Managed Datasets, Training, Endpoints.
*   Pipelines for MLOps.
*   Includes AutoML and custom training options.

### Pre-trained APIs #VisionAI #SpeechAI #LanguageAI #TranslationAI
APIs offering pre-built models for common AI tasks.
*   Vision AI: Image analysis (label detection, OCR, face detection).
*   Speech-to-Text / Text-to-Speech: Audio transcription and synthesis.
*   Natural Language AI: Text analysis (sentiment, entities, syntax).
*   Translation AI: Language detection and translation.

### AutoML #AutomatedML #NoCodeML
Suite of ML products enabling developers with limited ML expertise to train high-quality models specific to their business needs.
*   AutoML Vision, Video, Natural Language, Tables, Translation.

## Management & Developer Tools #Management #Monitoring #Logging #DevOps #IaC
Tools for managing resources, monitoring performance, diagnosing issues, and automating deployments.

### Cloud Console & Cloud Shell #ManagementTools #UI #CLI
Primary interfaces for interacting with GCP (as mentioned in Introduction).

### Cloud Monitoring (formerly Stackdriver) #Monitoring #Metrics #Alerting
Collects metrics, events, and metadata from GCP services, hosted uptime probes, and application instrumentation.
*   Dashboards, Alerting.

### Cloud Logging (formerly Stackdriver) #Logging #Logs #Auditing
Collects and stores logs from GCP services and applications.
*   Real-time log analysis and search.
*   Log-based metrics and alerts.

### Cloud Trace & Cloud Debugger #Debugging #Performance #Troubleshooting
Tools for understanding application performance and diagnosing issues in production.
*   Trace: Distributed tracing system.
*   Debugger: Inspect application state without stopping it.

### Cloud Build #CI_CD #BuildService #Automation
Fully managed continuous integration and continuous delivery (CI/CD) platform.
*   Builds code in various languages, produces container images or other artifacts.

### Artifact Registry #ArtifactManagement #DockerRegistry #PackageRepository
Managed repository for storing and managing container images and language packages (e.g., Maven, npm).

### Cloud Deployment Manager & Terraform #IaC #InfrastructureAsCode #Automation
Tools for defining and provisioning GCP infrastructure using code.
*   Deployment Manager: Google's native IaC service using YAML.
*   Terraform: Popular open-source IaC tool with GCP provider support.

## Identity & Security #Security #IAM #Authentication #Encryption #Compliance
Services and features for securing GCP resources and managing identities.

### Identity and Access Management (IAM) #IAM #Permissions #Roles #AccessControl
Defines who (identity) can do what (role/permissions) on which resource.
*   Users, Groups, Service Accounts.
*   Predefined and Custom Roles.
*   IAM Conditions & Policies.

### Cloud Identity & Identity Platform #Authentication #IdentityManagement #SSO
Services for managing user identities and authentication.
*   Cloud Identity: Managed identity provider.
*   Identity Platform: Add Google-grade identity and access management to applications.

### Security Command Center #SecurityManagement #ThreatDetection #ComplianceMonitoring
Centralized security management and risk assessment platform.
*   Asset discovery, vulnerability scanning, threat detection.

### Cloud Armor #WAF #DDoSProtection #NetworkSecurity
Web Application Firewall (WAF) and DDoS mitigation service.
*   Protects applications from web attacks and volumetric DDoS.

### Secret Manager #SecretsManagement #Credentials #APIKeys
Securely store and manage API keys, passwords, certificates, and other sensitive data.

### Cloud Key Management Service (KMS) #Encryption #KeyManagement #HSM
Managed service for creating, managing, and using cryptographic keys.
*   Software and Hardware (HSM) backed keys.

## Billing & Cost Management #Billing #CostOptimization #Pricing #Budgets
Tools and strategies for understanding and managing GCP costs.

### Billing Accounts #BillingManagement #Payments
Container for managing payment instruments and tracking costs across projects.

### Budgets & Alerts #CostControl #Notifications
Set spending limits and receive alerts when costs exceed defined thresholds.

### Cost Analysis & Reporting #CostTracking #CostExplorer
Tools within the console to visualize and analyze GCP spending patterns.
*   View costs by project, service, label, etc.

### Cost Optimization Strategies #PricingModels #Discounts #BestPractices
Methods for reducing GCP expenditure.
*   Rightsizing resources (VMs, disks).
*   Using appropriate storage classes.
*   Leveraging Committed Use Discounts (CUDs) for predictable workloads.
*   Using Preemptible VMs for fault-tolerant jobs.
*   Shutting down unused resources.
*   Understanding GCP Pricing Models (per-second billing, etc.).

### Pricing Calculator #CostEstimation #Planning
Tool for estimating the cost of GCP resources before deployment.

## GCP Solutions & Use Cases #Solutions #Architectures #Examples
Common patterns and applications built using GCP services.

### Web Application Hosting #WebHosting #ScalableApps
Deploying and scaling websites and web applications using services like App Engine, GKE, Compute Engine, Cloud SQL, Cloud Storage.

### Data Warehousing & Analytics #DataAnalytics #BusinessIntelligence
Building data pipelines and warehouses using BigQuery, Dataflow, Pub/Sub, Looker.

### Machine Learning Pipelines #MLOps #AIApplications
Developing, training, and deploying ML models using Vertex AI, BigQuery ML, and related services.

### DevOps & CI/CD #DevOps #Automation #CI_CD
Implementing automated build, test, and deployment pipelines using Cloud Build, Artifact Registry, GKE, Cloud Monitoring/Logging.

### Hybrid & Multi-Cloud Scenarios #HybridCloud #MultiCloud #Connectivity
Connecting on-premises infrastructure or other clouds to GCP using Cloud Interconnect, Cloud VPN, Anthos.
