# I. Database Fundamentals

## Understanding Data and Information

### Distinguishing data from information

### Types of Data: structured, semi-structured, unstructured

### Data Models: Conceptual, Logical, Physical

## Introduction to Database Management Systems (DBMS)

### What is a DBMS?

### Types of DBMS: Relational, NoSQL, Object-Oriented

### Key Features of a DBMS: Data Integrity, Concurrency, Security

# II. Relational Database Model

## Understanding the Relational Model

### Tables, Rows (Tuples), Columns (Attributes)

### Primary Key, Foreign Key, Composite Key

### Relationships: One-to-One, One-to-Many, Many-to-Many

## Relational Algebra

### Select Operation (`σ`)
```
σ condition (relation)
```

### Project Operation (`π`)
```
π attribute1, attribute2 (relation)
```

### Union Operation (`∪`)
```
relation1 ∪ relation2
```

### Intersection Operation (`∩`)
```
relation1 ∩ relation2
```

### Difference Operation (`-`)
```
relation1 - relation2
```

### Cartesian Product Operation (`×`)
```
relation1 × relation2
```

### Join Operations: Natural Join, Inner Join, Outer Join (Left, Right, Full)

## Entity-Relationship (ER) Modeling

### Entities, Attributes, Relationships

### Cardinality and Participation Constraints

### ER Diagram Symbols and Notation

### Converting ER Diagrams to Relational Schemas

# III. Database Design Process

## Requirements Gathering and Analysis

### Identifying User Needs

### Documenting Requirements

### Creating Use Cases

## Conceptual Database Design

### Identifying Entities and Relationships

### Developing an ER Diagram

### Defining Attributes and Primary Keys

## Logical Database Design

### Converting ER Diagram to Relational Schema

### Normalization

## Physical Database Design

### Choosing Data Types

### Indexing Strategies

### Storage Considerations

# IV. Normalization

## Understanding Data Redundancy and Anomalies

### Insertion Anomaly

### Update Anomaly

### Deletion Anomaly

## Normal Forms

### 1NF (First Normal Form)

### 2NF (Second Normal Form)

### 3NF (Third Normal Form)

### BCNF (Boyce-Codd Normal Form)

### Higher Normal Forms (4NF, 5NF) (Overview)

### Decomposing Tables to Achieve Normal Forms

### Example: Normalizing a table from Unnormalized form to 3NF

# V. SQL (Structured Query Language)

## Basic SQL Commands

### `SELECT`, `FROM`, `WHERE`

### `INSERT`, `UPDATE`, `DELETE`

### `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`

## Data Types

### Integer, Float, Character, Date, Boolean

## SQL Operators

### Comparison Operators (`=`, `>`, `<`, `>=`, `<=`, `<>`)

### Logical Operators (`AND`, `OR`, `NOT`)

### `LIKE` Operator (Pattern Matching)

### `IN` Operator

### `BETWEEN` Operator

## SQL Functions

### Aggregate Functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`

### String Functions: `UPPER`, `LOWER`, `SUBSTRING`

### Date Functions: `NOW`, `DATE`, `YEAR`, `MONTH`, `DAY`

## Joins in SQL

### `INNER JOIN`

### `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`

### Self Join

## Subqueries

### Using Subqueries in `WHERE` clause

### Using Subqueries in `SELECT` clause

### Correlated Subqueries

## Grouping and Ordering

### `GROUP BY` clause

### `HAVING` clause

### `ORDER BY` clause

## Views

### Creating Views (`CREATE VIEW`)

### Using Views

## Indexes

### Creating Indexes (`CREATE INDEX`)

### Types of Indexes

### Indexing Considerations

# VI. Database Transactions

## Understanding Transactions

### ACID Properties: Atomicity, Consistency, Isolation, Durability

## Transaction Management

### `START TRANSACTION`, `COMMIT`, `ROLLBACK`

### Concurrency Control

## Locking

### Shared Locks

### Exclusive Locks

### Deadlock

## Isolation Levels

### Read Uncommitted

### Read Committed

### Repeatable Read

### Serializable

# VII. Advanced Database Concepts

## Stored Procedures and Functions

### Creating Stored Procedures

### Creating User-Defined Functions

### Advantages of Stored Procedures and Functions

## Triggers

### Creating Triggers

### Types of Triggers: `BEFORE`, `AFTER`, `INSTEAD OF`

### Triggering Events: `INSERT`, `UPDATE`, `DELETE`

## Database Security

### User Authentication

### Authorization and Privileges

### Encryption

## Database Backup and Recovery

### Types of Backups: Full, Incremental, Differential

### Recovery Strategies

## NoSQL Databases (Overview)

### Key-Value Stores

### Document Databases

### Column-Family Stores

### Graph Databases
