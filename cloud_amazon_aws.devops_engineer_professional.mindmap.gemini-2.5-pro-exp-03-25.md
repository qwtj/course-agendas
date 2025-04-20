# Amazon DevOps Engineer Professional #AWS #DevOps #Certification
Comprehensive overview of the knowledge domains for the AWS Certified DevOps Engineer - Professional certification.

## SDLC Automation #CI/CD #Pipelines #Development
Automating the software development lifecycle (SDLC) processes on AWS.

### Continuous Integration (CI) #Build #Test #CodeCommit
Integrating code changes frequently and automatically building and testing them.
#### Source Control Management #VCS #CodeCommit #GitHub #Bitbucket
    * AWS CodeCommit: Setup, branching strategies (GitFlow, GitHub Flow), triggers, notifications, repository permissions.
    * Integration with third-party repositories like GitHub and Bitbucket.
#### Build Processes #CodeBuild #Jenkins #Docker
    * AWS CodeBuild: Configuration via `buildspec.yml`, compute environments, build caching, VPC support, reporting build status.
    * Integration with Jenkins for build orchestration.
    * Building Docker containers within CodeBuild.
#### Automated Testing #UnitTest #IntegrationTest #CodeBuild #CodePipeline
    * Integrating unit tests, integration tests, end-to-end tests, and static code analysis (e.g., SonarQube, Checkov) into pipelines.
    * Using CodeBuild to execute test suites.
    * Utilizing testing stages within CodePipeline.

### Continuous Delivery/Deployment (CD) #Deploy #Release #CodeDeploy #CodePipeline
Automating the release and deployment of applications to various environments.
#### Deployment Strategies #BlueGreen #Canary #Rolling #Immutable
    * In-Place, Rolling, Rolling with additional batch, Immutable, Blue/Green, Canary deployment methodologies.
    * Traffic shifting methods using Elastic Load Balancing (ALB/NLB), Route 53 weighted routing, Lambda aliases, API Gateway canary releases.
#### Deployment Tools #CodeDeploy #CloudFormation #ElasticBeanstalk #ECS #EKS #SAM
    * AWS CodeDeploy: Structure of `AppSpec.yml`, deployment groups, lifecycle event hooks, deployment configurations, support for EC2/On-Premises, Lambda, ECS.
    * AWS CloudFormation: Managing infrastructure updates via stack updates, change sets, drift detection, nested stacks, and StackSets for multi-account/region deployments.
    * AWS Elastic Beanstalk: Environment types, platform versions, deployment policies (.ebextensions, configuration files).
    * Amazon ECS/EKS Deployments: Service updates, task definitions, blue/green deployments with CodeDeploy or native controllers (e.g., Kubernetes deployments, Argo Rollouts).
    * Serverless Application Model (SAM) Deployments: Using `sam deploy` for Lambda, API Gateway, DynamoDB updates.
#### Pipeline Orchestration #CodePipeline #Jenkins #ThirdParty
    * AWS CodePipeline: Defining pipeline structure (stages, actions), source/build/test/deploy actions, integrating AWS services (CodeCommit, CodeBuild, S3, CodeDeploy, CloudFormation, Lambda, ECS, EKS, Service Catalog, Step Functions), artifact storage in S3, manual approval steps, cross-region and cross-account pipelines.
    * Integrating Jenkins or other CI/CD platforms (e.g., GitLab CI, GitHub Actions) with AWS services.

### Artifact Management #Repository #Versioning #CodeArtifact
Managing build artifacts, dependencies, and container images.
#### AWS CodeArtifact #Packages #Upstream #Policy
    * Setting up domains and repositories for package management (npm, PyPI, Maven, NuGet, generic).
    * Configuring upstream repositories (public and internal) and access control policies.
#### Amazon S3 #Storage #Versioning #Lifecycle
    * Using S3 buckets for storing build artifacts, deployment packages, and CloudFormation templates.
    * Implementing versioning and lifecycle policies for artifact management.
#### Amazon ECR (Elastic Container Registry) #Docker #Images #Scanning
    * Storing, managing, and deploying Docker container images.
    * Image scanning for vulnerabilities, lifecycle policies for image cleanup.

## Configuration Management and Infrastructure as Code (IaC) #Automation #Infrastructure #Provisioning
Defining, managing, and provisioning infrastructure and application configurations through code.

### Infrastructure as Code (IaC) Principles #Idempotency #Versioning #Modularity #Drift
Core concepts including idempotency, version control of infrastructure definitions, modular design, and managing configuration drift.

### AWS CloudFormation #IaC #Templates #Stacks
Using declarative templates to model and provision AWS resources.
#### Template Authoring #YAML #JSON #IntrinsicFunctions #Macros
    * Template structure: Parameters, Mappings, Conditions, Resources, Outputs, Metadata.
    * Intrinsic functions (e.g., `Ref`, `Fn::GetAtt`, `Fn::Join`, `Fn::Sub`, `Fn::ImportValue`).
    * Using `cfn-lint` for validation.
    * Developing and using CloudFormation Macros and Custom Resources (Lambda-backed).
