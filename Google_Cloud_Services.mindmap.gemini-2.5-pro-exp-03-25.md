# Google Cloud Services #CloudComputing #GCP #GoogleCloudPlatform
Google's suite of cloud computing services, offering infrastructure, platform, and software solutions.

## Core Infrastructure & Compute #IaaS #Compute #VMs
Services providing fundamental computing resources.

### Compute Engine #VMs #IaaS #Scalability
Scalable virtual machines (VMs) on demand.
    *   #### VM Instances #Linux #Windows #CustomImages
    *   #### Machine Types #CPU #Memory #Predefined #Custom #GPUs #TPUs
    *   #### Persistent Disks #BlockStorage #SSD #HDD #Snapshots
    *   #### Instance Groups #Scalability #HighAvailability #Managed #Unmanaged
    *   #### Sole-Tenant Nodes #Compliance #DedicatedHardware #Licensing
    *   #### Spot VMs #CostSaving #FaultTolerant #BatchJobs
    *   #### Confidential VMs #Security #Encryption #DataProtection
    *   #### Shielded VMs #Security #Integrity #RootkitProtection

### Google Kubernetes Engine (GKE) #Containers #Orchestration #Kubernetes
Managed Kubernetes service for deploying, managing, and scaling containerized applications.
    *   #### Clusters #Nodes #ControlPlane #ManagedKubernetes
    *   #### Autopilot Mode #ServerlessKubernetes #ManagedInfrastructure
    *   #### Standard Mode #NodePools #CustomConfiguration
    *   #### Workload Identity #IAM #Security #PodSecurity
    *   #### GKE Networking #Services #Ingress #NetworkPolicy

### Cloud Run #Serverless #Containers #WebApps
Fully managed serverless platform for containerized applications.
    *   #### Managed Service #PayPerUse #AutoScaling #HTTP
    *   #### Jobs #BatchProcessing #AsynchronousTasks
    *   #### Eventarc Integration #EventDriven #Triggers

### App Engine #PaaS #WebApps #MobileBackends
Platform as a Service (PaaS) for building and deploying scalable web and mobile applications.
    *   #### Standard Environment #Sandboxed #LanguageRuntimes #Scalability
    *   #### Flexible Environment #DockerContainers #CustomRuntimes #NetworkAccess
    *   #### Services & Versions #Deployment #TrafficSplitting #Rollbacks

### Cloud Functions #Serverless #FaaS #EventDriven
Event-driven, serverless compute platform (Functions as a Service).
    *   #### Triggers #HTTP #PubSub #CloudStorage #Firestore
    *   #### Runtimes #NodeJS #Python #Go #Java #DotNet #Ruby #PHP
    *   #### Gen 1 vs Gen 2 #Features #Concurrency #Networking

### VMware Engine #VMware #Migration #HybridCloud
Managed VMware environment running natively on Google Cloud infrastructure.

## Storage & Databases #DataPersistence #Storage #Databases
Services for storing, managing, and querying data.

### Cloud Storage #ObjectStorage #Blobs #Buckets
Scalable, durable object storage for unstructured data.
    *   #### Buckets #Containers #GlobalNamespace #Regional #DualRegion #MultiRegion
    *   #### Storage Classes #Standard #Nearline #Coldline #Archive #DataTiering
    *   #### Object Lifecycle Management #Automation #CostOptimization #DeletionRules
    *   #### Access Control #IAM #ACLs #SignedURLs #SignedPolicyDocuments
    *   #### Versioning #DataProtection #Recovery

### Persistent Disk #BlockStorage #VMs #ComputeEngine
Durable, high-performance block storage for Compute Engine VMs.
    *   #### Standard #HDD #Balanced #SSD #Extreme #Performance
    *   #### Snapshots #Backups #DisasterRecovery
    *   #### Regional Persistent Disks #HighAvailability

### Filestore #ManagedNFS #FileStorage #SharedStorage
Managed Network File System (NFS) file storage service.
    *   #### Basic Tier #HDD #SSD
    *   #### High Scale Tier #Performance #Scalability

