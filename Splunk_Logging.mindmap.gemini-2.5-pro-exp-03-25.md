# Splunk Logging #Overview #CoreConcept
Centralized platform for searching, monitoring, and analyzing machine-generated big data, primarily logs. Splunk ingests, indexes, and correlates real-time data in a searchable repository from which it can generate graphs, reports, alerts, dashboards, and visualizations.

## Fundamentals of Splunk and Logging #Basics #Introduction
Introduces the core concepts behind Splunk and the importance of logging.

### What is Splunk? #Platform #Definition
Splunk is a software platform widely used for searching, monitoring, analyzing, and visualizing machine-generated data in real time. It collects data from various sources like applications, servers, network devices, sensors, etc.

### Why Log Data? #Importance #Rationale
Logging provides visibility into system behavior, aids troubleshooting, supports security analysis, enables performance monitoring, and ensures compliance.

### Splunk's Role in Logging #Solution #Application
Splunk acts as a central repository and analysis engine for log data, turning vast amounts of machine data into actionable insights.

## Splunk Architecture #Components #Infrastructure
Describes the core components and how they interact.

### Forwarders #DataCollection #Agent
Agents installed on source machines to collect and send data to indexers.
#### Universal Forwarder (UF) #Lightweight #Agent
A lightweight agent with minimal processing; forwards raw data efficiently. Best for collecting log files, Windows events, etc.
#### Heavy Forwarder (HF) #Processing #Agent
A full Splunk instance with advanced functionalities like parsing, filtering, and routing data before forwarding. Can parse data, mask sensitive information, and route data to specific indexers or third-party systems. Often used for HEC inputs or when intermediate processing/filtering is needed.

### Indexers #Indexing #Storage
Process incoming data, transform it into searchable events, and store it in indexes. Responsible for parsing data (unless already done by HF), breaking it into events, extracting timestamps and fields, and writing to disk.
#### Indexing Process #DataTransformation #Events
How raw data is converted into searchable events, including timestamping and field extraction. Creates files including compressed raw data and index files (TSIDX) pointing to the data.
#### Indexes and Buckets #DataStorage #Organization
Data is stored in indexes, which are repositories for Splunk data. Indexes are composed of directories called buckets, which contain the actual data files. Default indexes include `main`, `_internal`, and `_audit`.

### Search Heads (SH) #Querying #Interface
The user interface for searching, analyzing, and visualizing data. Sends search requests to indexers (search peers) and merges the results.
#### Distributed Searching #Scalability #Performance
Search heads distribute search requests across multiple indexers (search peers) to speed up searches on large datasets.
#### Search Head Clusters (SHC) #HighAvailability #Scalability
Groups of search heads that share configurations and jobs, providing high availability and load balancing for search operations.

### Management Components #Administration #Control
Additional components for managing distributed deployments.
#### Deployment Server #Configuration #Management
Manages configurations and app deployments for forwarders and potentially other Splunk components.
#### Cluster Manager (Master Node) #IndexingCluster #Orchestration
Manages indexer clusters, coordinating data replication and informing search heads about data location. Does not index data itself.
#### License Master #Licensing #Control
Manages licensing for the Splunk deployment.
#### Deployer #SHCluster #Configuration
Manages app and configuration deployment specifically for Search Head Clusters.

### Splunk Cloud Architecture #CloudService #SaaS
Managed Splunk service hosted by Splunk, reducing infrastructure management overhead. Still requires some on-premise components (like Forwarders) to send data to the cloud.

## Data Onboarding (Getting Data In - GDI) #DataIngestion #Input
Methods and processes for bringing data into Splunk.

### Data Sources #Inputs #Variety
Types of data Splunk can ingest, including log files, metrics, network traffic, APIs, databases, cloud services, IoT data, etc.

