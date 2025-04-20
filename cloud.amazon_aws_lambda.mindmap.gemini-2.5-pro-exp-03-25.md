# Amazon AWS Lambda #Serverless #FaaS #AWS
AWS Lambda is a serverless, event-driven compute service that lets you run code for virtually any type of application or backend service without provisioning or managing servers.

## Core Concepts & Fundamentals #Basics #Serverless #Introduction
Fundamental ideas and terminology related to AWS Lambda.

### Serverless Computing #Paradigm #Cloud
The concept of running applications without managing underlying infrastructure.

### Function as a Service (FaaS) #Model #Compute
Executing code in response to events without managing servers or runtime environments directly.

### Event-Driven Architecture #Architecture #Events
Systems designed around the production, detection, consumption of, and reaction to events.

### Lambda Function #CoreUnit #CodeExecution
The unit of code deployment and execution in Lambda.

### Execution Environment #Runtime #Isolation
The isolated environment where Lambda function code runs. Includes OS, memory, CPU, and runtime.

### Cold Starts vs. Warm Starts #Performance #Latency
Understanding the difference in invocation latency based on whether an execution environment is readily available.

### Statelessness #DesignPrinciple #Scalability
Lambda functions are typically designed to be stateless, meaning they don't rely on local state persisting between invocations.

## Function Development & Deployment #Development #Deployment #Workflow
Processes and tools for creating, packaging, and deploying Lambda functions.

### Programming Models #Code #Structure
How Lambda functions are structured (handler function, context object, event object).

### Supported Runtimes #Languages #Environments
Officially supported programming languages and runtime environments (Node.js, Python, Java, Go, .NET, Ruby, Custom Runtimes).

#### Node.js Runtime #NodeJS #JavaScript

#### Python Runtime #Python

#### Java Runtime #Java #JVM

#### Go Runtime #GoLang

#### .NET Runtime #CSharp #FSharp #DotNet

#### Ruby Runtime #Ruby

#### Custom Runtimes (Bring Your Own Runtime - BYOR) #Custom #Flexibility

### Function Code & Dependencies #Packaging #Libraries
Managing function code and external libraries or packages.

#### Deployment Packages (.zip, Container Images) #Packaging #DeploymentFormats
Methods for packaging code and dependencies.

#### Using External Libraries #Dependencies #Management

### Deployment Methods #CI/CD #Automation
Ways to deploy function code to AWS Lambda.

#### AWS Management Console #UI #Manual

#### AWS CLI #CommandLine #Scripting

#### AWS SDKs #Programmatic #API

#### AWS Serverless Application Model (SAM) #IaC #Framework #ServerlessSpecific

#### AWS Cloud Development Kit (CDK) #IaC #Code #Abstraction

#### Infrastructure as Code (IaC) Tools (Terraform, Pulumi) #IaC #ThirdParty

#### Container Image Support #Docker #OCI #DeploymentFormats

### Versioning & Aliases #Management #Lifecycle #Rollback
Managing different versions of a function and using aliases for traffic shifting and environment promotion.

#### Function Versions #Immutable #Snapshots

#### Aliases #Pointers #Environments (dev, prod)

#### Traffic Shifting #DeploymentStrategies #Canary #BlueGreen

## Event Sources & Triggers #Invocation #Events #Integration
Services and methods that can invoke Lambda functions.

### Synchronous Invocation #RequestResponse #API
Invoking Lambda and waiting for a response (e.g., API Gateway, Application Load Balancer, Direct SDK call).

#### API Gateway Trigger #API #REST #HTTP

#### Application Load Balancer (ALB) Trigger #LoadBalancing #HTTP

#### Direct SDK/CLI Invocation #Manual #Testing

#### Lambda Function URLs #HTTP #Endpoint #Simplicity

### Asynchronous Invocation #FireAndForget #BackgroundProcessing
Invoking Lambda without waiting for completion (e.g., S3 events, SNS, EventBridge). Lambda queues the event and handles retries.

#### S3 Event Notifications #Storage #Triggers

#### SNS Topic Subscriptions #PubSub #Messaging

#### EventBridge (CloudWatch Events) Rules #Events #Routing #Scheduling

#### SQS Queue Processing #Queue #Decoupling #Batching

#### IoT Rules Engine #IoT #Devices

#### CodeCommit Triggers #Git #DevOps

#### SES Email Receiving #Email #Automation

### Stream-Based Invocation (Poll-Based) #Streams #Polling #Batching
Lambda polls sources like Kinesis Data Streams and DynamoDB Streams for new records.

#### Kinesis Data Streams #RealTime #DataProcessing

#### DynamoDB Streams #Database #ChangeDataCapture

#### Managed Streaming for Kafka (MSK) #Kafka #Messaging

