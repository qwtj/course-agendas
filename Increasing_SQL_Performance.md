# I. Understanding SQL Performance Fundamentals

## Database Architecture and Performance

### Understanding the role of the database engine

### Disk I/O and its impact on performance

### Memory allocation and caching strategies

## Query Execution Plan

### Understanding what an execution plan is

### How to read and interpret execution plans

### Identifying performance bottlenecks in execution plans

# II. Indexing Techniques

## Index Basics

### Understanding clustered vs. non-clustered indexes

### Index structure and storage

### Choosing appropriate columns for indexing

## Advanced Indexing

### Covering indexes and their benefits

### Filtered indexes for specific data subsets

### Columnstore indexes for data warehousing

### Index maintenance and fragmentation

# III. Query Optimization Strategies

## Writing Efficient Queries

### Avoiding `SELECT *`

### Using `WHERE` clauses effectively

### Optimizing `JOIN` operations

### Minimizing the use of subqueries

## Common Performance Issues and Solutions

### Identifying and resolving slow queries

### Addressing deadlocks and locking issues

### Dealing with parameter sniffing problems

## Query Rewriting Techniques

### Using `EXISTS` vs. `IN`

### Optimizing `GROUP BY` clauses

### Leveraging window functions

# IV. Performance Monitoring and Tuning

## SQL Server Profiler and Extended Events

### Capturing and analyzing query performance data

### Identifying expensive queries

### Using profiler to troubleshoot performance issues

## Dynamic Management Views (DMVs)

### Using DMVs to monitor server performance

### Identifying resource bottlenecks (CPU, memory, I/O)

### Monitoring index usage and fragmentation

## Performance Tuning Tools

### Database Engine Tuning Advisor

### Third-party performance monitoring tools

# V. Advanced Topics

## Partitioning

### Understanding table partitioning

### Benefits of partitioning for large tables

### Implementing partitioning strategies

## In-Memory OLTP

### Introduction to In-Memory OLTP

### Creating memory-optimized tables

### Optimizing stored procedures for In-Memory OLTP

## Query Store

### Understanding the Query Store feature

### Using Query Store to identify and fix query performance regressions

### Forcing query plans using Query Store
