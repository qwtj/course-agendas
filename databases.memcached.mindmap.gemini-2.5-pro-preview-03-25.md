# Memcached #DistributedCache #InMemory #Caching
Memcached is a high-performance, open-source, distributed memory object caching system primarily used to speed up dynamic web applications by alleviating database load. It acts as an in-memory key-value store. #Overview #Definition

## Introduction and Fundamentals #Basics #Concepts
Introduction to the purpose and history of Memcached.
### What is Memcached? #Definition #Purpose
A general-purpose distributed memory caching system designed to reduce database load by caching data and objects (like results of database calls, API calls, page rendering) in RAM. #HighPerformance #Key-Value
### History and Origins #History #Development
Developed by Brad Fitzpatrick for LiveJournal in 2003. Initially written in Perl, later rewritten in C. Now widely adopted by major websites (Facebook, Wikipedia, Twitter, YouTube etc.). #OpenSource #BSDLicense
### Core Use Cases #Applications #Scenarios
Caching database query results, API responses, web page fragments, session data, and general objects (images, files, metadata). #DatabaseCaching #SessionStore #APICaching
### Benefits #Advantages #Value
Sub-millisecond latency, increased throughput, reduced load on backend systems (databases, APIs), scalability, simplicity. #Speed #Scalability #Efficiency

## Core Concepts and Architecture #Architecture #Design
Understanding the fundamental design principles of Memcached.
### Client-Server Architecture #DistributedSystems #Networking
Clients interact with Memcached servers. Clients know all servers, but servers do not communicate with each other (shared-nothing architecture). #ClientServer #SharedNothing
### Key-Value Store #DataModel #Storage
Stores data as key-value pairs. Keys are strings (up to 250 bytes), values can be arbitrary data (up to 1MB by default, configurable). #KeyValue #DataTypes
### In-Memory Storage #RAM #Performance
Data is stored primarily in RAM for extremely fast access (sub-millisecond latency), avoiding disk I/O delays. #InMemory #Latency
### Distributed Nature #Scalability #Hashing
Data is distributed (sharded) across multiple Memcached servers using a client-side hashing algorithm (typically consistent hashing) based on the key. #Sharding #ConsistentHashing
### Transitory Cache #Volatility #Persistence
Memcached is a cache, not a persistent data store. Data is volatile and can be lost on server restart or eviction. Clients must handle cache misses. #Cache #VolatileData
### Multithreaded Architecture #Concurrency #Performance
Servers can utilize multiple CPU cores to handle concurrent requests efficiently, improving throughput on multi-core machines. #Multithreading #CPUUtilization

## Installation and Setup #Setup #Configuration
Getting Memcached running.
### Installation Methods #Deployment #OperatingSystems
Installing from package managers (apt, yum), compiling from source. Supported on Unix-like systems (Linux, macOS) and Windows. Requires libevent. #Linux #macOS #Windows #Dependencies
### Starting the Server #Daemon #Process
Running the `memcached` daemon process. Basic command-line options (`-p` for port, `-m` for memory, `-u` for user, `-d` for daemon, `-l` for listen address, `-c` for max connections). #CommandLine #Options
### Basic Configuration #Parameters #Tuning
Setting maximum memory allocation, port number, listen interface, maximum connections, maximum item size (`-I`), slab growth factor (`-f`). #MemoryLimit #Port #ItemSize #SlabGrowth
### Verifying Installation #Testing #HealthCheck
Using tools like `ps` to check if the process is running, connecting via `telnet` to test basic commands. #Verification #Telnet

