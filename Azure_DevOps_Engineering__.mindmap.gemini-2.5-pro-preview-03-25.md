# Azure DevOps Engineering #Overview #DevOps #Cloud
Comprehensive overview of engineering practices and tools within the Azure DevOps ecosystem.

## Fundamentals of DevOps and Azure DevOps #Basics #Concepts #Introduction
Understanding the core principles of DevOps and the role Azure DevOps plays.

### What is DevOps? #Philosophy #Culture #Practices
Core concepts: CAMS (Culture, Automation, Measurement, Sharing), collaboration, automation, feedback loops.

### Introduction to Azure DevOps Services vs. Azure DevOps Server #Cloud #OnPremises #Comparison
Key differences, features, and use cases for the cloud-hosted service and the on-premises server version.

### Azure DevOps Organization and Project Structure #Hierarchy #Administration #Setup
Setting up organizations, projects, teams, and managing basic settings.

## Azure Boards #Agile #Planning #WorkTracking
Tools for planning, tracking, and discussing work across teams.

### Work Item Tracking #Tasks #Bugs #Features #Epics
Understanding different work item types and their usage.

### Backlogs (Product, Sprint, Portfolio) #Prioritization #Roadmap #Management
Managing product features, sprint tasks, and higher-level portfolio planning.

### Kanban Boards #Visualization #Workflow #WIPLimits
Visualizing workflow, managing work-in-progress limits, customizing columns and swimlanes.

### Sprint Planning and Execution #Scrum #Iteration #Capacity
Tools for sprint planning, task boards, and capacity management.

### Queries and Charts #Reporting #DataAnalysis #Visualization
Creating custom queries to find work items and visualizing data with charts.

### Dashboards #Monitoring #Reporting #Customization
Creating shared dashboards with widgets to display progress and status.

### Process Customization (Inherited & XML) #Workflow #Configuration #Tailoring
Adapting work item types, fields, and workflows to team needs.

## Azure Repos #VersionControl #SourceCode #Collaboration
Source code management using Git or Team Foundation Version Control (TFVC).

### Git Fundamentals in Azure Repos #DistributedVCS #Branching #Merging
Core Git concepts: repositories, commits, branches, merges, pull requests.

### Branching Strategies (GitFlow, GitHub Flow, Trunk-Based) #Workflow #BestPractices #Policy
Implementing effective branching models for development teams.

### Pull Requests (PRs) #CodeReview #Collaboration #QualityGates
Managing code reviews, discussions, and merge processes.

### Branch Policies #Quality #Security #Automation
Enforcing standards like required reviewers, build validation, status checks.

### TFVC (Team Foundation Version Control) #CentralizedVCS #Legacy #Comparison
Understanding TFVC features, check-ins, check-outs, shelvesets (for teams migrating or using TFVC).

### Repository Management #Security #Permissions #Administration
Managing repository settings, permissions, and security.

## Azure Pipelines #CI #CD #Automation #Build #Release
Automating the build, test, and deployment of code.

### Core Concepts #Pipeline #Stage #Job #Task #Agent
Understanding the fundamental building blocks of Azure Pipelines.

### YAML Pipelines #Code #Declarative #ConfigurationAsCode
Defining pipelines using YAML syntax for versioning and management alongside code.

### Classic Editor Pipelines #UI #Visual #Legacy
Creating and managing pipelines using the graphical user interface.

### Build Pipelines (CI) #Compilation #Testing #Artifacts
Configuring pipelines to compile code, run tests, and produce artifacts.

### Release Pipelines (CD) #Deployment #Environments #Approvals
Defining stages, environments, approvals, and gates for deploying applications.

### Agents (Microsoft-hosted vs. Self-hosted) #Execution #Environment #Compute
Choosing and configuring agents to run pipeline jobs.

### Deployment Groups & Environments #DeploymentTargets #VMs #Kubernetes
Managing deployment targets like VMs or Kubernetes clusters for traditional or modern deployments.

### Variables and Variable Groups #Configuration #Secrets #Parameters
Managing configuration values and secrets securely.

### Task Groups #Reuse #Abstraction #Efficiency
Creating reusable sequences of tasks.

### Templates (YAML & Classic) #Reuse #Standardization #Consistency
Defining reusable pipeline structures for consistency across projects.

### Triggers (CI, PR, Scheduled) #Automation #Events
Configuring pipelines to run automatically based on code changes, pull requests, or schedules.

### Approvals and Gates #QualityGates #ManualIntervention #Control
Implementing manual approvals or automated checks before deployments proceed.

