# I. Database Security Fundamentals

## Understanding Security Concepts

### Confidentiality, Integrity, Availability (CIA Triad)
*   Defining CIA and its importance in database security.
*   Examples of threats against each component (e.g., data breaches for confidentiality, data corruption for integrity, denial-of-service for availability).

### Authentication and Authorization
*   Differentiating between verifying identity (authentication) and granting access (authorization).
*   Common authentication methods: passwords, multi-factor authentication (MFA), biometrics.
*   Role-Based Access Control (RBAC) and its benefits.

## Common Database Threats

### SQL Injection
*   Understanding how SQL injection works: injecting malicious SQL code through user input.
*   Example: `SELECT * FROM users WHERE username = 'input' AND password = 'password'`. Demonstrate how a malicious input like `' OR '1'='1` bypasses authentication.
*   Prevention techniques: parameterized queries, input validation, escaping user input.

### Privilege Escalation
*   Exploiting vulnerabilities to gain higher-level privileges.
*   Vertical privilege escalation (gaining administrator privileges) and horizontal privilege escalation (accessing other users' data).
*   Mitigation: Principle of Least Privilege (POLP), regular privilege audits.

### Data Breach and Data Loss
*   Causes of data breaches: hacking, malware, insider threats, accidental disclosure.
*   Data loss scenarios: hardware failure, software bugs, human error.
*   Preventive measures: encryption, backups, access controls, incident response plans.

# II. Implementing Security Measures

## Access Control Mechanisms

### User Account Management
*   Creating, modifying, and deleting user accounts.
*   Setting strong password policies (length, complexity, expiration).
*   Implementing account lockout policies after failed login attempts.

### Role-Based Access Control (RBAC)
*   Defining roles and assigning permissions to roles.
*   Assigning users to roles.
*   Example: Creating a `read_only` role with access to only `SELECT` statements on specific tables.

### Database Views
*   Using views to restrict access to sensitive data.
*   Creating a view that shows only non-sensitive columns from a table.
*   Granting access to the view instead of the base table.

## Encryption Techniques

### Data at Rest Encryption
*   Encrypting data stored on disk using Transparent Data Encryption (TDE).
*   Understanding the key management process for encryption keys.
*   Example: Enabling TDE in SQL Server or Oracle.

### Data in Transit Encryption
*   Using SSL/TLS to encrypt communication between the client and the database server.
*   Configuring database servers to require encrypted connections.
*   Example: Configuring `ssl_require_mode` in PostgreSQL.

### Column-Level Encryption
*   Encrypting individual columns containing sensitive data.
*   Using encryption functions provided by the database (e.g., `AES_ENCRYPT` in MySQL).
*   Considerations: performance impact, key management.

## Auditing and Monitoring

### Enabling Database Auditing
*   Configuring the database to log security-related events (e.g., login attempts, changes to data, privilege changes).
*   Example: Enabling auditing in Oracle or SQL Server.
*   Understanding the performance impact of auditing.

### Analyzing Audit Logs
*   Reviewing audit logs to identify suspicious activity.
*   Using tools to filter and analyze audit data.
*   Setting up alerts for specific events (e.g., failed login attempts, unauthorized access).

### Real-time Monitoring
*   Using database monitoring tools to track performance and security metrics.
*   Setting up thresholds for alerts based on unusual activity.
*   Example: Monitoring CPU usage, disk I/O, and network traffic for anomalies.

# III. Advanced Security Topics

## Database Hardening

### Operating System Security
*   Securing the operating system on which the database server runs.
*   Patching vulnerabilities, disabling unnecessary services, configuring firewalls.
*   Using a hardened operating system image.

### Network Security
*   Segmenting the database server on a separate network.
*   Using firewalls to restrict access to the database server.
*   Implementing intrusion detection and prevention systems (IDS/IPS).

### Secure Configuration
*   Reviewing and hardening the database server's configuration settings.
*   Disabling unnecessary features, setting appropriate timeouts, limiting resource usage.
*   Example: Setting `max_connections` in PostgreSQL to prevent denial-of-service attacks.

## Vulnerability Assessment and Penetration Testing

### Vulnerability Scanning
*   Using vulnerability scanners to identify known vulnerabilities in the database server.
*   Regularly scanning for vulnerabilities and patching them promptly.
*   Example: Using tools like Nessus or OpenVAS.

### Penetration Testing
*   Simulating real-world attacks to identify security weaknesses.
*   Engaging ethical hackers to perform penetration testing.
*   Remediating vulnerabilities identified during penetration testing.

## Data Masking and Anonymization

### Data Masking
*   Replacing sensitive data with realistic but fictitious data.
*   Using masking techniques such as substitution, shuffling, and encryption.
*   Example: Masking credit card numbers by replacing all but the last four digits.

### Data Anonymization
*   Removing or modifying data to prevent identification of individuals.
*   Using anonymization techniques such as aggregation, suppression, and generalization.
*   Considerations: data utility, legal requirements.

# IV. Security in Specific Database Systems

## MySQL/MariaDB Security

### User Management and Privileges
*   Creating users, granting privileges, and revoking privileges using `GRANT` and `REVOKE` statements.
*   Understanding the MySQL privilege system.
*   Example: `GRANT SELECT, INSERT ON database.table TO 'user'@'host' IDENTIFIED BY 'password';`

### Secure Configuration
*   Securing the `my.cnf` configuration file.
*   Setting `bind-address`, `skip-networking`, and `secure-file-priv`.

### SQL Injection Prevention
*   Using prepared statements and parameterized queries.
*   Escaping user input with `mysqli_real_escape_string()`.

## PostgreSQL Security

### Role Management and Privileges
*   Creating roles, granting privileges, and revoking privileges using `CREATE ROLE`, `GRANT`, and `REVOKE` statements.
*   Understanding the PostgreSQL role system.
*   Example: `CREATE ROLE user WITH LOGIN PASSWORD 'password'; GRANT SELECT ON TABLE table TO user;`

### Secure Configuration
*   Securing the `postgresql.conf` configuration file.
*   Setting `listen_addresses`, `ssl`, and `password_encryption`.

### Client Authentication
*   Configuring `pg_hba.conf` to control client authentication methods.
*   Using `trust`, `md5`, and `scram-sha-256` authentication methods.

## Microsoft SQL Server Security

### User Management and Permissions
*   Creating logins, creating users, and granting permissions using T-SQL statements.
*   Understanding the SQL Server permission system.
*   Example: `CREATE LOGIN user WITH PASSWORD = 'password'; CREATE USER user FOR LOGIN user; GRANT SELECT ON table TO user;`

### Secure Configuration
*   Using SQL Server Configuration Manager to configure network protocols and security settings.
*   Enabling encryption, auditing, and authentication options.

### SQL Injection Prevention
*   Using parameterized queries with `SqlCommand` and `SqlParameter`.
