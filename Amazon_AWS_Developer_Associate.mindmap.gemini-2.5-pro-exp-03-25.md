# Amazon AWS Developer Associate #Certification #AWS #Developer

This mind map outlines the key domains and services relevant to the AWS Certified Developer - Associate certification.

## Domain 1: Development with AWS Services #CoreServices #Development #API

Focuses on developing, deploying, and debugging cloud-based applications using AWS.

### Compute Services #Compute #Scalability #Instances
Developing applications leveraging core AWS compute resources.
#### AWS Lambda #Serverless #Functions #EventDriven
Understanding function handlers, triggers (API Gateway, SQS, S3 events, etc.), execution environment, versions, aliases, layers, concurrency, provisioned concurrency, and error handling.
#### Amazon EC2 (Elastic Compute Cloud) #VM #Instances #Compute
Understanding instance types, AMIs, user data, metadata, instance profiles (IAM roles), and basic EC2 API/CLI usage for developers.
#### AWS Elastic Beanstalk #PaaS #Deployment #WebApps
Understanding environments, application versions, deployment policies (all at once, rolling, immutable), configuration files (.ebextensions), and platform integration.
#### AWS Serverless Application Model (SAM) #Serverless #IaC #Deployment
Using SAM templates (template.yaml), `sam build`, `sam deploy`, `sam local` for local testing, defining APIs, functions, and databases.
#### Containers on AWS #Containers #Docker #Orchestration
Understanding container concepts and AWS services for running them.
##### Amazon ECS (Elastic Container Service) #ECS #Orchestration #Docker
Task definitions, services, clusters, Fargate vs. EC2 launch types, service discovery, load balancing integration.
##### Amazon ECR (Elastic Container Registry) #ECR #Registry #DockerImages
Pushing/pulling Docker images, repository policies, lifecycle policies.

### Storage Services #Storage #Data #Persistence
Integrating applications with AWS storage solutions.
#### Amazon S3 (Simple Storage Service) #ObjectStorage #Durability #Scalability
Bucket policies, ACLs, CORS configuration, versioning, lifecycle policies, storage classes, pre-signed URLs, multipart uploads, S3 events, SDK usage for object manipulation.
#### Amazon DynamoDB #NoSQL #KeyVavlue #ServerlessDB
Core concepts (tables, items, attributes), data types, primary keys (partition key, sort key), indexes (LSIs, GSIs), read/write capacity units (provisioned vs. on-demand), DAX (DynamoDB Accelerator), streams, TTL, transactions, API/SDK usage (PutItem, GetItem, Query, Scan), consistency models.
#### Amazon ElastiCache #Caching #InMemory #Performance
Understanding Redis vs. Memcached engines, use cases (session state, database caching), basic integration patterns.

### Networking Services for Developers #Networking #API #Connectivity
Using AWS networking components relevant to application development.
#### Amazon API Gateway #API #REST #WebSocket #ManagedAPI
REST APIs vs. HTTP APIs vs. WebSocket APIs, endpoint types (edge-optimized, regional, private), methods, integrations (Lambda, HTTP, AWS Service), mapping templates, authorizers (IAM, Cognito, Lambda), caching, stages, usage plans, API keys, custom domains.
#### Amazon VPC (Virtual Private Cloud) #VPC #Networking #Isolation
Basic concepts relevant to developers: security groups, subnets (public vs. private), NAT Gateways, VPC endpoints (Interface and Gateway). Understanding how applications within a VPC connect to AWS services and the internet.
#### Amazon Route 53 #DNS #Routing #Domains
Basic concepts: Hosted zones, record types (A, CNAME, Alias), routing policies relevant to application endpoints (e.g., Simple, Failover, Weighted).

### Application Integration Services #Decoupling #Messaging #Orchestration
Building decoupled and resilient applications.
#### Amazon SQS (Simple Queue Service) #Queue #Decoupling #Messaging
Standard vs. FIFO queues, visibility timeout, dead-letter queues (DLQs), short vs. long polling, message attributes, batch operations, Lambda integration.
#### Amazon SNS (Simple Notification Service) #PubSub #Notifications #Fanout
Topics, subscriptions (HTTP/S, Email, SQS, Lambda), message filtering, publishing messages, fanout pattern.
#### AWS Step Functions #Workflow #Orchestration #ServerlessStateMachines
State machines (Standard vs. Express), states (Task, Choice, Parallel, Wait), error handling (Retry, Catch), integrations with Lambda, SNS, SQS, DynamoDB, Activity tasks.
#### Amazon EventBridge (formerly CloudWatch Events) #Events #EventBus #Routing
Event buses (default, custom, partner), rules, targets, event patterns, schema registry, archive and replay.

