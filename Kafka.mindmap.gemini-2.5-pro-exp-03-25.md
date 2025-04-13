# Kafka #Overview #EventStreaming #DistributedSystem
Apache Kafka is a distributed event streaming platform used for building real-time data pipelines and streaming applications. It's designed for high-throughput, fault-tolerance, and scalability. [10, 26, 18, 32]

## 1. Core Concepts #Basics #Fundamentals #Theory
Fundamental ideas and terminology used in Kafka. [24, 10, 32, 26]

### Event / Message #DataUnit #Record
A unit of data within Kafka, representing a fact or event that happened. [23, 6, 14, 32]
Often consists of a key, value, timestamp, and optional headers. Key and value are typically serialized byte arrays (e.g., JSON, Avro, Protobuf). [6, 14, 32, 24]
Key is used for partitioning and ensuring order for messages with the same key. [24]
Value contains the main payload. [24]
Events are immutable once written. [10, 24]

### Topics #Categorization #Stream #Log
A category or feed name to which records are published. [10, 14, 24, 30]
Topics are append-only logs. [10, 24]
They are divided into partitions for scalability and parallelism. [10, 14, 24, 30]

### Partitions #Scalability #Parallelism #Ordering
Topics are split into partitions, which are ordered, immutable sequences of records. [10, 14, 24, 30]
Each message within a partition gets an incremental ID called an offset. [14, 24]
Partitions allow for horizontal scaling of reads and writes. [23, 24]
Ordering is guaranteed only within a single partition. [24]
Records with the same key are typically sent to the same partition. [24]

### Offsets #Position #Identifier
A unique, sequential ID assigned to each message within a partition. [14, 48, 24]
Consumers track their position in each partition using offsets. [14, 48, 45]
Kafka retains messages based on configured retention policies (time or size).

### Brokers #Server #Node #Storage
A Kafka server that stores data (partitions) and serves client requests. [14, 18, 30, 32]
A Kafka cluster consists of one or more brokers. [14, 30]
Brokers handle replication and fault tolerance. [14, 32]

### Producers #Client #Writing #Publishing
Client applications that publish (write) streams of records to Kafka topics. [1, 2, 14, 42, 32]
Producers choose which topic (and optionally partition) to write to. [14, 26]
Responsible for serialization of message key and value. [6, 42]

### Consumers #Client #Reading #Subscribing
Client applications that subscribe to (read) and process streams of records from Kafka topics. [1, 45, 14, 32]
Consumers read messages in the order they appear within a partition. [10]
Responsible for deserialization of message key and value. [6]

### Consumer Groups #Scalability #Parallelism #LoadBalancing
One or more consumers that jointly consume a set of topics. [45, 14, 48, 32]
Each partition is assigned to exactly one consumer within a group at any given time. [45, 48, 32]
Allows for load balancing and fault tolerance for consumption. [45, 2, 24]

### Replication #FaultTolerance #HighAvailability #Durability
Kafka replicates partitions across multiple brokers. [14, 5, 32]
Each partition has one leader and zero or more followers. [14]
Producers and Consumers interact only with the leader replica. Followers passively copy data.
Provides fault tolerance: if a leader fails, a follower can take over. [14]

### ZooKeeper / KRaft #Metadata #Coordination #Consensus
Historically, ZooKeeper was used for cluster metadata management (brokers, topics, configs, ACLs), controller election, etc. [14, 18]
KRaft (Kafka Raft Metadata mode) is the newer, built-in consensus protocol replacing ZooKeeper, simplifying architecture. [24, 30]
The Controller is a specific broker responsible for managing partition leaders and cluster state. [6, 18, 24]

## 2. Architecture #Design #Components #Structure
How Kafka is structured and its components interact. [6, 14, 18, 23, 30]

### Cluster Architecture #DistributedSystem #Nodes
Consists of multiple Brokers working together. [30, 18]
One broker acts as the Controller (elected via ZooKeeper/KRaft). [18, 6, 24]
Clients (Producers, Consumers) connect to any broker (bootstrap servers) to discover cluster metadata. [42]

### Storage Layer #LogStorage #Persistence
Handles durable storage of event streams in topics/partitions. [23, 6]
Designed for high throughput sequential writes and reads (append-only log). [18]
Leverages OS page cache for performance. [34]

