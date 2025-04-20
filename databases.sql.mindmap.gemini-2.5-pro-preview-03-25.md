# SQL #Database #QueryLanguage #Standard
Structured Query Language (SQL) is a standard language for storing, manipulating, and retrieving data in relational databases.

## Introduction to SQL and Databases #Fundamentals #Basics #Concepts
Overview of SQL, its history, purpose, and the relational database model.

### What is SQL? #Definition #Purpose
Explains the role of SQL as the standard language for relational database management systems (RDBMS).

### History of SQL #Evolution #Origins
Brief overview of the development of SQL, stemming from relational algebra.

### Relational Database Concepts #RDBMS #Theory #Model
Core concepts like tables, rows, columns, keys (primary, foreign), relationships, and schemas.

### SQL Standards and Dialects #ANSI #ISO #Vendors
Discusses the ANSI/ISO standard and variations across different database systems (e.g., PostgreSQL, MySQL, SQL Server, Oracle, SQLite).

## SQL Environment Setup #Setup #Tools #Installation
Setting up the necessary software to work with SQL.

### Choosing a Database System #RDBMS #Selection #Comparison
Factors to consider when selecting an RDBMS (MySQL, PostgreSQL, SQLite, SQL Server, Oracle, etc.).

### Installation Guides #Install #Configuration
Links or steps for installing specific database systems.

### SQL Clients and Tools #GUI #CLI #IDE
Overview of tools used to interact with databases (e.g., DBeaver, pgAdmin, SQL Server Management Studio, MySQL Workbench, command-line interfaces).

## Data Definition Language (DDL) #Structure #Schema #DDL
Commands used to define and modify the database structure (schema).

### CREATE Statements #Creation #Define
Commands for creating database objects.
#### CREATE DATABASE #NewDB #Initialization
Creating a new database instance.
#### CREATE TABLE #NewTable #Columns #Constraints
Defining a new table, its columns, data types, and constraints.
##### Column Definitions #Attributes #Datatypes
Specifying column names and their data types.
##### Constraints #Rules #Integrity
Defining rules for data within tables.
###### PRIMARY KEY #UniqueId #PK
Ensuring unique identification for rows.
###### FOREIGN KEY #Relationships #FK #ReferentialIntegrity
Establishing links between tables.
###### UNIQUE Constraint #NoDuplicates #Uniqueness
Ensuring values in a column (or set of columns) are unique.
###### NOT NULL Constraint #Mandatory #Required
Ensuring a column cannot have NULL values.
###### CHECK Constraint #Validation #Condition
Validating data based on a condition.
###### DEFAULT Constraint #Preset #Fallback
Setting a default value for a column.
#### CREATE INDEX #Performance #Lookup #Optimization
Creating indexes to speed up data retrieval.
#### CREATE VIEW #VirtualTable #SavedQuery
Creating virtual tables based on SQL query results.
#### CREATE SCHEMA #Namespace #Organization
Creating logical groupings for database objects.

### ALTER Statements #Modification #Change
Commands for modifying existing database objects.
#### ALTER DATABASE #ModifyDB
Modifying database properties.
#### ALTER TABLE #ModifyTable #SchemaChange
Adding, deleting, or modifying columns or constraints in an existing table.
##### ADD COLUMN #NewAttribute
##### DROP COLUMN #RemoveAttribute
##### MODIFY/ALTER COLUMN #ChangeAttribute #DataTypeChange
##### ADD CONSTRAINT #NewRule
##### DROP CONSTRAINT #RemoveRule
#### ALTER INDEX #ModifyIndex
Rebuilding or modifying index properties.
#### ALTER VIEW #ModifyView
Changing the definition of an existing view.

### DROP Statements #Deletion #Removal
Commands for deleting database objects.
#### DROP DATABASE #DeleteDB
Removing an entire database.
#### DROP TABLE #DeleteTable
Removing a table and its data.
#### DROP INDEX #DeleteIndex
Removing an index.
#### DROP VIEW #DeleteView
Removing a view.
#### DROP SCHEMA #DeleteSchema
Removing a schema and its contained objects.

### TRUNCATE TABLE #EmptyTable #FastDelete
Removing all rows from a table quickly (often faster than DELETE, less logging).

## Data Manipulation Language (DML) #Data #Manipulation #DML
Commands used to manage data within schema objects.