#### Stack Management #ChangeSets #DriftDetection #StackSets #ResourceImport
    * Creating, updating (direct, via change sets), and deleting stacks.
    * Detecting configuration drift from the template definition.
    * Managing deployments across multiple accounts and regions using StackSets.
    * Importing existing resources into CloudFormation management.
    * Handling stack failures and rollback scenarios.
#### Best Practices #Security #Modularity #Testing #Secrets
    * Integrating with Parameter Store and Secrets Manager for sensitive data.
    * Implementing least-privilege IAM permissions for CloudFormation execution roles.
    * Modularizing templates using nested stacks or cross-stack references.
    * Testing templates using tools like TaskCat.

### AWS CDK (Cloud Development Kit) #IaC #Programming #Constructs
Defining cloud infrastructure using imperative programming languages.
#### Core Concepts #App #Stack #Construct #Aspects
    * Structure: App, Stacks, Constructs (L1, L2, L3).
    * Using Aspects for applying operations across constructs.
    * Synthesizing CloudFormation templates (`cdk synth`).
#### Deployment #CDKCLI #Bootstrapping #Pipelines
    * Using the CDK CLI (`cdk deploy`, `cdk diff`, `cdk destroy`).
    * Bootstrapping AWS environments for CDK deployments.
    * Integrating CDK with CI/CD pipelines (CDK Pipelines).

### Configuration Management Tools #OpsWorks #SystemsManager #Ansible #Chef #Puppet
Automating the configuration of operating systems, application software, and system state.
#### AWS Systems Manager (SSM) #Automation #Patching #RunCommand #ParameterStore #StateManager
    * Executing commands remotely using Run Command.
    * Maintaining desired state configuration with State Manager.
    * Automating patching operations with Patch Manager.
    * Securely storing parameters and secrets (Parameter Store, Secrets Manager integration).
    * Managing inventory and compliance.
    * Providing secure instance access via Session Manager.
    * Orchestrating complex tasks using Automation documents.
#### AWS OpsWorks #Chef #Puppet #StacksLayers
    * Managed Chef Automate and Puppet Enterprise environments (OpsWorks for Chef Automate, OpsWorks for Puppet Enterprise).
    * Application modeling using OpsWorks Stacks (layers, instances, apps, lifecycle events).
#### Integration with Ansible, Chef, Puppet #ThirdParty #Hybrid
    * Using third-party tools with AWS resources, often in hybrid environments.
    * Dynamic inventory scripts for EC2 instances.
    * Using SSM Agent or bootstrapping tools to apply configurations.

### Serverless Application Model (SAM) #Serverless #IaC #Lambda #APIGateway
An open-source framework specifically for building and deploying serverless applications.
#### SAM Templates #Transform #SimplifiedSyntax #Policies
    * Utilizing the `AWS::Serverless` transform.
    * Simplified syntax for defining Functions, APIs, Simple Tables, State Machines, etc.
    * Predefined SAM policy templates.
    * Global section for common properties.
#### SAM CLI #Build #Deploy #Test #Local
    * `sam build`: Building deployment artifacts.
    * `sam package` & `sam deploy`: Packaging and deploying serverless applications.
    * `sam local invoke`, `sam local start-api`, `sam local start-lambda`: Local testing and debugging capabilities.
    * `sam logs`, `sam traces`.

## Monitoring, Logging, and Alerting #Observability #Metrics #Logs #Alarms
Implementing comprehensive monitoring, logging, and alerting solutions for operational visibility.

### Monitoring #CloudWatch #Performance #Health #Metrics
Collecting, tracking, and visualizing metrics from AWS resources and applications.
#### Amazon CloudWatch Metrics #Namespaces #Dimensions #Resolution #Aggregations
    * Understanding CloudWatch concepts: Namespaces, Metrics, Dimensions, Timestamps, Units, Statistics (Average, Sum, Min, Max, pNN), Period, Resolution (Standard, High).
    * Utilizing standard metrics provided by AWS services (EC2, ELB, RDS, Lambda, etc.).
    * Publishing custom metrics using `PutMetricData` API, StatsD/collectd, or the CloudWatch Agent.
#### CloudWatch Agent #Metrics #Logs #UnifiedAgent #Configuration
    * Deploying and configuring the unified CloudWatch Agent to collect system-level metrics (CPU, memory, disk, network) and application/system logs.
    * Agent configuration schema.
#### Service Specific Monitoring #EC2 #RDS #Lambda #ELB #Containers #Databases
    * Identifying key performance indicators (KPIs) for various services.
    * Monitoring containerized applications (ECS, EKS) using Container Insights.
    * Monitoring Lambda functions (invocations, duration, errors, concurrency) using Lambda Insights.
    * Monitoring databases (RDS, DynamoDB, ElastiCache).