### Input Methods #Collection #Techniques
Techniques used to collect data.
#### Files & Directories Monitoring #Logs #Local
Monitoring specific files or directories for new data.
#### Network Inputs (TCP/UDP) #Syslog #NetworkData
Listening on network ports (TCP/UDP) for data streams, commonly used for syslog. Best practice often involves a syslog server intermediary feeding a forwarder.
#### HTTP Event Collector (HEC) #API #Realtime
An API endpoint for sending data directly to Splunk over HTTP/S, often used by applications and scripts. Token-based authentication.
#### Scripted Inputs #Custom #Flexibility
Running custom scripts to collect data from sources without native Splunk support.
#### Database Inputs (DB Connect) #SQL #Databases
Using apps like Splunk DB Connect to query and ingest data from relational databases.
#### Cloud Inputs #AWS #Azure #GCP
Specific add-ons and methods for collecting logs and metrics from major cloud providers (e.g., AWS Kinesis/S3, Azure Event Hubs, Google Cloud Pub/Sub).
#### Windows Inputs #WindowsEvents #WMI
Collecting Windows Event Logs, performance counters, Active Directory data, etc., often using the Splunk Add-on for Windows.

### Data Onboarding Workflow #Process #BestPractice
A structured process for adding new data sources.
#### Request Data #Initiation #Needs
Identifying the need and formally requesting data onboarding.
#### Define Use Case & Data #Analysis #Planning
Understanding the purpose of the data and its characteristics (format, timestamp, volume).
#### Implement & Configure #Setup #Configuration
Setting up inputs, forwarders, and index-time configurations (sourcetype, index).
#### Validate Data #Verification #QualityCheck
Ensuring data is arriving correctly, parsed as expected, and CIM compliant if necessary.
#### Communicate Availability #Notification #UserEnablement
Informing users that the new data source is ready for use.

### Index-Time Processing #Parsing #Transformation
Actions performed by Splunk as data is indexed.
#### Source Typing #Classification #Metadata
Assigning a `sourcetype` to data to dictate parsing, field extraction, and event breaking rules.
#### Event Breaking #Segmentation #Events
Dividing the raw data stream into individual events.
#### Timestamp Extraction #Time #Correlation
Identifying and assigning a timestamp to each event.
#### Field Extraction (Index-Time) #Parsing #KVExtraction
Extracting key fields during indexing (less common than search-time extraction but possible, e.g., via transforms.conf).
#### Filtering & Routing #DataReduction #Management
Dropping unwanted events or routing data to specific indexes or outputs (often done at HF or Indexer level).
#### Data Masking/Anonymization #Security #Privacy
Redacting or masking sensitive information during ingestion using ingest actions or transforms.

## Searching and Reporting #SPL #Analysis
Querying data and creating reports using Splunk's Search Processing Language (SPL).

### Splunk Search Processing Language (SPL) #QueryLanguage #Commands
The language used to search, manipulate, and analyze data in Splunk.
#### SPL Components #Syntax #BuildingBlocks
Keywords, commands, functions, arguments, clauses.
#### Search Terms #Keywords #Filtering
Basic keywords or phrases to find relevant events.
#### Commands #Actions #Manipulation
Instructions telling Splunk what to do with search results (e.g., `stats`, `table`, `eval`, `rex`).
#### Functions #Calculations #Processing
Perform calculations or transformations on field values (e.g., `avg()`, `sum()`, `count()`).
#### Clauses #Grouping #Renaming
Used with commands to group results (`by`) or rename fields (`as`).
#### Boolean Operators #Logic #Filtering
AND, OR, NOT used to combine search terms. (AND is implicit between terms).
#### Comparison Operators #Filtering #Conditions
Operators like `=`, `!=`, `>`, `<`, `>=`, `<=` used for field value comparisons.
#### Wildcards #Flexibility #Matching
Using `*` to match multiple characters in search terms or field values.

### Search Modes #Performance #Completeness
Different modes affecting search speed and completeness (Fast, Smart, Verbose).

### Common Search Commands #SPL #CoreCommands
Essential SPL commands for analysis.
#### `search` #Filtering #Basic
Implicitly used at the start, but can explicitly filter events.
#### `table` #Formatting #Display
Displays results in a tabular format.
#### `stats` #Aggregation #Analytics
Calculates statistics over results (count, avg, sum, max, min, distinct_count, etc.).
#### `eval` #Calculation #FieldManipulation
Creates or modifies fields based on expressions or functions.
#### `rex` #FieldExtraction #Regex
Extracts fields using regular expressions directly in the search.
#### `lookup` #Enrichment #Context
Adds fields to events by looking up values in external files or scripts.
#### `sort` #Ordering #Display
Sorts results based on specified fields.
#### `head`/`tail` #Filtering #Display
Returns the first N (`head`) or last N (`tail`) results.
#### `top`/`rare` #Frequency #Analysis
Shows the most (`top`) or least (`rare`) common values of fields.
#### `dedup` #Filtering #Unique
Removes duplicate events based on specified field values.
#### `rename` #Formatting #Fields
Renames fields in the search results.
#### `chart`/`timechart` #Visualization #TimeSeries
Generates chart visualizations, with `timechart` specifically for time-series data.

