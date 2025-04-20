# DevOps Practices #Overview #Methodology #Culture
An overview of the principles, practices, and culture that enable organizations to deliver applications and services at high velocity.

## Foundational Concepts and Principles #Basics #Theory #Core
Understanding the core ideas that underpin DevOps.

### What is DevOps? #Definition #Scope
Explanation of the DevOps movement, its goals (velocity, reliability, collaboration), and what it is *not*.

### The Three Ways #Principles #Flow #Feedback #Learning
Describes the foundational principles: Systems Thinking (Flow), Amplify Feedback Loops, and Culture of Continual Experimentation and Learning.

### CALMS Framework #Framework #Culture #Automation #Lean #Measurement #Sharing
A conceptual framework for assessing DevOps adoption readiness and maturity: Culture, Automation, Lean, Measurement, Sharing.

### Relationship to Agile and Lean #Comparison #Agile #Lean
How DevOps complements and extends Agile software development and Lean principles.

## DevOps Culture and Collaboration #Culture #People #Collaboration
Focuses on the human aspects, communication, and organizational changes required for successful DevOps implementation.

### Shared Responsibility #Ownership #Accountability #Teamwork
Breaking down silos between Development, Operations, Security, and other teams. Fostering a sense of collective ownership.

### Cross-Functional Teams #TeamStructure #Skills #Collaboration
Organizing teams with diverse skills capable of handling the entire application lifecycle.

### Blameless Post-Mortems #Learning #Improvement #PsychologicalSafety
Analyzing failures constructively to learn and improve processes without assigning blame.

### Continuous Feedback #Communication #Improvement #FeedbackLoops
Establishing mechanisms for rapid and constant feedback between teams and from users/systems.

### Psychological Safety #Trust #Innovation #Experimentation
Creating an environment where team members feel safe to speak up, experiment, and take risks without fear of negative consequences.

## Planning and Project Management #Planning #Agile #Workflow
Integrating DevOps principles into the planning and management phases.

### Agile Methodologies #Scrum #Kanban #LeanPM
Utilizing Agile frameworks like Scrum and Kanban to manage work, prioritize tasks, and visualize workflow.

### Requirements Management #UserStories #Backlog #Prioritization
Techniques for gathering, defining, and managing requirements in a fast-paced environment.

### Value Stream Mapping #VSM #Lean #Optimization #Flow
Analyzing and optimizing the flow of value delivery from idea to production.

### Work in Progress (WIP) Limits #Kanban #Flow #Efficiency
Limiting the amount of work being done simultaneously to improve flow and reduce context switching.

## Continuous Integration (CI) #CI #Automation #Build #Testing
The practice of frequently merging code changes into a central repository, after which automated builds and tests are run.

### Version Control Systems (VCS) #Git #SCM #Collaboration #Tracking
Using systems like Git for source code management, branching strategies (e.g., Gitflow, GitHub Flow), and collaboration.

### Automated Builds #BuildTools #Compilation #Packaging #Automation
Using tools (e.g., Jenkins, GitLab CI, GitHub Actions, Azure Pipelines, Maven, Gradle) to automatically compile code, run tests, and package applications.

### Automated Testing in CI #UnitTesting #IntegrationTesting #CodeQuality #Automation
Integrating automated unit tests, integration tests, and static code analysis into the build process.

### Artifact Repositories #Nexus #Artifactory #Registry #Versioning
Storing and managing build artifacts (e.g., binaries, libraries, container images) in repositories like Nexus, Artifactory, or Docker Hub.

## Continuous Delivery and Continuous Deployment (CD) #CD #Automation #Release #Deployment
Practices that extend CI to automate the release and deployment of software.

### Continuous Delivery vs. Continuous Deployment #Definition #Distinction #AutomationLevel
Understanding the difference: Delivery means releases are automated but deployment to production is manual; Deployment automates the entire process up to production.

### Deployment Pipelines #PipelineAsCode #Orchestration #Workflow #Automation
Automating the stages (build, test, deploy) required to release software using pipeline tools (e.g., Jenkins, GitLab CI, GitHub Actions, Spinnaker, Argo CD).

### Release Strategies #BlueGreen #Canary #Rolling #FeatureFlags #RiskManagement
Techniques for deploying updates safely with minimal downtime and risk (e.g., Blue/Green deployments, Canary releases, Rolling updates, Feature Toggles).

### Automated Rollbacks #Recovery #SafetyNet #Automation
Implementing mechanisms to automatically revert to a previous stable version if a deployment fails.

## Infrastructure as Code (IaC) #IaC #Automation #Infrastructure #Provisioning
Managing and provisioning infrastructure through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools.

### Declarative vs. Imperative Approaches #IaCParadigm #Definition #Comparison
Understanding the two main approaches to defining infrastructure (e.g., Terraform vs. Ansible for provisioning).