#### Dashboards #CloudWatchDashboards #Visualization #Widgets
    * Creating dynamic and static CloudWatch dashboards to visualize metrics and logs.
    * Using various widget types (line, stacked area, number, gauge, text, log table).
    * Sharing dashboards and setting automatic refresh.
    * Cross-account/cross-region dashboards.

### Logging #CloudWatchLogs #CentralizedLogging #Analysis
Collecting, aggregating, storing, and analyzing log data.
#### Amazon CloudWatch Logs #LogGroups #LogStreams #Retention #Subscriptions
    * Core concepts: Log Events, Log Streams, Log Groups, Metric Filters, Subscription Filters, Retention Policies.
    * Ingesting logs via CloudWatch Agent, AWS SDKs, API, integrated services (Lambda, API Gateway, VPC Flow Logs, Route 53, CloudTrail, etc.).
#### Log Analysis #CloudWatchLogsInsights #Athena #OpenSearch
    * Querying logs interactively using CloudWatch Logs Insights query language.
    * Exporting logs to Amazon S3 for long-term storage or analysis with Amazon Athena.
    * Streaming logs to Amazon OpenSearch Service (successor to Elasticsearch Service) or Kinesis Data Firehose/Streams for real-time processing and analysis.
#### Centralized Logging Solutions #CrossAccount #Kinesis #Lambda #BestPractices
    * Designing architectures for aggregating logs from multiple AWS accounts and sources (e.g., using Kinesis Data Firehose, Lambda processing, centralized S3 bucket/OpenSearch cluster).
    * Implementing log filtering and enrichment.

### Alerting #CloudWatchAlarms #Notifications #SNS #EventBridge #Actions
Defining alarms based on metrics or events and triggering notifications or automated actions.
#### Amazon CloudWatch Alarms #MetricAlarms #CompositeAlarms #Thresholds #AnomalyDetection
    * Creating alarms based on static thresholds, anomaly detection bands, or metric math expressions.
    * Alarm states (OK, ALARM, INSUFFICIENT_DATA) and evaluation periods.
    * Combining multiple alarms using Composite Alarms.
#### Notification Channels #SNS #ChatOps #AutoScaling #SSM #OpsCenter
    * Configuring alarm actions: Sending notifications via Amazon SNS (to email, SMS, SQS, Lambda), triggering EC2 Auto Scaling actions, EC2 instance actions (stop, terminate, reboot), Systems Manager OpsCenter OpsItems, Systems Manager Automation.
    * Integrating alerts with ChatOps tools (Slack, Microsoft Teams, Amazon Chime) via SNS and Lambda or AWS Chatbot.
#### Amazon EventBridge (CloudWatch Events) #Events #Rules #Targets #Bus
    * Capturing events from AWS services, custom applications (PutEvents API), SaaS partners, or scheduled events.
    * Creating rules to filter events based on patterns.
    * Routing events to targets like Lambda, Step Functions, SQS, SNS, Kinesis, Systems Manager Automation, API Gateway, CodePipeline, CodeBuild, etc.
    * Using custom event buses and schema registry.

### Tracing and Debugging #XRay #DistributedTracing #Debugging #Performance
Analyzing and debugging performance issues in distributed applications.
#### AWS X-Ray #Tracing #SDK #Daemon #Analysis #Sampling
    * Instrumenting applications (Java, Node.js, Python, .NET, Go, Ruby) using the X-Ray SDK or enabling via service integrations (Lambda, API Gateway, ELB, etc.).
    * Understanding the X-Ray daemon/agent role.
    * Analyzing traces, service maps, segments, subsegments, annotations, and metadata.
    * Configuring sampling rules to control tracing overhead.
    * Identifying bottlenecks and errors in microservices architectures.

## High Availability, Fault Tolerance, and Disaster Recovery #Resilience #BCDR #Scalability
Designing, implementing, and managing systems that are resilient, scalable, and recoverable.

### High Availability (HA) #MultiAZ #Redundancy #Failover #LoadBalancing
Ensuring continuous operation and minimizing downtime within a single AWS Region.
#### Availability Zones (AZs) & Regions #DataCenters #Isolation #Latency
    * Understanding the AWS global infrastructure design (Regions, AZs, Edge Locations).
    * Architecting applications to span multiple AZs for redundancy.
#### Elastic Load Balancing (ELB) #LoadBalancing #HealthChecks #Distribution #ALB #NLB #GWLB
    * Using Application Load Balancer (ALB), Network Load Balancer (NLB), Gateway
 Load Balancer (GWLB) for distributing traffic.
    * Configuring health checks, target groups, listeners, rules, and cross-zone load balancing.
