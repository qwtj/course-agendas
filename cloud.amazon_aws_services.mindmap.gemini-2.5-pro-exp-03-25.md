# Amazon AWS Services #CloudComputing #AWS #Overview
Amazon Web Services offers a broad set of global cloud-based products including compute, storage, databases, analytics, networking, mobile, developer tools, management tools, IoT, security, and enterprise applications.

## Compute Services #Compute #VirtualMachines #Containers #Serverless
Services providing compute capacity in the cloud.

### EC2 (Elastic Compute Cloud) #VirtualServers #IaaS #Instances
Scalable virtual servers in the cloud.
#### Instance Types #GeneralPurpose #ComputeOptimized #MemoryOptimized #StorageOptimized #AcceleratedComputing
Various optimized instance configurations for different workloads.
#### AMIs (Amazon Machine Images) #OperatingSystem #Templates
Pre-configured templates for your instances.
#### Auto Scaling #Scalability #Elasticity #Automation
Automatically adjust compute capacity to maintain performance.
#### Elastic Load Balancing (ELB) #LoadBalancing #HighAvailability #TrafficDistribution
Distribute incoming application traffic across multiple targets, such as EC2 instances.

### Lambda #Serverless #Functions #FaaS #EventDriven
Run code without provisioning or managing servers; pay only for the compute time consumed.

### ECS (Elastic Container Service) #Containers #Orchestration #Docker
Highly scalable, high-performance container orchestration service that supports Docker containers.

### EKS (Elastic Kubernetes Service) #Kubernetes #Containers #ManagedService #Orchestration
Managed Kubernetes service to run Kubernetes on AWS without needing to install, operate, and maintain your own Kubernetes control plane.

### Fargate #Serverless #Containers #ComputeEngine
Serverless compute engine for containers that works with both ECS and EKS.

### Lightsail #VPS #Simple #Websites #Applications
Easy-to-use cloud platform that offers you everything needed to build an application or website, plus a cost-effective, monthly plan.

### Batch #BatchProcessing #HPC #Workloads
Run batch computing jobs on AWS.

### Elastic Beanstalk #PaaS #ApplicationDeployment #WebApps
Easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker.

### Outposts #HybridCloud #OnPremises #Hardware
Run AWS infrastructure and services on-premises for a truly consistent hybrid experience.

## Storage Services #Storage #Data #Persistence #Backup

### S3 (Simple Storage Service) #ObjectStorage #Scalability #Durability #DataLake
Scalable object storage for data backup, archival, and analytics.
#### Storage Classes #Standard #IntelligentTiering #Glacier #DeepArchive
Different tiers for cost optimization based on access frequency.
#### Versioning #DataProtection #Recovery
Keep multiple variants of an object in the same bucket.
#### Lifecycle Management #Automation #CostOptimization
Automate moving objects between storage classes or deleting them.

### EBS (Elastic Block Store) #BlockStorage #EC2 #Volumes #PersistentStorage
Persistent block storage volumes for use with EC2 instances.
#### Volume Types #SSD #HDD #ProvisionedIOPS
Different performance characteristics and pricing.
#### Snapshots #Backup #Recovery #PointInTime
Backups of EBS volumes stored in S3.

### EFS (Elastic File System) #FileSystem #NFS #SharedStorage #Linux
Scalable, elastic, cloud-native NFS file system for Linux-based workloads.

### FSx #FileSystem #ManagedService #Windows #Lustre
Managed file systems for Windows File Server (FSx for Windows) and high-performance computing (FSx for Lustre).

### Storage Gateway #HybridCloud #OnPremises #StorageIntegration
Hybrid cloud storage service that gives you on-premises access to virtually unlimited cloud storage.

### Snow Family (Snowcone, Snowball, Snowmobile) #DataTransfer #EdgeComputing #OfflineTransfer
Physical devices to migrate large amounts of data into and out of AWS.

### Backup #CentralizedBackup #Automation #Compliance
Centralized service to back up data across AWS services.

## Database Services #Databases #ManagedDatabases #SQL #NoSQL

