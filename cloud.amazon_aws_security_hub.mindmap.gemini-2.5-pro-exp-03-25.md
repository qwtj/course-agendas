# Amazon AWS Security Hub #CloudSecurity #AWS #SecurityManagement
Provides a comprehensive view of your security state within AWS and helps you check your environment against security industry standards and best practices.

## Core Concepts & Purpose #Overview #Goals #ValueProposition
Understanding the fundamental objectives and value of AWS Security Hub.
### Centralized Security Findings #Aggregation #Visibility #SinglePaneOfGlass
Aggregates, organizes, and prioritizes security alerts or findings from multiple AWS services and partner solutions.
### Security Posture Assessment #Compliance #Standards #Checks
Continuously monitors your environment using automated security checks based on AWS best practices and industry standards.
### Prioritization & Triage #RiskAssessment #Severity #Workflow
Helps users focus on the most critical security issues by consolidating and prioritizing findings.
### Automation & Response #Remediation #Efficiency #Integration
Facilitates automated responses to security findings to accelerate remediation.

## Enabling and Configuring Security Hub #Setup #Configuration #Management
Steps and considerations for activating and managing Security Hub.
### Initial Setup Process #Wizard #Permissions #IAM
Guidance on enabling Security Hub via the AWS Management Console or API, including necessary IAM permissions.
### Region Selection #Deployment #Scope #RegionalService
Security Hub must be enabled on a region-by-region basis. Findings and checks are specific to the region where they are enabled. Cross-region aggregation is available.
### Account Management #AWSOrganizations #MemberAccounts #DelegatedAdmin
Managing Security Hub across multiple AWS accounts, typically using AWS Organizations.
#### Designating a Delegated Administrator #CentralManagement #Permissions
Assigning an account within the organization to manage Security Hub for member accounts.
#### Adding Member Accounts #Onboarding #Invitation #OrganizationsPolicy
Methods for associating accounts with the central Security Hub administrator account (invitation or via Organizations configuration).
### Disabling Security Hub #Deactivation #Cleanup
Process for stopping Security Hub service and potential data implications.

## Data Sources and Findings Management #Ingestion #Normalization #Data
How Security Hub collects and processes security information.
### AWS Service Integrations #Native #FirstParty
Findings ingested automatically from integrated AWS security services.
#### Amazon GuardDuty #ThreatDetection #Malware #NetworkActivity
Detects threats like malicious activity, unauthorized behavior.
#### Amazon Inspector #VulnerabilityManagement #EC2 #ECR #Lambda
Assesses applications for vulnerabilities and deviations from best practices.
#### Amazon Macie #DataSecurity #S3 #PII
Discovers and protects sensitive data stored in Amazon S3.
#### AWS IAM Access Analyzer #Permissions #AccessControl #ResourcePolicies
Identifies resources shared with external entities and analyzes access.
#### AWS Systems Manager Patch Manager #Patching #Compliance #OperatingSystem
Provides information about patch compliance status.
#### AWS Firewall Manager #Firewall #PolicyManagement #WAF #SecurityGroups
Reports non-compliant resources based on firewall policies.
#### AWS Config #Configuration #Compliance #ResourceTracking
Findings generated from AWS Config rules evaluating resource configurations.
#### AWS Health #ServiceHealth #Events #AccountHealth
Findings related to AWS operational issues or scheduled changes impacting the account.
#### AWS IoT Device Defender #IoT #Security #DeviceManagement
Provides findings related to security audits and detected anomalies for IoT devices.
### Third-Party Product Integrations #Partners #Ecosystem #Marketplace
Ingesting findings from security solutions provided by AWS Partners. Requires configuration within the partner product.
### Custom Findings #ASFF #ManualIngestion #API
Ability to send findings to Security Hub from your own custom security tools or scripts.
#### AWS Security Finding Format (ASFF) #Standardization #JSON #Schema
The mandatory JSON format used for all findings within Security Hub, ensuring consistency. Key fields include SchemaVersion, Id, ProductArn, AwsAccountId, Types, Severity, Resources, Remediation.
### Finding Lifecycle & Status #Active #Archived #Suppressed #WorkflowState
Managing the state of findings to track investigation and remediation progress.
#### Workflow Status #NEW #NOTIFIED #RESOLVED #SUPPRESSED
User-managed status to track the investigation lifecycle of a finding.
#### Record State #ACTIVE #ARCHIVED
System-managed state indicating if the finding is current or closed.
### Filtering and Searching Findings #Query #Investigation #Analysis
Using filters based on various ASFF fields (e.g., Severity, Resource Type, Account ID, Title) to locate specific findings.

## Security Standards and Controls #Compliance #Benchmarks #BestPractices
Automated checks based on established security frameworks.
### AWS Foundational Security Best Practices (FSBP) #AWSSpecific #CoreSecurity
A standard developed by AWS providing fundamental security checks across various services.
### Center for Internet Security (CIS) AWS Foundations Benchmark #IndustryStandard #CISBenchmark
Controls based on the well-known CIS guidelines for securing AWS environments (Levels 1 & 2).
### Payment Card Industry Data Security Standard (PCI DSS) #Compliance #Payments #Regulations
A set of controls to help validate compliance with PCI DSS requirements within AWS.
### National Institute of Standards and Technology (NIST) SP 800-53 #Compliance #Federal #Framework
Controls relevant to systems requiring compliance with NIST SP 800-53 revision 5.
### Service-Managed Standard: AWS Control Tower #ProactiveControls #Governance
Automatically deploys FSBP controls for accounts managed under AWS Control Tower.
### Enabling/Disabling Standards #Configuration #Scope #ComplianceFocus
Choosing which security standards to enable for compliance checks within an account and region.
### Control Statuses #Passed #Failed #Unknown #Suppressed #ComplianceState
The result of a security check against a specific resource.
### Severity of Controls #Critical #High #Medium #Low #Informational
Priority assigned to each control based on its potential security impact.
### Customizing Controls (Suppression) #Exceptions #Tuning #NoiseReduction
Ability to suppress findings from specific controls for specific resources if deemed acceptable risk or false positive.

