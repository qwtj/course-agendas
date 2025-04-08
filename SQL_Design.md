# I. Database Design Fundamentals

## Understanding Database Concepts

### Defining Databases
*   What is a database?
*   Purpose of a database (storage, retrieval, management).
*   Different types of databases (relational, NoSQL).

### Relational Database Model
*   Tables, rows (records), columns (fields).
*   Primary keys, foreign keys, composite keys.
*   Relationships: one-to-one, one-to-many, many-to-many.
*   Entities and attributes.

## Data Modeling

### Entity-Relationship (ER) Diagrams
*   Entities, attributes, relationships.
*   Cardinality constraints (one-to-one, one-to-many, many-to-many).
*   Drawing ER diagrams: tools and conventions.
    *   Example: Using tools like draw.io or Lucidchart.

### Normalization

### Understanding Normal Forms
*   1NF (First Normal Form)
*   2NF (Second Normal Form)
*   3NF (Third Normal Form)
*   BCNF (Boyce-Codd Normal Form)

### Applying Normalization Rules
*   Eliminating redundancy.
*   Decomposing tables.
*   Identifying functional dependencies.
    *   Example: Converting a table to 3NF by removing transitive dependencies.

# II. SQL and Database Implementation

## SQL Basics

### Introduction to SQL
*   Data Definition Language (DDL)
    *   `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`
*   Data Manipulation Language (DML)
    *   `SELECT`, `INSERT`, `UPDATE`, `DELETE`
*   Data Control Language (DCL)
    *   `GRANT`, `REVOKE`

### Basic SQL Queries
*   `SELECT` statement: retrieving data.
    *   `SELECT * FROM table_name;`
    *   `SELECT column1, column2 FROM table_name;`
*   `WHERE` clause: filtering data.
    *   `SELECT * FROM table_name WHERE condition;`
    *   Example: `SELECT * FROM Employees WHERE Salary > 50000;`
*   `ORDER BY` clause: sorting data.
    *   `SELECT * FROM table_name ORDER BY column_name ASC|DESC;`
    *   Example: `SELECT * FROM Employees ORDER BY LastName ASC;`

## Database Implementation

### Creating Tables
*   Defining data types (INT, VARCHAR, DATE, etc.).
*   Setting primary keys and foreign keys.
    *   Example:
```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
```

### Inserting, Updating, and Deleting Data
*   `INSERT INTO` statement: adding new records.
    *   `INSERT INTO table_name (column1, column2) VALUES (value1, value2);`
*   `UPDATE` statement: modifying existing records.
    *   `UPDATE table_name SET column1 = value1 WHERE condition;`
*   `DELETE FROM` statement: removing records.
    *   `DELETE FROM table_name WHERE condition;`

# III. Advanced SQL and Database Design

## Joins

### Understanding Joins
*   `INNER JOIN`: retrieving matching rows.
*   `LEFT JOIN` (or `LEFT OUTER JOIN`): retrieving all rows from the left table and matching rows from the right table.
*   `RIGHT JOIN` (or `RIGHT OUTER JOIN`): retrieving all rows from the right table and matching rows from the left table.
*   `FULL OUTER JOIN`: retrieving all rows from both tables.

### Using Joins in Queries
*   Joining multiple tables.
    *   Example: Retrieve employee names and their department names.
```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
```

## Subqueries

### Understanding Subqueries
*   Subqueries in `WHERE` clause.
*   Subqueries in `SELECT` clause.
*   Correlated subqueries.

### Applying Subqueries
*   Using subqueries to filter data based on another query.
    *   Example: Retrieve employees whose salary is higher than the average salary.
```sql
SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
```

## Indexing and Performance Optimization

### Understanding Indexes
*   Purpose of indexes: speeding up queries.
*   Types of indexes: clustered, non-clustered.

### Creating and Managing Indexes
*   `CREATE INDEX` statement.
*   Analyzing query performance using `EXPLAIN`.
*   Knowing when to use indexes.
    *   Example: Creating an index on a frequently queried column.
```sql
CREATE INDEX idx_LastName ON Employees (LastName);
```

# IV. Database Design Best Practices

## Data Integrity and Constraints

### Types of Constraints
*   `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `CHECK`.

### Implementing Constraints
*   Ensuring data quality.
*   Preventing invalid data entries.
    *   Example:
```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price >= 0)
);
```

## Database Security

### User Management
*   Creating users.
*   Assigning privileges.
*   `GRANT` and `REVOKE` statements.

### Data Encryption
*   Protecting sensitive data.
*   Using encryption functions.

## Scalability and Maintainability

### Database Partitioning
*   Horizontal partitioning.
*   Vertical partitioning.

### Backup and Recovery Strategies
*   Regular backups.
*   Recovery procedures.