### RDS (Relational Database Service) #RelationalDatabase #SQL #ManagedService
Managed relational database service for MySQL, PostgreSQL, MariaDB, Oracle, SQL Server, and Amazon Aurora.
#### Read Replicas #Scalability #Performance
Scale read operations for your database.
#### Multi-AZ Deployments #HighAvailability #Failover
Enhance database availability across multiple Availability Zones.

### Aurora #RelationalDatabase #MySQLCompatible #PostgreSQLCompatible #Performance #Scalability
MySQL and PostgreSQL-compatible relational database built for the cloud, offering high performance and availability.
#### Aurora Serverless #Serverless #AutoScaling #CostEffective
On-demand, auto-scaling configuration for Aurora.

### DynamoDB #NoSQL #KeyValue #DocumentDatabase #Serverless #Scalability
Fast and flexible NoSQL database service for applications that need consistent, single-digit millisecond latency at any scale.

### ElastiCache #InMemoryCache #Redis #Memcached #Performance
Managed in-memory caching service supporting Redis and Memcached.

### Neptune #GraphDatabase #ManagedService #Relationships
Managed graph database service for building and running applications that work with highly connected datasets.

### DocumentDB (with MongoDB compatibility) #DocumentDatabase #NoSQL #ManagedService #MongoDBCompatible
Managed document database service that is compatible with MongoDB.

### Keyspaces (for Apache Cassandra) #CassandraCompatible #NoSQL #Serverless #WideColumn
Scalable, highly available, and managed Apache Cassandra-compatible database service.

### Timestream #TimeSeriesDatabase #IoT #OperationalApplications
Fast, scalable, and serverless time series database service.

### QLDB (Quantum Ledger Database) #LedgerDatabase #Immutable #Verifiable
Fully managed ledger database that provides a transparent, immutable, and cryptographically verifiable transaction log.

## Networking & Content Delivery #Networking #Connectivity #CDN #DNS #Security

### VPC (Virtual Private Cloud) #IsolatedNetwork #Networking #Security #Customization
Provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define.
#### Subnets #NetworkSegmentation #Public #Private
Segments of a VPC's IP address range where you can place groups of isolated resources.
#### Route Tables #Routing #NetworkTraffic
Control network traffic routing within your VPC.
#### Security Groups #Firewall #Stateful #InstanceLevel
Act as a virtual firewall for your instance to control inbound and outbound traffic.
#### Network ACLs #Firewall #Stateless #SubnetLevel
Act as a firewall for controlling traffic in and out of one or more subnets.
#### VPC Peering #Connectivity #PrivateNetwork
Connect two VPCs privately.
#### VPN Gateway #VPN #HybridCloud #EncryptedConnection
Connect your on-premises network to your VPC via IPsec VPN.
#### Direct Connect #DedicatedConnection #HybridCloud #HighBandwidth
Establish a dedicated private network connection from your premises to AWS.

### Route 53 #DNS #DomainRegistration #HealthChecks #TrafficManagement
Scalable Domain Name System (DNS) web service, domain registration, and health-checking.

### CloudFront #CDN #ContentDelivery #Performance #Caching #Security
Global content delivery network (CDN) service that securely delivers data, videos, applications, and APIs with low latency and high transfer speeds.

### API Gateway #API #ManagedService #Serverless #REST #WebSocket
Create, publish, maintain, monitor, and secure APIs at any scale.

### ELB (Elastic Load Balancing) #LoadBalancing #HighAvailability #Scalability
(Also listed under Compute, but core networking component) Distributes incoming traffic across multiple targets.

### Transit Gateway #NetworkHub #Scalability #SimplifiedConnectivity
Connect VPCs and on-premises networks through a central hub.

### PrivateLink #PrivateConnectivity #Security #SaaSIntegration
Provides private connectivity between VPCs, AWS services, and your on-premises networks, without exposing your traffic to the public internet.

### Cloud Map #ServiceDiscovery #Microservices
Cloud resource discovery service. Define custom names for your application resources, and it maintains the updated location of these dynamically changing resources.

### App Mesh #ServiceMesh #Microservices #Observability #Istio
Service mesh that provides application-level networking, making it easy for your services to communicate with each other across multiple types of compute infrastructure.

## Migration & Transfer Services #Migration #DataTransfer #CloudAdoption

