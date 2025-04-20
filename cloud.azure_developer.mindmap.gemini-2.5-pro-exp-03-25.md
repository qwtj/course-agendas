# Azure Developer #CloudDevelopment #MicrosoftAzure
Core skills, services, and practices for developing applications on the Microsoft Azure platform.

## Azure Fundamentals for Developers #CoreConcepts #Basics #Platform
Understanding the foundational elements of Azure relevant to developers.

### Cloud Computing Concepts #CloudModels #ServiceModels #Benefits
IaaS, PaaS, SaaS, FaaS models. Public, Private, Hybrid clouds. Benefits like scalability, elasticity, high availability, cost-effectiveness.

### Core Azure Architectural Components #Regions #AvailabilityZones #Resources
Global infrastructure: Regions, Availability Zones, Region Pairs.
Azure resources: Resource Groups, Subscriptions, Management Groups, Azure Resource Manager (ARM).

### Azure Portal and Cloud Shell #Management #Tools #CLI
Navigating the Azure Portal for resource management.
Using Azure Cloud Shell (Bash/PowerShell) for command-line interaction.

## Development Environment and Tools #Setup #IDE #CLI
Tools and environments used for Azure development.

### Integrated Development Environments (IDEs) #VisualStudio #VSCode #Tooling
Visual Studio with Azure workload.
Visual Studio Code with Azure extensions.

### Azure Command-Line Interface (CLI) #CLI #Automation #Scripting
Installation and usage of Azure CLI for managing resources.
Common commands and scripting.

### Azure PowerShell #PowerShell #Automation #Scripting
Installation and usage of Azure PowerShell modules.
Cmdlets for Azure resource management.

### Azure SDKs #Libraries #Programming #API
Overview of SDKs for different languages (.NET, Python, Java, Node.js, Go).
Authentication methods within SDKs.

### Azure DevOps & GitHub #CI/CD #SourceControl #Collaboration
Introduction to Azure Repos, Pipelines, Boards, Test Plans, Artifacts.
Using GitHub Actions for Azure workflows.

## Azure Compute Services #Compute #Hosting #Execution
Services for running application code and workloads.

### Azure App Service #WebApps #PaaS #Hosting
Developing and deploying web applications, mobile backends, and RESTful APIs.
Deployment slots, scaling, custom domains, SSL.

### Azure Virtual Machines (VMs) #IaaS #Servers #Infrastructure
Provisioning and managing Windows and Linux VMs.
Use cases, sizing, networking, storage for VMs.

### Azure Functions #Serverless #FaaS #Events
Developing event-driven serverless applications.
Triggers, bindings, Durable Functions.

### Azure Kubernetes Service (AKS) #Containers #Orchestration #Microservices
Deploying, managing, and scaling containerized applications using Kubernetes.
Cluster architecture, networking, scaling, Helm charts.

### Azure Container Instances (ACI) #Containers #Serverless #SimpleDeployment
Running Docker containers without managing underlying infrastructure.
Use cases for simple applications, tasks, or development/testing.

### Azure Batch #HPC #ParallelProcessing #BatchJobs
Running large-scale parallel and high-performance computing (HPC) batch jobs.

## Azure Storage Services #DataStorage #Persistence #Blobs #Files
Services for storing various types of data in the cloud.

### Azure Blob Storage #ObjectStorage #UnstructuredData #Scalable
Storing large amounts of unstructured data (objects/blobs).
Access tiers (Hot, Cool, Archive), lifecycle management.

### Azure Files #FileShares #SMB #NFS
Managed file shares accessible via SMB and NFS protocols.
Use cases: lift-and-shift, shared configuration, development/testing.

### Azure Queue Storage #Queues #Messaging #Decoupling
Simple message queuing service for decoupling application components.

### Azure Table Storage #NoSQL #KeyValue #SemiStructuredData
NoSQL key-value store for semi-structured data. Scalable and cost-effective.

