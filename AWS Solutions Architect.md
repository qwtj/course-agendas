# I. Cloud Computing Fundamentals

## Understanding Cloud Computing Concepts

### Defining Cloud Computing

*   On-demand self-service
*   Broad network access
*   Resource pooling
*   Rapid elasticity
*   Measured service

### Cloud Service Models

*   Infrastructure as a Service (IaaS): `EC2`, `S3`
*   Platform as a Service (PaaS): `Elastic Beanstalk`, `Lambda`
*   Software as a Service (SaaS): `Salesforce`, `Gmail`

### Cloud Deployment Models

*   Public Cloud (AWS, Azure, GCP)
*   Private Cloud (VMware, OpenStack)
*   Hybrid Cloud (AWS Outposts, Azure Stack)

## Introduction to AWS

### AWS Global Infrastructure

*   Regions
*   Availability Zones
*   Edge Locations

### AWS Management Console

*   Navigating the console
*   Understanding AWS services

### AWS Command Line Interface (CLI)

*   Installing and configuring the AWS CLI
*   Basic CLI commands: `aws s3 ls`, `aws ec2 describe-instances`

# II. Core AWS Services

## Identity and Access Management (IAM)

### IAM Users, Groups, and Roles

*   Creating and managing IAM users
*   Assigning users to groups
*   Understanding IAM roles and policies

### IAM Policies

*   Creating custom IAM policies
*   Using AWS managed policies
*   Policy evaluation logic

### IAM Best Practices

*   Principle of least privilege
*   Multi-Factor Authentication (MFA)

## Compute Services

### Elastic Compute Cloud (EC2)

*   Launching and managing EC2 instances
*   EC2 instance types
*   Amazon Machine Images (AMIs)

### EC2 Networking

*   Virtual Private Cloud (VPC)
*   Subnets
*   Security Groups
*   Elastic IPs

### Auto Scaling

*   Creating Auto Scaling groups
*   Scaling policies

### Elastic Load Balancing (ELB)

*   Application Load Balancer (ALB)
*   Network Load Balancer (NLB)
*   Classic Load Balancer (CLB)

## Storage Services

### Simple Storage Service (S3)

*   Creating and managing S3 buckets
*   S3 storage classes: `Standard`, `Intelligent-Tiering`, `Standard-IA`, `One Zone-IA`, `Glacier`, `Deep Archive`
*   S3 object lifecycle management
*   S3 bucket policies
*   S3 versioning

### Elastic Block Storage (EBS)

*   Creating and managing EBS volumes
*   EBS volume types: `gp2`, `gp3`, `io1`, `io2`, `st1`, `sc1`
*   EBS snapshots

### Elastic File System (EFS)

*   Creating and managing EFS file systems
*   Mounting EFS file systems to EC2 instances

## Database Services

### Relational Database Service (RDS)

*   Creating and managing RDS instances
*   Supported database engines: `MySQL`, `PostgreSQL`, `MariaDB`, `Oracle`, `SQL Server`
*   RDS backups and recovery
*   RDS read replicas

### DynamoDB

*   Creating and managing DynamoDB tables
*   DynamoDB data modeling
*   DynamoDB Global Tables

### Aurora

*   Understanding Aurora's architecture
*   Creating and managing Aurora clusters
*   Aurora Serverless

# III. Networking and Content Delivery

## Virtual Private Cloud (VPC)

### VPC Fundamentals

*   Creating a VPC
*   Subnets (Public and Private)
*   Route Tables

### Internet Gateway (IGW)

*   Attaching an IGW to a VPC
*   Configuring route tables for internet access

### Network Address Translation (NAT) Gateway

*   Creating and configuring a NAT Gateway
*   Routing traffic through a NAT Gateway

### VPC Peering

*   Establishing VPC peering connections
*   Configuring route tables for VPC peering

### AWS Direct Connect

*   Establishing a dedicated network connection to AWS

## Route 53

### Domain Name System (DNS) Fundamentals

### Route 53 Hosted Zones

*   Creating and managing hosted zones
*   Record types: `A`, `CNAME`, `MX`, `TXT`

### Route 53 Routing Policies

*   Simple routing
*   Weighted routing
*   Latency-based routing
*   Failover routing
*   Geolocation routing
*   Geoproximity routing
*   Multivalue answer routing