### Migration Hub #MigrationTracking #Planning #CentralizedView
Provides a single location to track the progress of application migrations across multiple AWS and partner solutions.

### Application Discovery Service #Discovery #Planning #MigrationAssessment
Helps enterprise customers plan migration projects by gathering information about their on-premises data centers.

### DMS (Database Migration Service) #DatabaseMigration #Homogeneous #Heterogeneous
Helps you migrate databases to AWS easily and securely. Supports homogeneous and heterogeneous migrations.

### SMS (Server Migration Service) #ServerMigration #VMware #HyperV #Azure
Agentless service for migrating thousands of on-premises workloads to AWS.

### DataSync #DataTransfer #OnlineTransfer #Automation #NFS #SMB #S3 #EFS #FSx
Online data transfer service that simplifies, automates, and accelerates moving data between on-premises storage systems and AWS storage services.

### Snow Family #DataTransfer #OfflineTransfer #EdgeComputing
(Also listed under Storage) Physical devices for large-scale data transfer.

### Transfer Family (SFTP, FTPS, FTP) #ManagedFileTransfer #SFTP #FTPS #FTP
Fully managed support for file transfers directly into and out of Amazon S3 or EFS using SFTP, FTPS, and FTP.

## Developer Tools #Development #CI/CD #SDK #IDE #CodeManagement

### CodeStar #UnifiedUI #DevelopmentProject #QuickStart
Quickly develop, build, and deploy applications on AWS with a unified user interface.

### CodeCommit #SourceControl #Git #ManagedService #PrivateRepositories
Managed source control service that hosts secure Git-based repositories.

### CodeBuild #BuildService #ContinuousIntegration #Compilation #Testing
Fully managed continuous integration service that compiles source code, runs tests, and produces software packages that are ready to deploy.

### CodeDeploy #DeploymentAutomation #EC2 #Lambda #ECS #OnPremises
Managed service that automates software deployments to a variety of compute services.

### CodePipeline #ContinuousDelivery #WorkflowAutomation #CI/CD
Fully managed continuous delivery service that helps you automate your release pipelines for fast and reliable application and infrastructure updates.

### CodeArtifact #ArtifactRepository #Dependencies #Maven #npm #PyPI
Managed artifact repository service for software development teams.

### Cloud9 #IDE #CloudBased #DevelopmentEnvironment
Cloud-based integrated development environment (IDE) that lets you write, run, and debug your code with just a browser.

### X-Ray #Debugging #DistributedTracing #PerformanceAnalysis #Monitoring
Helps developers analyze and debug production, distributed applications, such as those built using a microservices architecture.

### SDKs (Software Development Kits) #API #ProgrammingLanguages #Integration
Provide language-specific APIs for AWS services.

### CLI (Command Line Interface) #Management #Scripting #Automation
Unified tool to manage your AWS services from the command line.

## Management & Governance #Operations #Monitoring #Compliance #Automation #CostManagement

### CloudWatch #Monitoring #Logging #Alerting #Metrics #Dashboards
Monitoring and observability service for AWS resources and applications.
#### Metrics #PerformanceMonitoring
Collect and track key metrics.
#### Logs #LogAggregation #Analysis
Monitor, store, and access your log files.
#### Alarms #Notifications #AutomatedActions
Trigger notifications or actions based on metric thresholds.
#### Dashboards #Visualization #OperationalView
Create custom views of metrics and alarms.

### CloudFormation #IaC #InfrastructureAsCode #Templates #Automation #Provisioning
Model and provision AWS and third-party application resources in your cloud environment.

### CloudTrail #Auditing #Logging #APICalls #Compliance #SecurityAnalysis
Records AWS API calls for your account and delivers log files to you.

### Config #ConfigurationManagement #Compliance #Auditing #ResourceInventory
Assess, audit, and evaluate the configurations of your AWS resources.

### OpsWorks #ConfigurationManagement #Chef #Puppet #Automation
Configuration management service that provides managed instances of Chef and Puppet.