#### SQS Standard & FIFO Queues (as event source mapping) #Queue #Polling

### Event Source Mapping #Configuration #Polling #Batching
The Lambda resource that reads from event sources like SQS, Kinesis, DynamoDB Streams, and MSK.

#### Batch Size #Performance #Tuning

#### Batch Window #Latency #Tuning

#### Concurrency Control #Scaling #Streams

#### Failure Handling (Retry Policies, DLQ) #ErrorHandling #Resilience

## Execution Model & Lifecycle #Runtime #Execution #Internal
How AWS Lambda manages and executes function code.

### Invocation Types #Sync #Async #Stream

### Execution Environment Lifecycle #Initialization #Reuse #Termination
The phases an execution environment goes through (Init, Invoke, Shutdown).

#### Init Phase #ColdStart #InitializationCode

#### Invoke Phase #HandlerExecution #Processing

#### Shutdown Phase #Cleanup #Extensions

### Concurrency & Scaling #Scalability #Performance #Limits
How Lambda scales to handle varying loads.

#### Unreserved Concurrency #Default #AccountLimit

#### Reserved Concurrency #Guaranteed #Isolation

#### Provisioned Concurrency #WarmStarts #PredictableLatency

#### Scaling Behavior (Sync, Async, Stream) #Differences #Throttling

### Resource Allocation #Memory #CPU #EphemeralStorage
CPU is allocated proportionally to memory; ephemeral storage (`/tmp`) size.

#### Memory Configuration (128MB - 10GB) #Tuning #Cost

#### CPU Allocation #ComputePower #Proportional

#### Ephemeral Storage (`/tmp`) #TemporaryFiles #Limits (512MB - 10GB)

#### Timeout Configuration (up to 15 minutes) #Limits #ExecutionTime

## Monitoring, Logging & Tracing #Observability #Debugging #Metrics
Tools and techniques for monitoring function behavior and troubleshooting issues.

### Amazon CloudWatch Metrics #Metrics #Performance #Usage
Default and custom metrics provided for Lambda functions.

#### Invocation Count #Usage #Activity

#### Error Count & Success Rate #Reliability #Health

#### Duration (Average, P99, Max) #Performance #Latency

#### Throttles #Limits #ScalingIssues

#### Concurrent Executions #Scaling #Usage

#### IteratorAge (for Stream sources) #Lag #ProcessingDelay

### Amazon CloudWatch Logs #Logging #Debugging #Troubleshooting
Automatic logging of function output (stdout, stderr) and system messages.

#### Log Groups & Log Streams #Organization #Storage

#### Searching & Filtering Logs #Analysis #Troubleshooting

#### Structured Logging (JSON) #Parsing #Automation

#### Log Retention Policies #Cost #Compliance

### AWS X-Ray #Tracing #DistributedTracing #PerformanceAnalysis
End-to-end tracing of requests as they travel through Lambda and other AWS services.

#### Enabling X-Ray #Configuration #Instrumentation

#### Segments & Subsegments #TraceData #Breakdown

#### Service Map #Visualization #Dependencies

#### Annotations & Metadata #Filtering #Context

### Lambda Insights #EnhancedMonitoring #Performance #Troubleshooting
Detailed performance metrics and logs for Lambda functions (CPU, Memory, Network, etc.).

### Custom Metrics & Alarms #Proactive #Alerting
Creating specific metrics and setting alarms based on thresholds.

### Error Handling & Dead-Letter Queues (DLQ) #Resilience #Failures
Strategies for handling function errors, including retries and sending failed events to SQS or SNS.

#### Retry Behavior (Async Invocation) #Automatic #Configuration

#### Dead-Letter Queues (DLQ) #FailureIsolation #Analysis

#### On-Failure Destinations #Routing #Flexibility

## Security & IAM Permissions #Security #IAM #AccessControl
Securing Lambda functions and controlling their access to other AWS resources.

### Execution Role #Permissions #IAM #Credentials
The IAM role assumed by the Lambda function during execution, granting it permissions.

#### Identity-Based Policies #Permissions #GrantingAccess

#### Resource-Based Policies (Function Policies) #AccessControl #InvocationPermissions
Granting permissions *to* the Lambda function (e.g., allowing API Gateway to invoke it).

#### Trust Relationships #AssumeRole #ServicePrincipal

### Network Security #Networking #VPC #Firewall

#### VPC Integration #PrivateResources #NetworkIsolation
Running Lambda functions within a Virtual Private Cloud (VPC) to access private resources.

##### ENI (Elastic Network Interface) #Networking #Connectivity

##### Security Groups #Firewall #IngressEgress

##### Subnet Selection #AvailabilityZones #Routing

