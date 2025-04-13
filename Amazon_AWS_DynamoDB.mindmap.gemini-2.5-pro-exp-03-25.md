# Amazon AWS DynamoDB #NoSQL #CloudDatabase #AWS
Fully managed, serverless key-value and document NoSQL database designed for high performance at any scale.

## Introduction to DynamoDB #Overview #Fundamentals
Basic concepts, benefits, and common applications of DynamoDB.

### What is DynamoDB? #Definition #NoSQL
A managed NoSQL database service offering fast, predictable performance with seamless scalability.

### Key Benefits #Advantages #Features
Scalability, Performance, Serverless (No servers to manage), High Availability, Durability, Managed Service, Flexible Data Model, Security.

### Common Use Cases #Applications #Scenarios
Web applications, mobile backends, gaming, ad tech, IoT, real-time bidding, financial ledgers, metadata stores.

### Evolution and History #Timeline #AWS
Brief history of DynamoDB's development within AWS.

## Core Concepts #DataModel #Fundamentals #Architecture
Fundamental building blocks and structure of DynamoDB.

### Tables, Items, and Attributes #Structure #Elements
The basic components of the DynamoDB data model.
#### Tables #Collection #Container
A collection of items. Analogous to tables in relational databases.
#### Items #Rows #Records
A collection of attributes. Each item is uniquely identifiable by its primary key. Analogous to rows or records.
#### Attributes #Columns #Fields
Fundamental data elements, key-value pairs within an item. Analogous to columns or fields. Attributes can be nested (up to 32 levels).

### Data Types #Schema #Types
Supported data types for attributes.
#### Scalar Types #String #Number #Binary #Boolean #Null
Represent a single value (e.g., "Hello", 123, true).
#### Document Types #List #Map
Represent complex structures with nested attributes (JSON-like).
#### Set Types #StringSet #NumberSet #BinarySet
Represent multiple scalar values (e.g., {"red", "green", "blue"}). Values within a set must be unique.

### Primary Keys #Keys #Identification
Used to uniquely identify each item in a table. Essential for data distribution and retrieval.
#### Partition Key (Hash Key) #Hashing #Distribution
A simple primary key consisting of one attribute. DynamoDB uses this key's value as input to an internal hash function to determine the partition (physical storage) where the item resides.
#### Partition Key and Sort Key (Composite Key) #RangeKey #Ordering
A composite primary key consisting of two attributes. The first is the partition key, and the second is the sort key. Items with the same partition key are stored together, ordered by the sort key value.
#### Choosing a Primary Key #BestPractices #Design
Critical for performance and scalability; impacts partitioning and query capabilities. Choose keys that distribute workload evenly.

## Read/Write Operations #API #CRUD #DataManipulation
Core API actions for interacting with data in DynamoDB tables.

### Write Operations #Create #Update #Delete
Actions that modify data.
#### PutItem #Insert #Overwrite
Creates a new item or replaces an existing item entirely.
#### UpdateItem #Modify #AtomicCounters
Edits attributes of an existing item or adds a new item if it doesn't exist. Supports conditional updates and atomic counters.
#### DeleteItem #Remove
Deletes a single item identified by its primary key. Supports conditional deletes.
#### BatchWriteItem #BulkOperations #Efficiency
Puts or deletes multiple items across one or more tables in a single operation (up to 25 items).

### Read Operations #Retrieve #Query
Actions that retrieve data.
#### GetItem #Lookup #SingleItem
Retrieves a single item based on its primary key. Provides the most efficient read access.
#### BatchGetItem #BulkRead #Efficiency
Retrieves multiple items across one or more tables in a single operation (up to 100 items).
#### Query #RangeRetrieval #SortKey
Retrieves items that share the same partition key value. Can optionally filter based on the sort key and other attributes. Highly efficient.
#### Scan #FullTableRead #Filtering
Reads every item in a table or secondary index. Generally less efficient than Query or GetItem, especially for large tables. Use FilterExpression to refine results (filtering occurs after reading).

### Conditional Writes #Concurrency #Idempotency
Perform PutItem, UpdateItem, or DeleteItem operations only if specific attribute conditions are met, preventing unintended overwrites.

### Atomic Counters #Increment #Decrement
Increment or decrement a numeric attribute value atomically without interfering with other write requests.

