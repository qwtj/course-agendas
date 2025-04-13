# Amazon AWS IAM #AWS #Security #IdentityManagement
AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.

## Core IAM Concepts #Fundamentals #Basics #Overview
Introduction to the fundamental ideas behind IAM.
### Principle of Least Privilege #Security #BestPractice
Granting only the permissions required to perform a task.
### AWS Account Root User #RootUser #SecurityRisk
The initial identity created with an AWS account, possessing full administrative access. Avoid using it for daily tasks.
### IAM Entities/Principals #Users #Groups #Roles #Identities
Who or what can make requests in AWS.
### IAM Policies #Permissions #Authorization #JSON
Documents defining permissions attached to identities or resources.
### Authentication vs. Authorization #SecurityConcepts #AccessControl
Verifying identity vs. determining allowed actions.
### AWS Resource Names (ARNs) #Identifiers #Resources
Unique identifiers for AWS resources used in policies.

## IAM Identities #Principals #Authentication #Management
Entities that represent users, applications, or services needing access to AWS resources.
### IAM Users #HumanUsers #LongTermCredentials
An identity created in AWS representing a person or application that interacts with AWS.
    Associated with long-term credentials (password, access keys).
### IAM Groups #UserManagement #Organization
A collection of IAM users. Used to simplify permission management by assigning policies to the group instead of individual users.
### IAM Roles #TemporaryCredentials #Delegation #TrustPolicy
An identity with specific permissions that can be assumed by trusted entities (users, applications, AWS services).
    Uses temporary security credentials.
    Defined by a Trust Policy (who can assume the role) and Permissions Policies (what the assumed role can do).
#### Role Trust Policy #TrustRelationship #AssumeRole
JSON policy document defining which principals can assume the role.
#### Role Permissions Policy #AccessControl #RolePermissions
IAM policy defining the permissions granted when the role is assumed.
#### Role Chaining #Delegation #AdvancedRoles
Assuming one role and then using its permissions to assume another role.

## IAM Policies and Permissions #Authorization #AccessControl #JSON
Defining what actions are allowed or denied on which resources.
### Policy Types #IdentityBased #ResourceBased #PermissionsBoundary #SessionPolicy
Different categories of IAM policies.
#### Identity-Based Policies #UserPolicies #GroupPolicies #RolePolicies
Policies attached directly to an IAM user, group, or role.
##### AWS Managed Policies #Predefined #AWSMaintained
Policies created and managed by AWS for common use cases.
##### Customer Managed Policies #Custom #UserDefined
Policies created and managed by the customer within their AWS account.
##### Inline Policies #Embedded #DirectAttachment
Policies embedded directly into a single user, group, or role. Use sparingly.
#### Resource-Based Policies #S3Buckets #SQSQueues #LambdaFunctions
Policies attached directly to an AWS resource (e.g., S3 bucket policy, SQS queue policy, Lambda resource policy).
    Specify who (principal) has access to the resource.
#### Permissions Boundaries #Delegation #SecurityGuardrails
An advanced feature to set the maximum permissions an identity-based policy can grant to an IAM entity. Used for delegation.
#### Session Policies #AssumeRole #Federation #TemporaryPermissions
Policies passed programmatically when assuming a role or federating a user, further restricting session permissions.
#### Service Control Policies (SCPs) #AWSOrganizations #PreventiveGuardrails
Part of AWS Organizations, used to manage permissions across multiple accounts. Act as guardrails.
### Policy Structure #JSON #Syntax #Elements
The components of an IAM policy document.
#### Version #PolicyLanguage #SyntaxVersion
Specifies the policy language version (usually "2012-10-17").
#### Statement #Rules #PermissionsList
The main part of a policy, containing one or more statements.
##### Sid (Statement ID) #Identifier #Optional
An optional identifier for the statement.
##### Effect #Allow #Deny
Specifies whether the statement allows or denies access ("Allow" or "Deny").
##### Principal #ResourceBasedOnly #Who
(Required in resource-based policies) Specifies the user, account, service, or other entity allowed or denied access.
##### Action #APICalls #Operations
List of AWS service actions the policy allows or denies (e.g., "s3:GetObject", "ec2:StartInstances"). Wildcards (*) supported.
##### Resource #ARNs #Objects
List of resources to which the actions apply, specified by ARN. Wildcards (*) supported.
##### Condition #Optional #FineGrainedControl
Optional circumstances under which the policy grants permission (e.g., based on IP address, time of day, tags, MFA status).
###### Condition Operators #StringEquals #IpAddress #DateGreaterThan
Logical operators used within the Condition block.
###### Condition Keys #GlobalKeys #ServiceKeys #ContextKeys
Specific context values available for condition checks (e.g., `aws:SourceIp`, `aws:CurrentTime`, `aws:MultiFactorAuthPresent`, `ec2:ResourceTag/Department`).
### Policy Evaluation Logic #AuthorizationFlow #DecisionProcess
How AWS determines permissions when multiple policies apply.
#### Explicit Deny Overrides Allow #Security #Priority
An explicit Deny in any applicable policy always overrides an Allow.
#### Evaluation within a Single Account #IdentityPolicies #ResourcePolicies #Boundaries #SCPs
Order of evaluation considering all policy types affecting a request.
#### Cross-Account Access Evaluation #ResourcePolicies #Roles
How permissions are evaluated when resources are accessed from another account.