### Deployment Strategies #BlueGreen #Canary #Rolling
Implementing various strategies for safe and controlled releases.

### Integration with Azure Key Vault #SecretsManagement #Security #BestPractices
Securely accessing secrets stored in Azure Key Vault from pipelines.

## Azure Test Plans #Testing #QualityAssurance #Management
Tools for planning, executing, and tracking testing efforts.

### Test Planning and Suites #Organization #Strategy #Coverage
Creating test plans and organizing test cases into suites (static, requirement-based, query-based).

### Manual Testing #Execution #Exploratory #UserAcceptance
Running tests manually using the web runner or Test & Feedback extension.

### Automated Testing Integration #CI #CD #Pipelines #Reporting
Integrating automated tests (Unit, Integration, UI) results into Azure DevOps.

### Test Case Management #Creation #Parameters #SharedSteps
Creating and managing test cases, using parameters for data variations, and sharing common steps.

### Reporting and Analysis #Metrics #Progress #Traceability
Tracking test progress, results, and traceability back to requirements.

### User Acceptance Testing (UAT) #Feedback #Stakeholder #Validation
Facilitating UAT and gathering feedback from stakeholders.

## Azure Artifacts #PackageManagement #Dependencies #Versioning
Hosting and sharing packages like NuGet, npm, Maven, Python, and Universal Packages.

### Feed Management #Creation #Permissions #Scope
Creating and managing artifact feeds for different scopes (project, organization).

### Package Types (NuGet, npm, Maven, PyPI, Universal) #Formats #Ecosystems
Understanding supported package types and their use cases.

### Upstream Sources #Proxy #Centralization #Efficiency
Connecting to public registries (e.g., NuGet.org, npmjs.com) or other Azure Artifacts feeds.

### Views (@local, @prerelease, @release) #Promotion #Quality #Versioning
Promoting packages through different views to signify quality and stability.

### Symbol Server #Debugging #Troubleshooting #Symbols
Publishing and consuming symbols for easier debugging of packaged code.

### Security and Permissions #AccessControl #Security
Controlling who can publish and consume packages from feeds.

## Infrastructure as Code (IaC) with Azure DevOps #Automation #Azure #CloudInfrastructure
Managing and provisioning infrastructure using code, integrated with Azure DevOps workflows.

### ARM Templates #AzureNative #JSON #Declarative
Using Azure Resource Manager templates for infrastructure deployment.

### Bicep #DSL #AzureNative #Abstraction
Using Bicep, a domain-specific language that abstracts ARM templates.

### Terraform Integration #HashiCorp #MultiCloud #StateManagement
Integrating Terraform for provisioning Azure or multi-cloud infrastructure.

### Ansible Integration #ConfigurationManagement #Automation
Using Ansible for configuration management and application deployment.

### Integrating IaC with Azure Pipelines #CI #CD #InfrastructureDeployment
Automating infrastructure provisioning and updates through pipelines.

### Managing State and Secrets for IaC #Security #BestPractices #Consistency
Handling sensitive data and state files securely within the DevOps process.

## Monitoring and Observability #Logging #Metrics #Tracing #Alerting
Integrating monitoring tools and practices within the Azure DevOps lifecycle.

### Azure Monitor Integration #AzureNative #Logs #Metrics #Alerts
Leveraging Azure Monitor for application and infrastructure observability.

### Application Insights #APM #Performance #Exceptions #Usage
Using Application Insights for application performance monitoring and diagnostics.

### Pipeline Analytics #CI #CD #Performance #Optimization
Analyzing pipeline duration, success rates, and identifying bottlenecks.

### Dashboarding for DevOps Metrics #DORA #LeadTime #DeploymentFrequency
Visualizing key DevOps metrics (e.g., DORA metrics) using Azure DevOps Dashboards or Power BI.

### Alerting and Notifications #Proactive #Incidents #Response
Setting up alerts based on metrics or logs to proactively manage issues.

## Security in Azure DevOps (DevSecOps) #Security #Compliance #RiskManagement
Integrating security practices and tools throughout the DevOps lifecycle.

### Secure Service Connections #Authentication #Authorization #AzureIntegration
Managing connections to external services (like Azure, GitHub) securely.

### Secrets Management (Variable Groups, Key Vault) #Credentials #APIKeys #Certificates
Best practices for handling sensitive information in pipelines and configurations.

### Pipeline Security #Permissions #YAML #Templates #Auditing
Securing pipeline definitions, agent pools, and execution environments.