### SELECT Statement #Query #Retrieve #ReadData
The core statement for retrieving data from one or more tables.
#### Basic Syntax #ClauseOrder
Structure: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT/OFFSET.
#### SELECT Clause #Columns #Expressions #Aliases
Specifying the columns or computed values to retrieve.
##### Selecting Specific Columns
##### Selecting All Columns (`*`)
##### Calculated Columns #Expressions #Functions
##### Column Aliases (`AS`) #Renaming
#### FROM Clause #Source #Tables #Joins
Specifying the table(s) from which to retrieve data.
#### WHERE Clause #Filtering #Conditions #Predicates
Filtering rows based on specified conditions.
##### Comparison Operators (`=`, `>`, `<`, `>=`, `<=`, `<>`/`!=`)
##### Logical Operators (`AND`, `OR`, `NOT`)
##### `BETWEEN` Operator #Range
##### `IN` Operator #ListMembership
##### `LIKE` Operator #PatternMatching #Wildcards (`%`, `_`)
##### `IS NULL` / `IS NOT NULL` #NullHandling
#### ORDER BY Clause #Sorting #Ascending #Descending
Sorting the result set based on one or more columns.
#### LIMIT / OFFSET / FETCH FIRST Clauses #Pagination #RowLimiting
Restricting the number of rows returned or skipping rows.

### INSERT Statement #AddData #CreateRows
Adding new rows of data into a table.
#### Basic Syntax #Values
`INSERT INTO table_name (column1, column2) VALUES (value1, value2);`
#### Inserting Multiple Rows #BulkInsert
Adding several rows with a single statement.
#### Inserting Data from Another Table #InsertSelect
`INSERT INTO table1 SELECT * FROM table2 WHERE condition;`

### UPDATE Statement #ModifyData #ChangeRows
Modifying existing data in a table.
#### Basic Syntax #Set #Where
`UPDATE table_name SET column1 = value1 WHERE condition;`
#### Updating Multiple Columns
#### Updating Based on Values from Other Tables #CorrelatedUpdate

### DELETE Statement #RemoveData #DeleteRows
Removing existing rows from a table.
#### Basic Syntax #Where
`DELETE FROM table_name WHERE condition;`
#### Deleting All Rows #Caution
Deleting without a WHERE clause removes all rows.

## Data Control Language (DCL) #Security #Permissions #DCL
Commands related to user rights, permissions, and access control.

### GRANT Statement #Permissions #AllowAccess
Giving specific permissions (e.g., SELECT, INSERT, UPDATE, DELETE) on database objects to users or roles.

### REVOKE Statement #Permissions #RemoveAccess
Removing previously granted permissions from users or roles.

### User and Role Management #Authentication #Authorization
Creating, modifying, and dropping users and roles (syntax varies significantly between RDBMS).
#### CREATE USER / ROLE
#### ALTER USER / ROLE
#### DROP USER / ROLE

## Transaction Control Language (TCL) #Transactions #Concurrency #TCL
Commands used to manage transactions in the database, ensuring atomicity, consistency, isolation, and durability (ACID properties).

### What is a Transaction? #ACID #AtomicOperation
A sequence of operations performed as a single logical unit of work.

### BEGIN TRANSACTION / START TRANSACTION #BeginWork
Marking the beginning of a transaction.

### COMMIT Statement #SaveChanges #Persist
Saving all changes made during the current transaction permanently.

### ROLLBACK Statement #UndoChanges #Discard
Undoing all changes made during the current transaction since the last COMMIT or ROLLBACK.

### SAVEPOINT Statement #PartialRollback #Milestone
Setting a point within a transaction to which you can later roll back.

### SET TRANSACTION Statement #IsolationLevel #ReadOnly
Configuring transaction characteristics like isolation level or read-only status.

## SQL Data Types #DataTypes #Storage #Representation
Various types of data that can be stored in table columns.

### Numeric Types #Numbers #Integers #Decimals
Exact numbers (INTEGER, SMALLINT, BIGINT, DECIMAL, NUMERIC) and approximate numbers (FLOAT, REAL, DOUBLE PRECISION).

### Character String Types #Text #Strings
Fixed-length (CHAR) and variable-length (VARCHAR, TEXT) strings.

### Binary Types #Blobs #RawData
Storing binary data (BINARY, VARBINARY, BLOB).

### Date and Time Types #Temporal #Timestamps #Dates
Storing dates (DATE), times (TIME), timestamps (TIMESTAMP, DATETIME), and intervals (INTERVAL).

### Boolean Type #Logical #TrueFalse
Storing TRUE or FALSE values.