## Memcached Protocol and Commands #API #Protocol
How clients communicate with servers.
### Protocol Overview #Communication #Standards
Supports both ASCII (text-based) and Binary protocols. Binary protocol is generally more efficient and supports features like "quiet" (noreply) operations properly. #ASCII #BinaryProtocol
### Storage Commands #WriteOperations #DataManipulation
Commands to store or modify data.
#### set #Store #Overwrite
Stores a key-value pair, overwriting existing data if the key exists. #BasicStore
#### add #Store #IfExists
Stores a key-value pair only if the key does *not* already exist. #ConditionalStore
#### replace #Store #IfNotExists
Stores a key-value pair only if the key *does* already exist. #ConditionalUpdate
#### append #Modify #Concatenate
Adds data to the end of an existing value. #StringManipulation
#### prepend #Modify #Concatenate
Adds data to the beginning of an existing value. #StringManipulation
#### cas (Check and Set) #Concurrency #Atomic
Stores data only if the item hasn't been modified since the last fetch (uses a CAS token obtained via `gets`). Prevents race conditions. #OptimisticLocking #CompareAndSwap
### Retrieval Commands #ReadOperations #DataFetching
Commands to fetch data.
#### get #Retrieve #BasicRead
Retrieves the value associated with one or more keys. #FetchData
#### gets #Retrieve #CAS
Retrieves the value(s) along with the unique CAS token needed for `cas` operations. #FetchWithToken
### Deletion Commands #Remove #DataManagement
Commands to remove data.
#### delete #Remove #Invalidation
Removes a specified key-value pair from the cache. #CacheInvalidation
### Increment/Decrement Commands #Atomic #Counters
Atomic operations on numeric values stored as strings.
#### incr #AtomicIncrement #Numeric
Atomically increments a numeric value associated with a key. Fails if key doesn't exist or value is not numeric. #Counter
#### decr #AtomicDecrement #Numeric
Atomically decrements a numeric value associated with a key. Fails if key doesn't exist or value is not numeric. #Counter
### Other Commands #Utilities #Management
Other useful commands.
#### flush_all #ClearCache #Reset
Invalidates all existing items immediately or after a specified delay. Does not immediately free memory. #CacheFlush
#### stats #Monitoring #Metrics
Retrieves various server statistics (general, items, slabs, sizes, settings). #ServerStats #Diagnostics
#### version #Information #ServerInfo
Returns the Memcached server version. #ServerVersion
### Command Parameters #Options #Syntax
Common parameters like key, flags (32-bit user-defined metadata), exptime (expiration time in seconds or Unix timestamp), bytes (value size), noreply (optional flag to suppress response). #Key #Flags #Expiration #Noreply

## Client Libraries and Integration #Clients #SDK
Interacting with Memcached from applications.
### Overview #APIUsage #Development
Clients abstract the protocol details, handle hashing/distribution, connection pooling, and serialization. #Abstraction #Convenience
### Libmemcached (C/C++) #C #C++ #CoreLibrary
A foundational C/C++ library providing core functionality, often used as a base for clients in other languages. Features include synchronous/asynchronous support, consistent hashing options, replication support. #Libmemcached #Performance
### Popular Language Bindings #Libraries #Ecosystem
Listing key libraries for various languages.
#### PHP #PHP
`php-memcached` (uses libmemcached, recommended), `php-memcache` (older, pure PHP). #PECL #WebDev
#### Python #Python
`pylibmc` (libmemcached wrapper, recommended), `python-memcached` (pure Python). #PyPI #Scripting
#### Java #Java
`spymemcached`, `Xmemcached`. #JVM #Enterprise
#### Ruby #Ruby
`dalli` (popular, uses binary protocol), `memcached` (libmemcached wrapper). #RubyGems #Rails
#### Node.js #NodeJS #JavaScript
`memjs`, `memcached`. #NPM #Async
#### Go #Golang
`gomemcache`, `mc`. #GoModules #Concurrency
#### Others #Perl #DotNet #Etc
Clients exist for Perl (Cache::Memcached::Fast), .NET, Erlang, Lua, etc. #MultiLanguage
### Connection Pooling #Performance #ResourceManagement
Managing persistent connections to Memcached servers to reduce overhead. Handled by most client libraries. #Connections #Efficiency
### Serialization #DataFormat #Encoding
Clients often handle serialization/deserialization of complex objects before storing/retrieving them as byte streams. #JSON #Pickle #Marshal

## Data Management and Eviction #DataLifecycle #CachePolicy
How data is stored, expires, and removed.
### Item Structure #Internal #Metadata
Internal representation includes key, value, flags, expiration time, CAS value, slab ID, etc. #Metadata #StorageOverhead
### Expiration (TTL - Time To Live) #TTL #DataFreshness
Items can be set with an expiration time (`exptime`). Expired items are not returned and are eventually reclaimed. `0` means never expire (within practical limits). Times > 30 days are treated as Unix timestamps. #Expiry #StaleData
### Eviction Policy (LRU) #LRU #MemoryPressure
When memory is full and new items need to be stored, Memcached evicts the Least Recently Used (LRU) item *within the same slab class*. #LeastRecentlyUsed #Eviction
### Explicit Deletion #ManualRemoval #Invalidation
Using the `delete` command to explicitly remove items. #DeleteCommand
### Cache Invalidation Strategies #DataConsistency #Strategies
Techniques to ensure cache data stays consistent with the source of truth (e.g., database). Includes TTL-based expiration, explicit deletion on update, `set` on update, versioning keys. #CacheCoherency #Invalidation