### Read Consistency Models #Consistency #DataFreshness
Controls how up-to-date read results are.
#### Strongly Consistent Reads #LatestData #HigherLatency
Returns a result that reflects all successful writes completed prior to the read. Consumes more read capacity (1 RCU per 4KB).
#### Eventually Consistent Reads #Default #LowerLatency
Returns potentially stale data, but maximizes read throughput. Changes typically propagate within seconds. Consumes less read capacity (0.5 RCU per 4KB).

## Indexing Strategies #Querying #Performance #DataAccess
Mechanisms to enable efficient querying on attributes other than the primary key.

### Primary Keys (Recap) #PartitionKey #SortKey
The fundamental index for every table.

### Secondary Indexes #AlternateQueries #Flexibility
Allow querying data using alternative keys.
#### Global Secondary Indexes (GSIs) #DifferentKeys #CrossPartition
Indexes with a partition key and optional sort key different from the table's primary key. Span across all partitions of the base table. Support eventual consistency by default (strong consistency optional at extra cost). Have their own provisioned or on-demand capacity.
#### Local Secondary Indexes (LSIs) #SamePartitionKey #DifferentSortKey
Indexes that share the same partition key as the base table but have a different sort key. Queries are scoped within items that have the same partition key value. Must be created at table creation time. Share throughput capacity with the base table. Support strong consistency. Have a 10GB size limit per partition key value (across table and all its LSIs).
#### Index Design Best Practices #Optimization #QueryPatterns
Choose indexes based on application access patterns. Use projections to minimize index size and cost. Understand consistency trade-offs.

## Throughput Capacity #Scalability #Performance #Cost
Managing read and write throughput for tables and indexes.

### Read Capacity Units (RCUs) #Reads #Measurement
Unit for measuring read throughput. 1 RCU = 1 strongly consistent read/sec or 2 eventually consistent reads/sec for items up to 4KB.

### Write Capacity Units (WCUs) #Writes #Measurement
Unit for measuring write throughput. 1 WCU = 1 write/sec for items up to 1KB.

### Provisioned Throughput Mode #ManualScaling #PredictableWorkloads
Specify RCUs and WCUs manually. Suitable for predictable traffic patterns.
#### Setting Capacity #Configuration #Management
Define required RCUs and WCUs for tables and GSIs.
#### Auto Scaling #AutomaticAdjustment #CloudWatch
Automatically adjusts provisioned capacity based on actual usage metrics via CloudWatch alarms. Recommended for most provisioned workloads.
#### Reserved Capacity #CostSavings #Commitment
Pay upfront for capacity over a one-year or three-year term for significant cost savings on provisioned throughput.

### On-Demand Capacity Mode #AutomaticScaling #UnpredictableWorkloads
Pay-per-request pricing for reads and writes. DynamoDB automatically scales capacity based on traffic. Ideal for unpredictable workloads or new applications.

### Capacity Planning and Monitoring #Optimization #Throttling
Monitor Consumed vs. Provisioned capacity and throttling events in CloudWatch to optimize settings and avoid performance issues.

## DynamoDB Streams #ChangeDataCapture #Events #Integration
Capture a time-ordered sequence of item-level modifications in a DynamoDB table.

### Overview of Streams #EventSource #RealTime
Provides a log of changes (create, update, delete) made to items. Records appear in near real-time. Stored for 24 hours.

### Enabling and Configuring Streams #Setup #Options
Can be enabled per table.
#### Stream View Types #KEYS_ONLY #NEW_IMAGE #OLD_IMAGE #NEW_AND_OLD_IMAGES
Determine what information is written to the stream record upon data modification.

### Processing Stream Records #Lambda #Kinesis #Applications
Consume and process stream records for various purposes.
#### Lambda Integration #ServerlessProcessing #Triggers
AWS Lambda functions can be triggered by DynamoDB stream events for serverless processing.
#### Kinesis Data Streams Adapter #LargeScaleProcessing
Library to consume and process streams using Kinesis Client Library (KCL) for robust, distributed processing.

### Use Cases for Streams #Replication #Analytics #Notifications
Cross-region replication, data aggregation, triggering downstream workflows, feeding real-time dashboards, auditing.

## Global Tables #Replication #MultiRegion #DisasterRecovery
Build globally distributed applications with managed multi-region replication.