### Other Data Types #JSON #XML #UUID #Arrays #Spatial
Specialized data types supported by various RDBMS (e.g., JSON, XML, UUID, Array, Geometric/GIS types).

## Joining Tables #Relationships #CombiningData #Joins
Combining rows from two or more tables based on a related column.

### INNER JOIN #MatchingRows #Intersection
Returns only rows where the join condition is met in both tables.

### LEFT JOIN (or LEFT OUTER JOIN) #AllLeft #MatchingRight
Returns all rows from the left table, and matched rows from the right table (or NULLs if no match).

### RIGHT JOIN (or RIGHT OUTER JOIN) #MatchingLeft #AllRight
Returns all rows from the right table, and matched rows from the left table (or NULLs if no match).

### FULL OUTER JOIN #AllRows #UnionOfJoins
Returns all rows when there is a match in either the left or right table, including NULLs for non-matching sides.

### CROSS JOIN #CartesianProduct #AllCombinations
Returns the Cartesian product of the two tables (all possible combinations of rows).

### Self Join #JoiningToSelf #HierarchicalData
Joining a table to itself to compare rows within the same table.

### Natural Join #ImplicitJoinColumn
Implicitly joins based on columns with the same name (generally discouraged due to ambiguity).

### USING Clause #JoinCondition #NamedColumns
Specifies join columns by name when they are the same in both tables.

### ON Clause #JoinCondition #ExplicitCondition
Specifies the explicit condition for joining tables.

## SQL Functions #BuiltInFunctions #Calculations #Manipulation
Built-in functions to perform calculations or manipulations on data.

### Aggregate Functions #Summarization #GroupBy #Aggregates
Functions that operate on a set of rows and return a single summary value.
#### COUNT() #RowCount #ItemCount
Counts the number of rows or non-NULL values.
#### SUM() #TotalValue
Calculates the sum of values in a column.
#### AVG() #AverageValue
Calculates the average of values in a column.
#### MIN() #MinimumValue
Finds the minimum value in a column.
#### MAX() #MaximumValue
Finds the maximum value in a column.
#### GROUP_CONCAT() / STRING_AGG() #Concatenation #Aggregation
Concatenates strings from multiple rows (syntax varies).

### Scalar Functions #SingleRow #DataManipulation
Functions that operate on a single value and return a single value.
#### String Functions #TextProcessing
(e.g., `CONCAT`, `SUBSTRING`, `UPPER`, `LOWER`, `LENGTH`, `REPLACE`, `TRIM`)
#### Numeric Functions #MathOperations
(e.g., `ABS`, `ROUND`, `CEILING`, `FLOOR`, `MOD`)
#### Date/Time Functions #TemporalCalculations
(e.g., `NOW`, `CURRENT_DATE`, `DATE_ADD`, `DATEDIFF`, `EXTRACT`)
#### Conversion Functions #TypeCasting
(e.g., `CAST`, `CONVERT`)
#### Conditional Functions #Logic
(e.g., `COALESCE`, `NULLIF`, `CASE`)

### Window Functions #AnalyticalFunctions #Partitioning #AdvancedSQL
Functions that perform calculations across a set of table rows related to the current row.
#### OVER() Clause #WindowDefinition
Defines the window (partitioning and ordering).
#### Ranking Functions (`RANK`, `DENSE_RANK`, `ROW_NUMBER`, `NTILE`) #Ranking
#### Aggregate Window Functions (`SUM`, `AVG`, `COUNT`, etc. with `OVER`) #RunningTotals #MovingAverages
#### Value Functions (`LAG`, `LEAD`, `FIRST_VALUE`, `LAST_VALUE`) #InterRowComparison

## Subqueries (Nested Queries) #Subselects #InnerQueries
Queries embedded inside another SQL query.

### Types of Subqueries #Scalar #Multirow #Correlated
Based on what they return (single value, single column, multiple rows/columns) and dependency on the outer query.

### Subqueries in SELECT Clause #ScalarSubquery
Returning a single value used as a column in the outer query.

### Subqueries in FROM Clause #DerivedTable
Using the result set of a subquery as a table in the outer query.

### Subqueries in WHERE Clause #Filtering #Comparison
Used for filtering based on the result of the inner query.
#### Comparison Operators (`=`, `>`, etc.) with Scalar Subqueries
#### `IN` / `NOT IN` Operators #MembershipCheck
#### `ANY` / `SOME` / `ALL` Operators #QuantifiedComparison
#### `EXISTS` / `NOT EXISTS` Operators #ExistenceCheck