## Domain 2: Security #Security #IAM #Encryption

Implementing security measures for applications running on AWS.

### Identity and Access Management (IAM) #IAM #Permissions #Authentication
Users, groups, roles, policies (managed vs. inline, identity-based vs. resource-based), principle of least privilege, IAM best practices, access keys vs. roles, temporary credentials (STS - AssumeRole), instance profiles, service-linked roles.
### Amazon Cognito #Authentication #Authorization #UserPools #IdentityPools
User Pools (authentication, user directory, sign-up/sign-in), Identity Pools (federated identities, granting temporary AWS credentials using social/SAML/OIDC providers or User Pools).
### Secrets Management #Secrets #Credentials #Security
Storing and retrieving secrets securely.
#### AWS Secrets Manager #SecretsManagement #Rotation #Credentials
Storing database credentials, API keys, automating secret rotation.
#### AWS Systems Manager Parameter Store #ParameterStore #Configuration #Secrets
Storing configuration data and secrets (Standard vs. Advanced parameters, SecureString).
### Encryption #Encryption #DataProtection #KMS
Understanding encryption concepts and AWS services.
#### AWS Key Management Service (KMS) #KMS #EncryptionKeys #ManagedKeys
Customer Master Keys (CMKs - symmetric/asymmetric), customer-managed vs. AWS-managed CMKs, envelope encryption, data keys, integration with other AWS services (S3, EBS, RDS, Lambda environment variables).
#### Client-Side vs. Server-Side Encryption #EncryptionModels #DataSecurity
Understanding the difference and when to use each, especially with S3 (SSE-S3, SSE-KMS, SSE-C, Client-Side).

## Domain 3: Deployment #Deployment #CI/CD #IaC

Deploying applications on AWS using various tools and strategies.

### Infrastructure as Code (IaC) #IaC #Automation #Provisioning
Automating infrastructure provisioning and management.
#### AWS CloudFormation #CloudFormation #IaC #Templates #Stacks
Template structure (YAML/JSON), resources, parameters, outputs, mappings, conditions, intrinsic functions, stack creation/update/deletion, change sets, drift detection, nested stacks, StackSets.
#### AWS Serverless Application Model (SAM) #Serverless #IaC #Deployment
Relationship to CloudFormation, SAM CLI (`sam package`, `sam deploy`), global section, simplified syntax for serverless resources.
#### AWS Cloud Development Kit (CDK) #CDK #IaC #ProgrammingLanguages
Defining cloud infrastructure using familiar programming languages (Python, TypeScript, Java, etc.), constructs, stacks, synthesizing CloudFormation templates, CDK CLI commands (`cdk deploy`, `cdk synth`).

### Continuous Integration/Continuous Delivery (CI/CD) #CICD #Automation #DevOps
Automating the build, test, and deployment pipeline.
#### AWS CodeCommit #CodeCommit #Git #SourceControl
Git repositories, access control (IAM, SSH keys, HTTPS Git credentials), triggers, pull requests.
#### AWS CodeBuild #CodeBuild #BuildService #Compilation #Testing
Build projects, build environments (managed images vs. custom Docker images), buildspec.yml file structure and phases, caching, artifacts, integration with CodePipeline.
#### AWS CodeDeploy #CodeDeploy #DeploymentAutomation #BlueGreen
Applications, deployment groups, deployment configurations (Canary, Linear, AllAtOnce), deployment types (In-Place, Blue/Green), AppSpec file structure and hooks, integration with EC2, Lambda, ECS.
#### AWS CodePipeline #CodePipeline #Orchestration #CICDWorkflow
Pipeline structure (stages, actions), source/build/test/deploy providers, manual approvals, artifact handling, cross-region actions, integration with CodeCommit, CodeBuild, CodeDeploy, S3, CloudFormation, Elastic Beanstalk, Lambda, ECS.

### Deployment Strategies #DeploymentPatterns #ReleaseManagement #Availability
Understanding different approaches to releasing application updates.
#### Blue/Green Deployments #BlueGreen #ZeroDowntime #Rollback
Concept, implementation using Route 53, ELB, Auto Scaling, CodeDeploy, Elastic Beanstalk.
#### Canary Deployments #Canary #PhasedRollout #RiskReduction
Concept, implementation using Route 53 weighted routing, CodeDeploy deployment configurations, API Gateway canary releases.
#### Rolling Deployments #RollingUpdate #InPlace #Availability
Concept, potential impact during deployment, Elastic Beanstalk and CodeDeploy options.
#### All-at-Once Deployments #InPlace #Downtime #Risk
Concept, use cases, implications.
#### Immutable Deployments #ImmutableInfrastructure #Predictability #Rollback
Replacing instances/infrastructure instead of updating in place.