### Concept and Architecture #ActiveActive #HighAvailability
Fully managed, multi-region, multi-active database solution. Tables replicated across selected AWS regions.

### Creating and Managing Global Tables #Setup #Configuration
Define replica regions. DynamoDB handles replication automatically.

### Conflict Resolution #LastWriterWins #Consistency
Uses a "last writer wins" approach based on timestamps for conflict resolution between concurrent writes in different regions. Eventually consistent.

### Benefits and Use Cases #LowLatency #DR
Provide low-latency data access to users near their geographic location. Enhance application availability and disaster recovery posture.

### Version Compatibility (v1 vs v2) #Evolution #Features
Current version (originally v2019.11.21) is easier to manage and more flexible than the legacy version (v2017.11.29).

## Backup and Restore #DataProtection #Recovery #Compliance
Features for backing up and restoring DynamoDB table data.

### On-Demand Backups #ManualBackup #PointInTime
Create full table backups manually or programmatically at any time. Stored independently of the table. Do not affect table performance.

### Point-in-Time Recovery (PITR) #ContinuousBackup #GranularRestore
Enables continuous backups of table data. Allows restoring the table to any specific second within the last 35 days. Protects against accidental deletes or writes.

### Restoring Tables #Process #NewTable
Restores always create a new table; they do not overwrite the source table. Table settings (like Auto Scaling, TTL, Tags) are not restored automatically.

### Backup Management and Cost #Storage #Lifecycle
Manage backups via console or API. Costs associated with backup storage.

## Security and Access Control #Security #IAM #Encryption
Mechanisms to secure DynamoDB tables and data.

### Identity and Access Management (IAM) #Permissions #Policies
Control access to DynamoDB resources using IAM.
#### IAM Users and Roles #Principals
Grant permissions to specific users, groups, or roles.
#### IAM Policies #FineGrainedAccess #ResourceLevel
Define policies specifying allowed or denied actions (e.g., `dynamodb:GetItem`) on specific resources (tables, indexes).
#### IAM Conditions #ContextualAccess
Use condition keys (e.g., `dynamodb:LeadingKeys`, `dynamodb:Attributes`) for fine-grained attribute-level access control.

### Encryption #DataSecurity #Compliance
Protect data at rest and in transit.
#### Encryption at Rest #ServerSideEncryption #AWSKMS
All DynamoDB tables are encrypted by default using an AWS owned key. Options to use AWS managed keys (KMS) or Customer managed keys (KMS) for more control and auditability.
#### Encryption in Transit #TLS #HTTPS
Data transferred between clients and the DynamoDB service endpoint is encrypted using HTTPS/TLS.

### VPC Endpoints for DynamoDB #Networking #PrivateAccess
Allow resources within a Virtual Private Cloud (VPC) to access DynamoDB without needing an internet gateway or NAT instance, keeping traffic within the AWS network.

## Monitoring and Logging #Observability #Troubleshooting #Auditing
Tools for monitoring performance, usage, and API activity.

### CloudWatch Metrics #Performance #Usage
Provides metrics like ConsumedRead/WriteCapacityUnits, ProvisionedRead/WriteCapacityUnits, ThrottledRequests, Latency, SystemErrors.

### CloudWatch Alarms #Notifications #ProactiveMonitoring
Set alarms based on CloudWatch metrics (e.g., notify when ThrottledRequests exceed a threshold).

### CloudTrail Logging #Auditing #APICalls
Records API calls made to DynamoDB (control plane and optionally data plane events) for security auditing, compliance, and operational troubleshooting.

### Contributor Insights #HotKeys #PerformanceAnalysis
Analyze traffic patterns to identify the most frequently accessed and throttled keys (hot keys) in tables and GSIs. Helps diagnose partitioning issues.

## Performance Optimization and Best Practices #Tuning #DesignPatterns #Efficiency
Techniques and strategies for maximizing DynamoDB performance and efficiency.

### Data Modeling Best Practices #SchemaDesign #AccessPatterns
Design schema based on known access patterns.
#### Single Table Design vs Multi-Table Design #DataModeling #Strategies
Consider benefits and trade-offs. Single table design often preferred for minimizing requests but can be complex.
#### Adjacency Lists, Composite Keys, Denormalization #Patterns #Techniques
Common NoSQL design patterns applicable to DynamoDB.