### Compute Layer #APIs #Processing
Provides APIs for interacting with the storage layer. [6, 23]
Includes Producer API, Consumer API, Streams API, Connect API, Admin API. [6, 18, 1]

### Topic Partitions and Replicas #Distribution #Resilience
Topics are divided into partitions distributed across brokers. [14, 23, 30]
Partitions are replicated for fault tolerance (Replication Factor). [14, 5, 32]
#### Leader Replica #ReadWrite
Handles all read/write requests for the partition. [14]
#### Follower Replica #Replication #Failover
Passively replicate data from the leader. Do not serve client requests. [14]
#### In-Sync Replicas (ISRs) #Consistency #Durability
Subset of replicas (leader + followers) that are fully caught up with the leader's log. [32, 5]
Used for durability guarantees (`acks` setting). [5]

### Controller Broker #Management #Coordination
A broker elected to manage cluster metadata and state. [6, 18, 24]
Responsibilities include leader election for partitions, managing broker joins/leaves, topic creation/deletion. [24]

### Data Flow #PublishSubscribe #MessagingPattern
Producers write to topic partition leaders. [14]
Data is replicated to follower brokers. [14]
Consumers read from topic partition leaders, tracking their offset. [14, 45]

## 3. Kafka APIs #Interfaces #Interaction #Development
The core APIs provided by Kafka for application development and management. [1, 18, 6]

### Producer API #WritingData #Publishing
Allows applications to send streams of data to Kafka topics. [1, 2, 44, 49]
Provides configuration options (acks, compression, retries, batching). [1, 20, 42]
Handles serialization, partitioning, and sending messages. [6, 42]
#### Key Configurations #ProducerConfig #Tuning
`bootstrap.servers`, `key.serializer`, `value.serializer`, `acks`, `retries`, `batch.size`, `linger.ms`, `compression.type`, `enable.idempotence`. [20, 42, 49, 46]
#### Sending Methods #Async #Sync #Callbacks
Asynchronous `send()` with optional callback. [1]
Synchronous `send().get()`.
#### Idempotent Producer #EOS #Reliability
Ensures messages are written exactly once per producer session per partition, even with retries. Enabled via `enable.idempotence=true`. [28, 35]

### Consumer API #ReadingData #Subscribing
Allows applications to read streams of data from Kafka topics. [1, 2, 45, 48]
Manages group coordination, partition assignment, and offset tracking. [45, 48]
Handles deserialization. [6]
#### Key Configurations #ConsumerConfig #Tuning
`bootstrap.servers`, `key.deserializer`, `value.deserializer`, `group.id`, `auto.offset.reset`, `enable.auto.commit`, `fetch.min.bytes`, `fetch.max.wait.ms`, `isolation.level`. [45, 46, 48]
#### Subscribing to Topics #Subscription #Assignment
`subscribe()` method (dynamic assignment with group coordination). [48]
`assign()` method (manual partition assignment).
#### Polling for Records #Receiving #ProcessingLoop
`poll()` method retrieves batches of records. Heartbeats and rebalances occur within poll calls. [45, 46]
#### Offset Management #TrackingProgress #Committing
Consumers need to commit offsets to track progress. [45, 48]
##### Auto Commit #Simplicity #Risk
`enable.auto.commit=true`. Simple but can lead to data loss or duplicates. [45]
##### Manual Commit #Control #Reliability
`commitSync()`, `commitAsync()`. Provides more control over delivery semantics. [45]

### Streams API #StreamProcessing #RealTime #JavaLibrary
A client library for building real-time stream processing applications and microservices. [1, 8, 10, 38]
Input and output data are stored in Kafka topics. [1, 10, 38]
Provides high-level DSL (map, filter, join, aggregate) and low-level Processor API. [1, 8, 38]
Supports stateful processing with fault-tolerant state stores (backed by Kafka topics or RocksDB). [10, 38]
Handles partitioning, fault tolerance, and time semantics (event time, processing time). [38]
#### Key Concepts #DSL #ProcessorAPI #KStream #KTable #StateStore #Windowing
KStream: Represents an unbounded stream of records. [8]
KTable: Represents a changelog stream, modeling a table where keys are unique. [36]
State Store: Persistent storage for stateful operations. [38]
Windowing: Grouping records based on time for operations like aggregations. [38]
Topology: Defines the processing graph. [38]

