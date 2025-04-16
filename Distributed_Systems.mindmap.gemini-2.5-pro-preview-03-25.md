# Distributed Systems #Overview #CoreConcept
Systems whose components are located on different networked computers, which communicate and coordinate their actions by passing messages to achieve a common goal.

## Introduction and Foundational Concepts #Basics #Theory #Fundamentals
Core ideas, definitions, and motivations behind distributed systems.
### Definitions and Characteristics #Definition #Properties
What constitutes a distributed system; key properties like concurrency, lack of global clock, independent failures.
### Goals of Distributed Systems #Objectives #Benefits
Resource sharing, scalability, reliability, performance, heterogeneity.
### Challenges in Distributed Systems #Problems #Difficulties
Complexity, security, fault tolerance, consistency, concurrency control, heterogeneity, transparency.
### History and Evolution #Timeline #Development
Milestones from early networks to modern cloud and edge computing.
### Types of Transparency #Abstraction #UserView
Access, Location, Migration, Replication, Concurrency, Failure, Performance, Scaling Transparency.

## System Architectures and Models #Design #Structure #Patterns
Common ways to structure and model distributed systems.
### Architectural Styles #Blueprints #Organization
How components are arranged and interact.
#### Client-Server Architecture #RequestResponse #Centralized
Traditional model with clients requesting services from servers.
#### Peer-to-Peer (P2P) Architectures #Decentralized #SharedResources
Systems where nodes act as both clients and servers (e.g., structured, unstructured, hybrid).
#### Service-Oriented Architecture (SOA) #Services #LooseCoupling
Systems built as a collection of interacting services.
#### Microservices Architecture #FineGrained #IndependentDeployment
An evolution of SOA focusing on smaller, independently deployable services.
#### Cloud-Based Architectures #IaaS #PaaS #SaaS #Scalability
Leveraging cloud infrastructure (e.g., AWS, Azure, GCP).
#### Edge Computing Architectures #Proximity #LatencyReduction
Processing data closer to the source.
#### Layered Architectures #AbstractionLevels #SeparationOfConcerns
Structuring systems into hierarchical layers.
### System Models #Abstraction #Formalism
Abstract representations for reasoning about distributed systems.
#### Synchronous vs. Asynchronous Systems #Timing #Assumptions
Models based on assumptions about process execution speeds, message delivery times, and clock drift.
#### Failure Models #Faults #ErrorTypes
Classifying potential failures (e.g., crash, omission, timing, Byzantine).
#### Interaction Models #Communication #Behavior
How processes interact (e.g., message passing, shared memory).

## Communication and Networking #Interaction #Messaging #Protocols
Mechanisms for processes on different machines to exchange information.
### Fundamentals of Networking #Basics #TCP_IP #OSI
Underlying network protocols and layers.
### Interprocess Communication (IPC) Paradigms #IPC #Exchange
How processes communicate.
#### Remote Procedure Call (RPC) #ProcedureCall #Abstraction
Invoking procedures on remote machines as if they were local.
#### Remote Method Invocation (RMI) #ObjectOriented #Java
Object-oriented version of RPC, often language-specific.
#### Message-Oriented Middleware (MOM) #Queues #Asynchronous #Decoupling
Using message queues for asynchronous communication (e.g., JMS, AMQP, Kafka, RabbitMQ).
#### Representational State Transfer (REST) #WebServices #HTTP #Stateless
Architectural style for web services, commonly using HTTP.
#### gRPC #RPC #ProtocolBuffers #HTTP2
High-performance RPC framework developed by Google.
#### Sockets #LowLevel #NetworkingAPI
Low-level communication endpoint.
#### Publish/Subscribe Systems #Events #Decoupling
Processes subscribe to event types and receive messages published to those types.
#### Group Communication #Multicast #Broadcast
Sending messages to multiple recipients reliably.

