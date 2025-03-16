# I. Introduction to AWS

## Understanding Cloud Computing Fundamentals

### Defining Cloud Computing

### Cloud Service Models: IaaS, PaaS, SaaS

### Cloud Deployment Models: Public, Private, Hybrid, Community

## Introduction to AWS Services

### Overview of Core AWS Services: EC2, S3, VPC, IAM

### AWS Global Infrastructure: Regions and Availability Zones

### Navigating the AWS Management Console

# II. AWS Identity and Access Management (IAM)

## Understanding IAM Concepts

### IAM Users, Groups, and Roles

### IAM Policies and Permissions

### IAM Best Practices: Least Privilege

## Working with IAM

### Creating IAM Users and Groups

### Attaching Policies to IAM Users and Groups

### Creating and Managing IAM Roles

### Implementing Multi-Factor Authentication (MFA)

# III. Amazon EC2 (Elastic Compute Cloud)

## Understanding EC2 Instances

### EC2 Instance Types and Families

### Amazon Machine Images (AMIs)

### Purchasing Options: On-Demand, Reserved, Spot Instances

## Working with EC2 Instances

### Launching and Connecting to EC2 Instances

### Configuring Security Groups

### Using Key Pairs for Secure Access

### Monitoring EC2 Instances with CloudWatch

### Creating and Managing Elastic Block Storage (EBS) Volumes

### Creating and Managing Elastic IPs

## Advanced EC2 Concepts

### Auto Scaling Groups (ASGs)

### Load Balancing with Elastic Load Balancer (ELB/ALB/NLB)

### Instance Metadata and User Data

### EC2 Placement Groups

# IV. Amazon S3 (Simple Storage Service)

## Understanding S3 Concepts

### S3 Buckets and Objects

### S3 Storage Classes: Standard, Intelligent-Tiering, Standard-IA, One Zone-IA, Glacier, Deep Archive

### S3 Object Versioning

### S3 Lifecycle Policies

## Working with S3

### Creating and Managing S3 Buckets

### Uploading, Downloading, and Deleting Objects

### Configuring S3 Bucket Policies

### Configuring S3 Access Control Lists (ACLs)

### Enabling S3 Static Website Hosting

## Advanced S3 Concepts

### S3 Cross-Region Replication

### S3 Encryption: Server-Side and Client-Side

### S3 Pre-Signed URLs

### S3 Event Notifications

# V. Amazon VPC (Virtual Private Cloud)

## Understanding VPC Concepts

### VPCs, Subnets, and Route Tables

### Internet Gateways and NAT Gateways

### Security Groups and Network ACLs

### VPC Peering

### AWS PrivateLink

## Working with VPCs

### Creating and Configuring a VPC

### Creating Public and Private Subnets

### Configuring Route Tables

### Setting up Internet Gateways and NAT Gateways

### Configuring Security Groups and Network ACLs

## Advanced VPC Concepts

### VPC Flow Logs

### Site-to-Site VPN

### AWS Direct Connect

### Transit Gateway

# VI. AWS Command Line Interface (CLI) and SDKs

## Installing and Configuring the AWS CLI

### Downloading and Installing the AWS CLI

### Configuring AWS Credentials

### Using the AWS CLI

```bash
aws s3 ls s3://my-bucket
aws ec2 describe-instances
```

## Working with AWS SDKs

### Understanding AWS SDKs for different programming languages (Python, Java, Node.js)

### Installing and Configuring AWS SDKs

### Using SDKs to interact with AWS services

```python
import boto3

s3 = boto3.resource('s3')
for bucket in s3.buckets.all():
    print(bucket.name)
```

# VII. AWS Monitoring and Logging

## Amazon CloudWatch

### Understanding CloudWatch Metrics, Alarms, and Logs

### Monitoring EC2 Instances, S3 Buckets, and other AWS services

### Creating CloudWatch Alarms

## AWS CloudTrail

### Understanding CloudTrail Event Logging

### Enabling CloudTrail and Analyzing Logs

### Integrating CloudTrail with CloudWatch Logs

# VIII. AWS Serverless Computing

## AWS Lambda

### Understanding Lambda Functions and Event Sources

### Creating and Deploying Lambda Functions

### Configuring API Gateway for Lambda

## AWS API Gateway

### Creating and Configuring APIs

### Integrating APIs with Lambda Functions

### Securing APIs

## AWS DynamoDB

### Understanding NoSQL Databases

### Creating and Managing DynamoDB Tables

### Querying and Scanning DynamoDB Tables

# IX. AWS Security Best Practices

## Security Groups and Network ACLs

## IAM Policies and Roles

## Encryption at Rest and in Transit

## AWS Shield and AWS WAF

## AWS Trusted Advisor

# X. Sample Projects

## Deploying a Static Website using S3 and CloudFront

## Creating a Serverless API using Lambda and API Gateway

## Building a Simple Web Application with EC2, RDS, and Elastic Load Balancer