### Managed Disks #VMs #BlockStorage #Performance
Block-level storage volumes for Azure VMs.
Types: Standard HDD, Standard SSD, Premium SSD, Ultra Disk.

## Azure Database Services #Databases #DataManagement #Relational #NoSQL
Managed database services for various data models.

### Azure SQL Database #Relational #PaaS #SQLServer
Managed relational SQL database service.
Service tiers, elastic pools, high availability, security features.

### Azure Cosmos DB #NoSQL #MultiModel #GlobalDistribution
Globally distributed, multi-model database service (Document, Key-Value, Column-Family, Graph).
Consistency levels, partitioning, request units (RUs).

### Azure Database for PostgreSQL #Relational #PaaS #OpenSource
Managed PostgreSQL database service.

### Azure Database for MySQL #Relational #PaaS #OpenSource
Managed MySQL database service.

### Azure Cache for Redis #Caching #InMemory #Performance
Managed in-memory data store based on Redis.
Use cases: caching, session management, message brokering.

## Azure Networking for Developers #Networking #Connectivity #Security
Understanding Azure networking concepts relevant for application development.

### Virtual Networks (VNet) #Isolation #Subnets #IPAddressing
Creating isolated network environments in Azure.
Subnets, IP addressing, network security groups (NSGs).

### Load Balancing Options #Scalability #Availability #TrafficDistribution
Azure Load Balancer, Application Gateway, Traffic Manager, Front Door.
Choosing the right load balancer for different scenarios.

### Connecting to Azure Services #ServiceEndpoints #PrivateLink #Connectivity
Securing connections to PaaS services using VNet Service Endpoints or Azure Private Link.

### DNS in Azure #DNS #NameResolution
Azure DNS for hosting domains, Private DNS zones for VNet name resolution.

## Developing Secure Cloud Applications #Security #Identity #Compliance
Practices and services for building secure Azure applications.

### Identity and Access Management (IAM) #Authentication #Authorization #AzureAD
Using Azure Active Directory (Azure AD) for authentication.
Role-Based Access Control (RBAC) for authorization.
Managed Identities for Azure resources.

### Securing Application Configuration #SecretsManagement #KeyVault
Storing and managing secrets, keys, and certificates using Azure Key Vault.
Access policies and integration with services.

### Securing Network Traffic #NSG #Firewall #Encryption
Using Network Security Groups (NSGs), Azure Firewall.
Implementing SSL/TLS encryption for data in transit.

### Security Best Practices #ThreatModeling #SecureCoding #DevSecOps
Applying secure coding practices.
Integrating security into the development lifecycle (DevSecOps).
Using Microsoft Defender for Cloud recommendations.

## Developing for Scalability and Resilience #HighAvailability #FaultTolerance #Performance
Designing applications that can handle load and recover from failures.

### Scalability Patterns #Scaling #Performance #Elasticity
Vertical vs. Horizontal scaling.
Implementing auto-scaling for compute services (App Service, VMs, AKS).

### Resiliency Patterns #FaultTolerance #Recovery #DesignPatterns
Retry pattern, Circuit Breaker pattern, Throttling, Load Leveling.
Designing for failure.

### Designing for High Availability #AvailabilityZones #RegionPairs #Redundancy
Using Availability Zones and Sets for VM and service redundancy.
Designing multi-region applications for disaster recovery.

### Caching Strategies #Performance #DataCaching #OutputCaching
Implementing caching using Azure Cache for Redis or CDN to improve performance and reduce load.

## Messaging and Eventing Services #Decoupling #Asynchronous #Events
Services for enabling asynchronous communication between components.

### Azure Service Bus #Messaging #Queues #Topics #ReliableMessaging
Reliable enterprise messaging with queues (point-to-point) and topics (publish/subscribe).
Advanced features: sessions, transactions, dead-lettering.

### Azure Event Grid #EventRouting #Reactive #Serverless
Event routing service enabling reactive programming models.
Publishing and subscribing to events across Azure services and custom sources.