## Time, Ordering, and Coordination #Synchronization #Sequencing #Agreement
Dealing with the lack of a global clock and coordinating actions across nodes.
### Time in Distributed Systems #Clock #Ordering
Challenges with measuring and synchronizing time.
#### Physical Clocks #NTP #GPS #Synchronization
Using real-world time sources and protocols like NTP.
#### Logical Clocks #Causality #OrderingEvents
Tracking causal relationships without synchronized physical clocks.
##### Lamport Timestamps #PartialOrder #HappensBefore
Assigning sequence numbers to events based on causality.
##### Vector Clocks #FullCausalOrder #ConcurrencyDetection
Capturing causal dependencies more precisely than Lamport clocks.
### Event Ordering #Sequencing #Causality
Ensuring events are processed in a meaningful order.
#### Causal Ordering #HappensBefore #Dependency
Delivering messages respecting the happens-before relationship.
#### Total Order Broadcast (Atomic Broadcast) #GlobalOrder #Consistency
Delivering messages in the same order to all participants.
### Mutual Exclusion #ConcurrencyControl #SharedResources
Algorithms ensuring only one process accesses a critical section at a time (e.g., Centralized, Token-Based, Decentralized/Voting).
### Election Algorithms #Coordination #LeaderSelection
Choosing a unique process to act as a coordinator (e.g., Bully Algorithm, Ring Algorithm).
### Distributed Transactions #Atomicity #Consistency #ACID
Ensuring ACID properties across multiple nodes.
#### Two-Phase Commit (2PC) #Atomicity #Consensus
Protocol for achieving atomic commitment.
#### Three-Phase Commit (3PC) #NonBlocking #FaultTolerance
Variation of 2PC designed to be non-blocking in certain failure scenarios.
#### Paxos and Raft (Consensus) #Agreement #FaultTolerance
Algorithms for achieving consensus in the presence of failures (covered more under Consensus).
### Global State and Snapshots #SystemState #Monitoring #Debugging
Determining a consistent global state of the system (e.g., Chandy-Lamport algorithm).

## Consistency and Replication #Data #Agreement #Availability
Managing replicated data and ensuring different replicas provide a consistent view.
### Reasons for Replication #FaultTolerance #Performance #Scalability
Why data is copied across multiple nodes.
### Data-Centric Consistency Models #DataView #Guarantees
Defining the consistency guarantees provided to clients reading/writing replicated data.
#### Strict Consistency #Linearizability #Ideal
Absolute time order, requires global clock, often impractical.
#### Sequential Consistency #ProgramOrder #Interleaving
Results consistent with some sequential execution of all operations.
#### Causal Consistency #Causality #HappensBefore
Writes related by potential causality are seen in order by all.
#### Eventual Consistency #Optimistic #Availability #BASE
If no new updates occur, eventually all replicas converge.
#### Other Models #WeakConsistency #SessionConsistency #MonotonicReads
Various weaker models trading consistency for performance/availability.
### Client-Centric Consistency Models #ClientView #Session
Consistency guarantees for a single client's session.
#### Monotonic Reads #NeverSeeOlderData
Successive reads by a client return same or newer data.
#### Monotonic Writes #WritesSeenInOrder
Writes by a client are serialized in the order they were issued.
#### Read Your Writes #SeeOwnWrites
A client always sees its own preceding writes.
#### Writes Follow Reads #CausalOrderPerClient
Writes following reads ensure causality based on the read data.
### CAP Theorem #Consistency #Availability #PartitionTolerance #Tradeoffs
Brewer's theorem stating a system can only provide two out of Consistency, Availability, and Partition Tolerance.
### BASE Properties #BasicallyAvailable #SoftState #EventualConsistency #NoSQL
Alternative to ACID often used in highly available systems.
### Replica Management #Placement #Updates
Strategies for placing replicas and propagating updates.
#### Quorum Systems #Voting #ConsistencyLevel
Requiring operations to involve a minimum number of replicas (Read/Write Quorums).
#### Update Propagation #PushVsPull #Protocols
How updates are sent to other replicas (e.g., primary-backup, active replication).
### Consensus Algorithms #Agreement #FaultTolerance #CoreProblem
Algorithms enabling a group of processes to agree on a single value despite failures.
#### Paxos #Safety #Liveness #Complex
Classic (but complex) consensus algorithm.
#### Raft #Understandability #Practicality #Consensus
Designed to be more understandable than Paxos.
#### Byzantine Fault Tolerant (BFT) Consensus #MaliciousNodes #Security
Algorithms tolerating arbitrary (Byzantine) failures, including malicious behavior (e.g., PBFT).