### Cloud SQL #ManagedDatabases #Relational #RDBMS
Fully managed relational database service.
    *   #### Supported Engines #MySQL #PostgreSQL #SQLServer
    *   #### High Availability #Failover #Replicas
    *   #### Backups & Recovery #PointInTimeRecovery #AutomatedBackups
    *   #### Read Replicas #Scalability #Performance

### Cloud Spanner #GlobalSQL #Scalability #Consistency #Relational
Globally distributed, strongly consistent, relational database service.
    *   #### Horizontal Scalability #Nodes #ProcessingUnits
    *   #### Strong Consistency #GlobalTransactions #ACID
    *   #### High Availability #MultiRegion #AutomaticReplication

### Firestore (in Native/Datastore mode) #NoSQL #DocumentDatabase #Serverless
Scalable NoSQL document database for mobile, web, and server development.
    *   #### Native Mode #RealtimeUpdates #OfflineSupport #MobileSDKs
    *   #### Datastore Mode #Legacy #AppEngineIntegration #KeyVauleLike
    *   #### Data Model #Collections #Documents #Subcollections
    *   #### Indexing #Automatic #Composite

### Bigtable #NoSQL #WideColumn #HighThroughput #Analytics
Fully managed, scalable NoSQL wide-column database for large analytical and operational workloads.
    *   #### High Throughput #LowLatency #PetabyteScale
    *   #### Use Cases #TimeSeries #IoTData #AdTech #Analytics

### Memorystore #ManagedCache #InMemory #Redis #Memcached
Fully managed in-memory data store service (Redis and Memcached).
    *   #### Redis #Caching #SessionManagement #PubSub
    *   #### Memcached #SimpleCaching #Scalability

## Networking #VPC #Connectivity #LoadBalancing
Services for defining and managing virtual networks, connectivity, and traffic.

### Virtual Private Cloud (VPC) #SoftwareDefinedNetwork #Isolation #Security
Globally distributed, software-defined network providing private connectivity.
    *   #### Networks & Subnets #IPRanges #Regional #PrivateRFC1918
    *   #### Firewall Rules #Security #TrafficControl #Stateful #Stateless
    *   #### Routes #NetworkPaths #DefaultRoute #CustomRoutes
    *   #### VPC Network Peering #PrivateConnectivity #CrossProject
    *   #### Shared VPC #CentralizedManagement #OrganizationLevel
    *   #### Private Google Access #InternalAccess #GoogleAPIs
    *   #### VPC Flow Logs #Monitoring #Troubleshooting #SecurityAuditing

### Cloud Load Balancing #TrafficDistribution #HighAvailability #Scalability
Managed, scalable load balancing services.
    *   #### Global Load Balancers #HTTP(S) #SSLProxy #TCPProxy #External #Internal
    *   #### Regional Load Balancers #TCP #UDP #NetworkLB #Internal #External
    *   #### Health Checks #BackendMonitoring #Availability
    *   #### Cloud Armor Integration #WAF #DDoSProtection

### Cloud DNS #ManagedDNS #DomainNames #ScalableDNS
Scalable, reliable, managed Domain Name System (DNS) service.
    *   #### Public Zones #InternetFacing #DNSResolution
    *   #### Private Zones #InternalResolution #VPCNetwork
    *   #### DNSSEC #Security #Authentication

### Cloud Interconnect #HybridCloud #DedicatedConnection #OnPremises
Provides direct physical connections between on-premises network and Google's network.
    *   #### Dedicated Interconnect #HighBandwidth #PrivateConnection
    *   #### Partner Interconnect #ServiceProvider #FlexibleBandwidth

### Cloud VPN #HybridCloud #SecureConnection #IPsec
Securely connect on-premises network to VPC network over IPsec VPN tunnels.
    *   #### HA VPN #HighAvailability #Redundancy #99.99SLA
    *   #### Classic VPN #BasicVPN #RouteBased #PolicyBased

### Cloud NAT #NetworkAddressTranslation #InternetAccess #Security
Managed Network Address Translation service allowing instances without external IPs to access the internet.

### Cloud CDN #ContentDelivery #Caching #Performance
Content Delivery Network for accelerating web and video content delivery.