### Systems Manager #OperationalHub #Patching #Automation #ResourceGrouping #RunCommand
Unified user interface to view operational data from multiple AWS services and automate operational tasks across your AWS resources.
#### Parameter Store #SecretsManagement #ConfigurationData
Secure, hierarchical storage for configuration data and secrets management.
#### Session Manager #SecureAccess #ShellAccess #NoSSHKeys
Managed service to enable secure and auditable instance management without needing to open inbound ports or manage SSH keys.

### Service Catalog #Catalog #Standardization #Governance #SelfService
Create and manage catalogs of IT services that are approved for use on AWS.

### Control Tower #LandingZone #Governance #MultiAccount #BestPractices
Automates the setup of a baseline environment, or landing zone, that is a secure, well-architected multi-account AWS environment.

### License Manager #LicenseManagement #Compliance #Tracking
Makes it easier to manage licenses in AWS and on-premises servers from software vendors such as Microsoft, SAP, Oracle, and IBM.

### Trusted Advisor #Optimization #CostSaving #Security #BestPractices #Performance
Online resource to help you reduce cost, increase performance, and improve security by optimizing your AWS environment.

### Well-Architected Tool #Review #BestPractices #Architecture
Helps you review the state of your workloads and compares them to the latest AWS architectural best practices.

## Security, Identity, & Compliance #Security #IdentityManagement #AccessControl #Compliance #DataProtection

### IAM (Identity and Access Management) #Users #Groups #Roles #Permissions #Policies #MFA
Manage access to AWS services and resources securely. Create and manage AWS users and groups, and use permissions to allow and deny their access to AWS resources.
#### Policies #Permissions #JSON
Define permissions for users, groups, and roles.
#### Roles #DelegatedAccess #ServiceAccess
Assume roles to gain temporary credentials for specific tasks.
#### Identity Federation #SSO #SAML #OpenIDConnect
Allow users from external identity providers (IdPs) to access AWS resources.

### Cognito #UserManagement #Authentication #Authorization #Mobile #WebApps
Add user sign-up, sign-in, and access control to your web and mobile apps quickly and easily.

### Secrets Manager #SecretsManagement #Rotation #Credentials #APIKeys
Helps you protect secrets needed to access your applications, services, and IT resources. Enables you to easily rotate, manage, and retrieve database credentials, API keys, and other secrets.

### GuardDuty #ThreatDetection #Intelligent #Monitoring #MachineLearning
Threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts and workloads.

### Inspector #VulnerabilityAssessment #SecurityScanning #EC2 #Containers
Automated security assessment service that helps improve the security and compliance of applications deployed on AWS.

### Macie #DataSecurity #DataPrivacy #PII #S3 #MachineLearning
Fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS.

### Security Hub #CentralizedSecurity #Compliance #AlertAggregation
Provides a comprehensive view of your security alerts and security posture across your AWS accounts.

### Firewall Manager #FirewallRules #CentralManagement #WAF #SecurityGroups
Security management service which allows you to centrally configure and manage firewall rules across your accounts and applications in AWS Organization.

### WAF (Web Application Firewall) #WebSecurity #Filtering #SQLInjection #XSS
Helps protect your web applications or APIs against common web exploits that may affect availability, compromise security, or consume excessive resources.

### Shield #DDoSProtection #ManagedService #Standard #Advanced
Managed Distributed Denial of Service (DDoS) protection service that safeguards applications running on AWS. Standard (free) and Advanced (paid) tiers.

### KMS (Key Management Service) #Encryption #KeyManagement #ManagedService #HSM
Makes it easy for you to create and manage cryptographic keys and control their use across a wide range of AWS services and in your applications.

### CloudHSM #HSM #HardwareSecurityModule #Compliance #DedicatedHSM
Cloud-based hardware security module (HSM) that enables you to easily generate and use your own encryption keys on the AWS Cloud.

### Artifact #ComplianceReports #Audit #SelfService
Provides on-demand access to AWS’ security and compliance reports and select online agreements.

### Detective #SecurityInvestigation #LogAnalysis #BehaviorGraph
Analyzes log data from AWS resources to help identify the root cause of security issues or suspicious activities.

## Analytics #DataAnalytics #BigData #BusinessIntelligence #DataWarehousing #StreamingData

### Athena #InteractiveQuery #Serverless #S3 #SQL
Interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL. Serverless.