#### Controlling Outbound Traffic #NATGateway #VPCEndpoints

### Securing Function Code & Dependencies #CodeSecurity #Vulnerabilities
Best practices for securing the code itself.

#### Dependency Scanning #VulnerabilityManagement #SupplyChain

#### Secrets Management (Secrets Manager, Parameter Store) #Credentials #SecureStorage

### Authentication & Authorization for Function URLs #Security #HTTP #Auth
Controlling access to Lambda functions exposed via Function URLs.

#### IAM Authentication #AWSAuth #Permissions

#### No Authentication (Public Access) #Open #UseCarefully

#### Cross-Origin Resource Sharing (CORS) #Web #BrowserSecurity

### Code Signing for AWS Lambda #Integrity #Trust #Validation
Ensuring that only trusted code signed by approved entities is deployed.

## Performance Optimization & Tuning #Performance #Latency #CostOptimization
Techniques to improve Lambda function speed, efficiency, and cost-effectiveness.

### Reducing Cold Starts #Latency #Optimization

#### Provisioned Concurrency #WarmStarts #PredictablePerformance

#### Memory Size Tuning #CPU #Tradeoffs (Memory vs. Init Time)

#### Reducing Deployment Package Size #InitTime #Optimization

#### Using Interpreted Languages (potentially faster init) #Tradeoffs #LanguageChoice

#### Lambda SnapStart (for Java) #FastInit #JVM

### Optimizing Function Code #CodeEfficiency #BestPractices

#### Efficient SDK Usage (reuse clients) #Performance #Connections

#### Caching Data (in-memory, external) #Latency #State

#### Avoiding Blocking Operations #Concurrency #Throughput

#### Asynchronous Programming Patterns #NodeJS #Python #Efficiency

### Memory Tuning #Cost #Performance #ResourceAllocation
Finding the right memory setting for performance and cost.

### Concurrency Management #Scaling #Throttling #Limits
Understanding and configuring concurrency settings effectively.

### Choosing Invocation Models Wisely #Architecture #SyncVsAsync

### Batching (SQS, Kinesis, DynamoDB Streams) #Efficiency #Cost #Throughput
Processing multiple items per invocation for stream and queue sources.

## Cost Management #Cost #Billing #Optimization
Understanding and controlling the costs associated with AWS Lambda.

### Lambda Pricing Model #Billing #Dimensions

#### Request Charges #InvocationCost

#### Duration Charges (GB-seconds) #ComputeCost #MemoryDependent

#### Data Transfer Charges #Networking #Cost

#### Charges for Additional Features (Provisioned Concurrency, Ephemeral Storage, etc.) #Features #Cost

### Free Tier #CostSavings #Trial

### Cost Monitoring & Analysis #Budgeting #Tracking

#### AWS Cost Explorer #Analysis #Visualization

#### Cost Allocation Tags #Tracking #Reporting

#### CloudWatch Billing Alarms #Alerting #BudgetControl

### Cost Optimization Strategies #Savings #Efficiency

#### Right-sizing Memory #PerformanceVsCost

#### Optimizing Code for Duration #Efficiency

#### Using Arm/Graviton2 Processors #PricePerformance

#### Leveraging Provisioned Concurrency (if cost-effective for workload) #Tradeoffs

#### Implementing Efficient Error Handling (avoid unnecessary retries) #Resilience #Cost

## Advanced Features #Capabilities #Enhancements #Specialized
More complex or specialized features of AWS Lambda.

### Lambda Layers #CodeSharing #Dependencies #Management
Sharing common code, libraries, or custom runtimes across multiple functions.

### Lambda Extensions #Monitoring #Security #Observability #Integration
Integrating monitoring, security, and governance tools directly into the Lambda execution environment lifecycle.

#### Internal Extensions #AWSManaged #BuiltIn

#### External Extensions #PartnerTools #CustomTools

### Provisioned Concurrency #WarmStarts #PredictableLatency #Performance

### Lambda SnapStart (for Java) #FastColdStarts #JVM #Performance

### Container Image Support #Docker #OCI #Deployment #FamiliarTools

### File Systems (EFS Integration) #Stateful #Storage #DataSharing
Mounting Amazon Elastic File System (EFS) to Lambda functions for persistent, shared storage.

### Function URLs #HTTPS #Endpoint #DirectInvocation #Simplicity

### Ephemeral Storage Configuration (`/tmp`) #TemporaryFiles #LargerStorage

### Graviton2 Processors (Arm Architecture) #Cost #Performance #Efficiency

### Recursive Loop Detection #Safety #ErrorHandling

## Networking Configuration #VPC #Connectivity #Security
Specifics of connecting Lambda functions to networks.

### Connecting to Resources in a VPC #PrivateAccess #Security