#### Auto Scaling #Scalability #Elasticity #ASG #ScalingPolicies
    * Using EC2 Auto Scaling Groups (ASGs) with launch configurations or launch templates.
    * Defining scaling policies: Target tracking, step scaling, simple scaling, scheduled scaling, predictive scaling.
    * Using lifecycle hooks for custom actions during scaling events.
    * Auto Scaling for other services: ECS Services, DynamoDB tables, Aurora Replicas.
#### Database HA #RDSMultiAZ #Aurora #DynamoDB #ElastiCache
    * RDS Multi-AZ deployments for synchronous replication and automatic failover.
    * Amazon Aurora architecture (cluster endpoints, shared storage, replicas).
    * DynamoDB replication and consistency models.
    * ElastiCache (Redis/Memcached) replication and cluster mode.
#### Stateless Applications #SessionState #Scalability #DesignPatterns
    * Designing stateless application tiers for easier scaling and higher availability.
    * Managing session state externally using services like ElastiCache or DynamoDB.

### Fault Tolerance #FailureIsolation #SelfHealing #Redundancy
Building systems capable of withstanding component or service failures without significant impact.
#### Designing for Failure #ChaosEngineering #Redundancy #Decoupling
    * Identifying and mitigating Single Points of Failure (SPOFs).
    * Implementing redundancy at multiple layers (instance, AZ, region).
    * Decoupling components using queues (SQS) or streaming services (Kinesis).
    * Applying chaos engineering principles and tools (e.g., AWS Fault Injection Simulator - FIS).
#### Self-Healing Architectures #AutoScaling #ELBHealthChecks #Route53HealthChecks #EC2AutoRecovery
    * Using ELB and Auto Scaling health checks to automatically detect and replace unhealthy instances.
    * Configuring Route 53 health checks for DNS-level failover.
    * Utilizing EC2 auto-recovery features.

### Disaster Recovery (DR) #RPO #RTO #Backup #Restore #MultiRegion
Planning and implementing strategies to recover applications and data in a different location (usually another Region) after a disaster event.
#### DR Strategies #BackupRestore #PilotLight #WarmStandby #MultiSite #HotSite
    * Backup and Restore: Lowest cost, highest RTO/RPO.
    * Pilot Light: Core infrastructure running, data replicated.
    * Warm Standby: Scaled-down but fully functional environment.
    * Multi-Site Active-Active / Active-Passive: Lowest RTO/RPO, highest cost.
#### Key Metrics #RTO #RPO #Assessment
    * Defining Recovery Time Objective (RTO) and Recovery Point Objective (RPO) based on business requirements.
    * Assessing application dependencies and DR needs.
#### Backup and Restore Services #S3 #Glacier #EBS #RDS #Backup #StorageGateway
    * AWS Backup for centralized backup policy management across services (EBS, RDS, DynamoDB, EFS, FSx, Storage Gateway, EC2).
    * EBS snapshots (manual, automated via DLM), RDS snapshots (automated, manual).
    * S3 Versioning, Cross-Region Replication (CRR), Object Lock.
    * S3 Glacier / Glacier Deep Archive for long-term archival.
    * AWS Storage Gateway for hybrid cloud backup scenarios.
    * Restoring infrastructure using CloudFormation, EC2 AMIs, snapshots.
#### DR Automation #CloudFormation #Route53 #Failover #Lambda #Testing
    * Automating infrastructure provisioning in the DR region using CloudFormation or CDK.
    * Automating data replication (CRR, RDS Read Replicas, DynamoDB Global Tables, Aurora Global Database).
    * Automating DNS failover using Route 53 health checks and routing policies.
    * Using Lambda functions or Systems Manager Automation for orchestration.
    * Regularly testing DR plans and procedures (DR drills).

## Incident and Event Response #Operations #Troubleshooting #Automation #Playbooks
Developing and implementing processes and automation for managing operational events and incidents.

### Event Management #EventBridge #Monitoring #Alerting #Filtering
Proactively detecting, filtering, and routing operational events.
#### Event Sources #CloudWatchEvents #APICall #HealthDashboard #ConfigRules #GuardDuty
    * Capturing events from AWS services (e.g., EC2 state changes, S3 object creation), API calls via CloudTrail, Personal Health Dashboard events, Config rule compliance changes, GuardDuty findings, custom application events.
#### Event Processing #EventBridgeRules #Lambda #StepFunctions #Automation
    * Using Amazon EventBridge rules to filter events based on content and route them to appropriate targets.
    * Triggering automated workflows using Lambda functions, Step Functions state machines, or Systems Manager Automation documents.

### Incident Management #Detection #Response #Remediation #Communication
Handling unplanned service interruptions or quality degradations according to defined procedures.
#### Incident Detection & Classification #Alarms #Logs #UserReports #Severity
    * Utilizing CloudWatch Alarms, log pattern analysis, synthetic monitoring, and user feedback for early detection.
    * Classifying incidents based on severity and impact.
