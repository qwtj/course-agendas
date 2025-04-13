# Amazon AWS CloudWatch #Monitoring #Observability #AWS
Central monitoring and observability service for AWS cloud resources and applications running on AWS.

## Core Concepts #Fundamentals #Overview #Basics
Underlying principles and basic terminology of CloudWatch.

### What is CloudWatch? #Definition #Purpose
Provides data and actionable insights to monitor applications, respond to system-wide performance changes, optimize resource utilization, and get a unified view of operational health.

### Key Capabilities Overview #Features #Summary
Monitoring metrics, collecting/monitoring logs, setting alarms, reacting to events, visualizing data.

### Scope of Monitoring #Coverage #Resources
Monitors AWS resources (EC2, RDS, S3, etc.), custom applications, on-premises servers.

### Integration with AWS Services #Ecosystem #Connectivity
How CloudWatch integrates natively with numerous other AWS services.

## CloudWatch Metrics #Metrics #DataPoints #Performance
Collecting and tracking performance and operational data as time-ordered data points (metrics).

### Standard Metrics #AWSMetrics #Default
Metrics automatically provided by various AWS services (e.g., EC2 CPUUtilization, S3 BucketSizeBytes).

### Custom Metrics #ApplicationMetrics #UserDefined
Metrics published by your own applications or scripts using the AWS SDK or CLI (`PutMetricData` API).

### Namespaces #Organization #Grouping
Containers for CloudWatch metrics (e.g., `AWS/EC2`, `AWS/S3`, `YourApplicationNamespace`).

### Dimensions #Attributes #Filtering
Key-value pairs that uniquely identify a metric (e.g., InstanceId, AutoScalingGroupName). Up to 30 dimensions per metric.

### Timestamps #TimeData #Chronology
Each metric data point is associated with a timestamp.

### Statistics #Aggregation #Analysis
Calculations performed on metric data over specified time periods (e.g., Average, Sum, Minimum, Maximum, SampleCount, Percentiles).

### Periods #Resolution #Frequency
The length of time associated with a specific CloudWatch statistic (e.g., 60 seconds, 300 seconds).

### High-Resolution Metrics #Granularity #Speed
Metrics collected at 1-second or 5-second intervals (requires custom metrics or specific configurations). Standard resolution is 1 minute.

### Metric Math #Calculations #DerivedMetrics
Perform calculations across multiple metrics to create new time series (e.g., calculate free memory percentage).

### Metric Streams #RealTime #Export
Continuously stream CloudWatch metrics to a destination like Amazon Kinesis Data Firehose or third-party providers.

### GetMetricData API #DataRetrieval #Querying
Powerful API to retrieve metric data points and perform calculations.

### GetMetricStatistics API (Legacy) #DataRetrieval #LegacyAPI
Older API for retrieving metric statistics.

## CloudWatch Logs #Logging #LogManagement #Troubleshooting
Centralized service for collecting, monitoring, storing, and accessing log files from various sources.

### Log Groups #Containers #Organization
Containers for log streams (e.g., `/aws/lambda/my-function`, `/var/log/messages`). Define retention settings here.

### Log Streams #Sequences #Sources
Sequences of log events sharing the same source (e.g., a specific EC2 instance, a Lambda function invocation).

### Log Events #Records #Entries
Individual records of activity logged by an application or resource. Consists of a timestamp and a raw message.

### CloudWatch Logs Agent #Agent #Collection
Software agent to install on EC2 instances or on-premises servers to publish log data to CloudWatch Logs. Unified CloudWatch Agent is preferred.

### Unified CloudWatch Agent #Agent #Modern #Collection
Newer agent that collects both logs and system-level metrics from EC2 and on-premises servers. Configuration driven by a JSON file.

### Log Subscriptions #RealTime #Processing #Streaming
Deliver a real-time feed of log events to other services like Amazon Kinesis, Kinesis Data Firehose, or AWS Lambda for custom processing or analysis.

### Filter and Pattern Syntax #Searching #Querying
Syntax used to search and filter log data within CloudWatch Logs Insights or through subscription filters.

### CloudWatch Logs Insights #Analysis #QueryLanguage #Interactive
Interactive query service to analyze log data in CloudWatch Logs instantly. Uses a purpose-built query language.