### Correlated Subqueries #OuterQueryDependency
Subqueries that reference columns from the outer query, executed once for each row of the outer query.

## Indexes and Performance Optimization #Performance #Tuning #Speed
Techniques to improve the speed of data retrieval operations.

### What are Indexes? #LookupTables #DataStructures
Data structures (like B-trees) that speed up data retrieval operations on a database table.

### How Indexes Work #Searching #Efficiency
Explanation of index scanning versus full table scans.

### Types of Indexes #BTree #Hash #FullText #Spatial
Common index types and their use cases (B-tree is most common).

### Creating and Managing Indexes #DDL #Maintenance
Using `CREATE INDEX` and `DROP INDEX`.

### Indexing Strategies #BestPractices #ColumnSelection
Choosing which columns to index, multicolumn indexes, covering indexes.

### Query Optimization #ExecutionPlans #Analysis
Understanding how databases execute queries (`EXPLAIN`, `EXPLAIN ANALYZE`) and optimizing query structure.

### Common Performance Bottlenecks #SlowQueries #TuningTips
Identifying and resolving issues like missing indexes, inefficient joins, unoptimized subqueries.

## Views #VirtualTables #StoredQueries #SecurityLayer
Virtual tables based on the result set of a stored SQL query.

### Creating Views #CREATEVIEW
Defining a view using a SELECT statement.

### Using Views #QueryingViews
Querying views just like regular tables.

### Advantages of Views #Simplicity #Security #Consistency
Simplifying complex queries, providing security (restricting data access), ensuring data consistency.

### Updating Data Through Views #UpdatableViews #Restrictions
Conditions under which views can be used to INSERT, UPDATE, or DELETE data in the underlying tables.

### Materialized Views #Precomputed #PerformanceBoost
Views where the result set is physically stored and periodically refreshed (not standard SQL, RDBMS-specific).

## Stored Procedures and Functions #StoredCode #ReusableLogic #ServerSide
Precompiled SQL code stored in the database that can be executed on demand.

### Stored Procedures #ProceduralLogic #Actions
Routines that perform an action, can accept parameters, and may return values or result sets.
#### Creating Stored Procedures #CREATEPROCEDURE
#### Executing Stored Procedures #EXEC #CALL
#### Parameters (IN, OUT, INOUT) #InputOutput

### User-Defined Functions (UDFs) #Calculations #ReturnValues
Routines that perform calculations and must return a value (scalar or table).
#### Creating Functions #CREATEFUNCTION
#### Using Functions in Queries #Invocation

### Advantages #Performance #Security #Reusability #Maintainability
Benefits of using stored procedures and functions.

### Triggers vs. Stored Procedures #AutomaticExecution #EventDriven
Key differences in how and when they are executed.

## Triggers #EventDriven #Automation #IntegrityChecks
Stored procedures that are automatically executed (fired) in response to certain DML events (INSERT, UPDATE, DELETE) on a specific table.

### Creating Triggers #CREATETRIGGER
Defining the event, timing (BEFORE/AFTER), and action.

### Trigger Events #INSERT #UPDATE #DELETE
The DML operations that can fire a trigger.

### Trigger Timing #BEFORE #AFTER #INSTEADOF
When the trigger action runs relative to the event.

### Use Cases #Auditing #ComplexConstraints #Automation
Logging changes, enforcing complex business rules, replicating data.

### Potential Issues #Complexity #Debugging #PerformanceImpact
Challenges associated with using triggers.

## Advanced SQL Concepts #AdvancedSQL #ModernSQL #Techniques
More complex and powerful SQL features.

### Common Table Expressions (CTEs) #WITHClause #Readability #Recursion
Named temporary result sets defined within a query, improving readability and enabling recursive queries.
#### Non-Recursive CTEs #Simplification #Modularity
#### Recursive CTEs #HierarchicalData #GraphTraversal

### Window Functions (Revisited) #AnalyticalFunctions #Ranking #Partitioning
Deeper dive into syntax, partitioning, ordering, and framing.

### Pivoting and Unpivoting Data #ReshapingData #CrossTabs
Transforming data from rows to columns (PIVOT) or columns to rows (UNPIVOT) - often RDBMS-specific syntax (`PIVOT`/`UNPIVOT` or conditional aggregation).