### Network Service Tiers #Performance #Cost #Routing
Defines how traffic is routed over Google's network vs the public internet.
    *   #### Premium Tier #GoogleNetwork #Performance #Global
    *   #### Standard Tier #PublicInternet #CostEffective #Regional

## Big Data & Analytics #DataProcessing #Insights #DataWarehousing
Services for processing, analyzing, and visualizing large datasets.

### BigQuery #DataWarehouse #Serverless #SQL #Analytics
Serverless, highly scalable, cost-effective cloud data warehouse.
    *   #### SQL Interface #StandardSQL #LegacySQL
    *   #### Storage #Columnar #ManagedStorage
    *   #### BigQuery ML (BQML) #InDatabaseML #SQLBasedML
    *   #### BigQuery Omni #MultiCloudAnalytics #Anthos
    *   #### BI Engine #InMemoryAnalysis #Acceleration #DataStudio

### Dataflow #StreamProcessing #BatchProcessing #ApacheBeam
Fully managed service for stream and batch data processing (based on Apache Beam).
    *   #### Pipelines #UnifiedProgrammingModel #Java #Python #SQL
    *   #### Autoscaling #ResourceManagement #CostEffective
    *   #### Templates #ReusablePipelines #EasyDeployment

### Dataproc #ManagedHadoop #Spark #BigDataClusters
Managed Apache Spark and Apache Hadoop service.
    *   #### Cluster Management #EasyProvisioning #Scalability
    *   #### Component Gateway #WebInterfaces #Hive #Presto #Jupyter
    *   #### Serverless Spark #ManagedSpark #NoInfrastructure

### Pub/Sub #Messaging #EventStreaming #Decoupling
Scalable, asynchronous messaging service for event ingestion and delivery.
    *   #### Topics & Subscriptions #PublishSubscribe #DecoupledArchitecture
    *   #### Push & Pull Delivery #Flexibility #Integration
    *   #### Schema Management #DataContracts #Validation

### Looker (Google Cloud core) #BusinessIntelligence #DataVisualization #Reporting
Enterprise platform for business intelligence, data applications, and embedded analytics integrated into Google Cloud.
    *   #### Data Modeling (LookML) #ReusableLogic #Governance
    *   #### Dashboards & Reports #Visualization #Exploration
    *   #### Embedded Analytics #Integration #CustomApplications

### Dataplex #DataFabric #DataManagement #Governance
Intelligent data fabric for unifying distributed data and automating data management/governance.

### Data Fusion #ETL #DataIntegration #CodeFree
Fully managed, cloud-native data integration service (ETL/ELT).

## AI & Machine Learning #ArtificialIntelligence #ML #Prediction
Services for building, deploying, and managing machine learning models.

### Vertex AI #MLPlatform #MLOps #UnifiedAI
Unified AI platform for building, deploying, and managing ML models faster.
    *   #### AutoML #NoCodeML #Vision #Tables #NLP #Video
    *   #### Custom Training #TensorFlow #PyTorch #ScikitLearn #XGBoost
    *   #### Feature Store #MLFeatures #Sharing #Serving
    *   #### Pipelines #MLOrchestration #KubeflowPipelines
    *   #### Model Registry #Versioning #Management
    *   #### Prediction #Online #Batch #Endpoints
    *   #### AI Explanations #Interpretability #ModelUnderstanding
    *   #### Generative AI Studio #LargeModels #PromptDesign #FoundationModels

### Pre-trained APIs #AIBuildingBlocks #Vision #Speech #Language
APIs providing access to pre-trained models.
    *   #### Vision AI #ImageAnalysis #ObjectDetection #OCR
    *   #### Video AI #VideoAnalysis #ContentModeration
    *   #### Natural Language AI #TextAnalysis #Sentiment #Syntax #Entities
    *   #### Translation AI #LanguageDetection #TextTranslation
    *   #### Speech-to-Text AI #AudioTranscription #VoiceControl
    *   #### Text-to-Speech AI #VoiceSynthesis #NaturalSounding

### Document AI #DocumentProcessing #OCR #DataExtraction
Service for understanding, classifying, and extracting data from documents.