### EMR (Elastic MapReduce) #BigDataFrameworks #Hadoop #Spark #HBase #ManagedCluster
Managed cluster platform that simplifies running big data frameworks, such as Apache Hadoop and Apache Spark, on AWS to process and analyze vast amounts of data.

### CloudSearch #ManagedSearch #SearchService #ApplicationSearch
Managed service in the AWS Cloud that makes it simple and cost-effective to set up, manage, and scale a search solution for your website or application.

### Elasticsearch Service (OpenSearch Service) #Search #Analytics #LogAnalytics #OpenSearch #Elasticsearch
Managed service that makes it easy to deploy, operate, and scale Elasticsearch (or OpenSearch) for log analytics, full-text search, application monitoring, and more.

### Kinesis #StreamingData #RealTime #Analytics #Ingestion
Collect, process, and analyze real-time, streaming data.
#### Kinesis Data Streams #DataIngestion #RealTime
Capture, process, and store data streams.
#### Kinesis Data Firehose #DataLoading #S3 #Redshift #Elasticsearch
Load streaming data into data stores and analytics tools.
#### Kinesis Data Analytics #StreamProcessing #SQL #Flink
Analyze streaming data with SQL or Apache Flink.
#### Kinesis Video Streams #VideoIngestion #Storage #Processing
Capture, process, and store video streams.

### Redshift #DataWarehouse #PetabyteScale #SQL #Analytics #BusinessIntelligence
Fast, scalable data warehouse that makes it simple and cost-effective to analyze all your data across your data warehouse and data lake.

### QuickSight #BusinessIntelligence #Visualization #Dashboards #Reporting #Serverless
Fast, cloud-powered business intelligence (BI) service that makes it easy to deliver insights to everyone in your organization.

### Data Pipeline #WorkflowOrchestration #DataMovement #ETL
Web service that helps you reliably process and move data between different AWS compute and storage services, as well as on-premises data sources.

### Glue #ETL #DataCatalog #Serverless #DataPreparation
Fully managed extract, transform, and load (ETL) service that makes it easy for customers to prepare and load their data for analytics.
#### Data Catalog #MetadataRepository #SchemaDiscovery
Persistent metadata store for all your data assets.
#### ETL Jobs #DataTransformation #Spark
Serverless job execution for data transformation.

### Lake Formation #DataLake #Security #Governance #CentralizedAccess
Service that makes it easy to set up a secure data lake in days.

### MSK (Managed Streaming for Apache Kafka) #Kafka #ManagedService #StreamingData
Fully managed service that makes it easy to build and run applications that use Apache Kafka to process streaming data.

## Machine Learning #ML #AI #DeepLearning #Prediction #Analysis

### SageMaker #MachineLearningPlatform #Build #Train #Deploy #ManagedService
Fully managed service that provides every developer and data scientist with the ability to build, train, and deploy machine learning (ML) models quickly.
#### SageMaker Studio #WebBasedIDE #MLDevelopment
Web-based IDE for machine learning.
#### Ground Truth #DataLabeling #Annotation
Build highly accurate training datasets for machine learning quickly.
#### Notebook Instances #Jupyter #ManagedEnvironment
Managed Jupyter notebook instances for ML development.
#### Training Jobs #ModelTraining #Scalability
Managed service for training ML models at scale.
#### Inference Endpoints #ModelDeployment #Hosting #PredictionAPI
Deploy ML models to get predictions.

### Comprehend #NLP #TextAnalysis #InsightExtraction #SentimentAnalysis
Natural language processing (NLP) service that uses machine learning to find insights and relationships in text.

### Lex #ConversationalAI #Chatbots #Voice #Text #ASR #NLU
Service for building conversational interfaces into any application using voice and text. Powers Amazon Alexa.

### Polly #TextToSpeech #TTS #LifelikeVoices
Turns text into lifelike speech, allowing you to create applications that talk.

### Rekognition #ImageAnalysis #VideoAnalysis #ComputerVision #ObjectDetection #FacialRecognition
Makes it easy to add image and video analysis to your applications using proven, highly scalable, deep learning technology.

