# I. Introduction to SQL

## Understanding Relational Databases

### Defining Relational Database Concepts
*   Tables, rows (records), columns (fields)
*   Primary keys and foreign keys
*   Database schemas

### Differentiating SQL from Other Database Technologies
*   NoSQL databases (e.g., MongoDB, Cassandra)
*   Understanding the ACID properties (Atomicity, Consistency, Isolation, Durability)

## Setting up a SQL Environment

### Choosing a Database System
*   MySQL, PostgreSQL, SQLite, SQL Server
*   Considerations for selection (e.g., scalability, features, licensing)

### Installing and Configuring a Database Server
*   Using package managers (e.g., `apt`, `brew`)
*   Basic server configuration (e.g., port, authentication)

### Connecting to the Database
*   Using command-line tools (e.g., `mysql`, `psql`, `sqlite3`)
*   Using GUI-based tools (e.g., Dbeaver, pgAdmin)

# II. Basic SQL Queries

## Retrieving Data with `SELECT` Statements

### Understanding the `SELECT` Clause
*   Selecting specific columns
*   Selecting all columns (`SELECT *`)

### Using the `FROM` Clause
*   Specifying the table to query

### Filtering Data with the `WHERE` Clause
*   Using comparison operators (`=`, `>`, `<`, `>=`, `<=`, `!=`)
*   Using logical operators (`AND`, `OR`, `NOT`)
*   Example: `SELECT * FROM customers WHERE city = 'New York' AND age > 30;`

## Sorting Data with `ORDER BY`

### Understanding Ascending and Descending Order
*   `ASC` (ascending - default) and `DESC` (descending) keywords
*   Sorting by multiple columns
*   Example: `SELECT * FROM products ORDER BY price DESC, name ASC;`

## Limiting Results with `LIMIT` and `OFFSET`

### Understanding `LIMIT`
*   Limiting the number of rows returned
*   Example: `SELECT * FROM products LIMIT 10;`

### Understanding `OFFSET`
*   Skipping a specified number of rows
*   Example: `SELECT * FROM products LIMIT 10 OFFSET 20;` (Retrieves rows 21-30)

## Working with `DISTINCT` Values

### Understanding the `DISTINCT` Keyword
*   Retrieving unique values from a column
*   Example: `SELECT DISTINCT city FROM customers;`

# III. Intermediate SQL Concepts

## Working with Aggregate Functions

### Understanding Common Aggregate Functions
*   `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`

### Using `GROUP BY` to Group Rows
*   Grouping rows based on one or more columns
*   Example: `SELECT category, COUNT(*) FROM products GROUP BY category;`

### Filtering Groups with `HAVING`
*   Filtering based on aggregate values
*   Example: `SELECT category, AVG(price) FROM products GROUP BY category HAVING AVG(price) > 50;`

## Joining Tables

### Understanding Different Types of Joins
*   `INNER JOIN`: Returns rows with matching values in both tables.
    ```sql
    SELECT orders.order_id, customers.customer_name
    FROM orders
    INNER JOIN customers ON orders.customer_id = customers.customer_id;
    ```
*   `LEFT JOIN` (or `LEFT OUTER JOIN`): Returns all rows from the left table and matching rows from the right table.
    ```sql
    SELECT customers.customer_name, orders.order_id
    FROM customers
    LEFT JOIN orders ON customers.customer_id = orders.customer_id;
    ```
*   `RIGHT JOIN` (or `RIGHT OUTER JOIN`): Returns all rows from the right table and matching rows from the left table.
*   `FULL OUTER JOIN`: Returns all rows when there is a match in either the left or right table.
*   `CROSS JOIN`: Returns the Cartesian product of the tables.

### Joining Multiple Tables
*   Joining more than two tables in a single query
*   Ensuring join conditions are correct

## Using Subqueries

### Understanding Subqueries
*   Queries nested inside another query

### Using Subqueries in the `WHERE` Clause
*   Example: `SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);`

### Using Subqueries in the `FROM` Clause
*   Treating the result of a subquery as a table (derived table)
*   Example: `SELECT * FROM (SELECT product_name, price FROM products WHERE category = 'Electronics') AS electronics_products WHERE price > 100;`

### Using Subqueries in the `SELECT` Clause
*   Returning a single value for each row in the main query (scalar subquery).

## Working with `UNION` and `UNION ALL`

### Understanding `UNION`
*   Combining the results of two or more `SELECT` statements, removing duplicate rows
*   Example: `SELECT city FROM customers UNION SELECT city FROM suppliers;`

### Understanding `UNION ALL`
*   Combining the results of two or more `SELECT` statements, including duplicate rows
*   Example: `SELECT city FROM customers UNION ALL SELECT city FROM suppliers;`

# IV. Advanced SQL Concepts

## Creating and Managing Tables

### Defining Table Structures
*   Specifying column names, data types, and constraints

### Using `CREATE TABLE`
*   Example:
    ```sql
    CREATE TABLE employees (
        employee_id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        department_id INT,
        FOREIGN KEY (department_id) REFERENCES departments(department_id)
    );
    ```

### Using `ALTER TABLE`
*   Adding, modifying, or deleting columns
*   Adding or dropping constraints
*   Example: `ALTER TABLE employees ADD COLUMN email VARCHAR(100);`

### Using `DROP TABLE`
*   Deleting a table from the database
*   Example: `DROP TABLE employees;`

## Understanding Indexes

### Creating Indexes
*   Improving query performance
*   `CREATE INDEX` statement
*   Example: `CREATE INDEX idx_last_name ON employees (last_name);`

### Types of Indexes
*   B-tree indexes
*   Hash indexes
*   Full-text indexes

### Index Selection Considerations
*   Balancing performance gains with storage costs
*   Considering write performance impact

## Working with Transactions

### Understanding Transactions
*   Ensuring data consistency and integrity
*   ACID properties (Atomicity, Consistency, Isolation, Durability)

### Using `BEGIN`, `COMMIT`, and `ROLLBACK`
*   Starting, committing, and rolling back transactions
*   Example:
    ```sql
    START TRANSACTION;
    UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
    UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;
    COMMIT;
    ```

### Handling Concurrency and Locking
*   Understanding different isolation levels
*   Preventing data corruption from concurrent access

## Window Functions

### Understanding Window Functions
*   Performing calculations across a set of table rows that are related to the current row

### Using `OVER()` Clause
*   Defining the window (partition)
*   Example:
    ```sql
    SELECT
        product_name,
        price,
        AVG(price) OVER (PARTITION BY category) AS avg_category_price
    FROM products;
    ```

### Common Window Functions
*   `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LAG()`, `LEAD()`

## Stored Procedures and Functions

### Creating Stored Procedures
*   Encapsulating reusable SQL logic
*   Using `CREATE PROCEDURE`
*   Example:

    ```sql
    CREATE PROCEDURE GetCustomerOrders (IN customer_id INT)
    BEGIN
        SELECT * FROM orders WHERE customer_id = customer_id;
    END;
    ```

### Creating Functions
*   Returning a value based on input parameters
*   Using `CREATE FUNCTION`
*   Example:
    ```sql
    CREATE FUNCTION CalculateTotalPrice (price DECIMAL, quantity INT)
    RETURNS DECIMAL
    BEGIN
        DECLARE total DECIMAL;
        SET total = price * quantity;
        RETURN total;
    END;
    ```