### Metric Filters #LogsToMetrics #Extraction
Extract metric observations from ingested log events (e.g., count occurrences of "ERROR"). Creates CloudWatch Metrics based on log content.

### Exporting Log Data #Archival #BatchExport
Export log data from a log group to an Amazon S3 bucket (batch export).

### Log Retention Policies #Storage #Lifecycle
Configure how long log events are kept in CloudWatch Logs.

### Cross-Account Logging #Centralization #MultiAccount
Centralize logs from multiple AWS accounts into a single account's CloudWatch Logs.

## CloudWatch Alarms #Alerting #Notifications #Automation
Watching metrics over time and performing actions based on defined thresholds.

### Metric Alarms #Thresholds #Monitoring
Alarms based on the value of a single CloudWatch metric or a Metric Math expression.

### Composite Alarms #ComplexLogic #Dependencies #Grouping
Combine multiple alarms into a hierarchical structure. The composite alarm state changes based on the state of its child alarms using rules (AND, OR, NOT).

### Alarm States #Status #Conditions
`OK`, `ALARM`, `INSUFFICIENT_DATA`.

### Alarm Actions #Responses #Automation
Actions triggered when an alarm changes state (e.g., send SNS notification, trigger Auto Scaling action, stop/terminate/reboot EC2 instance, trigger Lambda function via SNS, Systems Manager OpsCenter/Incident Manager actions).

### Anomaly Detection #MachineLearning #Baselines
Uses machine learning models to establish expected metric behavior (baselines) and trigger alarms when metrics deviate significantly, without needing static thresholds.

### Alarm Thresholds #Triggers #Limits
Static values or anomaly detection bands used to determine when an alarm should change state.

### Evaluation Periods & Datapoints to Alarm #Timing #Sensitivity
How many recent data points must be breaching the threshold within the evaluation period to trigger the alarm state.

### Missing Data Treatment #HandlingGaps #Configuration
How alarms evaluate metrics when some data points are missing.

## CloudWatch Events (now Amazon EventBridge) #Events #Automation #Serverless
*Note: CloudWatch Events has evolved into Amazon EventBridge, which offers more features, but the core concepts originated here and are often still discussed in the context of CloudWatch integration.*

### Event Patterns #Filtering #Matching
Rules defining which events should trigger an action. Based on event source and specific attributes within the event payload.

### Rules #Triggers #Routing
Match incoming events and route them to targets for processing.

### Targets #Destinations #Actions
AWS resources or services that are invoked when a rule is triggered (e.g., Lambda functions, SQS queues, SNS topics, Step Functions state machines, Kinesis streams, EC2 instances via Systems Manager Run Command).

### Event Buses #Channels #Sources
Pipelines that receive events. Default event bus receives events from AWS services. Custom event buses for application events. Partner event buses for SaaS integrations.

### Scheduled Events #Cron #RateBased
Trigger rules on a regular schedule (e.g., run a Lambda function every hour) using cron or rate expressions.

### Event Sources #Producers #AWSservices
AWS services, custom applications, or SaaS partners that generate events.

### Input Transformation #Modification #Payloads
Customize the event payload before it's sent to the target.

## CloudWatch Dashboards #Visualization #MonitoringUI #Reporting
Creating customizable visual representations of metrics and alarms for operational oversight.

### Creating Dashboards #Setup #Configuration
Building dashboards through the AWS console or programmatically (PutDashboard API).

### Widget Types #Graphs #Visuals
Different ways to display data: Line charts, stacked area charts, number displays, gauges, text, logs table, alarm status, CloudWatch Synthetics canary views.

### Automatic Dashboards #ServiceDashboards #Prebuilt
Pre-built dashboards provided by some AWS services offering key metrics for those services.

### Cross-Account Cross-Region Dashboards #Centralization #GlobalView
Display data from multiple AWS accounts and regions within a single dashboard. (Part of CloudWatch Observability Access Manager).

### Sharing Dashboards #Collaboration #Access
Share dashboards publicly or with specific IAM users/roles.

### Dynamic Labels #Clarity #Context
Use expressions to create dynamic labels on dashboard widgets for better context.