## Authentication Mechanisms #Login #Verification #Credentials
How IAM verifies the identity of a principal making a request.
### Console Login #HumanUsers #WebInterface
Authentication via username/password and optionally MFA for human users accessing the AWS Management Console.
#### Password Policies #Complexity #Rotation #Security
Account-level settings to enforce password strength and rotation requirements for IAM users.
### Programmatic Access #Applications #CLI #SDK
Authentication for applications, CLI, and SDK access using access keys.
#### Access Keys #LongTermCredentials #ProgrammaticAccess #SecurityRisk
Consist of an Access Key ID and a Secret Access Key. Should be managed securely (rotated, not embedded in code).
#### Temporary Security Credentials #Roles #Federation #BestPractice
Short-term credentials (Access Key ID, Secret Access Key, Session Token) obtained via AWS STS, typically by assuming a role. Preferred over long-term access keys.
### Multi-Factor Authentication (MFA) #SecurityLayer #2FA
Adding a second layer of security for user sign-ins and sensitive operations.
#### MFA Device Types #VirtualMFA #HardwareMFA #U2F
Supported MFA devices (e.g., authenticator apps, hardware tokens, security keys).
#### MFA Enforcement #ConditionalAccess #PolicyConditions
Using IAM policies with the `aws:MultiFactorAuthPresent` condition key to require MFA for certain actions.

## Authorization Process #PermissionsCheck #DecisionMaking
The process AWS uses to determine if an authenticated request is allowed or denied based on applicable policies.
### Request Context #SourceIP #Time #Actions #Resources
Information about the incoming request used in policy evaluation.
### Policy Evaluation Flow #ImplicitDeny #ExplicitDeny #Allow
The steps AWS takes to check policies: Default deny -> Evaluate relevant SCPs -> Evaluate Permissions Boundaries -> Evaluate Resource-based policies -> Evaluate Identity-based policies -> Evaluate Session Policies -> Final decision (Allow or Deny).

## IAM Security Best Practices #Security #Hardening #Compliance
Recommendations for securing your AWS environment using IAM.
### Lock Away Root User Access Keys #Security #RootUser
Do not use the root user for everyday tasks; secure its credentials and enable MFA.
### Create Individual IAM Users #Accountability #LeastPrivilege
Avoid sharing credentials; create separate users for each person or application.
### Use Groups to Assign Permissions #Management #Scalability
Assign permissions to groups, then add users to groups.
### Grant Least Privilege #MinimizeRisk #SecurityPrinciple
Provide only the minimum permissions necessary to perform tasks.
### Use Roles for Applications and Services #TemporaryCredentials #EC2 #Lambda
Prefer IAM roles with temporary credentials for applications running on EC2, Lambda, etc.
### Use Roles for Cross-Account Access #Delegation #Collaboration
Use roles to grant permissions to users or services in other AWS accounts.
### Configure a Strong Password Policy #UserSecurity #Compliance
Enforce password complexity, length, and rotation.
### Enable and Enforce MFA #Authentication #SecurityLayer
Require MFA for privileged users and sensitive operations.
### Use Access Keys Securely #Rotation #SecretsManagement
Rotate access keys regularly, avoid embedding them in code, use secrets management services.
### Utilize IAM Access Analyzer #Monitoring #Validation #ProactiveSecurity
Review findings to identify unintended public or cross-account access.
### Use Permissions Boundaries #DelegationControl #SecurityGuardrails
Delegate permissions management safely.
### Use Conditions in Policies #FineGrainedControl #ContextAware
Restrict access based on context like IP address, time, MFA status, tags.
### Regularly Review Permissions #Auditing #Cleanup
Remove unused users, roles, policies, and credentials. Use tools like IAM Access Advisor.
### Audit Activity with CloudTrail #Monitoring #Logging #Compliance
Monitor IAM actions and API calls using AWS CloudTrail.