### Agent Assist #ContactCenterAI #CustomerService #AI chatbots
AI-powered assistance for customer service agents.

### Dialogflow #ConversationalAI #Chatbots #VoiceBots
Platform for building conversational interfaces (chatbots, voice bots).

## Security & Identity #IAM #Compliance #DataProtection
Services for securing cloud resources and managing identities.

### Identity and Access Management (IAM) #Authorization #Permissions #Roles
Defines who (identity) can do what (role) on which resource.
    *   #### Principals #Users #Groups #ServiceAccounts #Domains
    *   #### Roles #Primitive #Predefined #Custom
    *   #### Policies #Bindings #ResourceHierarchy
    *   #### Conditions #AttributeBasedAccessControl #ContextAware

### Cloud Identity #IdentityManagement #SSO #Users
Managed identity service for users and devices.

### Identity Platform #CustomerIAM #Authentication #CIAM
Customer identity and access management platform (adds identity management to apps).

### Security Command Center #SecurityManagement #ThreatDetection #ComplianceMonitoring
Centralized security and risk management platform.
    *   #### Asset Inventory #ResourceDiscovery #Visibility
    *   #### Threat Detection #EventThreatDetection #SecurityHealthAnalytics
    *   #### Compliance Reporting #PostureManagement #CISBenchmarks

### Cloud Armor #WAF #DDoSProtection #NetworkSecurity
Web Application Firewall and DDoS mitigation service integrated with Cloud Load Balancing.

### Key Management Service (KMS) #EncryptionKeys #ManagedKeys #HSM
Managed service for creating, managing, and using cryptographic keys.
    *   #### Symmetric & Asymmetric Keys #Encryption #Signing
    *   #### Cloud HSM #HardwareSecurityModule #FIPS140-2 Level 3

### Secret Manager #SecretsManagement #APIKeys #Credentials
Securely store and manage API keys, passwords, certificates, and other sensitive data.

### Identity-Aware Proxy (IAP) #ZeroTrust #AccessControl #ApplicationSecurity
Controls access to cloud applications based on user identity and context, without VPNs.

### Confidential Computing #DataProtection #EncryptionInUse #ConfidentialVMs
Encrypts data while it is being processed in memory.

## Management & Developer Tools #Operations #DevOps #Monitoring
Tools for managing cloud resources, monitoring applications, and enabling developers.

### Cloud Operations (formerly Stackdriver) #Monitoring #Logging #Tracing #Debugging
Suite of tools for monitoring, logging, and diagnostics.
    *   #### Cloud Monitoring #Metrics #Dashboards #Alerting
    *   #### Cloud Logging #LogManagement #Analysis #Storage
    *   #### Cloud Trace #DistributedTracing #PerformanceAnalysis
    *   #### Cloud Debugger #RealTimeDebugging #Production
    *   #### Cloud Profiler #PerformanceProfiling #Optimization

### Cloud Deployment Manager #InfrastructureAsCode #IaC #Templates
Infrastructure deployment service that automates resource creation using templates.

### Terraform on Google Cloud #InfrastructureAsCode #IaC #MultiCloud
Support for using HashiCorp Terraform to manage Google Cloud resources.

### Cloud Build #CI/CD #BuildService #Automation
Fully managed continuous integration and delivery (CI/CD) platform.

### Artifact Registry #PackageManagement #DockerRegistry #Maven #Npm
Managed repository for build artifacts (Docker images, Maven, npm packages).

### Cloud Source Repositories #GitRepository #VersionControl #PrivateGit
Private Git repositories hosted on Google Cloud.

### Cloud Scheduler #CronJobService #ScheduledTasks #Automation
Managed cron job service for scheduling automated tasks.

### Cloud Tasks #AsyncTaskQueue #BackgroundProcessing #Decoupling
Managed service for queuing and executing asynchronous tasks.

### Cloud Shell #WebBasedCLI #DevelopmentEnvironment #Preconfigured
Interactive shell environment with pre-installed tools accessible from a browser.

## Hybrid & Multi-Cloud #Anthos #Connectivity #Management
Services enabling management across different cloud environments and on-premises.