### Saving Searches #Reports #Automation
Saving SPL queries as reports for later execution or scheduling.

### Field Extraction (Search-Time) #Parsing #KnowledgeObjects
Defining how Splunk should extract fields from data as searches are run (more flexible than index-time).

## Dashboards and Visualizations #GUI #Reporting
Presenting data insights graphically.

### Dashboard Studio #ModernUI #Visualization
Splunk's newer framework for building visually appealing and flexible dashboards.

### Classic Dashboards #LegacyUI #Visualization
The traditional method for creating dashboards using Simple XML.

### Panel Types #Charts #Tables
Different ways to display data on dashboards (e.g., line charts, bar charts, pie charts, single values, tables, maps).

### Input Controls #Interactivity #Filtering
Dropdowns, text boxes, radio buttons, time range pickers to make dashboards interactive.

### Tokens #Dynamic #Interactivity
Using tokens to pass values between dashboard panels and searches, enabling drilldowns and dynamic behavior.

### Sharing and Permissions #Collaboration #AccessControl
Controlling who can view or edit dashboards.

## Alerting #Monitoring #Notifications
Proactively monitoring data and triggering actions based on search results.

### Creating Alerts #Setup #Configuration
Defining alerts based on saved searches. Trigger conditions specify when an alert fires (e.g., number of results > 0).

### Alert Types #Realtime #Scheduled
Alerts can run on a schedule (e.g., every hour) or in near real-time (continuously monitoring).

### Trigger Conditions #Logic #Thresholds
Specifying the criteria that must be met for an alert to fire (e.g., threshold crossing, specific event pattern).

### Alert Actions #Notifications #Automation
Actions performed when an alert triggers (e.g., send email, run script, log event, post to Slack, create ticket in ServiceNow, trigger notable event in ES).

### Throttling #NoiseReduction #Management
Suppressing alerts for a period after they fire to avoid excessive notifications for the same condition.

### Alert Management #Monitoring #Administration
Viewing triggered alerts, managing alert configurations.

## Splunk Apps and Add-ons #Extensibility #Integrations
Extending Splunk functionality and integrating with specific technologies.

### Splunkbase #Marketplace #Repository
Splunk's official marketplace for apps and add-ons.

### Apps vs. Add-ons #Difference #Purpose
Apps typically provide GUIs, dashboards, and workflows for specific use cases (e.g., Splunk Enterprise Security, Splunk App for Infrastructure). Add-ons (TAs - Technology Add-ons) usually handle data collection, parsing, and normalization (CIM mapping) for specific technologies, often without their own GUI.

### Common Information Model (CIM) #Normalization #Standardization
A standard set of field names and event tags used by Splunk apps (especially ES) to enable correlation across different data sources. Add-ons often map source data to CIM.

### Examples #UseCases #Technology
Splunk Add-on for Windows, Splunk Add-on for AWS, Splunk Add-on for Microsoft 365, Splunk Add-on for Palo Alto Networks, Splunk DB Connect, Splunk Add-on for Microsoft IIS, Splunk Add-on for F5 BIG-IP.

### Building Custom Apps/Add-ons #Development #Customization
Using tools like the Add-on Builder or Splunk UI/developer frameworks to create bespoke Splunk solutions.

## Administration and Management #Maintenance #Operations
Tasks involved in keeping a Splunk deployment running smoothly.

### Configuration Files #Settings #conf
Managing Splunk settings through `.conf` files (e.g., inputs.conf, props.conf, transforms.conf, server.conf).

### Monitoring Console #HealthCheck #Performance
Built-in Splunk app for monitoring the health and performance of the Splunk deployment itself.

### Backup and Recovery #Resilience #DataProtection
Strategies for backing up Splunk configurations and indexed data.

### Licensing #Usage #Cost
Understanding Splunk's licensing model (typically based on daily ingestion volume).