### Set Operations #CombiningResults #UNION #INTERSECT #EXCEPT
Combining the results of two or more SELECT statements.
#### UNION #CombineDistinct
Combines results, removing duplicates.
#### UNION ALL #CombineAll
Combines results, keeping duplicates.
#### INTERSECT #CommonRows
Returns only rows present in both result sets.
#### EXCEPT / MINUS #Difference
Returns rows from the first result set not present in the second.

### Grouping Sets, Rollup, Cube #AdvancedAggregation #Subtotals #CrossTabulation
Extensions to GROUP BY for generating multiple grouping sets, subtotals, and cross-tabular summaries.

## SQL Dialects and Extensions #VendorSpecific #RDBMS #Features
Differences and specific features in popular database systems.

### PostgreSQL Extensions #Postgres #Features
JSONB, HSTORE, GIS extensions (PostGIS), advanced window functions, array types.

### MySQL Features #MySQL #Differences
Storage engines (InnoDB, MyISAM), JSON support, specific functions.

### SQL Server (T-SQL) #MSSQL #TSQL
T-SQL syntax, PIVOT/UNPIVOT, TRY...CATCH, specific system procedures/functions.

### Oracle (PL/SQL) #Oracle #PLSQL
PL/SQL language, packages, specific data types, analytical functions.

### SQLite #Embedded #Lightweight
Differences due to its lightweight, serverless nature (e.g., limited ALTER TABLE, manifest typing).

## SQL Security #Security #Injection #BestPractices
Protecting databases from common threats.

### SQL Injection (SQLi) #Vulnerability #AttackVector
Understanding how malicious SQL code can be inserted into input fields.
#### How SQLi Works #Exploits #Examples
#### Prevention Techniques #ParameterizedQueries #PreparedStatements #InputValidation #ORMs
Using safe methods to interact with the database.

### Permissions and Access Control #LeastPrivilege #DCL
Properly managing user permissions using GRANT/REVOKE.

### Data Encryption #EncryptionAtRest #EncryptionInTransit
Protecting data confidentiality.

### Auditing #Logging #Monitoring
Tracking database activity.

## SQL in Applications #Integration #Development #Connectivity
How SQL is used within software applications.

### Database Connectivity APIs #ODBC #JDBC #ADO.NET
Standard interfaces for connecting applications to databases.

### Object-Relational Mappers (ORMs) #Abstraction #CodeMapping
Libraries that map database tables to objects in application code (e.g., SQLAlchemy, Hibernate, Entity Framework, Sequelize).
#### Pros and Cons of ORMs #Productivity #PerformanceOverhead #Complexity

### Embedding SQL in Code #DirectQueries #StringConcatenationRisk
Writing SQL queries directly within application code (risks SQL injection if not handled carefully).

### Stored Procedures vs. ORMs #DatabaseLogic #ApplicationLogic
Comparing approaches for implementing database interactions.

## Database Design and Normalization #Design #Normalization #SchemaDesign
Principles for organizing database schemas efficiently and reducing redundancy. (Often a prerequisite/parallel topic to learning SQL effectively).

### Importance of Good Design #Integrity #Efficiency #Maintainability
Why schema design matters.

### Normal Forms (1NF, 2NF, 3NF, BCNF) #NormalizationRules #RedundancyReduction
Rules for structuring tables to minimize data duplication and improve data integrity.
#### First Normal Form (1NF) #Atomicity
#### Second Normal Form (2NF) #FullFunctionalDependency
#### Third Normal Form (3NF) #TransitiveDependency
#### Boyce-Codd Normal Form (BCNF) #Stricter3NF

### Denormalization #PerformanceTradeoff #RedundancyIncrease
Intentionally introducing redundancy to improve query performance in specific cases.

### Entity-Relationship (ER) Modeling #Diagrams #ERD #ConceptualDesign
Visualizing database structure using entities, attributes, and relationships.

## SQL vs NoSQL #Comparison #DatabaseTypes #BigData
Understanding the differences between relational (SQL) and non-relational (NoSQL) databases.

### Key Differences #Schema #Scalability #DataModel #Consistency
Comparing SQL and NoSQL databases across various dimensions (schema flexibility, scaling models, data structures, ACID vs BASE).

### When to Use SQL #StructuredData #ACIDCompliance #ComplexQueries
Scenarios where relational databases excel.

### When to Use NoSQL #UnstructuredData #ScalabilityNeeds #Flexibility
Scenarios where NoSQL databases might be a better fit (document, key-value, column-family, graph).

### Polyglot Persistence #HybridApproach #MultipleDatabases
Using different database types together within a single application.