### Provisioning Tools #Terraform #CloudFormation #ARM #Pulumi #Automation
Tools used to define and create infrastructure resources (compute, storage, networking) in cloud or on-premise environments.

### Idempotency #Consistency #Reliability #IaCPrinciple
Ensuring that applying the same configuration multiple times results in the same state.

### State Management #TerraformState #Consistency #Tracking
Managing the state file which tracks the resources managed by IaC tools.

### Immutable Infrastructure #Consistency #Reliability #DeploymentPattern
The practice of replacing infrastructure components rather than modifying them in place.

## Configuration Management #ConfigMgmt #Automation #Consistency #StateManagement
Automating the configuration of operating systems and applications to ensure consistency and desired state.

### Configuration Management Tools #Ansible #Chef #Puppet #SaltStack #Automation
Tools used to automate system configuration, application deployment, and state enforcement.

### Desired State Configuration #DSC #Automation #Consistency
Ensuring systems automatically converge to a predefined desired state.

### Secrets Management #Security #Credentials #Vault #KMS
Securely storing and managing sensitive information like API keys, passwords, and certificates (e.g., HashiCorp Vault, AWS Secrets Manager, Azure Key Vault).

## Continuous Monitoring and Logging #Monitoring #Logging #Observability #Feedback
Practices for collecting, analyzing, and acting on data about system performance and health.

### Application Performance Monitoring (APM) #APM #Performance #Troubleshooting #Metrics
Monitoring application-level metrics, transaction tracing, and error tracking (e.g., Datadog APM, Dynatrace, New Relic).

### Infrastructure Monitoring #Metrics #HealthChecks #Alerting #Performance
Tracking the health and performance of servers, networks, databases, and other infrastructure components (e.g., Prometheus, Nagios, Zabbix, Datadog Infra).

### Log Aggregation and Analysis #Logging #ELK #Splunk #Loki #Troubleshooting
Collecting logs from various sources into a central system for searching, analysis, and visualization (e.g., ELK Stack, Splunk, Grafana Loki, Fluentd).

### Alerting and Incident Response #Alerting #OnCall #PagerDuty #Opsgenie #Recovery
Setting up alerts based on metrics and logs, and establishing processes for responding to incidents.

### Distributed Tracing #Microservices #Troubleshooting #Observability
Tracking requests as they flow through distributed systems, especially microservices.

### Observability #Metrics #Logs #Traces #UnderstandingSystems
Going beyond monitoring to achieve a deeper understanding of system behavior through metrics, logs, and traces.

## Continuous Testing #Testing #Automation #Quality #Feedback
Integrating automated testing throughout the software delivery lifecycle.

### Test Automation Pyramid #Strategy #UnitTest #IntegrationTest #E2ETest
A model guiding the balance between different types of automated tests (unit, integration, end-to-end).

### Unit Testing #CodeLevel #Isolation #JUnit #pytest
Testing individual components or functions in isolation.

### Integration Testing #ComponentInteraction #API #Contracts
Testing the interaction between different components or services.

### End-to-End (E2E) Testing #UserJourney #UI #SystemTest #Selenium #Cypress
Testing the entire application flow from a user's perspective.

### Performance Testing #LoadTesting #StressTesting #Scalability #JMeter #k6
Testing application performance under expected and peak loads.

### Security Testing #SAST #DAST #PenTesting #Security
Integrating security testing into the pipeline (covered more in DevSecOps).

### Chaos Engineering #Resilience #FailureTesting #ChaosMonkey
Experimenting on a system to build confidence in its capability to withstand turbulent conditions.

## DevSecOps (Security Integration) #DevSecOps #Security #ShiftLeft #Automation
Integrating security practices and automation into the DevOps workflow ("Shift Left Security").

### Security as Code #Automation #PolicyAsCode #ComplianceAsCode #Security
Defining security policies, controls, and compliance checks in code.

### Static Application Security Testing (SAST) #CodeAnalysis #Vulnerabilities #Security
Analyzing source code for potential security vulnerabilities before compilation.

### Dynamic Application Security Testing (DAST) #RuntimeAnalysis #Vulnerabilities #Security
Testing running applications for security flaws by simulating external attacks.

### Interactive Application Security Testing (IAST) #RuntimeAnalysis #Instrumentation #Security
Using instrumentation within the running application to identify vulnerabilities.

### Runtime Application Self-Protection (RASP) #Protection #Runtime #Security
Technology built into an application to detect and block attacks in real-time.

### Software Composition Analysis (SCA) #Dependencies #Licenses #Vulnerabilities #Security
Analyzing third-party libraries and dependencies for known vulnerabilities and license compliance.

### Threat Modeling #RiskAnalysis #Design #Security
Identifying potential threats and vulnerabilities early in the design phase.