### Dependency Scanning (e.g., WhiteSource/Mend, GitHub Advanced Security) #Vulnerabilities #SBOM #OSS
Scanning code dependencies for known vulnerabilities.

### Static Application Security Testing (SAST) #CodeAnalysis #SecurityBugs #EarlyDetection
Integrating tools to analyze source code for potential security flaws.

### Dynamic Application Security Testing (DAST) #RuntimeAnalysis #WebApps #Vulnerabilities
Integrating tools to test running applications for security vulnerabilities.

### Infrastructure Security Scanning #IaC #Compliance #Misconfigurations
Scanning IaC templates for security misconfigurations.

### Compliance and Auditing #Policy #Reporting #Governance
Using Azure Policy integration and audit logs to ensure compliance.

## Collaboration and Communication #Teamwork #KnowledgeSharing #Integration
Features facilitating team collaboration and knowledge sharing.

### Azure DevOps Wiki #Documentation #KnowledgeBase #Markdown
Creating and managing project documentation directly within Azure DevOps.

### Notifications #Alerts #Updates #Customization
Configuring notifications for work items, builds, releases, and code changes.

### Integration with Microsoft Teams and Slack #ChatOps #Communication #Workflow
Connecting Azure DevOps events and actions to collaboration platforms.

### Discussion and Comments #WorkItems #PullRequests #Feedback
Facilitating communication directly on work items and code reviews.

## Extensibility and Integration #Customization #APIs #Marketplace
Extending Azure DevOps functionality and integrating with other tools.

### Visual Studio Marketplace #Extensions #Tools #Addons
Finding and installing extensions to add new capabilities.

### Developing Custom Extensions #SDK #WebExtensions #APIs
Building bespoke extensions for specific organizational needs.

### Service Hooks #Webhooks #Automation #Integration
Triggering external services based on events in Azure DevOps.

### REST APIs #ProgrammaticAccess #Automation #Integration
Interacting with Azure DevOps programmatically for automation and integration scenarios.

### Azure CLI DevOps Extension #CommandLine #Scripting #Automation
Managing Azure DevOps resources and workflows from the command line.

## Governance and Administration #Management #Security #Policy #Cost
Administering and governing the Azure DevOps environment.

### Organization and Project Settings #Configuration #Defaults #Policies
Managing settings at the organization and project levels.

### User and Group Management #Permissions #AccessControl #SecurityGroups
Managing user access and permissions using groups and roles.

### Billing and Cost Management #Usage #Licensing #Optimization
Understanding Azure DevOps licensing, billing, and managing costs.

### Auditing and Reporting #Compliance #Traceability #Security
Using audit logs to track activities and generate reports.

### Policies (Cross-Project, Security, Pipeline) #Compliance #Standards #Enforcement
Defining and enforcing policies across the organization or specific projects.

## Advanced Topics and Best Practices #Optimization #Strategy #Future
Exploring more complex scenarios and established best practices.

### Advanced YAML Pipeline Techniques #Conditions #Expressions #Loops #DependsOn
Leveraging advanced YAML features for complex pipeline logic.

### Multi-Stage Pipelines Best Practices #Environments #Approvals #Rollback
Designing robust multi-stage pipelines for complex applications.

### Feature Flags #ReleaseManagement #ControlledRollout #Experimentation
Implementing feature flags for decoupled deployment and release.

### Git Repository Strategies at Scale #Monorepo #Polyrepo #Management
Managing source code effectively in large or complex organizations.

### DevOps for Databases #SchemaMigration #DataSeeding #Testing
Applying DevOps principles to database development and deployment.

### DevOps for Containers and Kubernetes #Docker #AKS #Helm #CI #CD
Specific CI/CD patterns for containerized applications deployed to Kubernetes.

### Cost Optimization in Azure DevOps #Agents #Artifacts #ParallelJobs
Strategies for minimizing costs associated with Azure DevOps usage.

## Migration to Azure DevOps #Transition #Planning #Execution
Strategies and tools for migrating from other platforms to Azure DevOps.

### Migrating from TFVC to Git #VersionControl #Modernization #Strategy
Planning and executing the migration from TFVC to Git within Azure Repos.

### Migrating from Jenkins / Other CI/CD Tools #Pipelines #Automation #Integration
Moving build and release automation from external tools to Azure Pipelines.

### Migrating from Jira / Other Planning Tools #WorkItems #Agile #DataMigration
Transferring work item history and planning structures to Azure Boards.

### Using Azure DevOps Migration Tools #MicrosoftTools #DataMigration #TFS
Leveraging official tools for migrating from Azure DevOps Server (TFS) to Azure DevOps Services.