## Dashboards and Insights #Visualization #Monitoring #Analysis
Tools for viewing and interpreting security posture data.
### Summary Dashboard #Overview #AtAGlance #Metrics
The main landing page providing charts and summaries of findings, standards compliance, and insights.
### Managed Insights #Predefined #CommonThreats #AWSManaged
AWS-curated correlations or aggregations that highlight potential security issues or areas needing attention (e.g., EC2 instances with most failed checks).
### Custom Insights #UserDefined #TargetedMonitoring #Filtering
User-created saved searches/filters that act as monitoring rules, tracking specific types of findings or resource configurations.
### Findings Views #FilteredLists #Investigation #Triage
Dedicated pages to view, filter, and sort findings based on criteria like standard, resource, severity, etc.

## Automation and Remediation #Response #EventDriven #Integration
Taking action on findings identified by Security Hub.
### Integration with Amazon EventBridge #Events #Rules #Targets
Security Hub publishes findings and insight results as events to EventBridge, enabling event-driven automation.
### Automated Remediation Workflows #Lambda #StepFunctions #SSM #SOAR
Using EventBridge rules to trigger targets like Lambda functions, Step Functions, or Systems Manager Automation documents to automatically respond to or remediate findings.
### Custom Actions #ManualTrigger #Console #API #WorkflowIntegration
User-defined actions that send selected findings or insights to EventBridge, allowing targeted routing to specific automation or notification workflows (e.g., send to ticketing system).
### Security Hub Automated Response and Remediation (SOAR) Solution #AWSsolution #PrebuiltPlaybooks
An official AWS Solutions Implementation offering pre-built Lambda functions and Step Functions for common remediation tasks triggered by Security Hub findings.

## Cross-Region Aggregation #GlobalView #Centralization #MultiRegion
Consolidating findings and security scores from multiple AWS Regions into a single aggregation region.
### Configuring Aggregation #LinkingRegions #HomeRegion #AggregationRegion
Selecting an aggregation region and linking other regions to it.
### Viewing Aggregated Data #ConsolidatedDashboard #CrossRegionAnalysis
Using the Security Hub console or API in the aggregation region to view data from all linked regions.

## Cross-Account Management #MultiAccount #AWSOrganizations #CentralSecurity
Managing Security Hub across an entire AWS Organization or multiple accounts.
### Integration with AWS Organizations #OUstructure #CentralizedManagement #PolicyBasedEnrollment
Simplifies enabling Security Hub and managing member accounts by leveraging the organizational structure.
### Delegated Administrator #Permissions #CentralAccount #CrossAccountView
Assigning a specific member account the necessary permissions to manage Security Hub configurations and view findings for the entire organization.
### Viewing Findings Across Accounts #AggregatedView #OrganizationPosture #SecurityScorecard
The delegated administrator account can see a consolidated view of findings and compliance status from all member accounts.

## Security Hub API and CLI #ProgrammaticAccess #Automation #Scripting
Interacting with Security Hub features programmatically.
### Key API Operations #GetFindings #UpdateFindings #BatchImportFindings #ListMembers #DescribeStandardsControls
Common API calls used for retrieving data, updating finding status, ingesting custom findings, and managing configurations.
### Using AWS CLI for Security Hub #Commands #AutomationScripts #Terminal
Executing Security Hub actions and retrieving data using the AWS Command Line Interface.

## Pricing #Cost #Billing #FreeTier
How Security Hub usage is charged.
### Pricing Dimensions #FindingsIngested #SecurityChecks #Quantity #DataVolume
Costs are typically based on the number of findings ingested and the number of compliance checks performed, per account per region.
### Free Tier Details #InitialUsage #Limits #TrialPeriod
Information on the initial free usage period and quantities offered by AWS.
### Cost Optimization #Filtering #StandardSelection #DataVolume #AccountScope
Strategies to manage Security Hub costs, such as being selective about enabled standards or optimizing finding ingestion.

## Use Cases and Best Practices #Scenarios #Recommendations #Optimization
Common applications and recommended approaches for using Security Hub effectively.
### Continuous Compliance Monitoring #Audit #Reporting #Evidence
Using standards checks to monitor adherence to compliance frameworks and generate reports.
### Centralized Threat Detection #Alerting #Visibility #SecurityOperations
Consolidating alerts from various security services for faster detection and response.
### Security Posture Management #RiskReduction #Improvement #Prioritization
Gaining visibility into overall security health and prioritizing remediation efforts.
### Incident Response Support #Investigation #Context #Forensics
Using findings data and resource context to aid in security incident investigations.
### Best Practices #EnableAcrossAccounts #UseAggregation #AutomateResponse #ReviewInsights #TuneControls
Recommendations like enabling in all accounts/regions, using cross-region/account features, automating common responses, regularly reviewing insights, and tuning controls/findings.