#### Automated Response & Remediation #SSMAutomation #Lambda #StepFunctions #Runbooks
    * Developing automated runbooks (SSM Automation documents) or Lambda functions for common remediation tasks (e.g., restarting services, resizing instances, reverting deployments, patching vulnerabilities).
    * Using Step Functions to orchestrate complex remediation workflows.
#### Manual Response and Escalation #Runbooks #Playbooks #OpsCenter #ChatOps #Escalation
    * Defining standard operating procedures (SOPs) or playbooks for manual intervention.
    * Using Systems Manager OpsCenter to aggregate operational issues (OpsItems) from various sources and track incident response.
    * Integrating with communication channels (ChatOps, Paging) for notifications and collaboration.
    * Establishing clear escalation paths.
#### Post-Incident Analysis #RootCauseAnalysis #LessonsLearned #PostMortem #Improvement
    * Conducting blameless post-mortems to identify the Root Cause Analysis (RCA).
    * Documenting findings, lessons learned, and action items for preventing recurrence.
    * Feeding improvements back into monitoring, automation, and system design.

### Troubleshooting #Debugging #LogAnalysis #MetricsAnalysis #RootCause
Diagnosing and resolving technical issues within AWS environments.
#### Common Issues #Connectivity #Performance #Permissions #Configuration #Limits
    * Diagnosing network connectivity issues (VPC routing, Security Groups, NACLs, VPN/Direct Connect tunnels, DNS resolution).
    * Investigating performance bottlenecks (CPU, memory, disk I/O, network throughput/latency, database contention, API limits).
    * Resolving IAM permission errors (`AccessDenied`).
    * Identifying configuration errors or drift (CloudFormation, SSM, service configurations).
    * Checking service quotas/limits.
#### Troubleshooting Tools #CloudTrail #VPCFlowLogs #XRay #CloudWatch #Config #SSM #Support
    * Analyzing API call history with AWS CloudTrail.
    * Examining network traffic patterns with VPC Flow Logs (potentially queried via Athena or CloudWatch Logs Insights).
    * Using AWS X-Ray to trace requests through distributed systems.
    * Correlating metrics (CloudWatch Metrics), logs (CloudWatch Logs Insights), and traces (X-Ray) for comprehensive analysis.
    * Reviewing resource configuration history and compliance with AWS Config.
    * Interacting with instances securely using Systems Manager Session Manager or executing diagnostic commands via Run Command.
    * Leveraging AWS Health Dashboard and Trusted Advisor checks.
    * Utilizing AWS Support resources when necessary.

## Security and Compliance Automation #Security #Governance #Compliance #IAM #Audit
Implementing robust security controls and automating governance and compliance validation processes.

### Identity and Access Management (IAM) #Authentication #Authorization #Permissions #Federation
Securely managing identities and controlling access to AWS resources.
#### IAM Best Practices #LeastPrivilege #Roles #MFA #Rotation #Audit
    * Adhering to the Principle of Least Privilege.
    * Utilizing IAM Roles for AWS services, EC2 instances, ECS tasks, Lambda functions, and cross-account access. Avoid long-lived access keys.
    * Enforcing Multi-Factor Authentication (MFA) for users, especially privileged ones.
    * Implementing regular rotation policies for credentials (passwords, access keys).
    * Auditing permissions using IAM Access Analyzer and credential reports.
#### IAM Policies #ManagedPolicies #InlinePolicies #PermissionsBoundaries #Conditions #ResourceBased
    * Crafting effective IAM policies (identity-based and resource-based) using JSON.
    * Understanding policy evaluation logic (Deny overrides Allow).
    * Using AWS Managed Policies vs. Customer Managed Policies vs. Inline Policies.
    * Applying Permissions Boundaries to delegate permissions safely.
    * Utilizing policy conditions for fine-grained access control (e.g., based on IP address, time, MFA status, tags).
#### Federation & Single Sign-On #SAML #OpenIDConnect #Cognito #DirectoryService #SSO
    * Integrating with external identity providers (IdPs) like Active Directory, Okta, Azure AD using SAML 2.0 or OpenID Connect (OIDC).
    * Centralizing access management using AWS Single Sign-On (AWS SSO), integrating with AWS Organizations.
    * Using Amazon Cognito for managing user identities for web and mobile applications (User Pools, Identity Pools).
    * Leveraging AWS Directory Service (Managed Microsoft AD, Simple AD, AD Connector).

### Infrastructure Security #VPC #SecurityGroups #WAF #Shield #Encryption
Securing the underlying network, compute, and data storage infrastructure.
#### Network Security #SecurityGroups #NACLs #VPCEndpoints #FirewallManager #NetworkFirewall
    * Implementing defense-in-depth using Security Groups (stateful firewalls at the ENI level) and Network ACLs (stateless firewalls at the subnet level).
    * Designing secure VPC architectures with public and private subnets, NAT Gateways/Instances.
    * Using VPC Endpoints (Interface and Gateway types) to access AWS services privately without traversing the public internet.
    * Managing firewall rules centrally across accounts using AWS Firewall Manager.
    * Deploying stateful inspection with AWS Network Firewall.
