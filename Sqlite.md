# I. Introduction to SQLite

## Understanding Relational Databases

### Defining Relational Databases
*   Tables, rows, columns, relationships.
*   Importance of data integrity and consistency.

### Relational Database Management Systems (RDBMS)
*   Concept of RDBMS.
*   Examples: MySQL, PostgreSQL, SQLite.

## Introduction to SQLite

### What is SQLite?
*   Embedded, serverless, zero-configuration, transactional SQL database engine.
*   Advantages: portability, simplicity, speed for many applications.
*   Disadvantages: concurrency limitations, not suitable for high-traffic applications.

### SQLite Use Cases
*   Embedded devices (phones, IoT devices).
*   Desktop applications.
*   Prototyping and testing.
*   Small to medium-sized websites with low traffic.

### Setting up SQLite
*   Downloading and installing the SQLite command-line tool.
*   Verification of installation.

# II. SQLite Basics

## Database Creation and Connection

### Creating a New Database
*   Using the `.open` command. `sqlite3 mydatabase.db`
*   Database files and their location.

### Connecting to an Existing Database
*   Using the `.open` command. `sqlite3 existing_database.db`

### Basic SQLite Shell Commands
*   `.help`: Displaying available commands.
*   `.databases`: Listing connected databases.
*   `.tables`: Listing tables in the connected database.
*   `.schema table_name`: Displaying the schema of a table.

## Data Types in SQLite

### Understanding SQLite Data Types
*   `NULL`: Represents a missing value.
*   `INTEGER`: Signed integer, stored in 1, 2, 3, 4, 6, or 8 bytes depending on the magnitude of the value.
*   `REAL`: Floating-point value, stored as an 8-byte IEEE floating-point number.
*   `TEXT`: String data, stored using the database encoding (UTF-8, UTF-16BE, or UTF-16LE).
*   `BLOB`: Binary data.

### Type Affinity
*   Concept of type affinity rather than strict typing.
*   Examples: `INTEGER`, `TEXT`, `NUMERIC`, `REAL`, and `NONE`.

# III. Data Definition Language (DDL)

## Creating Tables

### `CREATE TABLE` Statement
*   Syntax: `CREATE TABLE table_name (column_name data_type constraints);`
*   Example:

```sql
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    hire_date TEXT,
    salary REAL
);
```

### Column Constraints
*   `PRIMARY KEY`: Unique identifier for each row.
*   `NOT NULL`: Ensures a column cannot contain a NULL value.
*   `UNIQUE`: Ensures all values in a column are distinct.
*   `DEFAULT`: Specifies a default value for a column.
*   `CHECK`: Specifies a condition that must be true for values in a column.

## Altering Tables

### `ALTER TABLE` Statement
*   Adding a new column: `ALTER TABLE table_name ADD COLUMN column_name data_type;`
    *   Example: `ALTER TABLE employees ADD COLUMN department TEXT;`

### Renaming a table: `ALTER TABLE table_name RENAME TO new_table_name;`

### Dropping a table: `DROP TABLE table_name;`
*   Example: `DROP TABLE employees;`
*   Caution: Data loss is permanent.

# IV. Data Manipulation Language (DML)

## Inserting Data

### `INSERT INTO` Statement
*   Inserting a single row: `INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);`
    *   Example: `INSERT INTO employees (first_name, last_name, email, salary) VALUES ('John', 'Doe', 'john.doe@example.com', 60000.00);`
*   Inserting multiple rows: `INSERT INTO table_name (column1, column2, ...) VALUES (value1_1, value1_2, ...), (value2_1, value2_2, ...);`

## Querying Data

### `SELECT` Statement
*   Basic syntax: `SELECT column1, column2, ... FROM table_name;`
    *   Example: `SELECT first_name, last_name FROM employees;`
*   Selecting all columns: `SELECT * FROM table_name;`
*   `WHERE` clause: Filtering rows based on conditions.
    *   Example: `SELECT * FROM employees WHERE salary > 50000;`

### `ORDER BY` Clause
*   Sorting results: `SELECT column1, column2 FROM table_name ORDER BY column1 ASC/DESC;`
    *   Example: `SELECT * FROM employees ORDER BY salary DESC;`

### `LIMIT` Clause
*   Limiting the number of rows returned: `SELECT column1, column2 FROM table_name LIMIT number;`
    *   Example: `SELECT * FROM employees LIMIT 10;`

## Updating Data

### `UPDATE` Statement
*   Syntax: `UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;`
    *   Example: `UPDATE employees SET salary = 70000 WHERE email = 'john.doe@example.com';`
*   Importance of the `WHERE` clause to avoid unintended updates.

## Deleting Data

### `DELETE FROM` Statement
*   Syntax: `DELETE FROM table_name WHERE condition;`
    *   Example: `DELETE FROM employees WHERE id = 1;`
*   Importance of the `WHERE` clause to avoid deleting all rows.

# V. Advanced SQL Concepts

## Aggregate Functions

### Common Aggregate Functions
*   `COUNT()`: Counts the number of rows.
    *   Example: `SELECT COUNT(*) FROM employees;`
*   `SUM()`: Sums the values in a column.
    *   Example: `SELECT SUM(salary) FROM employees;`
*   `AVG()`: Calculates the average value in a column.
    *   Example: `SELECT AVG(salary) FROM employees;`
*   `MIN()`: Finds the minimum value in a column.
    *   Example: `SELECT MIN(salary) FROM employees;`
*   `MAX()`: Finds the maximum value in a column.
    *   Example: `SELECT MAX(salary) FROM employees;`

### `GROUP BY` Clause
*   Grouping rows based on column values: `SELECT column1, aggregate_function(column2) FROM table_name GROUP BY column1;`
    *   Example: `SELECT department, AVG(salary) FROM employees GROUP BY department;`