## CloudFront

### Content Delivery Network (CDN) Fundamentals

### Creating CloudFront Distributions

*   Configuring origins
*   Configuring behaviors
*   Caching settings
*   SSL certificates

### CloudFront Security

*   Origin Access Identity (OAI)
*   AWS Shield
*   AWS WAF

# IV. Application Services

## Simple Queue Service (SQS)

### Message Queueing Fundamentals

### Creating and Managing SQS Queues

*   Standard queues
*   FIFO queues

### Sending and Receiving Messages

*   Using the AWS SDK to interact with SQS

## Simple Notification Service (SNS)

### Publish/Subscribe Messaging

### Creating and Managing SNS Topics

### Subscribing to SNS Topics

*   Email subscriptions
*   SMS subscriptions
*   HTTP/HTTPS subscriptions
*   SQS subscriptions

## Lambda

### Serverless Computing Fundamentals

### Creating and Deploying Lambda Functions

*   Choosing a runtime (e.g., Python, Node.js, Java)
*   Configuring triggers
*   Managing Lambda layers

### API Gateway

*   Creating and managing API Gateway endpoints
*   Integrating API Gateway with Lambda

## Elastic Container Service (ECS)

### Containerization Fundamentals

### Creating and Managing ECS Clusters

### Defining Task Definitions

### Running Tasks and Services

## Elastic Kubernetes Service (EKS)

### Kubernetes Fundamentals

### Creating and Managing EKS Clusters

### Deploying Applications to EKS

# V. Security, Monitoring, and Automation

## AWS Security Best Practices

### Security Groups

*   Inbound and outbound rules

### Network ACLs

*   Stateless packet filtering

### AWS Shield and AWS WAF

*   Protecting against DDoS attacks and web exploits

### AWS KMS (Key Management Service)

*   Creating and managing encryption keys
*   Encrypting data at rest and in transit

### AWS CloudHSM (Hardware Security Module)

*   Meeting compliance requirements with dedicated HSMs

## Monitoring with CloudWatch

### CloudWatch Metrics

*   Collecting and visualizing metrics
*   Creating custom metrics

### CloudWatch Alarms

*   Configuring alarms based on metrics

### CloudWatch Logs

*   Collecting and analyzing log data

## AWS CloudTrail

### Auditing AWS API Calls

### Configuring CloudTrail

### Analyzing CloudTrail Logs

## AWS CloudFormation

### Infrastructure as Code (IaC) Fundamentals

### Creating CloudFormation Templates

*   YAML or JSON format
*   Defining resources, parameters, and outputs

### Deploying CloudFormation Stacks

### Updating and Deleting Stacks

# VI. High Availability and Disaster Recovery

## High Availability Architectures

### Designing Highly Available Applications

*   Redundancy and fault tolerance
*   Eliminating single points of failure

### Multi-AZ Deployments

*   Deploying resources across multiple Availability Zones

### Auto Scaling and Load Balancing

*   Ensuring consistent performance during peak loads

## Disaster Recovery Strategies

### Backup and Restore

*   Regular backups of data and configurations
*   Testing the restore process

### Pilot Light

*   Maintaining a minimal, always-on environment

### Warm Standby

*   Maintaining a fully functional, scaled-down environment

### Hot Standby

*   Maintaining a fully synchronized, active-active environment

## AWS Backup

### Centralized Backup Management

### Creating Backup Plans

### Restoring from Backups

# VII. Cost Optimization

## AWS Cost Explorer

### Visualizing AWS Costs

### Identifying Cost Trends

### Creating Cost Allocation Tags

## AWS Budgets

### Setting Budgets for AWS Services

### Receiving Notifications when Budgets are Exceeded

## AWS Trusted Advisor

### Identifying Cost Optimization Opportunities

### Implementing Trusted Advisor Recommendations

## Reserved Instances

### Purchasing Reserved Instances

### Choosing the Right Reserved Instance Type

## Spot Instances

### Using Spot Instances for Cost Savings

### Handling Spot Instance Interruptions

# VIII. Exam Preparation and Practice

## Review Key Concepts

### Solidifying Understanding of Core Services

## Practice Exams

### Simulating the Exam Environment

## Reviewing Exam Questions

### Understanding Question Types and Strategies