## Memory Management #Memory #Internals
How Memcached allocates and manages its memory space.
### Slab Allocator #SlabAllocation #MemoryModel
Memcached pre-allocates memory and divides it into "slabs" based on item size ranges to combat fragmentation. #MemoryEfficiency #Fragmentation
### Pages #MemoryUnit #Allocation
Memory is divided into fixed-size pages (typically 1MB). #PageSize #AllocationUnit
### Slabs and Slab Classes #ChunkSize #Organization
Each page is assigned to a "slab class" and further divided into fixed-size "chunks" suitable for storing items within a specific size range. Items are stored in chunks of the appropriate slab class. #Chunks #SlabClass
### Chunk Allocation #ItemStorage #Placement
When an item needs to be stored, Memcached finds the appropriate slab class based on the item's size (value + overhead) and places it in a free chunk within a page assigned to that class. #Allocation #Placement
### Memory Overhead #NonCacheMemory #SystemUsage
Memory used by Memcached itself for connection structures, item metadata (keys, flags, etc.), slab structures, and internal operations, separate from the memory used for cached values. #Overhead #MetadataStorage
### Memory Fragmentation Issues #WastedSpace #EfficiencyLoss
Internal fragmentation (wasted space within allocated chunks if items are smaller than the chunk size) and external fragmentation (difficulty allocating larger chunks if memory is broken into many small free chunks - less common with slab allocation). Potential for wasted memory if item sizes don't align well with slab classes or if one slab class consumes all memory while others are needed (addressed partially by slab auto-move). #InternalFragmentation #WastedMemory
### Slab Reassignment / Automove #DynamicAllocation #Optimization
(Newer feature) Allows Memcached to dynamically reassign pages from less-used slab classes to those experiencing high demand, improving memory utilization over long runs with changing workloads. #SlabAutomove #AdaptiveMemory