#### VPC Configuration #Subnets #SecurityGroups

#### Hyperplane ENIs #Scalability #Performance #NetworkingInternals

#### VPC Endpoints #PrivateConnectivity #AWSServices #Security
Accessing other AWS services privately without traversing the public internet.

##### Interface Endpoints (PrivateLink) #SpecificServices #PrivateIP

##### Gateway Endpoints (S3, DynamoDB) #RouteTable #Regional

### Internet Access for VPC Functions #NATGateway #NATInstance #PublicAccess

### Lambda Functions without VPC Access #Default #PublicInternet

## Integration Patterns & Use Cases #Applications #Architecture #Examples
Common ways Lambda is used within larger application architectures.

### Web Applications & APIs #Backend #REST #GraphQL

#### API Gateway Integration #HTTPProxy #RequestHandling

#### Application Load Balancer Integration #TargetGroup #HTTP

#### Lambda Function URLs #SimpleAPI #Webhook

### Real-time Data Processing #Streams #Analytics #IoT

#### Kinesis Data Streams Processing #Analytics #RealTime

#### DynamoDB Streams Processing #ChangeDataCapture #Replication

#### IoT Event Handling #DeviceMessages #Actions

### Event-Driven Architectures #Decoupling #Microservices #Automation

#### File Processing (S3 Events) #ETL #ImageResizing #Analysis

#### Message Queue Processing (SQS) #Decoupling #Workers #BackgroundTasks

#### Event Routing & Filtering (EventBridge) #FanOut #Orchestration

#### Workflow Orchestration (Step Functions) #StateManagement #Coordination

### Automation & Operations #DevOps #CronJobs #ChatOps

#### Scheduled Tasks (EventBridge Scheduled Events) #Cron #BatchJobs

#### Infrastructure Automation #ResourceManagement #Compliance

#### ChatOps Integration #Slack #Teams #Bots

### Machine Learning Inference #ML #Prediction #Scalability

#### SageMaker Integration #ModelHosting #PredictionAPI

## Developer Experience & Tooling #Development #Workflow #Productivity
Tools and frameworks that aid in Lambda development and management.

### AWS Management Console #UI #ManualManagement #Monitoring

### AWS CLI #CommandLine #Scripting #Automation

### AWS SDKs #Programmatic #Integration #ApplicationCode
Interacting with Lambda and other AWS services from application code.

### AWS Serverless Application Model (SAM) #Framework #IaC #SimplifiedSyntax #Serverless

#### SAM Template Specification #Definition #Resources

#### SAM CLI #Build #Test #Deploy #LocalDebugging

### AWS Cloud Development Kit (CDK) #IaC #Code #HighLevelAbstraction

### Serverless Framework #ThirdParty #MultiCloud #Plugins #Extensibility

### Local Testing & Debugging #Development #Testing #Iteration

#### SAM CLI Local Invoke/Start-API #Emulation #Testing

#### Docker-based Emulators #Simulation #Environment

#### Unit & Integration Testing Frameworks #Quality #CodeCoverage

### CI/CD Integration #Automation #Pipelines #DevOps

#### AWS CodePipeline / CodeBuild / CodeDeploy #NativeAWS #DevOpsSuite

#### Jenkins, GitLab CI, GitHub Actions #ThirdParty #Integration

## Best Practices & Patterns #Guidance #Design #Optimization
Recommended approaches for building robust, scalable, and maintainable Lambda-based applications.

### Function Granularity #SingleResponsibility #Microservices

### Stateless Design #Scalability #Idempotency

### Managing State Externally #Databases #Caches #FileSystems

### Error Handling & Retries #Resilience #DLQ #Idempotency

### Security Best Practices #LeastPrivilege #SecretsManagement #VPC

### Performance Optimization #ColdStarts #MemoryTuning #Concurrency

### Cost Optimization #RightSizing #ArchitectureChoices

### Observability #Monitoring #Logging #Tracing #Alarms

### Infrastructure as Code (IaC) #Repeatability #Versioning #Automation

### Dependency Management #Layers #Packaging #Security

### Idempotency for Event Processing #Reliability #ExactlyOnce (or Effectively Once)

## Comparison with Alternatives #Tradeoffs #Choices #Context
How Lambda compares to other compute options.

### Lambda vs. EC2 #ServerlessVsIaaS #ManagementOverhead #Scaling

### Lambda vs. Containers (ECS, EKS, Fargate) #ServerlessVsContainers #Orchestration #Control

### Lambda vs. Step Functions #Orchestration #StateManagement #Workflow

### Lambda vs. Other Cloud Providers' FaaS (Azure Functions, Google Cloud Functions) #MultiCloud #FeatureComparison