### Connect API #Integration #Connectors #DataMovement
A framework for scalably and reliably streaming data between Kafka and other systems (databases, search indexes, file systems). [3, 9, 11, 13, 19]
Uses reusable 'Connectors'. [3, 11, 19]
#### Source Connectors #Ingest #Import
Ingest data from external systems into Kafka topics. [3, 11]
#### Sink Connectors #Egest #Export
Deliver data from Kafka topics into external systems. [3, 11]
#### Architecture #Workers #Tasks #Converters #Transforms
Workers: Run connector logic (Standalone or Distributed mode). [9, 13, 19]
Tasks: Parallel units of work for a connector. [9, 13, 19]
Converters: Handle serialization/deserialization between Kafka and external systems (e.g., JSONConverter, AvroConverter). [9, 19]
Transforms (SMTs): Apply simple message modifications in the pipeline. [11, 19]

### Admin API #Management #Administration #Automation
Allows managing and inspecting Kafka cluster resources like topics, brokers, ACLs, configs. [1, 18]
Used for automating administrative tasks. [1]
#### Operations #CreateTopic #DeleteTopic #DescribeConfigs #ManageACLs
Creating, deleting, altering topics. [1]
Describing and altering configurations. [1]
Managing Access Control Lists (ACLs). [1]

## 4. Kafka Streams & ksqlDB #StreamProcessing #SQLonKafka
Tools and libraries specifically for processing data streams within Kafka.

### Kafka Streams #JavaLibrary #Microservices #StatefulProcessing
(Covered in API section, reiterated here for focus on processing)
Client library for complex stream processing within Java applications. [1, 8, 10, 38]
High-level DSL and low-level Processor API. [1, 8, 38]
Ideal for embedding stream processing logic directly into applications. [38]

### ksqlDB #StreamingSQL #Database #InteractiveQueries
A streaming SQL engine for Kafka. [8, 22, 39, 40]
Allows building stream processing applications using familiar SQL syntax. [8, 22, 40]
Runs as a separate server or cluster. [8, 40]
Can create streams and tables directly from Kafka topics. [22, 40]
Supports push queries (continuous results) and pull queries (point-in-time lookups on materialized views). [40, 36]
Can manage Kafka Connect connectors via SQL. [40, 39]

## 5. Kafka Connect #DataIntegration #Pipelines #Connectors
Framework for connecting Kafka with external systems. [3, 9, 11, 13, 19]

### Connect Framework #Core #Runtime
Provides the runtime environment (Workers) for executing connectors. [3, 9, 19]
Manages configuration, task distribution, offset storage, status updates. [11, 19]
Operates in Standalone or Distributed mode. [3, 9, 11, 13]
#### Standalone Mode #SingleNode #Development #Testing
Runs all connectors and tasks in a single process. [3, 9]
No fault tolerance for the worker process itself. [9]
#### Distributed Mode #MultiNode #Scalability #FaultTolerance
Multiple workers coordinate via Kafka topics to distribute tasks. [3, 9, 11, 13]
Provides scalability and fault tolerance (if a worker fails, tasks are reassigned). [9, 13, 19]

### Connectors #Plugins #Source #Sink
Ready-to-use components for specific external systems. [3, 11, 13, 19]
Source Connectors (e.g., JDBC Source, Debezium CDC, S3 Source). [3, 11]
Sink Connectors (e.g., JDBC Sink, Elasticsearch Sink, HDFS Sink). [3, 11]
Community and commercial connectors available (Confluent Hub). [19]

### Converters #Serialization #DataFormats
Handle data format conversion between Kafka Connect's internal representation and the raw bytes stored in Kafka. [9, 19]
Examples: AvroConverter (integrates with Schema Registry), JsonConverter, StringConverter. [9]
Configured per connector. [9]

### Transforms (SMTs) #SingleMessageTransforms #Modification #Filtering
Apply simple, stateless transformations to individual messages as they flow through Connect. [11, 19]
Examples: `InsertField`, `ReplaceField`, `MaskField`, `Filter`, `TimestampRouter`. [11]
Configured per connector. [11]

### Offset Management #TrackingProgress #FaultTolerance
Connect automatically manages source connector offsets (tracking source system progress) and sink connector offsets (tracking Kafka topic progress). [11]
Offsets are stored in Kafka topics (`connect-offsets`). [11]

### Error Handling #DeadLetterQueue #Tolerance
Configuration options for handling message processing errors. [9]
Can be configured to tolerate certain errors, log them, or route failing messages to a Dead Letter Queue (DLQ). [9]

