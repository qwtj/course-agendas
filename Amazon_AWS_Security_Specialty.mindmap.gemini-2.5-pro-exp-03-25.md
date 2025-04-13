# Amazon AWS Security Specialty #Certification #CloudSecurity #AWS
Overview of the AWS Security Specialty certification, focusing on securing the AWS platform.

## Domain 1: Incident Response #IncidentResponse #IR #Detection
Processes and tools for responding to security events and incidents within the AWS environment.

### Incident Response Planning #Preparation #Strategy #Playbooks
Creating IR plans, defining roles, establishing communication channels, and preparing response toolkits.
Utilizing services like AWS Systems Manager Incident Manager.

### Detection and Analysis #ThreatDetection #Investigation #Forensics
Identifying security events using AWS services and analyzing their impact.
Services: GuardDuty, Security Hub, CloudWatch Alarms, CloudTrail logs, VPC Flow Logs, Inspector.
Techniques: Log analysis, anomaly detection, forensic investigation principles.

### Containment #Isolation #Mitigation #Recovery
Steps to limit the impact of an incident, isolate affected resources, and eradicate the threat.
Techniques: Modifying Security Groups/NACLs, revoking credentials, stopping/terminating instances, snapshotting volumes.

### Post-Incident Activity #LessonsLearned #Remediation #Reporting
Analyzing the incident response, implementing preventative measures, and documenting the event.
Focus on root cause analysis (RCA) and improving security posture.

## Domain 2: Logging and Monitoring #Logging #Monitoring #Auditing
Implementing and managing logging and monitoring solutions for security purposes.

### Monitoring, Alerting, and Auditing #CloudWatch #CloudTrail #Config
Configuring and utilizing AWS services for visibility and compliance.
Services: CloudWatch (Logs, Metrics, Alarms, Events), CloudTrail, Config, VPC Flow Logs, S3 Access Logs, ELB Access Logs.

### Log Management #Centralization #Analysis #Retention
Strategies for collecting, centralizing, analyzing, and retaining logs.
Tools: CloudWatch Logs Insights, Athena, OpenSearch Service, third-party SIEM integration.
Policies for log retention and protection (e.g., CloudTrail log file integrity validation, S3 Object Lock).

### Security Event Monitoring #GuardDuty #SecurityHub #Automation
Using specialized services for automated threat detection and centralized security findings management.
Services: GuardDuty, Security Hub, Inspector, Macie.
Automating responses using EventBridge, Lambda, Step Functions.

## Domain 3: Infrastructure Security #Infrastructure #Networking #ComputeSecurity
Securing VPCs, network infrastructure, and compute resources.

### Network Security #VPC #Firewall #Connectivity
Designing and securing Virtual Private Clouds (VPCs) and network connections.
Components: Security Groups, Network ACLs (NACLs), Subnets (Public/Private), Route Tables, Internet Gateways, NAT Gateways, VPC Endpoints (Interface/Gateway), PrivateLink.
Services: AWS Network Firewall, AWS WAF, AWS Shield (Standard/Advanced), Route 53 Resolver DNS Firewall.
Secure connectivity: VPN (Site-to-Site, Client), Direct Connect.

### Compute Security #EC2 #Containers #Serverless
Securing various AWS compute services.
EC2: AMIs hardening, patch management (Systems Manager Patch Manager), vulnerability management (Inspector), host-based security.
Containers (ECS, EKS, Fargate): Image scanning (ECR), runtime security, network policies, secrets management.
Serverless (Lambda): Execution roles, function policies, environment variable security, API Gateway security.
Service: AWS Systems Manager for management and automation.

### Edge Security #CloudFront #WAF #Shield
Protecting applications and content delivered at the edge.
Services: CloudFront distributions, AWS WAF integration, AWS Shield for DDoS protection, Route 53.
Configurations: Origin Access Identity (OAI)/Origin Access Control (OAC), signed URLs/cookies, Field-Level Encryption.

## Domain 4: Identity and Access Management #IAM #Authentication #Authorization
Managing identities, permissions, and access controls.

### Permissions and Policies #LeastPrivilege #Policies #Roles
Defining and managing access using IAM policies and roles.
Concepts: Users, Groups, Roles, Policies (Identity-based, Resource-based, Permissions Boundaries, Session Policies), Actions, Resources, Conditions.
Principle of Least Privilege.