## Networking and Connections #Networking #TCP #UDP
Handling client connections and network traffic.
### TCP/IP and UDP Support #Protocols #Transport
Supports connections over both TCP (default, reliable) and UDP (lower overhead, less reliable, suitable for `get` operations in some high-performance scenarios like Facebook's). #TCP #UDP #TransportLayer
### Default Port #Port11211 #Configuration
Listens on port 11211 by default. #DefaultSettings
### Connection Handling #Concurrency #Limits
Manages multiple client connections concurrently using its multithreaded architecture. Configurable maximum connection limit (`-c`). #ClientConnections #ConnectionLimit
### Network Security Considerations #Firewall #AccessControl
Binding to specific interfaces (`-l localhost`), using firewalls to restrict access to the Memcached port, running in trusted network environments. #Security #NetworkAccess

## Scaling and Distribution #Scalability #HighAvailability
Expanding Memcached capacity and performance.
### Horizontal Scaling (Scaling Out) #AddingNodes #Sharding
Adding more Memcached server instances to the pool to increase total memory capacity and throughput. Data is sharded across nodes via client-side hashing. #ScaleOut #Cluster
### Vertical Scaling (Scaling Up) #MoreResources #NodeSize
Increasing the resources (RAM, CPU cores) of individual Memcached server instances. Less common for capacity scaling than horizontal scaling due to the distributed nature. #ScaleUp #SingleNode
### Consistent Hashing #DistributionAlgorithm #FaultTolerance
Algorithm used by clients to map keys to servers. Minimizes cache misses and data redistribution when servers are added or removed from the pool. #Hashing #LoadBalancing
### Auto Discovery #ServiceDiscovery #DynamicCluster
Services (like AWS ElastiCache Auto Discovery or Google Memorystore Auto Discovery) that allow clients to automatically discover the IP addresses of nodes in a dynamic cluster, simplifying scaling operations. #DiscoveryService #ClusterManagement
### Replication (Client-Side) #Redundancy #ReadScaling
Some client libraries or external tools can implement client-side replication (writing data to multiple servers) for improved read availability or load balancing, though Memcached servers themselves don't replicate data. #Replication #Availability

## Operations and Monitoring #Ops #Monitoring #Management
Managing and observing Memcached instances.
### Monitoring Key Metrics #PerformanceIndicators #Observability
Tracking metrics like cache hit/miss ratio, evictions, memory usage (total, used, free per slab), CPU utilization, network traffic, number of connections, command counts (`get`, `set`, etc.). #Metrics #KPIs
### Using `stats` Command #Diagnostics #ServerState
Primary tool for querying server status and performance metrics (`stats`, `stats items`, `stats slabs`, `stats settings`). #StatsCommand #Troubleshooting
### Monitoring Tools #Software #Dashboards
Using external monitoring systems (e.g., Nagios, Zabbix, Prometheus with exporters, Datadog, Cloud provider tools like CloudWatch, Google Cloud Monitoring) to collect, visualize, and alert on metrics. #Prometheus #Datadog #CloudWatch #Grafana
### Logging #Troubleshooting #Events
Configuring verbosity levels (`-v`, `-vv`, `-vvv`) for debugging connection issues or unexpected behavior. Logs usually go to stderr or syslog. #Debugging #ServerLogs
### Backup and Recovery (Not Applicable) #Persistence #Limitations
Memcached does not offer built-in persistence or backup mechanisms; it's designed as a volatile cache. Data persistence relies on the primary data store (e.g., database). #NoPersistence #Volatile

## Security Considerations #Security #Hardening #BestPractices
Protecting Memcached instances.
### Lack of Built-in Authentication (Default) #Authentication #Risk
By default, Memcached has no authentication. Anyone who can connect to the port can issue commands. #OpenAccess #Vulnerability
### SASL Authentication #Authentication #OptionalSecurity
Optional Simple Authentication and Security Layer (SASL) support can be compiled in and configured for password-based authentication. Requires client support. #SASL #Credentials
### Network Security #Firewalls #AccessControl
Crucial to restrict network access using firewalls (iptables, security groups) to allow connections only from trusted application servers. Binding to internal/localhost interfaces (`-l`). #NetworkIsolation #FirewallRules
### Disabling UDP (If Unused) #ProtocolSecurity #AttackSurface
If UDP is not required, disable it (`-U 0`) to reduce the attack surface (e.g., for amplification attacks). #UDPDisable #SecurityHardening
### Data Sensitivity #DataProtection #Encryption
Avoid storing sensitive data (PII, credentials) in Memcached unless properly secured and potentially encrypted application-side, as data is generally stored in cleartext and memory can potentially be inspected. Memcached itself does not encrypt data at rest or typically in transit (without extra layers). #SensitiveData #Encryption
### Transport Encryption (SSL/TLS) #EncryptionInTransit #Confidentiality
Newer versions or specific builds/proxies might support TLS/SSL for encrypting data in transit, but it's not a standard feature of core Memcached and adds overhead. Requires configuration and certificate management. #TLS #SSL #SecureConnections

## Performance Tuning and Benchmarking #Performance #Optimization #Benchmarking
Maximizing Memcached efficiency.
### Optimizing Memory Allocation #SlabTuning #Efficiency
Adjusting slab sizes (`-f`, `-n`) based on typical item sizes to minimize wasted memory (internal fragmentation). Using `-L` (large pages) can sometimes improve performance. #MemoryTuning #SlabOptimization
### Network Tuning #NetworkPerformance #Latency
Optimizing network stack settings (TCP parameters), using faster network interfaces, colocating clients and servers if possible. #NetworkStack #LowLatency
### Client-Side Optimizations #ClientPerformance #Batching
Using efficient client libraries, connection pooling, batching multiple `get` requests (multi-get), using binary protocol, using `noreply` where appropriate (with binary protocol). #MultiGet #BinaryProtocol #ConnectionPooling
### Key Design #KeyLength #HashingPerformance
Using shorter, well-structured keys reduces memory overhead and hashing time. Avoid using arbitrary user input directly in keys. #KeyOptimization #Efficiency
### Benchmarking Tools #LoadTesting #Measurement
Using tools like `memslap` (part of libmemcached), `memtier_benchmark`, or custom scripts to measure performance (ops/sec, latency) under various loads. #Benchmarking #LoadTest #PerformanceMetrics
### Analyzing `stats` Output #PerformanceAnalysis #Bottlenecks
Interpreting `stats` metrics (hit rate, evictions, command latencies) to identify bottlenecks or areas for tuning. #MetricsAnalysis #Tuning

## Use Cases and Applications #Examples #RealWorld
Where Memcached shines in practice.
### Database Query Caching #DBCaching #PerformanceBoost
Most common use case: Caching results of expensive or frequent database queries. #ReduceDBLoad
### API Response Caching #APICaching #ExternalServices
Caching responses from external or internal APIs to reduce latency and load on those services. #Microservices #ServiceOptimization
### Web Page Caching / Fragment Caching #WebPerformance #Rendering
Caching fully rendered pages or parts of HTML pages (fragments) to speed up delivery. #FrontendPerformance #HTMLCaching
### Session Management #SessionStore #StatelessApps
Storing user session data for web applications, especially in distributed environments (though persistence limitations must be considered). #UserSessions #DistributedSessions
### Rate Limiting #Counters #APIProtection
Using `incr`/`decr` commands for implementing rate limiting logic for APIs or specific actions. #RateLimit #AbusePrevention
### Generic Object Caching #ObjectCache #Flexibility
Caching arbitrary application objects, configuration data, or pre-computed results. #GeneralPurposeCache

## Comparison with Alternatives #Comparison #CachingSolutions
Understanding Memcached relative to other tools.
### Memcached vs. Redis #Redis #Comparison
**Memcached:** Simpler, multithreaded (potentially better raw throughput on multi-core for simple ops), pure cache (no persistence), LRU eviction only, basic key-value (strings/bytes).
**Redis:** Richer data structures (lists, sets, hashes, etc.), optional persistence (RDB, AOF), more eviction policies, single-threaded core (but async I/O, thread-per-I/O in newer versions), built-in replication/clustering, Pub/Sub, Lua scripting.
**Choice:** Memcached for simple, high-throughput caching. Redis for complex data types, persistence needs, or features beyond basic caching. #RedisVsMemcached #FeatureComparison
### Other Caching Systems #Alternatives #Marketplace
Comparison with other solutions like Hazelcast, Ehcache, Nginx caching, Varnish, CDN object caching. Each has different features, deployment models, and use cases. #Hazelcast #Ehcache #Varnish #CDN

## Troubleshooting and Common Issues #Troubleshooting #Debugging #Problems
Diagnosing and fixing problems.
### High Eviction Rate #MemoryPressure #PerformanceIssue
Indicates the cache is full and frequently used items might be getting evicted prematurely. Solution: Increase memory (`-m`), optimize data stored, adjust TTLs, or scale out. #Evictions #CacheSize
### High Miss Rate #CacheInefficiency #PerformanceIssue
Cache is not effectively serving requests. Causes: Cache too small, poor TTL strategy, cache invalidation issues, "cold" cache after restart. #CacheMisses #HitRate
### Connection Issues #NetworkProblems #ConfigurationError
Clients unable to connect. Causes: Firewall blocking port, Memcached not running or listening on wrong interface, incorrect server address/port in client config, connection limits reached. #Connectivity #Firewall
### Slow Performance #Latency #Bottlenecks
High latency on commands. Causes: Network latency, server CPU saturation, inefficient client usage (e.g., no batching), large item sizes, excessive connections. #PerformanceBottleneck #LatencyIssues
### Data Inconsistency #StaleData #Synchronization
Cache holding outdated data compared to the source. Causes: Improper cache invalidation logic, long TTLs, application bugs. #CacheCoherency #Staleness

## Advanced Topics #Advanced #Internals #Future
Deeper dives and future directions.
### Memcached Proxies #Proxy #ArchitecturePattern
Using proxies like mcrouter (developed by Facebook/Meta), twemproxy (nutcracker) to manage connections, shard requests, provide pooling, and potentially add features. #mcrouter #twemproxy #ProxyLayer
### External Storage (Extstore) #DiskPersistence #Experimental
An experimental feature allowing Memcached to use SSD storage as a secondary cache for colder items, extending capacity beyond RAM limits. #Extstore #SSDCache
### Memcached Development and Future #Roadmap #Community
Ongoing development, new features, community involvement, future roadmap. #OSSCommunity #Evolution