#### Application Security #WAF #Shield #Inspector #APIGatewaySecurity
    * Protecting web applications from common exploits (SQL injection, XSS) using AWS WAF (Web Application Firewall) integrated with CloudFront, ALB, or API Gateway.
    * Mitigating DDoS attacks using AWS Shield Standard (automatic) and AWS Shield Advanced (additional protection and support).
    * Performing automated security assessments and vulnerability scanning on EC2 instances using Amazon Inspector.
    * Securing APIs using API Gateway features (throttling, usage plans, authorization methods like IAM, Cognito, Lambda authorizers).
#### Data Encryption #KMS #CloudHSM #EncryptionAtRest #EncryptionInTransit #SecretsManager
    * Implementing encryption at rest for services like S3 (SSE-S3, SSE-KMS, SSE-C), EBS volumes, RDS databases, DynamoDB tables using AWS Key Management Service (KMS) or AWS CloudHSM for dedicated hardware security modules.
    * Managing encryption keys (AWS Managed Keys, Customer Managed Keys - CMKs, imported keys).
    * Enforcing encryption in transit using TLS/SSL certificates (managed via AWS Certificate Manager - ACM) for services like ELB, CloudFront, API Gateway.
    * Securely managing secrets (API keys, database credentials, passwords) using AWS Secrets Manager (includes rotation capabilities) or SSM Parameter Store SecureString.

### Compliance Automation #Config #Audit #GuardDuty #SecurityHub #ControlTower
Automating the validation, monitoring, and remediation of compliance requirements.
#### AWS Config #ComplianceChecking #Remediation #ConformancePacks #Rules
    * Continuously monitoring and recording AWS resource configurations.
    * Evaluating configurations against desired policies using AWS Config Rules (managed and custom Lambda-based rules).
    * Implementing automated remediation actions for non-compliant resources using SSM Automation documents.
    * Deploying collections of rules and remediation actions using Conformance Packs based on common compliance frameworks (e.g., CIS, PCI DSS, HIPAA).
#### AWS CloudTrail #Auditing #APITracking #LogValidation #Insights
    * Logging all API calls made within an AWS account for security auditing, operational troubleshooting, and compliance.
    * Enabling log file integrity validation.
    * Integrating CloudTrail logs with CloudWatch Logs for monitoring and alerting (Metric Filters).
    * Using CloudTrail Insights to automatically detect unusual API activity.
#### Threat Detection #GuardDuty #SecurityHub #Macie #Detective
    * Enabling Amazon GuardDuty for intelligent threat detection based on analyzing VPC Flow Logs, CloudTrail logs, DNS logs, S3 data events, EKS audit logs using machine learning and threat intelligence feeds.
    * Centralizing security findings from GuardDuty, Inspector, Macie, Config, Firewall Manager, and partner products using AWS Security Hub. Security Hub also performs automated security checks based on standards like CIS AWS Foundations Benchmark.
    * Discovering and protecting sensitive data (PII, financial data) stored in Amazon S3 using Amazon Macie.
    * Analyzing and visualizing security data to investigate potential security issues using Amazon Detective.
#### Governance Frameworks #ControlTower #Organizations #SCPs #Artifact
    * Setting up and governing a secure, multi-account AWS environment using AWS Control Tower (automates Organizations, SSO, Config, CloudTrail setup with preventative and detective guardrails).
    * Managing multiple AWS accounts centrally using AWS Organizations.
    * Applying Service Control Policies (SCPs) at the Organization Unit (OU) or account level to enforce permission guardrails (preventative controls).
    * Accessing AWS compliance reports (e.g., SOC, PCI, ISO) on demand using AWS Artifact.

## Networking for DevOps #VPC #Connectivity #DNS #Routing #Performance
Understanding and managing core AWS networking services and concepts essential for deploying and operating applications.

### VPC Fundamentals #CIDR #Subnets #RouteTables #Gateways #Peering
Core concepts and design patterns for Virtual Private Clouds.
#### VPC Design & Architecture #CIDRAllocation #Subnetting #AZs #BestPractices
    * Planning VPC CIDR blocks and subnet allocation strategy (considering future growth, IP overlap avoidance).
    * Designing VPC layouts with public, private, and potentially isolated subnets across multiple Availability Zones.
#### Routing #RouteTables #InternetGateway #NATGateway #VPCEndpoints #TransitGateway
    * Configuring route tables associated with subnets to control traffic flow (e.g., to Internet Gateway for public subnets, NAT Gateway/Instance for private subnet outbound internet access, VPC Endpoints for private service access, Transit Gateway for interconnected networks).