## 6. Administration & Management #Operations #Monitoring #CLI
Tasks and tools related to managing a Kafka cluster. [21, 27]

### Command Line Tools (CLI) #Scripts #Utilities #Management
Kafka ships with shell scripts (`/bin` directory) for administration. [43, 21]
#### Topic Management #kafka-topics.sh
Create, list, describe, alter, delete topics. [43]
#### Consumer Group Management #kafka-consumer-groups.sh
List, describe groups, view offsets, reset offsets. [34]
#### Broker Management #kafka-server-start.sh #kafka-server-stop.sh
Start and stop Kafka brokers. [43]
#### Console Producer/Consumer #kafka-console-producer.sh #kafka-console-consumer.sh
Simple command-line clients for testing. [43]
#### Other Tools #kafka-configs.sh #kafka-acls.sh #kafka-features.sh
Manage dynamic configurations, Access Control Lists (ACLs), Feature Flags. [43]

### Monitoring #Metrics #Health #Performance
Kafka brokers and clients expose numerous metrics via JMX (Java Management Extensions).
Key metrics categories:
#### Broker Metrics #Throughput #Latency #Partitions #Replication
Request latency, message/byte rates, partition count, under-replicated partitions, ISR shrink/expand rate, controller status, network processor avg idle, request queue size. [5, 25]
#### Producer Metrics #Throughput #Latency #Errors
Record send rate, byte rate, request latency, batch size, compression rate, record error rate. [42]
#### Consumer Metrics #Lag #Throughput #Latency
Records lag, fetch latency, records consumed rate, bytes consumed rate, commit latency, assigned partitions. [45]
#### ZooKeeper/KRaft Metrics #Availability #Latency
Availability, request latency (relevant for ZK-based clusters).
#### Monitoring Tools #JMX #Prometheus #Grafana #Datadog #ConfluentControlCenter
Tools like JMX exporters (e.g., JMX Exporter for Prometheus), Datadog Agent, Confluent Control Center, Burrow, CMAK. [4, 27, 21]

### Configuration Management #BrokerConfig #TopicConfig #ClientConfig
Broker configs (`server.properties`). [5, 20]
Topic-level configs (can override broker defaults). [20, 31]
Client configs (Producer/Consumer). [20, 45, 49]
Dynamic configuration updates via Admin API or CLI tools. [20]

### GUI Tools #WebUI #Desktop #Visualization
Third-party tools for easier cluster management and monitoring. [4, 21, 27]
Examples: Confluent Control Center, Lenses, Kafdrop, AKHQ, Offset Explorer, CMAK (Cluster Manager for Apache Kafka), Kafka Magic. [4, 21, 27, 41]

### Cluster Operations #Maintenance #Upgrades #Expansion
Rolling upgrades to minimize downtime.
Adding/removing brokers.
Partition rebalancing (`kafka-reassign-partitions.sh`). [20]
Disaster recovery planning.

## 7. Security #Authentication #Authorization #Encryption
Mechanisms to secure a Kafka cluster. [17, 12, 16, 29]

### Encryption (SSL/TLS) #DataInTransit #Confidentiality
Encrypts data communication between clients and brokers, and between brokers. [17, 12, 16, 29]
Uses SSL/TLS protocols. [16, 29]
Requires configuring keystores and truststores. [16]
Configured via broker listeners and client properties (`security.protocol=SSL` or `SASL_SSL`). [7, 16, 29]
Note: Does not encrypt data at rest on broker disks by default. [17]