## Fault Tolerance and Reliability #Failures #Recovery #Resilience
Designing systems that can continue operating correctly despite component failures.
### Concepts of Fault Tolerance #Dependability #Availability #Reliability
Basic terms and goals.
### Failure Models #Crash #Omission #Timing #Byzantine #Arbitrary
Classifying types of failures a system might encounter.
### Failure Detection #Heartbeats #Timeouts #Membership
Mechanisms to detect when components have failed.
### Redundancy #Replication #Backup
Using multiple components (hardware, software, data) to mask failures.
### Recovery Strategies #Rollback #Rollforward #StateRestoration
How systems recover state after a failure.
#### Checkpointing #SavingState #RecoveryPoints
Periodically saving system state to stable storage.
#### Message Logging #Replay #Determinism
Logging messages to replay interactions after a failure.
### Byzantine Fault Tolerance (BFT) #MaliciousFailures #Security #Consensus
Techniques to tolerate arbitrary, potentially malicious failures.

## Distributed Data Management #Storage #Databases #Filesystems
Managing data spread across multiple machines.
### Distributed File Systems (DFS) #Files #Storage #Sharing
File systems spanning multiple servers (e.g., NFS, HDFS, Ceph FS, GlusterFS).
#### Architecture #ClientServer #Clustered
Common DFS designs.
#### Naming and Location #Transparency #Mapping
How files are named and located across servers.
#### Caching #Performance #Consistency
Using client-side or server-side caching.
### Distributed Databases #Databases #SQL #NoSQL #Consistency
Databases whose storage and processing are distributed.
#### Relational Databases (Distributed SQL) #ACID #Joins #Sharding
Traditional databases adapted for distribution (e.g., Google Spanner, CockroachDB, Vitess).
##### Partitioning/Sharding #DataDistribution #Scalability
Splitting data across multiple nodes.
##### Distributed Transactions #2PC #Consistency
Managing transactions across shards.
#### NoSQL Databases #Scalability #Flexibility #BASE
Databases designed for scale and flexibility, often relaxing ACID (e.g., Key-Value, Document, Column-Family, Graph).
##### Key-Value Stores #SimpleAPI #Scalability (e.g., Redis, Memcached, DynamoDB)
##### Document Stores #JSON #BSON #Flexibility (e.g., MongoDB, Couchbase)
##### Column-Family Stores #WideRows #Scalability (e.g., Cassandra, HBase)
##### Graph Databases #Relationships #NodesEdges (e.g., Neo4j, Amazon Neptune)
### Distributed Storage Systems #ObjectStorage #BlockStorage #BigData
Large-scale storage solutions (e.g., Amazon S3, Ceph Object Store).

## Distributed Computation and Processing #Execution #Parallelism #BigData
Executing computations across multiple machines.
### Parallel Computing Fundamentals #Concurrency #Speedup
Basic concepts of running tasks in parallel.
### Distributed Task Scheduling #Assignment #LoadBalancing
Assigning computational tasks to available nodes.
### MapReduce Paradigm #BigData #ParallelProcessing #FaultTolerance
Programming model for processing large datasets (e.g., Hadoop MapReduce).
### Dataflow Engines #DAGs #Streaming #Batch
More general frameworks for distributed data processing (e.g., Apache Spark, Apache Flink).
#### Apache Spark #InMemory #Speed #Versatility
Fast and general-purpose cluster computing system.
#### Apache Flink #Streaming #LowLatency #Stateful
Stream processing framework with batch capabilities.
### Distributed Machine Learning #ML #Training #Scalability
Training machine learning models on distributed data or using multiple machines.
### Serverless Computing (FaaS) #Functions #EventDriven #Scalability
Executing code in response to events without managing servers (e.g., AWS Lambda, Google Cloud Functions).