## Identity Federation #SSO #ExternalIdentities #Integration
Connecting external identity systems with AWS IAM.
### Federation Concepts #IdP #SP #SAML #OpenIDConnect #SSO
Understanding Identity Providers (IdP), Service Providers (SP), and federation protocols.
### SAML 2.0 Federation #EnterpriseSSO #ADFS #Okta
Integrating with enterprise identity providers supporting SAML 2.0 (e.g., Active Directory Federation Services, Okta, Ping Identity).
#### SAML IdP Configuration #Metadata #Assertions
Setting up the external Identity Provider.
#### IAM Identity Provider Setup #Trust #SAMLProvider
Creating a SAML provider entity in IAM.
#### Role for SAML Federation #AssumeRoleWithSAML
Creating an IAM role that federated users can assume.
### OpenID Connect (OIDC) Federation #WebIdentity #Google #Facebook #Cognito
Integrating with OIDC-compatible identity providers (e.g., Google, Facebook, Amazon Cognito, Auth0).
#### OIDC IdP Configuration #ClientID #Tokens
Setting up the external OIDC Provider.
#### IAM Identity Provider Setup #Trust #OIDCProvider
Creating an OIDC provider entity in IAM.
#### Role for OIDC Federation #AssumeRoleWithWebIdentity
Creating an IAM role that OIDC-authenticated users can assume.
### AWS Single Sign-On (AWS SSO) / IAM Identity Center #CentralizedAccess #MultiAccount
A managed service to centrally manage SSO access to multiple AWS accounts and business applications. Integrates with AWS Organizations.
### Custom Identity Broker #FederationProxy #Advanced
Building a custom application to handle federation logic and token exchange with AWS STS.
### AWS Security Token Service (STS) #TemporaryCredentials #FederationService
The core AWS service enabling temporary credentials and federation.
#### AssumeRole API #RoleAssumption #STS
Used by principals to obtain temporary credentials for a role.
#### AssumeRoleWithSAML API #Federation #SAMLAssertion
Used with SAML assertions to obtain temporary credentials.
#### AssumeRoleWithWebIdentity API #Federation #OIDCToken
Used with OIDC tokens to obtain temporary credentials.
#### GetFederationToken API #FederatedUsers #Legacy
Legacy API to obtain temporary credentials for federated users (less common now).

## IAM Roles and Use Cases #Delegation #ServiceIntegration #Scenarios
Common scenarios where IAM roles are employed.
### EC2 Instance Roles #ApplicationsOnEC2 #AWSAPIAccess
Granting permissions to applications running on EC2 instances without needing to manage access keys on the instance.
### Lambda Execution Roles #Serverless #FunctionPermissions
Defining permissions for AWS Lambda functions to interact with other AWS services.
### Roles for Cross-Account Access #Collaboration #ResourceSharing
Allowing users or services in one AWS account to access resources in another account.
### Roles for AWS Services #ServiceIntegration #Automation
Allowing an AWS service (e.g., CloudFormation, CodePipeline) to perform actions on your behalf.
### Roles for Federated Users #SAML #OIDC #SSO
Granting access to users authenticated via external identity providers.

## Advanced IAM Features #FineGrainedControl #SecurityEnhancements
More complex IAM capabilities for specific needs.
### Attribute-Based Access Control (ABAC) #Tagging #ScalablePermissions
Controlling access based on attributes (tags) attached to users, roles, and resources. Uses policy conditions with tag keys.
### Permissions Boundaries #Delegation #Guardrails
Setting maximum permission limits for IAM entities.
### Session Policies #TemporaryPermissions #AssumeRole #Federation
Passing policies during role assumption to further restrict session permissions.
### Service-Linked Roles (SLRs) #ServiceIntegration #ManagedRoles
Roles linked directly to an AWS service, pre-defined by the service for its operation. Managed by AWS.
### Cross-Account Access with Resource Policies vs. Roles #Comparison #DesignChoice
Understanding the trade-offs between using resource-based policies and IAM roles for cross-account access.