### Azure Event Hubs #BigData #Streaming #Telemetry
Ingesting large volumes of event data (telemetry, logs) for processing and analysis.
Partitioning for high throughput.

### Choosing Between Messaging Services #Comparison #UseCases
Understanding the differences and best use cases for Queue Storage, Service Bus, Event Grid, and Event Hubs.

## API Management #API #Gateway #Lifecycle
Managing APIs throughout their lifecycle.

### Azure API Management (APIM) #Gateway #Publishing #Security
Creating consistent and modern API gateways for backend services.
Policies for transformation, security, caching. Developer portal.

### Securing APIs #Authentication #Authorization #Throttling
Using OAuth 2.0, API keys, client certificates.
Implementing rate limiting and quotas.

### API Design and Versioning #REST #BestPractices #Versioning
Best practices for designing RESTful APIs.
Strategies for API versioning.

## Serverless Computing #Serverless #FaaS #LogicApps #EventDriven
Building applications without managing server infrastructure.

### Azure Functions Deep Dive #Triggers #Bindings #DurableFunctions #ProgrammingModel
Advanced concepts: custom bindings, dependency injection, deployment patterns.
Durable Functions for stateful workflows.

### Azure Logic Apps #Workflows #Integration #Connectors
Designing automated workflows that integrate apps, data, services, and systems.
Visual designer, extensive connector library.

### Serverless Architectures #Patterns #EventDriven #CostEffective
Common patterns using Functions, Logic Apps, Event Grid, and other services.

## Containerization and Orchestration #Containers #Docker #Kubernetes #Microservices
Packaging and deploying applications using containers.

### Docker Fundamentals #Images #Containers #Dockerfile
Understanding Docker concepts and commands.
Creating container images using Dockerfiles.

### Azure Container Registry (ACR) #Registry #Images #Storage
Storing and managing private Docker container images.
Geo-replication, security scanning.

### Running Containers on Azure #AKS #ACI #AppService
Options for hosting containers: AKS, ACI, Web App for Containers.
Choosing the right service based on requirements.

### Microservices on Azure #Architecture #DesignPatterns #AKS
Designing and deploying microservices architectures using AKS and other Azure services.

## Monitoring and Logging #Observability #Metrics #Logs #Alerts
Gathering insights into application performance and health.

### Azure Monitor #PlatformMonitoring #Metrics #Logs
Collecting and analyzing telemetry data from Azure resources and applications.
Metrics Explorer, Log Analytics workspace, Kusto Query Language (KQL).

### Application Insights #APM #Performance #Diagnostics
Application Performance Management (APM) service for web developers.
Detecting anomalies, diagnosing issues, understanding usage. Integration with Azure Monitor.

### Logging Strategies #StructuredLogging #Correlation #Diagnostics
Best practices for application logging.
Using structured logging and correlation IDs.

### Alerting and Dashboards #Notifications #Visualization #HealthChecks
Setting up alerts based on metrics or logs.
Creating dashboards in Azure Portal or Grafana for visualization. Implementing health checks.

## Deployment and CI/CD #Automation #DevOps #Pipelines
Automating the build, testing, and deployment process.

### Azure Pipelines #CI/CD #Build #Release #YAML
Creating build and release pipelines in Azure DevOps.
Using YAML pipelines for infrastructure and application code.

### GitHub Actions for Azure #CI/CD #GitHub #Workflows
Automating workflows directly from GitHub repositories to deploy to Azure.

### Deployment Strategies #BlueGreen #Canary #Rolling
Implementing different deployment strategies (e.g., Blue/Green, Canary, Rolling updates) using Azure services.

### Managing Application Settings #Configuration #Environments
Handling configuration differences between development, staging, and production environments.

## Infrastructure as Code (IaC) #Automation #Templates #Provisioning
Managing and provisioning infrastructure through code.

### ARM Templates #JSON #Declarative #AzureNative
Using Azure Resource Manager (ARM) templates to define Azure resources declaratively.
Structure, parameters, variables, outputs.