### Compliance as Code #Audit #Regulations #Automation #Security
Automating compliance checks and evidence gathering against regulatory standards.

## Cloud Native and DevOps #Cloud #Containers #Microservices #Serverless
Leveraging cloud computing platforms and architectures to enhance DevOps practices.

### Cloud Platforms #AWS #Azure #GCP #IaaS #PaaS #SaaS
Utilizing cloud provider services for infrastructure, platforms, and tooling.

### Containers and Orchestration #Docker #Kubernetes #Containerization #Scalability #Portability
Using containers (Docker) for packaging applications and orchestrators (Kubernetes) for managing containerized workloads at scale.

### Microservices Architecture #Architecture #Decoupling #Scalability #Complexity
Designing applications as collections of small, independent services.

### Serverless Computing #FaaS #Lambda #AzureFunctions #Scalability #CostEfficiency
Building and running applications without managing underlying servers.

### GitOps #IaC #CD #Kubernetes #Declarative
Managing infrastructure and application configurations using Git as the single source of truth.

## DevOps Toolchain #Tools #Technology #Automation #Integration
The set of tools used to implement DevOps practices across the software lifecycle.

### Planning Tools #Jira #AzureDevOpsBoards #Trello #ProjectManagement
Tools for backlog management, task tracking, and workflow visualization.

### Source Code Management #Git #GitHub #GitLab #Bitbucket #VCS
Platforms for hosting Git repositories and collaborating on code.

### Build Automation Tools #Jenkins #GitLabCI #GitHubActions #AzurePipelines #Build
Tools for automating the build process.

### Testing Tools #JUnit #pytest #Selenium #Cypress #JMeter #Testing
Frameworks and tools for various types of automated testing.

### Artifact Repositories #Nexus #Artifactory #DockerHub #ContainerRegistry #Storage
Repositories for storing and managing build artifacts and container images.

### Deployment Tools #Spinnaker #ArgoCD #Jenkins #OctopusDeploy #Deployment
Tools for automating application deployments.

### Infrastructure Provisioning Tools #Terraform #CloudFormation #ARM #Pulumi #IaC
Tools for defining and provisioning infrastructure as code.

### Configuration Management Tools #Ansible #Chef #Puppet #SaltStack #ConfigMgmt
Tools for automating system configuration.

### Monitoring and Logging Tools #Prometheus #Grafana #ELK #Datadog #Dynatrace #Monitoring
Tools for collecting, visualizing, and analyzing metrics and logs.

### Collaboration Tools #Slack #MicrosoftTeams #Communication #Collaboration
Platforms for team communication and collaboration.

## Measuring DevOps Success #Metrics #Measurement #KPIs #Improvement
Key metrics used to track the effectiveness and impact of DevOps adoption.

### DORA Metrics #LeadTime #DeploymentFrequency #MTTR #ChangeFailRate #Performance
The four key metrics identified by the DevOps Research and Assessment (DORA) team: Deployment Frequency, Lead Time for Changes, Mean Time to Restore (MTTR), Change Failure Rate.

### Flow Metrics #WIP #CycleTime #Throughput #LeanMetrics
Metrics derived from Lean principles to understand workflow efficiency (e.g., Work in Progress, Cycle Time, Throughput).

### Business Value Metrics #ROI #CustomerSatisfaction #Revenue #Impact
Metrics that connect DevOps performance to business outcomes.

### Quality Metrics #DefectRate #EscapedDefects #TestCoverage #Quality
Metrics focused on the quality of the software being delivered.

### Operational Metrics #Availability #Latency #ErrorRate #Performance #Reliability
Metrics related to the stability and performance of systems in production (often overlapping with SRE concerns).

## Advanced DevOps Concepts and Future Trends #Advanced #Future #SRE #AIOps
Emerging practices and areas related to or extending DevOps.

### Site Reliability Engineering (SRE) #Reliability #Operations #SLOs #ErrorBudgets #Google
A discipline incorporating aspects of software engineering applied to infrastructure and operations problems, focusing on reliability. Key concepts include Service Level Objectives (SLOs) and Error Budgets.

### AIOps #AI #MachineLearning #Automation #Operations
Applying artificial intelligence and machine learning to automate and enhance IT operations, particularly in monitoring, alerting, and incident response.

### Platform Engineering #IDP #SelfService #DeveloperExperience #Efficiency
Building internal developer platforms (IDPs) to provide self-service capabilities for development teams, streamlining infrastructure access and deployment.

### FinOps #CloudCost #Optimization #FinancialAccountability #Cloud
Bringing financial accountability to the variable spend model of cloud, enabling teams to make trade-offs between speed, cost, and quality.

### Sustainability in DevOps (GreenOps) #Sustainability #Efficiency #CarbonFootprint #Optimization
Considering the environmental impact of infrastructure and applications and optimizing for energy efficiency.