## IAM Access Management Tools #Analysis #Simulation #Reporting
AWS services and features that help manage and analyze IAM permissions.
### IAM Access Analyzer #ExternalAccess #UnusedAccess #PolicyValidation
Identifies resources shared externally, validates policies, and highlights unused access.
#### Findings (External Access) #PublicAccess #CrossAccount
Reports resources accessible from outside your zone of trust (account or organization).
#### Findings (Unused Access) #LeastPrivilege #Cleanup
Identifies unused roles, access keys, and passwords.
#### Policy Validation #Checks #BestPractices #SecurityWarnings
Checks IAM policies against best practices and security recommendations.
#### Policy Generation #CloudTrail #Scaffolding
Generates IAM policies based on access activity logged in CloudTrail.
### IAM Policy Simulator #Testing #Debugging #Validation
Tool to test and troubleshoot identity-based policies without making actual requests.
### IAM Access Advisor (Last Accessed Information) #Auditing #Cleanup #LeastPrivilege
Shows the last time an IAM entity (user, role) accessed permitted services, helping identify and remove unnecessary permissions.
### IAM Credential Report #Auditing #Compliance #SecurityStatus
A report listing all IAM users in your account and the status of their credentials (password, access keys, MFA).

## Auditing and Monitoring IAM #Logging #Tracking #Compliance
Tracking IAM activities and changes for security and compliance.
### AWS CloudTrail Integration #APILogging #EventHistory
CloudTrail logs most AWS API calls, including IAM actions (user creation, policy changes, role assumption, logins).
#### Management Events #ControlPlane #IAMActions
Logs related to management operations (e.g., `CreateUser`, `AttachRolePolicy`).
#### Data Events #ResourceLevel #S3Objects #LambdaFunctions
Logs related to resource operations (e.g., `s3:GetObject`). Can be configured per resource type.
#### CloudTrail Log File Integrity Validation #Security #TamperProof
Ensures log files have not been tampered with.
#### CloudTrail Insights #AnomalyDetection #UnusualActivity
Detects unusual API activity in your account.
### Amazon CloudWatch Events / EventBridge #RealTimeMonitoring #Automation
Trigger automated actions based on specific IAM events captured by CloudTrail (e.g., alert on root user login, failed console logins).
### AWS Config Rules for IAM #Compliance #ConfigurationChecks
Using AWS Config to assess IAM configurations against desired states or best practices (e.g., check if MFA is enabled for root, check for unused credentials).

## Programmatic Access and Credentials #API #CLI #SDK #Automation
Interacting with AWS services using code or command-line tools via IAM credentials.
### AWS Command Line Interface (CLI) #Shell #Scripting
Using the AWS CLI with IAM credentials (access keys or assumed role credentials) to manage resources.
### AWS Software Development Kits (SDKs) #Applications #Code #Libraries
Using AWS SDKs (Python Boto3, Java, .NET, etc.) with IAM credentials to interact with AWS services from applications.
### Credential Configuration #ConfigurationFiles #EnvironmentVariables #InstanceMetadata
Methods for providing credentials to the CLI and SDKs.
#### ~/.aws/credentials File #SharedCredentials #Profiles
Storing access keys in a shared credentials file.
#### ~/.aws/config File #Profiles #RoleAssumption #Settings
Configuring profiles, including role assumption parameters and default regions.
#### Environment Variables #CredentialExposureRisk #Containers
Setting credentials via environment variables (e.g., `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`).
#### EC2 Instance Metadata Service (IMDS) #InstanceRoles #BestPractice
Retrieving temporary credentials associated with an EC2 instance role from the instance metadata service.
#### ECS Task Roles / EKS Service Accounts #ContainerCredentials
Similar mechanisms for containers running on ECS or EKS.
### Secure Credential Management #SecretsManager #ParameterStore #Rotation
Using services like AWS Secrets Manager or Systems Manager Parameter Store to securely store and rotate credentials instead of hardcoding them.