### Partition Key Design #HotPartitions #Uniformity
Choose high-cardinality partition keys that distribute read/write traffic evenly. Avoid "hot" partitions that receive disproportionate traffic. Use techniques like write sharding if necessary.

### Query and Scan Optimization #EfficientReads #Filtering
Prefer Query over Scan. Use ProjectionExpression to retrieve only necessary attributes. Apply FilterExpression carefully (filtering happens after data is read, consuming capacity). Use appropriate index (primary, LSI, GSI).

### Indexing Strategies (Revisited) #GSI #LSI #CostOptimization
Optimize index use: Choose keys wisely, use sparse indexes, project only needed attributes to reduce storage and write costs.

### Handling Throttling #ErrorHandling #RetryLogic
Implement exponential backoff and jitter in application retry logic for throttled requests (`ProvisionedThroughputExceededException`).

### Caching Strategies #DAX #ElastiCache
Use caching (like DAX or ElastiCache) to reduce read load on DynamoDB for frequently accessed, read-heavy data.

## Integration with other AWS Services #Ecosystem #Synergy #AWSStack
How DynamoDB works with other AWS services.

### AWS Lambda #Serverless #Triggers #Backend
Commonly used with DynamoDB Streams for event processing or as a backend data store for serverless applications.
### API Gateway #RESTfulAPI #WebServices
Expose DynamoDB data via RESTful APIs.
### S3 #DataLake #ExportImport
Export table data to S3 for analytics, archiving, or import data from S3.
### AWS AppSync #GraphQL #RealtimeAPI
Use DynamoDB as a data source for GraphQL APIs built with AppSync.
### Kinesis Data Streams #StreamingData #Analytics
Feed DynamoDB Streams data into Kinesis for large-scale, real-time analytics.
### AWS Glue / EMR #ETL #BigDataProcessing
Process DynamoDB data using ETL jobs (Glue) or big data frameworks (EMR).
### Redshift #DataWarehouse #Analytics
Load DynamoDB data into Redshift for complex analytical queries.
### CloudFormation / Terraform #IaC #Deployment
Define and manage DynamoDB resources using Infrastructure as Code tools.

## DynamoDB Accelerator (DAX) #Caching #Performance #Inmemory
An optional, fully managed, in-memory cache for DynamoDB.

### What is DAX? #Purpose #Architecture
Provides microsecond read latency for read-heavy workloads by caching frequently accessed data in memory. API-compatible with DynamoDB.

### How DAX Works #WriteThrough #ReadCache
Acts as a write-through cache. Reads are served from the cache if possible; otherwise, fetched from DynamoDB and then cached.

### Benefits and Use Cases #MicrosecondLatency #ReadHeavy
Significantly improves read performance for applications needing extremely fast response times. Reduces read load on the underlying DynamoDB table.

### DAX Clusters #Setup #Management
Requires provisioning a DAX cluster (one or more nodes).

### DAX SDK #ClientIntegration #Programming
Requires using the DAX client SDK in your application instead of the standard DynamoDB SDK.

## Advanced Features #Capabilities #Enhancements
Additional functionalities extending DynamoDB's core capabilities.

### Transactions #ACID #MultipleOperations
Provide ACID (Atomicity, Consistency, Isolation, Durability) guarantees for multi-item operations.
#### TransactGetItems #AtomicReads
Read up to 100 items atomically across one or more tables.
#### TransactWriteItems #AtomicWrites
Write (put, update, delete, condition check) up to 100 items atomically across one or more tables.

### Time To Live (TTL) #DataLifecycle #Expiration
Automatically delete items from a table after a specified timestamp attribute value. Useful for managing transient data like session states or logs without consuming write capacity for deletes.

### PartiQL Support #SQLInterface #QueryLanguage
Use PartiQL, a SQL-compatible query language, to interact with DynamoDB tables for select, insert, update, and delete operations.

### Export to S3 #DataLake #Analytics #Backup
Export table data (full or incremental) to an S3 bucket in JSON or ION format, often used for analytics or backup.

### Import from S3 #BulkLoading #DataMigration
Import data in bulk from S3 (CSV, DynamoDB JSON, ION formats) into a new DynamoDB table.

