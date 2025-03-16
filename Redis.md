# I. Introduction to Redis

## Understanding NoSQL Databases

### Key Characteristics of NoSQL
*   Schema-less design: Handling unstructured data.
*   Scalability: Horizontal scaling capabilities.
*   Different Data Models: Key-value, document, columnar, graph.

### Redis as a NoSQL Database
*   Key-value store: Data stored as key-value pairs.
*   In-memory data structure store: High performance due to RAM storage.
*   Use cases: Caching, session management, real-time analytics, leaderboards.

## Installing and Configuring Redis

### Downloading and Installing Redis
*   Linux: `apt-get install redis-server` (Debian/Ubuntu), `yum install redis` (CentOS/RHEL).
*   macOS: `brew install redis`.
*   Windows: Download pre-built binaries or use WSL.

### Configuring Redis
*   `redis.conf` file: Location and basic settings.
*   Important settings: `bind` (IP address), `port`, `requirepass` (password), `maxmemory`.
*   Starting and stopping Redis: `redis-server /path/to/redis.conf`, `redis-cli shutdown`.

# II. Basic Redis Data Types and Operations

## Strings

### Setting and Retrieving Strings
*   `SET key value`: Setting a string value. Example: `SET mykey "Hello Redis"`.
*   `GET key`: Retrieving a string value. Example: `GET mykey`.

### String Operations
*   `GETSET key value`: Atomically sets key to value and returns the old value stored at key.
*   `MGET key1 key2 ...`: Retrieving multiple string values.
*   `MSET key1 value1 key2 value2 ...`: Setting multiple string values.
*   `INCR key`: Incrementing the integer value of a key.
*   `DECR key`: Decrementing the integer value of a key.
*   `APPEND key value`: Appending a value to a key.
*   `STRLEN key`: Getting the length of a string.

## Lists

### Adding Elements to Lists
*   `LPUSH key value1 value2 ...`: Adding elements to the beginning of a list.
*   `RPUSH key value1 value2 ...`: Adding elements to the end of a list.

### Retrieving Elements from Lists
*   `LPOP key`: Removing and returning the first element of a list.
*   `RPOP key`: Removing and returning the last element of a list.
*   `LRANGE key start stop`: Retrieving a range of elements from a list. Example: `LRANGE mylist 0 -1` (all elements).
*   `LINDEX key index`: Retrieving an element at a specific index.
*   `LLEN key`: Getting the length of a list.

### Other List Operations
*   `LINSERT key BEFORE|AFTER pivot value`: Inserting an element before or after another element.
*   `LSET key index value`: Setting the value of an element at a specific index.
*   `LREM key count value`: Removing elements equal to value from the list.
*   `LTRIM key start stop`: Trimming a list to the specified range.

## Sets

### Adding Elements to Sets
*   `SADD key member1 member2 ...`: Adding elements to a set.

### Retrieving Elements from Sets
*   `SMEMBERS key`: Retrieving all members of a set.
*   `SISMEMBER key member`: Checking if a member exists in a set.
*   `SRANDMEMBER key [count]`: Retrieving one or more random members from a set.
*   `SPOP key`: Removing and returning a random member from a set.
*   `SCARD key`: Getting the cardinality (number of elements) of a set.

### Set Operations
*   `SINTER key1 key2 ...`: Intersecting multiple sets.
*   `SUNION key1 key2 ...`: Unioning multiple sets.
*   `SDIFF key1 key2 ...`: Differencing multiple sets.
*   `SINTERSTORE destination key1 key2 ...`: Storing the intersection of multiple sets in a new set.
*   `SUNIONSTORE destination key1 key2 ...`: Storing the union of multiple sets in a new set.
*   `SDIFFSTORE destination key1 key2 ...`: Storing the difference of multiple sets in a new set.

## Hashes

### Adding Fields to Hashes
*   `HSET key field value [field value ...]`: Setting fields in a hash.
*   `HMSET key field value [field value ...]`: Setting multiple fields in a hash (deprecated).

### Retrieving Fields from Hashes
*   `HGET key field`: Retrieving a field from a hash.
*   `HMGET key field1 field2 ...`: Retrieving multiple fields from a hash.
*   `HGETALL key`: Retrieving all fields and values from a hash.
*   `HKEYS key`: Retrieving all field names from a hash.
*   `HVALS key`: Retrieving all values from a hash.
*   `HLEN key`: Getting the number of fields in a hash.
*    `HEXISTS key field`: Checks if field exists

### Hash Operations
*   `HINCRBY key field increment`: Incrementing the integer value of a field.
*   `HDEL key field1 field2 ...`: Deleting one or more fields from a hash.

## Sorted Sets

### Adding Elements to Sorted Sets
*   `ZADD key score member [score member ...]`: Adding elements to a sorted set with associated scores.

### Retrieving Elements from Sorted Sets
*   `ZRANGE key start stop [WITHSCORES]`: Retrieving a range of elements by index.
*   `ZREVRANGE key start stop [WITHSCORES]`: Retrieving a range of elements by index in reverse order.
*   `ZRANGEBYSCORE key min max [WITHSCORES] [LIMIT offset count]`: Retrieving a range of elements by score.
*   `ZREVRANGEBYSCORE key max min [WITHSCORES] [LIMIT offset count]`: Retrieving a range of elements by score in reverse order.
*   `ZSCORE key member`: Retrieving the score of a member.
*   `ZCARD key`: Getting the cardinality (number of elements) of a sorted set.
*   `ZRANK key member`: Getting the rank of a member (0-based).
*   `ZREVRANK key member`: Getting the rank of a member in reverse order.