### Authentication #IdentityVerification #WhoAreYou
Verifies the identity of clients connecting to brokers, or brokers connecting to each other. [7, 17, 29]
Kafka Principals represent authenticated identities. [7, 29]
#### SSL Authentication #ClientCertificates #MutualTLS
Uses client SSL certificates for authentication (mutual TLS). [17]
Requires clients to have certificates signed by a trusted CA. [17]
Configured via `ssl.client.auth=required`.
#### SASL Authentication #Pluggable #Credentials #Kerberos
Simple Authentication and Security Layer - a framework for authentication mechanisms. [17, 16, 29]
Configured via `security.protocol=SASL_PLAINTEXT` or `SASL_SSL`. [7]
##### SASL/PLAIN #UsernamePassword #Simple
Simple username/password authentication. Often used with TLS for encryption (`SASL_SSL`). [16, 29]
Requires a JAAS configuration file.
##### SASL/SCRAM #UsernamePassword #ChallengeResponse #Secure
Salted Challenge Response Authentication Mechanism (SCRAM-SHA-256, SCRAM-SHA-512). More secure than PLAIN. [29]
Stores credentials securely on brokers.
Requires JAAS configuration.
##### SASL/GSSAPI (Kerberos) #Kerberos #Enterprise #SSO
Integrates with Kerberos infrastructure, common in enterprise environments. [17, 16, 29]
Requires Kerberos setup (KDC, keytabs) and JAAS configuration.
##### SASL/OAUTHBEARER #OAuth2 #Tokens #Modern
Uses OAuth 2.0 bearer tokens for authentication. Suitable for modern cloud-native environments.
Requires an OAuth/OIDC identity provider and custom callback handlers.

### Authorization (ACLs) #Permissions #AccessControl #WhatCanYouDo
Controls what actions authenticated users (Principals) are allowed to perform on specific resources (Topics, Group, Cluster). [17, 12]
Managed using Access Control Lists (ACLs). [17]
Requires an Authorizer implementation (e.g., `kafka.security.authorizer.AclAuthorizer`).
ACLs define Allow/Deny rules for Principal, Operation, Resource combinations. [1]
Managed via `kafka-acls.sh` tool or Admin API. [43, 1]

### ZooKeeper/KRaft Security #MetadataProtection
Securing access to the metadata store itself (authentication, ACLs for ZNodes if using ZooKeeper).

## 8. Performance & Tuning #Optimization #Throughput #Latency
Optimizing Kafka for specific workload requirements. [5, 25, 31, 34]

### Key Metrics #Latency #Throughput #Lag
Latency: End-to-end, Produce, Fetch. [25, 31]
Throughput: Messages/sec, Bytes/sec. [25, 31]
Consumer Lag: Difference between latest offset and consumer offset. [21]

### Broker Tuning #ServerConfig #ResourceAllocation
`num.network.threads`, `num.io.threads`: Adjust based on core count. [5, 34]
`message.max.bytes`: Maximum message size broker will accept.
`replica.fetch.max.bytes`: Affects replication throughput. [25]
`num.partitions`: Default partitions per auto-created topic. [5]
Log segment size (`log.segment.bytes`) and roll time (`log.segment.ms`). [5]
JVM Heap Size & Garbage Collection (G1GC recommended). [34, 5]
OS Tuning (File descriptors, Network buffers, Page cache). [34]
Socket buffer sizes (`socket.send.buffer.bytes`, `socket.receive.buffer.bytes`). [5]

### Producer Tuning #ClientConfig #Batching #Compression
`acks`: Controls durability ('0', '1', 'all'). [20, 42]
`batch.size`: Max bytes per batch. Larger batches improve throughput but increase latency. [5, 20]
`linger.ms`: Max time to wait before sending a batch. Balances latency and throughput. [20, 25]
`compression.type`: (none, gzip, snappy, lz4, zstd). Reduces network/disk usage, trades CPU. [34, 42]
`buffer.memory`: Total memory for buffering unsent records.
`max.in.flight.requests.per.connection`: Controls number of unacknowledged requests; affects ordering when retries occur (set to 1 for strict ordering without idempotence). [20]

### Consumer Tuning #ClientConfig #Fetching #Polling
`fetch.min.bytes`: Min data broker should return per fetch. Reduces broker load, increases latency. [45]
`fetch.max.wait.ms`: Max time broker waits if `fetch.min.bytes` isn't met. [45]
`max.poll.records`: Max records returned in a single `poll()` call.
`max.partition.fetch.bytes`: Max data returned per partition per fetch.
`session.timeout.ms`, `heartbeat.interval.ms`: Control consumer group liveness detection. [20]
`group.instance.id`: Enables static membership to reduce rebalances. [20]
Partition Assignment Strategy (`partition.assignment.strategy`). [20, 45]

### Topic/Partition Strategy #Design #Layout
Number of Partitions: Affects parallelism. More partitions allow more consumers in a group, but increase overhead (leader election time, memory usage, file handles). [5, 25, 34]
Replication Factor: Affects durability and availability. Higher factors increase safety but use more disk/network. [5, 31]