### `HAVING` Clause
*   Filtering groups based on a condition: `SELECT column1, aggregate_function(column2) FROM table_name GROUP BY column1 HAVING condition;`
    *   Example: `SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 60000;`

## Joins

### Understanding Joins
*   Combining rows from two or more tables based on a related column.

### Types of Joins
*   `INNER JOIN`: Returns rows only when there is a match in both tables.
    *   Syntax: `SELECT columns FROM table1 INNER JOIN table2 ON table1.column = table2.column;`
*   `LEFT JOIN`: Returns all rows from the left table and the matching rows from the right table. If there is no match, the right side will contain NULLs.
    *   Syntax: `SELECT columns FROM table1 LEFT JOIN table2 ON table1.column = table2.column;`
*   `RIGHT JOIN`: Returns all rows from the right table and the matching rows from the left table. If there is no match, the left side will contain NULLs.
    *   Syntax: `SELECT columns FROM table1 RIGHT JOIN table2 ON table1.column = table2.column;`
*   `FULL OUTER JOIN`: Returns all rows when there is a match in one of the tables. SQLite does not have FULL OUTER JOIN. It can be emulated with `UNION ALL`.
*   Example:

```sql
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

ALTER TABLE employees ADD COLUMN department_id INTEGER;

INSERT INTO departments (name) VALUES ('Sales'), ('Marketing'), ('Engineering');

UPDATE employees SET department_id = 1 WHERE last_name IN ('Doe', 'Smith');
UPDATE employees SET department_id = 2 WHERE last_name = 'Johnson';
UPDATE employees SET department_id = 3 WHERE last_name = 'Williams';

SELECT employees.first_name, employees.last_name, departments.name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;
```

## Subqueries

### What are Subqueries?
*   A query nested inside another query.

### Using Subqueries in `WHERE` Clause
*   Filtering rows based on the result of another query.
    *   Example: `SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);`

### Using Subqueries in `FROM` Clause
*   Treating the result of a subquery as a table (derived table).
    *   Example: `SELECT department, AVG(salary) FROM (SELECT * FROM employees WHERE salary > 50000) AS high_earners GROUP BY department;`

### Using Subqueries in `SELECT` Clause
*   Adding calculated columns based on another query.

# VI. Transactions and Indexes

## Transactions

### Understanding Transactions
*   A sequence of operations treated as a single logical unit of work.
*   Ensuring data integrity by either committing all changes or rolling back if any operation fails (ACID properties).

### `BEGIN TRANSACTION`, `COMMIT`, and `ROLLBACK`
*   Starting a transaction: `BEGIN TRANSACTION;`
*   Committing changes: `COMMIT;`
*   Rolling back changes: `ROLLBACK;`
*   Example:

```sql
BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;
COMMIT;
```

## Indexes

### What are Indexes?
*   Data structures that improve the speed of data retrieval operations on a database table.

### Creating Indexes
*   Syntax: `CREATE INDEX index_name ON table_name (column1, column2, ...);`
    *   Example: `CREATE INDEX idx_employees_lastname ON employees (last_name);`

### Types of Indexes
*   Single-column indexes.
*   Composite indexes (multiple columns).
*   Unique indexes (enforce uniqueness).

### When to Use Indexes
*   Columns frequently used in `WHERE` clauses.
*   Columns used in `JOIN` conditions.
*   Columns with high cardinality (many distinct values).

### Dropping Indexes
*   Syntax: `DROP INDEX index_name;`
    *   Example: `DROP INDEX idx_employees_lastname;`
*   Caution: Indexes consume storage space and can slow down `INSERT`, `UPDATE`, and `DELETE` operations.

# VII. Advanced SQLite Features

## Views

### Creating Views
*   Syntax: `CREATE VIEW view_name AS SELECT statement;`
    *   Example: `CREATE VIEW high_earners AS SELECT first_name, last_name, salary FROM employees WHERE salary > 70000;`

### Using Views
*   Querying views like tables: `SELECT * FROM high_earners;`

### Advantages of Views
*   Simplifying complex queries.
*   Providing a security layer (limiting access to specific data).

### Dropping Views
*   Syntax: `DROP VIEW view_name;`
    *   Example: `DROP VIEW high_earners;`

## Triggers

### Understanding Triggers
*   Actions automatically performed in response to certain events (INSERT, UPDATE, DELETE) on a table.

### Creating Triggers
*   Syntax:

```sql
CREATE TRIGGER trigger_name
BEFORE/AFTER INSERT/UPDATE/DELETE
ON table_name
BEGIN
    -- SQL statements to execute
END;
```

*   Example:

```sql
CREATE TRIGGER log_employee_changes
AFTER UPDATE ON employees
BEGIN
    INSERT INTO employee_logs (employee_id, old_salary, new_salary, updated_at)
    VALUES (OLD.id, OLD.salary, NEW.salary, DATETIME('now'));
END;
```

### Trigger Types
*   `BEFORE` triggers (executed before the event).
*   `AFTER` triggers (executed after the event).
*   `INSTEAD OF` triggers (replace the event, used with views).

### Dropping Triggers
*   Syntax: `DROP TRIGGER trigger_name;`
    *   Example: `DROP TRIGGER log_employee_changes;`

## Common Table Expressions (CTEs)

### Understanding CTEs
*   Temporary result sets that exist only within the scope of a single query.
*   Improves readability and maintainability of complex queries.

### Defining CTEs
*   Syntax: `WITH cte_name AS (SELECT statement) SELECT statement FROM cte_name;`
    *   Example:

```sql
WITH high_earners AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > 60000
)
SELECT department, avg_salary
FROM high_earners;
```
