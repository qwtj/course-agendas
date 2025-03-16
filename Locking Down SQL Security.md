# I. SQL Server Security Fundamentals

## Understanding Security Principles

### Authentication vs. Authorization
*   Authentication: Verifying the identity of a user.
*   Authorization: Determining what resources a user can access.

### Least Privilege Principle
*   Granting only the minimum necessary permissions to users.
*   Implementing role-based access control (RBAC).

## SQL Server Security Model

### Logins vs. Users
*   Logins: Authentication entities at the server level.
*   Users: Authorization entities within a database.

### Schemas and Object Ownership
*   Understanding schema organization for access control.
*   How object ownership impacts permissions.

### Permissions Hierarchy
*   Server-level permissions
*   Database-level permissions
*   Object-level permissions

# II. Authentication and Login Security

## SQL Server Authentication Modes

### Windows Authentication
*   Pros and cons of using Windows accounts.
*   Kerberos delegation.

### SQL Server Authentication
*   Creating and managing SQL Server logins.
*   Password policies and best practices (complexity, expiration).

## Auditing Authentication Attempts

### SQL Server Audit Feature
*   Configuring audits to track login successes and failures.
*   Analyzing audit logs for suspicious activity.

### Extended Events for Authentication Monitoring
*   Using Extended Events to capture authentication events.
*   Example: Capturing failed login attempts from a specific IP address.
    ```sql
    CREATE EVENT SESSION [FailedLoginAttempts] ON SERVER
    ADD EVENT sqlserver.login_failed (
    ACTION(sqlserver.client_hostname,sqlserver.client_app_name,sqlserver.database_name,sqlserver.username)
    WHERE ([sqlserver].[like_i_sql_unicode_string]([sqlserver].[client_hostname],N'192.168.1.%'))
    )
    ADD TARGET package0.event_file(FILENAME=N'FailedLoginAttempts.xel',MAX_FILE_SIZE=(5),MAX_ROLLING_FILES=(2))
    WITH (STARTUP_STATE=OFF)
    GO
    ALTER EVENT SESSION [FailedLoginAttempts] ON SERVER STATE = START;
    GO
    ```

# III. Authorization and Permissions

## Understanding SQL Server Permissions

### Explicit vs. Implicit Permissions
*   Explicit: Permissions granted directly to a user or role.
*   Implicit: Permissions inherited through membership in a role.

### Common Permissions
*   `SELECT`, `INSERT`, `UPDATE`, `DELETE`
*   `EXECUTE`
*   `VIEW DEFINITION`, `ALTER`, `CONTROL`

## Role-Based Access Control (RBAC)

### Fixed Server Roles
*   `sysadmin`, `serveradmin`, `securityadmin`, `processadmin`, `dbcreator`, `diskadmin`, `bulkadmin`
*   Understanding the scope and privileges of each role.

### Fixed Database Roles
*   `db_owner`, `db_securityadmin`, `db_accessadmin`, `db_backupoperator`, `db_datareader`, `db_datawriter`, `db_ddladmin`, `db_denydatareader`, `db_denydatawriter`
*   Understanding the scope and privileges of each role.

### Creating Custom Database Roles
*   Best practices for naming and defining roles.
*   Example: Creating a role for read-only access to specific tables.
    ```sql
    CREATE ROLE db_readonly_sales;
    GRANT SELECT ON dbo.SalesTable TO db_readonly_sales;
    ```

## Granting and Revoking Permissions

### Using `GRANT`, `DENY`, and `REVOKE` statements

### Granting permissions to roles vs. individual users
*   Advantages of using roles for permission management.

### Example Scenarios
*   Granting a user permission to execute a stored procedure:
    ```sql
    GRANT EXECUTE ON dbo.MyStoredProcedure TO MyUser;
    ```
*   Denying a user permission to delete data from a table:
    ```sql
    DENY DELETE ON dbo.MyTable TO MyUser;
    ```

# IV. Securing Data Access

## Protecting Sensitive Data

### Encryption
*   Transparent Data Encryption (TDE) for encrypting entire databases.
*   Column-level encryption for encrypting specific columns.
*   Always Encrypted for client-side encryption.

### Data Masking
*   Dynamic Data Masking to hide sensitive data from non-privileged users.
*   Different masking functions (e.g., `partial`, `email`, `random`).

### Row-Level Security (RLS)
*   Controlling access to rows based on user attributes.
*   Creating security policies and predicates.

## Implementing Stored Procedures for Data Access

### Best practices for writing secure stored procedures
*   Parameter validation.
*   Avoiding SQL injection vulnerabilities.

### Using stored procedures to control data access
*   Granting `EXECUTE` permission on stored procedures instead of direct table access.

# V. Monitoring and Auditing Security

## SQL Server Audit Feature

### Configuring server-level and database-level audits.
*   Choosing audit actions and event groups.
*   Specifying audit targets (e.g., file, Windows Security log).

### Analyzing audit logs
*   Identifying security breaches and policy violations.

## SQL Server Profiler and Extended Events

### Using SQL Server Profiler to monitor security-related events (deprecated).
### Extended Events for Advanced Monitoring
*   Creating custom Extended Events sessions to capture specific security events.
*   Example: Monitoring changes to user permissions.

# VI. Advanced Security Topics

## SQL Injection Prevention

### Parameterized Queries
*   Using parameters instead of concatenating strings to prevent SQL injection.
*   Example: Using `sp_executesql`.

### Input Validation
*   Validating user input to prevent malicious data from being inserted into the database.

### Least Privilege for Application Accounts
*   Granting application accounts only the necessary permissions to access the database.

## Securing Linked Servers

### Minimizing the use of linked servers.
### Secure configuration of linked servers
*   Using impersonation or SQL Server authentication with limited privileges.
*   Reviewing linked server permissions.

## Vulnerability Assessments

### Using SQL Vulnerability Assessment to identify security weaknesses.
### Remediating identified vulnerabilities
