**Learning Objectives**: Understand Redis, its data types, operations, advanced features, administration, and optimization.

**Prerequisites**: Basic understanding of databases and command-line interfaces.

**Depth & Scope**: Overview to intermediate, covering core concepts and common use cases, excluding very advanced configurations.

**Target Audience**: Developers, system administrators, and DevOps engineers.

**Technical Details**:
*   Installation: `apt-get install redis-server`, `yum install redis`, `brew install redis`.
*   String operations: `SET key value`, `GET key`, `INCR key`, `APPEND key`.
*   List operations: `LPUSH key value`, `LPOP key`, `LRANGE key start stop`.
*   Set operations: `SADD key member`, `SMEMBERS key`, `SINTER key1 key2`.
*   Hash operations: `HSET key field value`, `HGET key field`, `HGETALL key`.
*   Sorted set operations: `ZADD key score member`, `ZRANGE key start stop`, `ZSCORE key member`.
*   Pub/Sub: `SUBSCRIBE channel`, `PUBLISH channel message`.
*   Transactions: `MULTI`, `EXEC`, `DISCARD`, `WATCH key`.
*   Lua Scripting: `EVAL script numkeys key [key ...] arg [arg ...]`
*   Persistence: `SAVE`, `BGSAVE`, `BGREWRITEAOF`.
*   Memory Management: `INFO memory`, `redis-cli --bigkeys`.
*   Replication: `slaveof host port`, `INFO replication`.
*   Clustering: `redis-cli --cluster create`.
*   Performance: `redis-cli --pipe`, `redis-cli --latency`.

**Relevant Technologies/Tools**: Redis, Linux, macOS, Windows (WSL), redis-cli, Lua.

**Preferred Format/Length**: Detailed explanations with concise examples.