## CloudWatch Synthetics #ProactiveMonitoring #Endpoints #UserExperience
Monitoring application endpoints and APIs using configurable scripts (canaries) that simulate user interactions.

### Canaries #Scripts #Tests
Configurable scripts that run on a schedule to monitor web endpoints, APIs, UI workflows.

### Blueprint Scripts #Templates #Examples
Pre-built script templates for common monitoring tasks (heartbeat monitoring, API canary, link checker, GUI workflow builder).

### Scripting Languages #NodeJS #Python
Canaries are written in Node.js or Python using specific CloudWatch Synthetics libraries.

### Monitoring Schedules #Frequency #Timing
How often the canary scripts are executed.

### Data Storage #Artifacts #Results
Stores screenshots, HAR files, and logs from canary runs in an S3 bucket.

### Alarms Integration #Alerting #Failures
Automatically creates CloudWatch Alarms to notify on canary failures or performance issues.

### Private Location Monitoring #InternalApps #VPC
Run canaries within your VPC to monitor internal applications.

## CloudWatch Application Insights #ApplicationMonitoring #ProblemDetection #.NET #SQLServer
Automated monitoring and diagnostics for specific application stacks, initially focused on .NET and SQL Server.

### Automated Setup #Configuration #EasyStart
Simplifies the setup of monitoring for supported applications.

### Problem Detection #Analysis #RootCause
Automatically analyzes telemetry data to detect application problems and provide insights into potential causes.

### Integration with Systems Manager OpsCenter #Incidents #OpsItems
Creates OpsItems in AWS Systems Manager OpsCenter when problems are detected.

### Supported Applications #Compatibility #Stacks
Focuses on applications like Microsoft SQL Server, .NET web applications (IIS), etc. running on EC2.

## CloudWatch Observability Features #EnhancedMonitoring #Correlation
Features that combine metrics, logs, and traces for deeper insights.

### ServiceLens #TraceIntegration #Visualization
Visualizes and analyzes the health, performance, and availability of applications by correlating traces (from AWS X-Ray), metrics, logs, and alarms. Provides a service map.

### Contributor Insights #TopNAnalysis #PerformanceDrivers
Analyzes log data to create time series representing contributor data. Helps identify top talkers or high-impact entities (e.g., highest latency customers, most frequent error-causing hosts).

### CloudWatch Observability Access Manager (OAM) #CrossAccount #DataSharing
Securely share observability data (metrics, logs, traces) across multiple AWS accounts. Enables centralized monitoring dashboards and analysis.

## Security and Compliance #Security #IAM #Compliance
Security aspects and compliance certifications related to CloudWatch.

### IAM Integration #Permissions #AccessControl
Using AWS Identity and Access Management (IAM) to control access to CloudWatch resources (metrics, logs, alarms, dashboards).

### VPC Endpoints #PrivateAccess #Networking
Access CloudWatch APIs from within a VPC without traversing the public internet.

### Encryption #DataProtection #Security
Encryption of log data at rest (using KMS) and in transit (TLS).

### Compliance Certifications #Standards #Audits
CloudWatch compliance with various standards (e.g., PCI DSS, HIPAA, FedRAMP, SOC).

## CloudWatch Pricing #Cost #Billing #Economics
How CloudWatch usage is charged.

### Metrics Pricing #DataPoints #APIRequests
Charges based on the number of standard/custom metrics, API requests (GetMetricData, PutMetricData), and high-resolution metrics.

### Logs Pricing #Ingestion #Storage #Analysis
Charges based on data ingestion, archival storage (beyond retention period, typically in S3 via export), and Logs Insights queries.

### Alarms Pricing #AlarmUnits #Resolution
Charges based on the number of alarm-metrics (standard vs. high-resolution).

### Synthetics Pricing #CanaryRuns #Usage
Charges based on the number of canary runs executed.

### Dashboards Pricing #DashboardUnits #APIRequests
Charges based on the number of dashboards and API requests.

### Contributor Insights Pricing #Rules #LogEvents
Charges based on the number of Contributor Insights rules and log events matched.

### Free Tier #CostSavings #Trial
Details of the AWS Free Tier applicable to CloudWatch services.