### Translate #MachineTranslation #LanguageTranslation
Neural machine translation service that delivers fast, high-quality, and affordable language translation.

### Transcribe #SpeechToText #ASR #AutomaticSpeechRecognition
Automatic speech recognition (ASR) service that makes it easy for developers to add speech-to-text capability to their applications.

### Personalize #RecommendationEngine #Personalization #ML
Machine learning service that makes it easy for developers to create individualized recommendations for customers using their applications.

### Forecast #TimeSeriesForecasting #DemandPrediction #ML
Fully managed service that uses machine learning to deliver highly accurate forecasts.

### Kendra #IntelligentSearch #EnterpriseSearch #NLP #DocumentSearch
Highly accurate and easy to use enterprise search service powered by machine learning.

### Fraud Detector #FraudDetection #OnlineFraud #ML
Fully managed service that makes it easy to identify potentially fraudulent online activities.

### CodeGuru #CodeReview #ApplicationPerformance #Recommendations #ML
ML service for automated code reviews and application performance recommendations.

## Containers #Containers #Docker #Kubernetes #Orchestration

### ECS (Elastic Container Service) #ContainerOrchestration #Docker #ManagedService
(Also listed under Compute) Highly scalable, fast container management service.

### EKS (Elastic Kubernetes Service) #Kubernetes #ManagedService #ContainerOrchestration
(Also listed under Compute) Managed Kubernetes service.

### Fargate #Serverless #Containers #ComputeEngine #ECS #EKS
(Also listed under Compute) Serverless compute for containers.

### ECR (Elastic Container Registry) #ContainerRegistry #DockerImages #PrivateRepository
Managed Docker container registry service.

### App Runner #ContainerizedApplications #WebApps #APIs #SimplifiedDeployment
Fully managed service that makes it easy for developers to quickly deploy containerized web applications and APIs, at scale.

## Serverless #Serverless #FaaS #Backend #EventDriven #NoServers

### Lambda #Functions #Compute #EventDriven #FaaS
(Also listed under Compute) Run code without servers.

### API Gateway #API #ManagedService #REST #WebSocket #ServerlessIntegration
(Also listed under Networking) Create, manage, and secure APIs. Connects to Lambda.

### DynamoDB #NoSQL #Database #Serverless #Scalable
(Also listed under Databases) Fully managed NoSQL database.

### S3 #ObjectStorage #StaticHosting #ServerlessData
(Also listed under Storage) Object storage, often used for serverless application assets and data.

### Step Functions #WorkflowOrchestration #Serverless #VisualWorkflow #StateManagement
Serverless function orchestrator that makes it easy to sequence AWS Lambda functions and multiple AWS services into business-critical applications.

### EventBridge (CloudWatch Events) #EventBus #Serverless #EventDrivenArchitecture #Routing
Serverless event bus that makes it easy to connect applications together using data from your own applications, SaaS applications, and AWS services.

### SNS (Simple Notification Service) #PubSub #Messaging #Notifications #Fanout
Fully managed messaging service for both application-to-application (A2A) and application-to-person (A2P) communication.

### SQS (Simple Queue Service) #MessageQueue #Decoupling #Microservices #Asynchronous
Fully managed message queuing service that enables you to decouple and scale microservices, distributed systems, and serverless applications.

### AppSync #GraphQL #RealTimeData #OfflineData #ManagedBackend
Managed GraphQL service that simplifies application development by letting you create a flexible API to securely access, manipulate, and combine data from one or more data sources.

### SAM (Serverless Application Model) #Framework #IaC #ServerlessDeployment #SimplifiedSyntax
Open-source framework for building serverless applications. Provides shorthand syntax to express functions, APIs, databases, and event source mappings.

## Application Integration #Microservices #Decoupling #Messaging #API #Workflow

### Step Functions #WorkflowOrchestration #StateManagement #VisualWorkflow
(Also listed under Serverless) Coordinate components of distributed applications.

### SNS (Simple Notification Service) #PubSub #Notifications #Messaging
(Also listed under Serverless) Managed publish/subscribe messaging.

### SQS (Simple Queue Service) #MessageQueue #Decoupling #Queueing
(Also listed under Serverless) Managed message queues.

