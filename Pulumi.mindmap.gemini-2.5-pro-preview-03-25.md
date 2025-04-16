# Pulumi #InfrastructureAsCode #CloudEngineering
Pulumi is a modern open-source Infrastructure as Code (IaC) platform enabling developers and infrastructure teams to define, deploy, and manage cloud infrastructure using familiar programming languages.

## Introduction and Core Concepts #Overview #Fundamentals #Basics
Provides an introduction to Pulumi, its purpose, and fundamental concepts.
### What is Pulumi? #Definition #IaC
Pulumi is an IaC tool using general-purpose languages (like Python, TypeScript, Go, C#, Java) and markup languages (YAML) to manage cloud resources declaratively. [2, 3, 4]
### Why Use Pulumi? #Benefits #Advantages
Manage infrastructure across multiple clouds using familiar languages, enabling complex logic, code reuse, testing, and developer-centric workflows. [1, 3, 29] Built-in secrets management. [1, 4] Reduces learning curve for teams already proficient in supported languages. [1]
### How Pulumi Works #Architecture #ExecutionFlow
Describes the interaction between the Pulumi CLI, language host, deployment engine, and cloud providers to manage resources. [1, 3]
#### Pulumi CLI #Tooling #Interface
The command-line interface used to interact with Pulumi projects, stacks, and the Pulumi Service. [1, 3, 12]
#### Language Host #Runtime #Execution
Runs the user's Pulumi program written in a supported language. [1, 5]
#### Deployment Engine #Core #Orchestration
Compares the desired state (code) with the current state (cloud), calculates differences, and executes actions (create, update, delete) via providers. [1, 6]
#### State File #StateManagement #Tracking
A JSON file (checkpoint) storing the state of managed infrastructure for a specific stack. [1, 39] This is the source of truth for Pulumi. [39]
### Projects #Organization #Structure
A Pulumi project is a directory containing a program (`__main__.py`, `index.ts`, etc.) and a `Pulumi.yaml` file defining project metadata. [2, 4, 5]
#### `Pulumi.yaml` #Metadata #Configuration
Project manifest file specifying the project name, runtime, and other metadata. [4, 5]
### Stacks #Environments #Instances
An isolated instance of a Pulumi program, often corresponding to development stages (dev, staging, prod) or feature branches. Each stack has its own configuration and state. [2, 4]
#### `Pulumi.<stack-name>.yaml` #StackConfig #Parameters
Stack-specific configuration file storing input parameters for the Pulumi program. [4, 5]
### Resources #CloudComponents #Primitives
Represent cloud infrastructure components (e.g., VMs, databases, buckets). [2, 13]
#### Custom Resources #ProviderMapping #CloudAPI
Directly map to resources managed by a cloud provider (e.g., AWS S3 Bucket, Azure VM). Managed via Pulumi providers interacting with cloud APIs. [6, 13]
#### Component Resources #Abstraction #Reusability
Higher-level, logical abstractions grouping multiple custom or other component resources. Defined within the Pulumi program to create reusable building blocks. [2, 4, 13, 25, 36]

## Supported Languages #Programming #SDKs
Pulumi allows defining infrastructure using various popular programming and markup languages. [2, 3]
### TypeScript/JavaScript (Node.js) #NodeJS #WebDev [2, 3, 16]
### Python #Python #Scripting [2, 3, 16]
### Go #Golang #Backend [2, 3, 16]
### .NET (C#, F#, VB) #CSharp #DotNet [2, 3, 16]
### Java (and other JVM languages like Scala, Kotlin) #JVM #Enterprise [2, 3, 19]
### YAML #Markup #Declarative [2, 3, 16]
Pulumi YAML provides a declarative way to define resources. [19]
### Language Parity #Features #Equality
All supported languages are generally equally capable of provisioning infrastructure across providers. [2, 16] However, some features or libraries might debut in specific languages first. [3]

## Providers #Integrations #CloudSupport
Plugins that Pulumi uses to understand and interact with cloud APIs and other services. [1, 6]
### Major Cloud Providers #AWS #Azure #GCP
Native support for AWS, Azure, Google Cloud Platform. [1, 3, 4]
### Kubernetes #Containers #Orchestration
Comprehensive Kubernetes support, including 100% API coverage, Helm charts, CRDs, YAML/Kustomize integration, and an operator for GitOps. [3, 15]
### Other Cloud & SaaS Providers #Databases #Monitoring #Networking
Support for a wide range of providers like Cloudflare, Datadog, Docker, GitHub, MongoDB Atlas, Snowflake, etc. [3, 10, 16, 19] Pulumi lists over 75 providers. [3]
### Dynamic Providers #CustomResources #Extensibility
Allows users to define custom resource providers directly within their Pulumi program using supported languages, for resources not covered by existing providers. [1, 5]
### Terraform Provider Bridge #Compatibility #Ecosystem
Pulumi can adapt and use existing Terraform providers, significantly expanding the ecosystem of supported resources. [15, 29]

## State Management #Backend #Persistence
How Pulumi stores and manages the state of your infrastructure. [31, 39]
### Pulumi Cloud Backend (Default) #SaaS #ManagedService
A hosted service (free for individuals) that manages state, secrets, provides collaboration features, history, RBAC, and a web console. [3, 4, 11, 28, 31]
#### Features #Collaboration #History #UI
State storage, concurrency control, encryption, stack history, team collaboration, RBAC, web console visualizations. [4, 11, 28, 38]
#### Self-Hosted Pulumi Cloud #Enterprise #OnPremises
Option for enterprises to host the Pulumi Cloud backend within their own network. [15, 28, 31]
### Self-Managed Backends (DIY) #OpenSource #Control
Users can manage their own state using various storage options. [4, 28, 31, 39]
#### Local Filesystem #Development #Testing [28, 31, 39]
#### AWS S3 (and compatible) #ObjectStorage #AWS [28, 31, 39]
#### Azure Blob Storage #ObjectStorage #Azure [28, 31, 39]
#### Google Cloud Storage #ObjectStorage #GCP [28, 31, 39]
### State Operations #CLI #Management
Commands for managing state (e.g., `pulumi state delete`, `pulumi state move`, `pulumi state edit`). [12]
### Checkpoints #Snapshots #StateFiles
Pulumi stores state snapshots as JSON files called checkpoints. [3, 31, 39]
### State Locking #Concurrency #Safety
Handled automatically by the Pulumi Cloud backend; may require manual setup for self-managed backends (e.g., using DynamoDB with S3). [28, 39]

## Secrets Management #Security #Encryption
Handling sensitive data like passwords, API keys, and certificates. [1, 27]
### Built-in Encryption #Encryption #Security
Pulumi automatically encrypts secret values within the state file. [1, 4, 11]
### Secrets Providers #KeyManagement #KMS
Configurable providers for encrypting secrets. [28, 31]
#### Default Passphrase Provider #Passphrase #LocalEncryption
Uses a stack-specific passphrase for encryption (default for self-managed backends). [28, 39]
#### Cloud KMS Providers #AWSKMS #AzureKeyVault #GCPKMS
Integration with cloud provider KMS services (AWS KMS, Azure Key Vault, GCP KMS). [28]
#### HashiCorp Vault #Vault #SecretsEngine
Integration with HashiCorp Vault Transit Secrets Engine. [28]
#### Pulumi Cloud Backend Secrets #ManagedSecrets #CloudEncryption
Uses the Pulumi Cloud service's secrets management (default when using Pulumi Cloud backend). [11, 28]
### Pulumi ESC (Environments, Secrets, and Configuration) #CentralizedManagement #ConfigSprawl
A product for centralized management of environments, secrets, and configurations across applications and infrastructure. Can sync with external secret stores. [16, 27, 30, 32]
#### Rotated Secrets #Automation #CredentialSecurity
Automates credential rotation using a two-secret strategy for enhanced security within Pulumi ESC. [32]
#### ESC GitHub Action #CI/CD #SecretsInjection
Securely injects secrets and configuration from Pulumi ESC into GitHub Actions workflows. [32]

## Component Resources Deep Dive #Abstraction #Modularity #Patterns
Encapsulating infrastructure patterns into reusable building blocks. [2, 4, 13, 25, 36]
### Authoring Components #Development #BestPractices
Creating custom components by subclassing `ComponentResource` and registering child resources. [6, 25, 36]
### Inputs and Outputs #Parameters #Results
Defining input properties for customization and output properties to expose information about the component's resources. Use `registerOutputs` to declare outputs. [25, 36]
### Provider Propagation #Configuration #Scoping
Passing specific provider configurations down to child resources within a component. [25]
### Multi-Language Components #CrossLanguage #SDKGeneration
Authoring components that can be consumed from any Pulumi-supported language by generating language-specific SDKs. Requires schema definition. [3, 25]

## Testing Pulumi Programs #QualityAssurance #Reliability
Leveraging general-purpose language testing frameworks to ensure infrastructure code correctness. [10, 22]
### Unit Testing #Mocking #FastFeedback
In-memory tests that mock cloud provider interactions, allowing for fast execution and validation of program logic without deploying resources. [18, 22, 40]
#### Mocking Framework #TestSetup #Isolation
Pulumi provides mocking libraries to simulate resource creation and return dummy data. [18, 40]
### Property Testing (using Policy as Code) #Invariants #Compliance
Using Pulumi CrossGuard policies to define and check invariants (properties) of resources during the preview/update process. [22]
### Integration Testing #E2E #RealResources
Deploying actual infrastructure to a temporary environment, running tests against it (e.g., hitting endpoints), and then destroying the resources. [10, 22]
### Provider Testing (`providertest`) #Internal #SDKTesting
Internal library (evolving) used by Pulumi for end-to-end and SDK testing of providers. [41]

## Deployment and CI/CD #Automation #DevOps #Delivery
Integrating Pulumi into continuous integration and delivery pipelines. [4, 10]
### CI/CD Integration Guides #GitHubActions #GitLabCI #Jenkins #AzureDevOps
Guides and best practices for integrating Pulumi with popular CI/CD systems like GitHub Actions, GitLab CI, Jenkins, Azure DevOps, AWS Code Services, etc. [4, 10, 11, 30]
### Pulumi GitHub Action #Workflow #Integration [4, 11]
### Pulumi GitLab CI Integration #Workflow #Integration [4]
### Stack References #Dependencies #CrossStack
Managing dependencies and sharing outputs between different Pulumi stacks. [4]
### Preview and Update Commands #Workflow #CLI
`pulumi preview` to see planned changes and `pulumi up` to apply them. [1, 10]
### Automation API #ProgrammaticControl #Embedding
Allows embedding Pulumi engine capabilities directly into application code for custom automation, tooling, and workflows. [7, 20, 30, 33, 37, 43]

## Policy as Code (CrossGuard) #Compliance #Governance #Security
Defining and enforcing policies on infrastructure configurations. [4, 8, 10, 21, 26]
### Overview #Guardrails #Enforcement
Enforce security, compliance, cost controls, and best practices by writing policies in code (TypeScript/JavaScript, Python, OPA). [8, 10, 17, 21, 23]
### Policy Packs #Organization #Rulesets
Collections of policies that can be applied to stacks. [8, 21, 23]
### Policy Enforcement #Mandatory #Advisory
Policies can be set as advisory (warnings) or mandatory (blocking deployment on violation). [8, 21, 23]
### Supported Policy Languages #TypeScript #Python #OPA
Policies can be written in TypeScript/JavaScript, Python, or using Open Policy Agent (OPA). [17, 21, 23]
### Predefined Policy Packs #AWSGuard #ComplianceReady
Ready-to-use policy packs like AWSGuard or commercial Compliance Ready packs for specific standards (CIS, PCI DSS, etc.). [8, 23]
### Policy Remediation #AutoFix #Automation
Capabilities to automatically fix certain policy violations. [8]
### Integration with CI/CD #AutomatedChecks #ShiftLeft
Running policy checks as part of the CI/CD pipeline to catch violations early. [23, 26]

## Pulumi Service & Console #ManagementUI #Collaboration #Visibility
The web-based interface and backend service for managing Pulumi projects and stacks. [3, 11]
### Dashboard Overview #UI #Visualization
Provides visibility into stacks, resources, updates, and activities. [11]
### Stack Management #Organization #Filtering
View, organize, and filter stacks (e.g., using Stack Tags). [11]
### Update History #Auditing #Logs
Detailed logs and history for each stack update (`pulumi up`). [4, 11]
### Resource Visualization #Graph #Dependencies
Visual representation of stack resources and their interdependencies. [11]
### Access Control (RBAC) #Permissions #Security
Role-based access control for managing team permissions within organizations. Supports custom roles. [4, 32]
### CI/CD Integration Links #Traceability #SourceControl
Links stack updates to specific source commits and CI/CD pipeline runs. [11]
### Secrets Management UI #Secrets #Credentials
Interface for managing encrypted configuration values (secrets). [11]
### Pulumi Service Provider #ManagePulumiService #Meta
A Pulumi provider to manage Pulumi Service resources (Teams, Tokens, Webhooks, Stacks etc.) programmatically. [35]

## Advanced Features and Concepts #BeyondBasics #Scale
More sophisticated capabilities of the Pulumi platform.
### Automation API #Embedding #CustomTooling
Programmatic interface to Pulumi engine for building custom tools, CLIs, SaaS integrations, self-service portals, complex workflows. [7, 20, 30, 33, 37, 43]
#### Use Cases #SelfService #Orchestration #Testing
Self-service infrastructure platforms, CI/CD integration, integration testing, multi-stage deployments, custom tooling. [7, 20, 33]
#### Programming Models #Inline #Local
Supports running programs defined inline (as functions) or from local disk paths. [20, 37]
### Multi-Cloud Abstractions #CloudAgnostic #Portability
Building components or platforms that can deploy to multiple cloud providers using a single interface. [3]
### Importing Existing Resources #Brownfield #Adoption
Bringing existing, manually-created cloud resources under Pulumi management. [2, 15]
### Conversion Tools #Migration #CrossCode
Tools to convert existing IaC configurations (Terraform HCL, CloudFormation, ARM Templates, Kubernetes YAML) into Pulumi programs (`pulumi convert`). [15, 19] Pulumi CrossCode is the underlying technology. [19]
### Pulumi Registry #Discovery #Packages
A central place to discover and share Pulumi packages (providers and components). [16, 19, 35]
### Pulumi AI #GenerativeAI #CodeGeneration
Experimental feature using natural language prompts to generate Pulumi code. [16, 30]
### Pulumi Insights #CloudManagement #Analytics
Intelligent cloud infrastructure management service providing visibility, search, analytics, and policy capabilities across discovered resources. [32]

## Comparison with Alternatives #IaCTools #Terraform #CloudFormation
Positioning Pulumi relative to other Infrastructure as Code tools.
### Pulumi vs. Terraform #HCL #ProgrammingLanguages
Key difference is Pulumi uses general-purpose languages vs. Terraform's HCL. Pulumi is Apache 2.0 licensed, Terraform uses BSL. Pulumi can use Terraform providers. Both use state management. [1, 5, 9, 24, 29, 34, 45] Terraform has a larger existing community/module ecosystem, but Pulumi's is growing. [9, 45]
### Pulumi vs. CloudFormation #AWS #YAMLJSON
Pulumi is multi-cloud and uses general-purpose languages; CloudFormation is AWS-specific and uses YAML/JSON templates. Pulumi offers conversion tools from CloudFormation. [9, 15, 29]
### Pulumi vs. CDK (AWS CDK / CDKTF) #Abstractions #LanguageSupport
Both Pulumi and CDKs allow using general-purpose languages. Pulumi has its own engine and state management, supports multiple clouds natively. CDKs typically synthesize to the underlying tool's format (CloudFormation, Terraform HCL). Pulumi offers AWS CDK interop. [19, 34, 45]

## Community and Ecosystem #Support #Resources #Contributions
The community, resources, and surrounding ecosystem for Pulumi.
### Pulumi Community Slack #Support #Discussion [14, 44]
### GitHub Discussions & Issues #BugTracking #FeatureRequests [14, 44]
### Pulumi Blog #Announcements #Articles [14, 17]
### Pulumi Documentation #Guides #APIReference [14]
### Pulumi Registry #Packages #Providers [16, 38]
### Contributing to Pulumi #OpenSource #Development [3, 14]
Pulumi is open-source (Apache 2.0 license) and welcomes contributions. [14, 16, 24]
### Pulumiverse #CommunityProjects #Meetups
Community-driven initiatives and meetups. [44]
### Language Package Ecosystems #Libraries #Reuse
Leveraging the vast package ecosystems of supported languages (npm, PyPI, Go modules, NuGet, Maven) within Pulumi programs. [38]