## 9. Guarantees & Semantics #Reliability #Ordering #EOS
Understanding the delivery guarantees Kafka provides.

### Message Delivery Semantics #AtMostOnce #AtLeastOnce #ExactlyOnce
Defines how many times a message might be delivered in the face of failures. [28, 33, 35]
#### At Most Once #Performance #PossibleLoss
Messages might be lost but are never redelivered. Achieved by producer not retrying, or consumer committing before processing. [28, 33]
#### At Least Once #Reliability #PossibleDuplicates
Messages are never lost but might be redelivered. Achieved by producer retries (`acks=all`) and consumer committing after processing. [28, 33]
#### Exactly Once (EOS) #StrongestGuarantee #NoLossOrDuplicates
Messages are delivered exactly once, even with failures. [28, 33, 35]
Requires specific configurations on producer, consumer, and often involves Kafka Transactions or Kafka Streams EOS. [15, 28, 33, 37]

### Idempotent Producer #ProducerEOS #RetrySafety
Ensures producer retries don't cause duplicate messages within a single producer session for a given partition. [28, 35]
Enabled via `enable.idempotence=true` (implies `acks=all`, specific retry/inflight settings). [35]
Uses Producer ID (PID) and sequence numbers. [28]

### Kafka Transactions #AtomicWrites #ReadProcessWrite #MultiPartitionEOS
Enable atomic writes across multiple partitions and topics. [15, 35, 37]
Allows building reliable read-process-write applications. [15]
Producer wraps send operations in `beginTransaction()`, `send()`, `commitTransaction()` / `abortTransaction()`. [15]
Consumers configured with `isolation.level=read_committed` only read committed transactional messages. [15, 35]
Requires a `transactional.id` configured on the producer. [15]

### Ordering Guarantees #Sequence #Keys
Messages within a single partition are stored and delivered in the order they were produced. [24]
Messages with the same key are typically sent to the same partition, preserving order for that key. [24]
No ordering guarantee across different partitions.

## 10. Ecosystem & Integrations #Tools #Extensions #Community

### Schema Registry #SchemaManagement #DataGovernance #Avro #Protobuf #JSONSchema
Centralized service for managing and validating schemas (Avro, Protobuf, JSON Schema) for Kafka messages. [14]
Ensures producers and consumers use compatible schemas, preventing runtime errors.
Clients integrate via specific Serializers/Deserializers (e.g., `KafkaAvroSerializer`). [9]
Supports schema evolution rules (backward, forward, full compatibility).

### Client Libraries #LanguageSupport #Bindings
Official Java client. [1]
Numerous community-supported clients for other languages (Python, Go, C/C++, .NET, Node.js, Ruby, etc.).

### Monitoring & Management Tools #GUI #CLI #Metrics
(See Administration & Management section)
Confluent Control Center, CMAK, Kafdrop, AKHQ, Prometheus/Grafana setups, Datadog, etc. [4, 21, 27]

### Stream Processing Frameworks #RealTimeAnalytics
Kafka Streams (Java). [1, 8, 10, 38]
ksqlDB (SQL). [8, 22, 39, 40]
Integration with other frameworks (Flink, Spark Streaming). [22]

### Connectors Ecosystem #DataIntegrationPlugins
Wide range of pre-built connectors available via Confluent Hub and community. [3, 11]

## 11. Use Cases & Applications #RealWorld #Scenarios #Examples
Common ways Kafka is used in practice. [10, 26]

### Messaging System #Decoupling #Asynchronous
Traditional publish/subscribe messaging, decoupling services. [10]

### Activity Tracking #Clickstreams #Logging
Collecting user activity data, logs from distributed applications. [18]

### Real-time Analytics #StreamingData #Dashboards
Processing data streams for real-time dashboards, fraud detection, monitoring. [10, 26]

### Data Integration #ETL #Pipelines
Using Kafka Connect to move data between different data stores and applications. [26, 10]

### Stream Processing #Transformations #Aggregations
Using Kafka Streams or ksqlDB for real-time data transformation, enrichment, and aggregation. [10, 26]

### Event Sourcing #ImmutableLog #StateReconstruction
Using Kafka as the central log of events that drive application state. [26]

### Commit Log #DistributedSystems #Replication
Using Kafka as a commit log for distributed systems to replicate state changes. [18]

### Microservices Communication #EventDrivenArchitecture
Facilitating communication between microservices via events.