## Domain 4: Troubleshooting and Monitoring #Monitoring #Logging #Debugging

Monitoring, logging, and debugging applications on AWS.

### Monitoring Services #Monitoring #Metrics #Alarms
Observing application performance and health.
#### Amazon CloudWatch #CloudWatch #Metrics #Logs #Alarms #Events
Metrics (standard vs. custom), namespaces, dimensions, statistics, alarms (states, actions), dashboards, Logs (Log Groups, Log Streams, Agent, searching/filtering logs, Metric Filters, Subscription Filters), Events (see EventBridge).
### Logging and Tracing #Logging #Tracing #Debugging
Collecting logs and tracing requests through distributed systems.
#### AWS CloudTrail #CloudTrail #Auditing #APILogging
Logging API calls made to AWS services, management events vs. data events, trails, CloudTrail Insights, Log File Integrity Validation.
#### AWS X-Ray #XRay #DistributedTracing #PerformanceAnalysis
Instrumenting applications (SDK, agents), segments, subsegments, traces, service maps, annotations, metadata, sampling rules, analyzing performance bottlenecks.
### Debugging and Troubleshooting Techniques #Debugging #Troubleshooting #ErrorHandling
Identifying and resolving issues in cloud applications.
#### Analyzing Logs #LogAnalysis #Troubleshooting
Using CloudWatch Logs Insights, filtering, searching logs from Lambda, EC2, ECS, Beanstalk.
#### Environment Variables #Configuration #DebuggingFlags
Using environment variables for configuration and enabling debug modes (e.g., Lambda environment variables).
#### Code Instrumentation #ApplicationCode #Metrics #Tracing
Adding custom metrics (CloudWatch `PutMetricData`) and X-Ray segments/annotations within application code.
#### Common Error Patterns #ErrorHandling #AWSAPIs #Troubleshooting
Understanding common HTTP status codes (4xx, 5xx), AWS SDK exceptions, retry mechanisms (exponential backoff), service-specific errors (e.g., DynamoDB ProvisionedThroughputExceededException).

## Domain 5: Refactoring, APIs, and Developer Best Practices #Refactoring #APIs #BestPractices

Refactoring applications and applying developer best practices in the AWS environment.

### Refactoring Considerations #Refactoring #Migration #Modernization
Strategies for migrating and modernizing existing applications for the cloud.
#### Lift-and-Shift vs. Re-platforming vs. Re-architecting #MigrationStrategies #CloudAdoption
Understanding different approaches to moving applications to AWS.
#### Strangler Fig Pattern #ApplicationModernization #IncrementalRefactoring
Gradually replacing parts of a legacy system.
#### Designing for Failure #Resilience #FaultTolerance #HighAvailability
Building applications that can withstand component failures (e.g., using multiple AZs, decoupling, statelessness).
### API Design and Management #API #REST #DesignPrinciples
Best practices for designing and managing APIs.
#### RESTful API Design #REST #Statelessness #HTTPMethods
Principles of REST, resource naming, HTTP methods (GET, POST, PUT, DELETE, PATCH), status codes.
#### API Versioning #APILifecycle #Compatibility
Strategies for versioning APIs (URI path, query parameter, header).
#### API Security #APISecurity #Authentication #Authorization
Securing APIs using API Gateway authorizers (IAM, Cognito, Lambda), API keys, usage plans.
### Developer Tools and SDKs #DeveloperExperience #Tools #SDK
Using AWS tools to improve the development workflow.
#### AWS SDKs #SDK #ProgrammingLanguages #APIInteraction
Structure, configuration (credentials, region), clients, waiters, paginators, error handling. Supported languages (Python/Boto3, JavaScript, Java, .NET, Go, etc.).
#### AWS CLI (Command Line Interface) #CLI #Scripting #Automation
Installation, configuration (`aws configure`), command structure, common commands for key services, output formatting (--query, --output).
#### AWS Cloud9 #Cloud9 #IDE #CloudIDE
Cloud-based IDE for writing, running, and debugging code, pre-authenticated AWS CLI, integrations.
### Stateless Application Design #Statelessness #Scalability #Resilience
Designing applications where no session state is stored locally, enabling easier scaling and fault tolerance. Offloading state to services like DynamoDB, ElastiCache, S3.