## Specific Distributed System Types #Examples #Applications
Concrete examples and categories of distributed systems.
### Content Delivery Networks (CDNs) #Caching #Performance #ContentDistribution
Distributing static content closer to users globally.
### Distributed Ledger Technologies (DLT) & Blockchain #Decentralized #Trust #Cryptocurrency
Append-only ledgers maintained by a distributed network (e.g., Bitcoin, Ethereum).
### Grid Computing #ResourceSharing #HighThroughput
Aggregating geographically dispersed resources for large tasks.
### Cluster Computing #HighPerformance #TightlyCoupled #HPC
Groups of computers working together closely, often in a single location.
### Cloud Computing Platforms #AWS #Azure #GCP #OnDemand
Providing computing resources as a service over the internet.

## Security in Distributed Systems #Protection #Threats #Trust
Addressing security challenges unique to distributed environments.
### Security Threats and Goals #Confidentiality #Integrity #Availability #Attacks
Identifying risks and objectives (CIA triad).
### Cryptography Fundamentals #Encryption #Hashing #Signatures
Basic cryptographic primitives used for security.
### Secure Communication #TLS_SSL #VPNs #MessageSecurity
Protecting data in transit.
### Authentication #Identity #Verification
Verifying the identity of users or processes (e.g., Kerberos, OAuth, OpenID Connect).
### Authorization and Access Control #Permissions #Policies #RBAC #ABAC
Controlling what authenticated entities are allowed to do.
### Trust Management #Reputation #Certificates #PKI
Establishing and managing trust relationships between components.
### Intrusion Detection and Prevention #Monitoring #Defense
Identifying and responding to malicious activity.

## Performance and Scalability #Efficiency #Growth #Load
Measuring and improving system performance and its ability to handle increased load.
### Performance Metrics #Latency #Throughput #Availability #Concurrency
Key indicators of system performance.
### Scalability Techniques #GrowthStrategies #Capacity
Methods for increasing system capacity.
#### Vertical Scaling (Scaling Up) #MorePower #SingleNode
Increasing resources (CPU, RAM) of a single node.
#### Horizontal Scaling (Scaling Out) #MoreNodes #Distribution
Adding more nodes to the system.
### Load Balancing #Distribution #Utilization #Availability
Distributing incoming requests across multiple servers.
#### Algorithms #RoundRobin #LeastConnections #Weighted
Strategies for choosing a server.
#### Techniques #DNSBased #HardwareLoadBalancers #SoftwareLoadBalancers
Implementation methods.
### Caching Strategies #Performance #DataLocality #Consistency
Storing frequently accessed data closer to the client or in faster memory.
#### Client-Side Caching #BrowserCache #AppCache
#### Server-Side Caching (e.g., Memcached, Redis) #SharedCache
#### CDN Caching #EdgeCache #GlobalDistribution
### Performance Analysis and Tuning #Monitoring #Bottlenecks #Optimization
Tools and techniques for identifying and resolving performance issues.

## Advanced Topics and Trends #Future #Research #Emerging
Current research areas and future directions in distributed systems.
### Serverless Computing Deep Dive #FaaS #BaaS #StateManagement
Advanced concepts and challenges in serverless.
### Edge Computing and Fog Computing #IoT #Latency #DistributedAI
Processing closer to the data source.
### Distributed Machine Learning Frameworks #TensorFlowDistributed #PyTorchDistributed #Horovod
Tools specifically for distributed ML.
### Quantum Computing and Distributed Systems #Impact #FutureChallenges
Potential implications of quantum computing.
### Formal Methods and Verification #Correctness #Proof #Reliability
Using mathematical techniques to prove system properties.
### Sustainable Distributed Systems #EnergyEfficiency #GreenComputing
Reducing the environmental impact of large-scale systems.
### Self-* Properties #SelfHealing #SelfOptimizing #AutonomicComputing
Systems that can manage themselves automatically.