### Anthos #HybridCloudPlatform #MultiCloudPlatform #Kubernetes
Platform for building and managing modern applications on managed Kubernetes, in the cloud or on-premises.
    *   #### Anthos Clusters (on Google Cloud, VMware, Bare Metal, AWS, Azure) #ConsistentKubernetes
    *   #### Anthos Service Mesh #Istio #TrafficManagement #Observability #Security
    *   #### Anthos Config Management #Policy #Configuration #GitOps
    *   #### Migrate for Anthos #ApplicationModernization #Containerization

### Cloud Interconnect / VPN #Connectivity #HybridNetworking (Covered in Networking)

## Internet of Things (IoT) #IoTPlatform #DeviceManagement #DataIngestion
Services for connecting, managing, and ingesting data from IoT devices.

### IoT Core (Note: Scheduled for retirement August 2023 - Verify current status/replacement) #DeviceManagement #Telemetry #Commands
(Verify status - often replaced by Pub/Sub, Dataflow, BigQuery patterns now) Managed service for device connection, management, and data ingestion.

### Edge TPU #AIatEdge #HardwareAccelerator #MLInference
Purpose-built hardware accelerator for running AI models at the edge.

## Migration Services #CloudMigration #DataTransfer #Assessment
Tools and services to facilitate migration to Google Cloud.

### Migrate for Compute Engine (formerly Velostrata) #VMMigration #LiftAndShift #StreamingMigration
Migrate VMs to Compute Engine quickly with minimal downtime.

### Migrate for Anthos #ApplicationModernization #ContainerMigration #Kubernetes
Modernize existing applications into containers running on GKE/Anthos.

### Database Migration Service (DMS) #DatabaseMigration #MinimalDowntime #Homogeneous #Heterogeneous
Serverless service for migrating databases (like MySQL, PostgreSQL) to Cloud SQL with minimal downtime.

### Storage Transfer Service #DataTransfer #CloudStorageMigration #OnlineTransfer
Transfer data from online sources (AWS S3, HTTP/HTTPS, other Cloud Storage buckets) to Cloud Storage.

### Transfer Appliance #DataTransfer #OfflineTransfer #LargeData
Physical appliance shipped to customer location for large-scale offline data transfer to Cloud Storage.

### BigQuery Data Transfer Service #DataLoading #SaaS #AutomatedImport
Automates data movement from SaaS applications and other clouds into BigQuery.

### Cloud Foundation Toolkit #IaC #BestPractices #Templates
Provides Terraform templates embodying Google Cloud best practices for setting up enterprise foundations.

## Billing & Cost Management #Pricing #Budgeting #CostOptimization
Tools and features for understanding and managing Google Cloud costs.

### Cloud Billing Account #Payment #Invoicing #Organization
Manages payments for Google Cloud usage.
    *   #### Billing Concepts #SKUs #Usage #Costs #Credits
    *   #### Budgets & Alerts #CostControl #Notifications
    *   #### Cost Analysis Reports #Visualization #Filtering #Grouping
    *   #### Billing Data Export #BigQuery #DetailedAnalysis #CostOptimization
    *   #### Committed Use Discounts (CUDs) #CostSaving #Compute #Databases
    *   #### Sustained Use Discounts (SUDs) #ComputeEngine #AutomaticDiscounts

### Cost Management Tools #Optimization #Recommendations #Reporting
Features within the console for analyzing and optimizing spend.

## Support & Resources #Documentation #Training #Help
Options for getting help and learning more about Google Cloud.

### Google Cloud Support Plans #TechnicalSupport #SLAs #TAM
Different levels of technical support (Basic, Standard, Enhanced, Premium).

### Documentation #Guides #Tutorials #APIReferences
Comprehensive online documentation for all services.

### Training & Certification #Learning #Skills #Credentials
Online courses, hands-on labs (Qwiklabs), and professional certifications.

### Google Cloud Community #Forums #UserGroups #Experts
Online forums and communities for asking questions and sharing knowledge.

### Cloud Architecture Center #BestPractices #ReferenceArchitectures #Solutions
Guidance and blueprints for designing solutions on Google Cloud.