### Kinesis Data Streams Destination #DirectStreaming #CDC
Send change data capture records directly from DynamoDB Streams to a Kinesis Data Stream for advanced stream processing.

## Development and Tooling #SDK #CLI #Console #Workflow
Tools and environments for developing with and managing DynamoDB.

### AWS Management Console #GUI #Management
Web-based interface for creating tables, managing backups, monitoring metrics, and running queries.
### AWS Command Line Interface (CLI) #Scripting #Automation
Command-line tool for managing DynamoDB resources and performing data operations. Useful for scripting.
### AWS SDKs #Programming #Integration
Libraries available for various programming languages (Python, Java, Node.js, .NET, Go, Ruby, PHP, C++) to interact with the DynamoDB API.
### DynamoDB Local #Development #Testing
A downloadable version of DynamoDB that runs on your local machine. Ideal for development and testing without incurring costs or needing network access.
### NoSQL Workbench for DynamoDB #DataModeling #Visualization #Querying
A client-side GUI tool for data modeling, data visualization, query development, and administration.

## Pricing Model #Cost #Billing #Economics
How costs are calculated for using DynamoDB.

### Read/Write Capacity Pricing #RCU #WCU #Provisioned #OnDemand
Based on provisioned RCUs/WCUs per hour or per-request for on-demand mode.
### Data Storage Costs #GBMonth
Charged per GB-month for data stored in tables and indexes.
### Index Storage Costs #GSI #LSI
Storage consumed by secondary indexes is billed similarly to table storage.
### DynamoDB Streams Costs #ReadRequests
Charged based on the number of read requests made to the stream.
### Backup and Restore Costs #Storage #PITR
Costs associated with storing on-demand backups and enabling Point-in-Time Recovery (based on table size).
### Global Tables Costs #ReplicatedWCUs #DataTransfer
Charged for replicated WCUs (rWCUs) and data transfer between regions.
### DAX Costs #NodeHours
Charged per node-hour based on the instance type used for the DAX cluster.
### Other Costs #DataTransferOut #TTLDeletes #ContributorInsights
Includes data transfer out of AWS, TTL deletes (charged as regular deletes if throughput exceeded), Contributor Insights usage.
### Free Tier #Trial #GettingStarted
Offers a perpetual free tier including storage, RCU/WCU, allowing small applications to run for free.

## Limits and Constraints #Boundaries #Quotas #ScalabilityLimits
Inherent limits and quotas within the DynamoDB service.

### Table and Account Limits #ResourceQuotas
Limits on the number of tables per region per account, etc. (often soft limits that can be increased).
### Item Size Limits #400KB
Maximum size of a single DynamoDB item (including attribute names and values) is 400 KB.
### Partition Throughput Limits #RCU #WCU #PerPartition
A single table partition has limits on sustained throughput (e.g., 3000 RCUs and 1000 WCUs). Proper key design avoids hitting these limits.
### Secondary Index Limits #GSI #LSI
Limits on the number of GSIs (default 20 per table) and LSIs (5 per table). Item collection size limit for LSIs (10GB per partition key value).
### Other Operational Limits #API #PayloadSize
Limits on API request/response sizes, batch operation sizes, transaction sizes, etc.

## Comparison with Other Databases #NoSQL #RDBMS #Alternatives
Understanding DynamoDB's place in the database landscape.

### DynamoDB vs Relational Databases (e.g., RDS) #SQLvsNoSQL #Schema
Key differences: Schema flexibility (DynamoDB) vs enforced schema (RDBMS), Scalability model (Horizontal for DynamoDB vs often Vertical for RDBMS), Query language (API/PartiQL vs SQL), Consistency models, Join capabilities (limited in DynamoDB).
### DynamoDB vs Other NoSQL Databases #MongoDB #Cassandra #DocumentDB
Comparison based on data
 model (Key-Value/Document vs Document/Columnar), management model (Fully Managed vs Self-hosted/Managed), consistency options, primary use cases, performance characteristics, and pricing.
### When to Choose DynamoDB #Strengths #Weaknesses
Ideal for applications requiring high scalability, predictable performance, low operational overhead, and flexible schema. Less suitable for applications needing complex joins, ad-hoc querying across many dimensions, or strong transactional consistency across large numbers of items without careful design.