#### VPC Peering & Endpoints #Connectivity #PrivateLink #Security
    * Connecting VPCs directly using VPC Peering (non-transitive).
    * Accessing AWS services or VPC Endpoint Services (powered by PrivateLink) privately from within a VPC using Interface Endpoints (ENI-based) or Gateway Endpoints (S3, DynamoDB).

### Hybrid Connectivity #VPN #DirectConnect #TransitGateway #CloudWAN
Establishing secure and reliable connections between on-premises data centers and AWS.
#### AWS Site-to-Site VPN #VirtualPrivateGateway #CustomerGateway #Tunnels #Acceleration
    * Setting up managed IPsec VPN connections over the internet.
    * Configuring Virtual Private Gateway (VGW) on the AWS side and Customer Gateway (CGW) representing the on-premises router.
    * Using VPN CloudHub for hub-and-spoke VPN topology.
    * Optionally using AWS Global Accelerator or VPN Acceleration.
#### AWS Direct Connect (DX) #DedicatedConnection #VIFs #LAG #Redundancy #DXGateway
    * Establishing dedicated, private network connections from on-premises to AWS locations.
    * Understanding different connection types (Dedicated, Hosted) and speeds.
    * Configuring Virtual Interfaces (VIFs): Private VIF (to VPC via VGW or Direct Connect Gateway), Public VIF (to public AWS services), Transit VIF (to Transit Gateway).
    * Achieving high availability using Link Aggregation Groups (LAG) and redundant connections.
    * Using Direct Connect Gateway to connect multiple VPCs across regions to a DX connection.
#### AWS Transit Gateway #HubAndSpoke #CentralizedRouting #NetworkManager #Peering #Multicast
    * Simplifying network topology by acting as a central cloud router connecting VPCs, VPNs, and Direct Connect Gateways.
    * Enabling transitive routing between connected networks.
    * Using AWS Network Manager for managing global networks involving Transit Gateways.
    * Supporting inter-region peering and multicast.
#### AWS Cloud WAN #GlobalNetwork #CoreNetwork #Segments
    * Building, managing, and monitoring a unified global network that connects resources running across your cloud and on-premises environments. Uses Transit Gateway technology underneath.

### DNS and Content Delivery #Route53 #CloudFront #GlobalAccelerator
Managing domain names, routing traffic intelligently, and accelerating content delivery globally.
#### Amazon Route 53 #DNS #HealthChecks #RoutingPolicies #Resolver #TrafficFlow
    * Managing public and private hosted zones for DNS resolution.
    * Configuring various DNS record types (A, AAAA, CNAME, MX, TXT, SRV, Alias records for AWS resources).
    * Implementing health checks for endpoints (HTTP, HTTPS, TCP, CloudWatch alarms) to enable automated DNS failover.
    * Utilizing different routing policies: Simple, Failover, Geolocation, Geoproximity, Latency-based, Multivalue Answer, Weighted.
    * Using Route 53 Resolver endpoints (Inbound, Outbound) for hybrid DNS resolution.
    * Visually managing complex routing configurations with Route 53 Traffic Flow.
#### Amazon CloudFront #CDN #Caching #Distribution #Security #EdgeFunctions
    * Setting up Content Delivery Network (CDN) distributions (Web type) to cache content closer to users globally.
    * Configuring origins (S3 buckets, ALBs, EC2 instances, MediaStore, custom HTTP servers).
    * Defining cache behaviors based on path patterns, managing cache invalidation, TTL settings.
    * Securing content using Origin Access Identity (OAI) or Origin Access Control (OAC) for S3, HTTPS/TLS enforcement, WAF integration, signed URLs/cookies, Field-Level Encryption.
    * Running code at the edge using CloudFront Functions (lightweight JS) or Lambda@Edge (more compute power, Node.js/Python).
#### AWS Global Accelerator #StaticIPs #Performance #Routing #Anycast
    * Improving global application availability and performance by using the AWS global network and Anycast static IP addresses.
    * Directing traffic to optimal regional endpoints based on health, geography, and client location.
    * Useful for non-HTTP/S traffic or when static IPs are required in front of ALBs/NLBs/EC2.

## Cost Management and Optimization #FinOps #Billing #CostExplorer #Budgets #Optimization
Understanding, managing, monitoring, and optimizing AWS expenditure through processes and tools.

### Cost Monitoring and Reporting #BillingConsole #CostExplorer #CUR #Budgets
Gaining visibility into AWS spending patterns and tracking costs against forecasts.
#### AWS Billing Console & Dashboard #SpendSummary #Forecast #Invoices
    * Reviewing current month-to-date spend, forecasted costs, and historical invoices.
    * Understanding the breakdown of costs by service and region.
#### AWS Cost Explorer #CostAnalysis #Filtering #Grouping #Reports #RIUtilization #SavingsPlansUtilization
    * Performing ad-hoc analysis of cost and usage data with filtering (e.g., by time, service, tag, account, region) and grouping capabilities.
    * Visualizing trends and identifying cost drivers.
    * Saving custom reports for regular review.
    * Analyzing Reserved Instance (RI) and Savings Plans utilization and coverage.