### Identity Federation #SSO #SAML #Cognito
Integrating external identity providers (IdPs) with AWS.
Methods: SAML 2.0 Federation, OpenID Connect (OIDC), AWS Single Sign-On (AWS SSO/IAM Identity Center).
Services: IAM Identity Providers, AWS Cognito (User Pools, Identity Pools), AWS Directory Service.

### Access Management #MFA #Credentials #AccessAnalyzer
Securing access and managing credentials effectively.
Techniques: Multi-Factor Authentication (MFA), password policies, access keys management (rotation), IAM Access Analyzer, IAM Credential Report, Service Control Policies (SCPs) in AWS Organizations.
Service: AWS Secrets Manager for secrets rotation and management.

### AWS Organizations #CentralGovernance #SCPs #MultiAccount
Managing security across multiple AWS accounts.
Features: Organizational Units (OUs), Service Control Policies (SCPs) for preventative guardrails, consolidated billing, integration with other services (Control Tower, Security Hub, GuardDuty).

## Domain 5: Data Protection #DataSecurity #Encryption #Classification
Implementing controls to protect data at rest and in transit.

### Encryption #KMS #CloudHSM #AtRest #InTransit
Using encryption services and methods to secure data.
Data in Transit: TLS/SSL (ACM for certificates), VPN, Direct Connect encryption options.
Data at Rest: Server-Side Encryption (SSE-S3, SSE-KMS, SSE-C), Client-Side Encryption. EBS volume encryption, RDS encryption, S3 encryption.
Services: AWS Key Management Service (KMS), AWS CloudHSM, AWS Certificate Manager (ACM), Secrets Manager.
KMS Concepts: CMKs (AWS managed, Customer managed), Key Policies, Grants, Key Rotation, Aliases, Import Key Material.

### Data Classification and Discovery #Macie #Tagging #Sensitivity
Identifying and classifying sensitive data within AWS.
Service: Amazon Macie for discovering and protecting sensitive data in S3.
Techniques: Resource tagging for classification, data lifecycle policies.

### Secure Data Storage #S3 #EBS #RDS
Implementing security best practices for various storage services.
S3: Bucket Policies, ACLs, Access Points, Block Public Access, Object Lock, Versioning, Replication, Encryption.
EBS: Volume encryption, snapshots security.
RDS: Security Groups, Encryption, IAM Database Authentication, SSL connections.
DynamoDB: Encryption at rest, IAM policies, VPC Endpoints.

## Security Principles and Best Practices #BestPractices #WellArchitected #ThreatModeling
Fundamental security concepts and AWS recommendations.

### AWS Shared Responsibility Model #SharedResponsibility #CloudSecurityModel
Understanding security responsibilities of AWS and the customer.
Responsibility "of" the cloud vs. "in" the cloud.

### Well-Architected Framework - Security Pillar #WAF #SecurityPillar #DesignPrinciples
Applying the principles of the Security Pillar for designing secure architectures.
Principles: Implement a strong identity foundation, enable traceability, apply security at all layers, automate security best practices, protect data in transit and at rest, prepare for security events.

### Least Privilege Access #LeastPrivilege #IAMBestPractice
Granting only the necessary permissions required to perform a task.

### Defense in Depth #LayeredSecurity #SecurityArchitecture
Applying multiple layers of security controls.

### Threat Modeling #ThreatAnalysis #RiskAssessment
Identifying potential threats and vulnerabilities in an architecture.

## Management and Governance #Governance #Compliance #Automation
Tools and strategies for managing security posture and meeting compliance requirements.

### Security Automation #Automation #Lambda #EventBridge
Automating security tasks and responses.
Tools: EventBridge, Lambda, Step Functions, Systems Manager Automation Documents.
Use cases: Auto-remediation, security checks, compliance enforcement.

### Compliance and Auditing #Compliance #AuditManager #Config
Meeting regulatory requirements and auditing environments.
Services: AWS Config (Rules, Conformance Packs), AWS Audit Manager, AWS Artifact (for compliance reports), CloudTrail.
Standards examples: PCI DSS, HIPAA, GDPR, ISO 27001.

### Centralized Security Management #SecurityHub #ControlTower #Organizations
Using services for a unified view and management of security across accounts.
Services: AWS Security Hub, AWS Control Tower, AWS Organizations, Firewall Manager.

### Cost Management for Security #CostOptimization #SecurityServicesCost
Understanding and managing the costs associated with security services.
Tools: AWS Cost Explorer, Budgets, Cost Allocation Tags.