### User Roles and Permissions #AccessControl #Security
Defining user roles with specific capabilities and access restrictions.

### Performance Tuning #Optimization #Efficiency
Optimizing search performance, indexing speed, and resource utilization.

### Upgrading Splunk #Maintenance #Updates
Process for upgrading Splunk components to newer versions.

## Splunk for Security (SIEM) #Security #UseCases
Using Splunk as a Security Information and Event Management (SIEM) solution.

### Splunk Enterprise Security (ES) #PremiumApp #SIEM
A premium Splunk app providing a dedicated security monitoring framework, including incident management, risk analysis, threat intelligence, and compliance features.
#### Notable Events #Alerting #Incidents
Aggregated alerts representing potential security incidents, managed within ES.
#### Risk-Based Alerting (RBA) #Context #Prioritization
Assigning risk scores to users/systems based on observed activities to prioritize alerts.
#### Threat Intelligence Framework #Feeds #Context
Integrating external and internal threat intelligence feeds to enrich security events.
#### Asset and Identity Framework #Context #Correlation
Correlating events with asset and identity information for better context.
#### Use Case Library #Detections #Content
Pre-built security detections and searches provided within ES or via apps like Splunk Security Essentials.

### Common Security Use Cases #ThreatDetection #Monitoring
Monitoring authentication attempts, detecting malware, identifying suspicious network traffic, compliance reporting, threat hunting, insider threat detection.

### Security Monitoring #Realtime #Detection
Continuous monitoring of logs and events for security threats.

### Incident Response #Investigation #Remediation
Using Splunk to investigate security incidents, understand scope, and aid remediation.

### Compliance Reporting #Audit #Regulations
Using Splunk data to generate reports for compliance mandates (PCI-DSS, HIPAA, SOX, etc.).

## Advanced Topics #Expert #DeepDive

### Advanced SPL #ComplexQueries #Optimization
More complex search techniques, subsearches, join/append commands, macros, event types, tags.

### Data Models #Abstraction #Performance
Structured data sets that accelerate searches and power Pivot visualizations. Often built on CIM-compliant data.

### Machine Learning Toolkit (MLTK) #AI #Analytics
App for applying machine learning algorithms to Splunk data for anomaly detection, prediction, clustering, etc.

### Splunk IT Service Intelligence (ITSI) #ITOps #APM
Premium app focused on IT operations monitoring, service health, and predictive analytics.

### Data Fabric Search (DFS) / Federated Search #DistributedData #Cloud
Searching across multiple Splunk deployments (on-premise or cloud) without forwarding all data to one place.

### Ingest Actions #Filtering #Routing #Cloud
Splunk Cloud feature for filtering, masking, and routing data during ingestion.

## Logging Best Practices #Guidelines #Efficiency
Recommendations for effective logging and Splunk usage.

### Log Formatting #Structure #Parsing
Use clear, consistent formats (e.g., key-value pairs, JSON). Log in text format, avoid binary.
### Timestamps #Accuracy #Correlation
Include accurate, verbose timestamps with timezone (preferably UTC/GMT) at the beginning of each event.
### Contextual Information #Enrichment #Troubleshooting
Include relevant context (user ID, transaction ID, session ID, hostname, application name) in log events.
### Log Levels #Severity #Filtering
Use appropriate log levels (DEBUG, INFO, WARN, ERROR, FATAL) consistently.
### Sensitive Data Handling #Security #Privacy
Avoid logging sensitive information (passwords, PII, credit card numbers) directly; use masking if necessary.
### Semantic Logging #Meaning #Analytics
Log events with clear meaning intended for analysis, not just debugging. Log audit trails, transactions, metrics.
### Log File Management #Persistence #Rotation
Log locally to files, implement log rotation policies.
### Source Type and Index Planning #Organization #Performance
Define meaningful source types and plan index strategy (e.g., based on data type, retention, access control).
### Consistent Naming Conventions #Clarity #Management
Use consistent names for hosts, source types, indexes, fields, saved searches, etc.
### Testing Inputs #Validation #Quality
Test new data inputs to ensure correct parsing, timestamping, and event breaking before full deployment.
### Separate Splunk Logs #Optimization #Cost
Keep Splunk's own internal logs separate from application logs being indexed to avoid unnecessary license usage.