### Sorted Set Operations
*   `ZINCRBY key increment member`: Incrementing the score of a member.
*   `ZREM key member [member ...]`: Removing members from a sorted set.
*   `ZREMRANGEBYRANK key start stop`: Removing elements by rank.
*   `ZREMRANGEBYSCORE key min max`: Removing elements by score.
*   `ZUNIONSTORE destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]`: Unioning multiple sorted sets.
*   `ZINTERSTORE destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]`: Intersecting multiple sorted sets.
*    `ZCOUNT key min max`: Count the number of elements within a score range

# III. Advanced Redis Features

## Pub/Sub

### Subscribing to Channels
*   `SUBSCRIBE channel [channel ...]`: Subscribing to one or more channels.
*   `PSUBSCRIBE pattern [pattern ...]`: Subscribing to channels using patterns.

### Publishing Messages
*   `PUBLISH channel message`: Publishing a message to a channel.

### Unsubscribing from Channels
*   `UNSUBSCRIBE [channel [channel ...]]`: Unsubscribing from one or more channels.
*   `PUNSUBSCRIBE [pattern [pattern ...]]`: Unsubscribing from channels using patterns.

## Transactions

### Starting a Transaction
*   `MULTI`: Starts a transaction block.

### Queuing Commands
*   Executing commands after `MULTI` queues them for atomic execution.

### Executing a Transaction
*   `EXEC`: Executes all queued commands in the transaction.

### Discarding a Transaction
*   `DISCARD`: Discards all queued commands and cancels the transaction.

### Watch
*   `WATCH key [key ...]`: Watches the specified keys for modifications before executing the transaction.  If any watched key is modified before `EXEC` is called, the transaction will fail.
### Optimistic Locking
*   Using `WATCH` to implement optimistic locking mechanisms during transactions.

## Persistence

### RDB (Redis Database)
*   Snapshotting: Creating a point-in-time snapshot of the data.
*   Configuration: Configuring snapshot intervals in `redis.conf`.
*   Commands: `SAVE`, `BGSAVE`, `LASTSAVE`.

### AOF (Append Only File)
*   Logging every write operation.
*   Configuration: Enabling AOF in `redis.conf`.
*   Strategies: `appendfsync always|everysec|no`.
*   Rewriting: Compacting the AOF file using `BGREWRITEAOF`.

### Choosing Persistence Options
*   RDB: Faster recovery, data loss if the server crashes between snapshots.
*   AOF: More durable, slower recovery.
*   Hybrid: Combining RDB and AOF for a balance of speed and durability.

## Caching Strategies

### Write-Through Cache
*   Updating the cache and the database simultaneously.

### Cache-Aside
*   Checking the cache before querying the database.
*   Updating the cache when data is retrieved from the database.

### Write-Back Cache
*   Updating the cache first, then the database later.

### Time-To-Live (TTL)
*   Setting expiration times for cached data.
*   Commands: `EXPIRE key seconds`, `TTL key`, `PERSIST key`.

## Lua Scripting

### Writing Lua Scripts
*   Creating Lua scripts to perform complex operations.

### Executing Lua Scripts
*   `EVAL script numkeys key [key ...] arg [arg ...]`: Executing a Lua script.
*   `EVALSHA sha1 numkeys key [key ...] arg [arg ...]`: Executing a script by its SHA1 hash.
*   `SCRIPT LOAD script`: Loading a script and returning its SHA1 hash.
*   `SCRIPT EXISTS sha1 [sha1 ...]`: Checking if a script exists in the script cache.
*   `SCRIPT FLUSH`: Flushing the script cache.
*   `SCRIPT KILL`: Killing the currently executing script.

### Benefits of Lua Scripting
*   Atomic operations.
*   Reduced network latency.
*   Code reusability.

# IV. Redis Administration and Optimization

## Memory Management

### Understanding Memory Usage
*   `INFO memory`: Checking memory usage statistics.
*   `redis-cli --bigkeys`: Identifying large keys.

### Configuring Max Memory
*   `maxmemory`: Setting the maximum memory limit in `redis.conf`.

### Eviction Policies
*   `maxmemory-policy`: Configuring eviction policies in `redis.conf`.
*   Available policies: `volatile-lru`, `allkeys-lru`, `volatile-random`, `allkeys-random`, `volatile-ttl`, `noeviction`.

## Replication

### Setting up Replication
*   Configuring a master-slave setup in `redis.conf`.
*   `slaveof host port`: Configuring a slave to replicate from a master.
*   Read replicas vs. primary node.

### Monitoring Replication
*   `INFO replication`: Checking replication status.
*   `ROLE`: Check the role of the redis instance.

### Sentinel
*   Automated failover.
*   Configuration: `sentinel.conf`.
*   Monitoring masters and slaves.

## Clustering

### Setting up a Cluster
*   Using `redis-cli --cluster create` to create a cluster.
*   Minimum requirements: At least 3 master nodes.

### Understanding Sharding
*   Data distribution across multiple nodes.
*   Hash slots: Redis Cluster uses hash slots to distribute data.

### Cluster Management
*   Adding and removing nodes.
*   Resharding data.
*   `redis-cli --cluster`: Cluster management commands.

## Performance Tuning

### Connection Pooling
*   Using connection pools in client applications.

### Pipelining
*   Sending multiple commands without waiting for responses.
*   `redis-cli --pipe`: Example of using pipelining.

### Optimizing Queries
*   Avoiding `KEYS *` in production.
*   Using efficient data structures.
*   Analyzing query performance using `redis-cli --latency`.