### Bicep #DSL #Abstraction #AzureNative
Using Bicep, a domain-specific language (DSL) that provides a cleaner abstraction over ARM templates.

### Terraform #OpenSource #MultiCloud #HashiCorp
Using HashiCorp Terraform to provision Azure infrastructure.
Provider configuration, resources, state management.

### Comparing IaC Tools #ARMBicep #Terraform #Pulumi
Understanding the pros and cons of different IaC tools for Azure.

## Identity and Access Management (IAM) for Developers #Security #Identity #AuthN #AuthZ
Integrating identity features into applications.

### Microsoft Identity Platform #AzureAD #OAuth2 #OpenIDConnect
Leveraging Azure AD for user authentication and authorization in applications.
Understanding OAuth 2.0 and OpenID Connect flows.

### Microsoft Authentication Library (MSAL) #Libraries #Tokens #Authentication
Using MSAL libraries (.NET, JS, Python, etc.) to acquire tokens for accessing protected APIs.

### Securing Applications with Azure AD #AppRegistrations #Permissions #Consent
Registering applications in Azure AD.
Configuring permissions and handling user/admin consent.

### Managed Identities for Azure Resources #ServiceAuthentication #Passwordless
Authenticating Azure services to each other without managing credentials.
System-assigned vs. User-assigned identities.

## Cost Management and Optimization #Billing #Budgeting #Optimization
Understanding and managing Azure costs.

### Azure Pricing Models #PayAsYouGo #Reservations #Spot
Understanding different pricing options for Azure services.
Using the Pricing Calculator.

### Azure Cost Management + Billing #Analysis #Budgets #Alerts
Analyzing costs, setting budgets, and creating cost alerts.
Using cost analysis tools in the Azure portal.

### Azure Advisor Recommendations #Optimization #BestPractices
Leveraging Azure Advisor for recommendations on cost, performance, security, and reliability.

### Cost Optimization Techniques #Rightsizing #Autoscaling #Scheduling
Strategies for reducing Azure spend, such as rightsizing VMs, using autoscaling, shutting down resources when not needed.

## Azure SDKs and Management APIs #ProgrammaticAccess #Automation #ControlPlane
Interacting with Azure services programmatically.

### Using Azure SDKs (.NET, Python, Java, Node.js) #Libraries #Development #Integration
Developing applications that interact with Azure services using language-specific SDKs.
Authentication patterns (e.g., DefaultAzureCredential).

### Azure REST API #HTTP #API #Management
Directly interacting with the Azure Resource Manager (ARM) REST API.
Understanding request structure and authentication.

### Azure Management Libraries #ControlPlane #SDK #Automation
Using SDKs specifically designed for managing Azure resources (Control Plane operations).

## Developing AI and Machine Learning Solutions #AI #ML #CognitiveServices
Leveraging Azure's AI capabilities in applications.

### Azure Cognitive Services #PreBuiltAI #APIs #Vision #Speech #Language
Using pre-built AI models via APIs for vision, speech, language, decision, and search.

### Azure Machine Learning #MLPlatform #ModelTraining #Deployment
Building, training, and deploying custom machine learning models using Azure ML service.

### Azure OpenAI Service #LLM #GenerativeAI #ChatGPT
Integrating large language models like GPT into applications via Azure OpenAI Service.

## Developing IoT Solutions #IoT #Devices #Telemetry #Edge
Building solutions for connecting, monitoring, and managing Internet of Things devices.

### Azure IoT Hub #DeviceManagement #Messaging #TelemetryIngestion
Bidirectional communication between IoT devices and the cloud. Device provisioning and management.

### Azure IoT Central #SaaS #AppPlatform #SimplifiedIoT
A fully managed SaaS offering to simplify IoT solution development.

### Azure IoT Edge #EdgeComputing #AIatEdge #Offline
Deploying cloud workloads (AI, analytics, custom logic) directly onto IoT devices.
