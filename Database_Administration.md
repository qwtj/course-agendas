# I. Database Fundamentals

## Understanding Database Concepts

### Defining Databases

*   What is a database? (e.g., collection of organized data)
*   Purpose of databases (e.g., data storage, retrieval, management)

### Database Models

*   Relational Model (e.g., tables, rows, columns, keys)
*   NoSQL Models (e.g., document, key-value, graph) - *brief overview*

### Database Management Systems (DBMS)

*   Examples: MySQL, PostgreSQL, MongoDB, Oracle, SQL Server
*   Functions: data definition, data manipulation, data control

## Database Design Principles

### Normalization

*   Purpose: reduce redundancy and improve data integrity
*   Normal Forms: 1NF, 2NF, 3NF (definitions and examples)

### Entity-Relationship (ER) Modeling

*   Entities, Attributes, Relationships
*   Cardinality (one-to-one, one-to-many, many-to-many)
*   ER Diagram creation using tools like draw.io.

# II. SQL: Structured Query Language

## SQL Basics

### Data Definition Language (DDL)

*   `CREATE TABLE` statement
    ```sql
    CREATE TABLE Employees (
        EmployeeID INT PRIMARY KEY,
        FirstName VARCHAR(255),
        LastName VARCHAR(255)
    );
    ```
*   `ALTER TABLE` statement (adding, modifying, deleting columns)
*   `DROP TABLE` statement

### Data Manipulation Language (DML)

*   `INSERT` statement (adding new data)
    ```sql
    INSERT INTO Employees (EmployeeID, FirstName, LastName)
    VALUES (1, 'John', 'Doe');
    ```
*   `SELECT` statement (retrieving data)
    ```sql
    SELECT * FROM Employees;
    ```
*   `UPDATE` statement (modifying existing data)
    ```sql
    UPDATE Employees SET FirstName = 'Jane' WHERE EmployeeID = 1;
    ```
*   `DELETE` statement (removing data)
    ```sql
    DELETE FROM Employees WHERE EmployeeID = 1;
    ```

### Data Control Language (DCL)

*   `GRANT` statement (assigning permissions)
*   `REVOKE` statement (removing permissions)

## Advanced SQL

### Joins

*   `INNER JOIN` (matching rows)
*   `LEFT JOIN` (all rows from left table, matching from right)
*   `RIGHT JOIN` (all rows from right table, matching from left)
*   `FULL OUTER JOIN` (all rows from both tables)

### Subqueries

*   Using `SELECT` statements within other `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statements.

### Aggregate Functions

*   `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
*   `GROUP BY` clause (grouping rows by a specific column)
*   `HAVING` clause (filtering groups)

### Transactions

*   `BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`
*   ACID properties (Atomicity, Consistency, Isolation, Durability)

# III. Database Administration Tasks

## User Management

### Creating Users

*   Syntax specific to DBMS (e.g., `CREATE USER` in MySQL)
*   Assigning usernames and passwords

### Granting and Revoking Privileges

*   Common privileges: `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `CREATE`, `DROP`
*   `GRANT` and `REVOKE` syntax for different DBMS

## Backup and Recovery

### Backup Strategies

*   Full backups, incremental backups, differential backups
*   Scheduling backups using cron jobs or DBMS-specific tools

### Recovery Procedures

*   Restoring from backups
*   Point-in-time recovery (if supported by DBMS)
*   Disaster recovery planning

## Performance Tuning

### Indexing

*   Creating indexes to speed up queries
*   Types of indexes (B-tree, hash)
*   Analyzing query execution plans to identify indexing opportunities

### Query Optimization

*   Rewriting inefficient queries
*   Using `EXPLAIN` statement to analyze query performance
*   Database configuration tuning (e.g., buffer pool size)

## Monitoring and Maintenance

### Monitoring Database Performance

*   CPU usage, memory usage, disk I/O
*   Query response times
*   Using monitoring tools (e.g., `top`, `iostat`, DBMS-specific tools)

### Routine Maintenance Tasks

*   Running database integrity checks
*   Rebuilding indexes
*   Updating database statistics

# IV. Database Security

## Authentication and Authorization

### Authentication Methods

*   Password-based authentication
*   Multi-factor authentication
*   Role-Based Access Control (RBAC)

### Authorization Mechanisms

*   Controlling access to tables, views, and other database objects
*   Implementing row-level security (if supported by DBMS)

## Encryption

### Data at Rest Encryption

*   Encrypting data files and backups
*   Using encryption keys

### Data in Transit Encryption

*   Using TLS/SSL for secure connections to the database
*   Configuring client and server certificates

## Auditing

### Enabling Auditing

*   Configuring the database to log user activity
*   Tracking changes to data and database schema

### Analyzing Audit Logs

*   Identifying suspicious activity
*   Investigating security breaches

# V. NoSQL Databases (Introduction)

## Types of NoSQL Databases

### Key-Value Stores

*   Examples: Redis, Memcached
*   Use Cases: Caching, session management

### Document Databases

*   Examples: MongoDB, Couchbase
*   Use Cases: Content management, product catalogs

### Column-Family Stores

*   Examples: Cassandra, HBase
*   Use Cases: Time-series data, large-scale analytics

### Graph Databases

*   Examples: Neo4j
*   Use Cases: Social networks, recommendation engines

## Basic Operations in a NoSQL Database (Example: MongoDB)

### Inserting Documents

```javascript
db.collectionName.insertOne({
    name: "John Doe",
    age: 30,
    city: "New York"
});
```

### Querying Documents

```javascript
db.collectionName.find({ age: { $gt: 25 } });
```

### Updating Documents

```javascript
db.collectionName.updateOne(
    { name: "John Doe" },
    { $set: { city: "Los Angeles" } }
);
```

### Deleting Documents

```javascript
db.collectionName.deleteOne({ name: "John Doe" });
```