#### Cost and Usage Reports (CUR) #DetailedBilling #AthenaIntegration #QuickSight
    * Accessing the most granular billing data delivered to an S3 bucket.
    * Setting up Athena integration to query CUR data using standard SQL for complex analysis.
    * Visualizing CUR data using Amazon QuickSight or other BI tools.
#### AWS Budgets #Alerts #Actions #Reporting #Forecasts
    * Creating cost, usage, RI utilization/coverage, or Savings Plans utilization/coverage budgets.
    * Setting thresholds for alerts via SNS or AWS Chatbot.
    * Configuring budget actions to automatically apply IAM policies or SCPs, or target EC2/RDS instances (e.g., stop instances) when a budget threshold is exceeded.

### Cost Optimization Strategies #Rightsizing #ReservedInstances #SavingsPlans #SpotInstances #Storage #DataTransfer
Applying techniques and leveraging pricing models to reduce overall AWS costs.
#### Rightsizing Resources #ComputeOptimizer #CloudWatchMetrics #TrustedAdvisor
    * Identifying and eliminating idle or underutilized resources (EC2 instances, EBS volumes, RDS instances, ElastiCache nodes, etc.).
    * Using AWS Compute Optimizer recommendations based on machine learning analysis of utilization metrics.
    * Analyzing CloudWatch metrics directly to determine appropriate instance sizes or types.
    * Utilizing AWS Trusted Advisor cost optimization checks.
#### Purchasing Options #ReservedInstances #SavingsPlans #SpotInstances #OnDemand
    * Understanding different pricing models: On-Demand, Reserved Instances (Standard, Convertible), Savings Plans (Compute, EC2 Instance, SageMaker), Spot Instances.
    * Committing to long-term usage with RIs or Savings Plans for significant discounts on predictable workloads.
    * Leveraging Spot Instances for fault-tolerant, stateless, or flexible workloads for potentially massive savings (up to 90%).
#### Storage Optimization #S3IntelligentTiering #LifecyclePolicies #EBSOptimization #DataArchival
    * Optimizing Amazon S3 costs using S3 Intelligent-Tiering (automatic cost savings by moving data between access tiers), lifecycle policies (transitioning data to lower-cost tiers like S3 Standard-IA, S3 One Zone-IA, S3 Glacier Instant Retrieval, S3 Glacier Flexible Retrieval, S3 Glacier Deep Archive), and S3 Storage Lens (visibility).
    * Selecting the appropriate EBS volume types (gp3, io2 Block Express, etc.) based on performance needs and cost.
    * Regularly deleting unneeded EBS snapshots.
    * Archiving data appropriately based on access frequency requirements.
#### Data Transfer Costs #RegionalDataTransfer #CloudFront #VPCEndpoints #PrivateLink #Compression
    * Understanding data transfer pricing (outbound from AWS, inter-region, inter-AZ).
    * Minimizing data transfer costs by using Amazon CloudFront for caching content closer to users, using VPC Endpoints for private access to AWS services within the same region, leveraging AWS PrivateLink, compressing data before transfer, and designing architectures to minimize cross-AZ or cross-region traffic where possible.
#### Automation for Cost Control #Lambda #Budgets #TrustedAdvisor #Scheduler #Tagging
    * Implementing automated scripts (e.g., Lambda functions triggered by EventBridge Scheduler) to stop/start non-production resources during off-hours, clean up unused resources (snapshots, volumes, IPs), or enforce tagging.
    * Using AWS Budgets Actions for automated responses to cost overruns.
    * Automating the ingestion and analysis of Trusted Advisor checks.

### Governance and Tagging #FinOps #Budgets #CostAllocationTags #Policies #Organizations
Establishing controls, policies, and standards to manage costs effectively across an organization.
#### Cost Allocation #Tags #CostCategories #Organizations
    * Implementing a consistent tagging strategy for resources to allocate costs accurately to projects, departments, or cost centers. Activating user-defined cost allocation tags.
    * Using AWS Cost Categories to group costs based on rules (e.g., by tag, account, service) without changing tags.
    * Leveraging AWS Organizations for consolidated billing and managing costs across multiple accounts.
#### Tagging Policies & Enforcement #Enforcement #Standardization #Compliance
    * Defining tagging standards and enforcing them using Tag Policies within AWS Organizations, AWS Config rules, or custom automation (e.g., Lambda functions).
#### Service Control Policies (SCPs) #Organizations #Restrictions #Guardrails
    * Using SCPs within AWS Organizations to set permission guardrails, which can include restricting the use of certain expensive services, instance types, or regions across accounts or OUs.
#### Budgetary Controls #Budgets #Alerting #Forecasting
    * Proactively managing spending using AWS Budgets with alerts and potentially automated actions.
    * Regularly reviewing cost forecasts and trends.