### MQ #MessageBroker #ActiveMQ #RabbitMQ #ManagedService
Managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud.

### AppFlow #SaaSIntegration #DataFlow #Automation #NoCode
Fully managed integration service that enables you to securely transfer data between SaaS applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS services like S3 and Redshift.

### EventBridge #EventBus #EventDriven #Routing
(Also listed under Serverless) Serverless event bus for connecting applications.

### API Gateway #API #ManagedService #Integration
(Also listed under Networking/Serverless) Create and manage APIs that act as a front door for applications.

### AppSync #GraphQL #API #DataIntegration
(Also listed under Serverless) Managed GraphQL service.

## End-User Computing #VDI #DesktopAsAService #ApplicationStreaming #RemoteWork

### WorkSpaces #VDI #DesktopAsAService #CloudDesktop #Windows #Linux
Managed, secure Desktop-as-a-Service (DaaS) solution.

### AppStream 2.0 #ApplicationStreaming #NonPersistent #CentralizedManagement
Fully managed application streaming service that allows you to stream desktop applications from AWS to any device.

### WorkDocs #DocumentCollaboration #EnterpriseStorage #Sharing #Sync
Secure, fully managed enterprise storage and sharing service with strong administrative controls and feedback capabilities.

### WorkLink #MobileAccess #InternalWebsites #SecureBrowsing
Managed service that provides secure, one-click access to your internal websites and web apps from mobile devices.

## Internet of Things (IoT) #IoT #DeviceManagement #Connectivity #Analytics #Edge

### IoT Core #DeviceGateway #Connectivity #Messaging #MQTT #DeviceShadow
Managed cloud service that lets connected devices easily and securely interact with cloud applications and other devices.

### IoT Device Management #Onboarding #Organization #Monitoring #RemoteManagement
Helps you register, organize, monitor, and remotely manage IoT devices at scale.

### IoT Device Defender #SecurityManagement #Auditing #Monitoring #Alerting
Fully managed service that helps you secure your fleet of IoT devices.

### IoT Greengrass #EdgeComputing #LocalCompute #Messaging #Sync #MLatEdge
Brings local compute, messaging, data caching, sync, and ML inference capabilities to edge devices.

### IoT Analytics #IoTData #Analytics #Processing #Storage #Visualization
Fully managed service that makes it easy to run and operationalize sophisticated analytics on massive volumes of IoT data.

### IoT SiteWise #IndustrialIoT #DataCollection #Monitoring #Analysis #EquipmentData
Managed service that makes it easy to collect, store, organize and monitor data from industrial equipment at scale.

### IoT Events #EventDetection #ComplexEvents #Automation #Alerts
Fully managed IoT service that makes it easy to detect and respond to events from IoT sensors and applications.

### IoT Things Graph #WorkflowAutomation #VisualInterface #DeviceInteraction
Service that makes it easy to visually connect different devices and web services to build IoT applications.

## Cloud Financial Management #CostManagement #Billing #Budgeting #Optimization

### Cost Explorer #CostAnalysis #Visualization #Reporting #Forecasting
Interface that lets you visualize, understand, and manage your AWS costs and usage over time.

### Budgets #CostControl #Alerting #UsageLimits
Set custom budgets that alert you when your costs or usage exceed (or are forecasted to exceed) your budgeted amount.

### Cost and Usage Report (CUR) #DetailedBilling #Data #Analysis
Provides comprehensive data about your AWS costs and usage.

### Reserved Instances (RIs) #CostSavings #Commitment #EC2 #RDS
Offer significant discounts compared to On-Demand pricing in exchange for a 1- or 3-year commitment.

### Savings Plans #CostSavings #Commitment #Compute #Flexible
Flexible pricing model offering lower prices compared to On-Demand, in exchange for a commitment to a consistent amount of usage (measured in $/hour) for a 1- or 3-year term. Applies to EC2, Fargate, Lambda.

### Cost Allocation Tags #Tracking #CostCenter #Project #Reporting
Assign metadata (tags) to your AWS resources to track costs on a detailed level.

### Billing Console #Invoices #Payments #AccountManagement
Portal for managing payments, viewing invoices, and monitoring costs.
