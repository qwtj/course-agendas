# SQL Injection #Security #Vulnerability #WebAppSec
SQL Injection (SQLi) is a code injection technique used to attack data-driven applications, in which malicious SQL statements are inserted into an entry field for execution (e.g., to dump the database contents to the attacker).

## Fundamentals of SQL and Databases #Basics #Database #SQL
Understanding the underlying technology is crucial for comprehending SQL Injection vulnerabilities.
### SQL Basics #Syntax #Query #Language
Basic SQL commands (SELECT, INSERT, UPDATE, DELETE), clauses (WHERE, ORDER BY, GROUP BY), operators, and data types.
### Database Architecture #DBMS #DataModel #Storage
How databases (MySQL, PostgreSQL, SQL Server, Oracle, SQLite) store and manage data, including schemas, tables, columns, and metadata.
### Web Application Interaction #HTTP #Backend #DataFlow
How web applications receive user input (GET/POST requests), process it, and construct SQL queries to interact with the database.

## Types of SQL Injection #Classification #AttackVector #Techniques
SQL Injection attacks can be categorized based on the method used to inject malicious code and retrieve results.
### In-band SQL Injection (Classic SQLi) #Direct #Visible
Attacks where data is extracted using the same communication channel.
#### Error-based SQLi #Debug #InfoLeak #DatabaseError
Leveraging database error messages to extract information about the database structure.
#### UNION-based SQLi #Combine #DataExtraction #SELECT
Using the SQL `UNION` operator to combine the results of a legitimate query with results from a malicious query.
### Inferential SQL Injection (Blind SQLi) #Indirect #Stealthy #Inference
Attacks where the attacker does not get the database response directly on the web page but reconstructs information by sending specific requests and observing the application's behavior.
#### Boolean-based Blind SQLi #TrueFalse #Conditional #Logic
Sending SQL queries that result in a TRUE or FALSE outcome, affecting the application's response (e.g., different content displayed).
#### Time-based Blind SQLi #Delay #Wait #Performance
Injecting SQL commands that cause a time delay (e.g., `WAITFOR DELAY`, `SLEEP()`, `pg_sleep()`) based on a condition, allowing inference based on response time.
### Out-of-band SQL Injection (OOB SQLi) #External #DNS #HTTP
Attacks where data is exfiltrated using a different communication channel (e.g., DNS lookups, HTTP requests) initiated by the database server. Requires specific database features/permissions.

## Identifying SQL Injection Vulnerabilities #Detection #Testing #Assessment
Methods used to find SQLi flaws in applications.
### Manual Testing and Probing #Analysis #InputManipulation #Fingerprinting
Systematically injecting SQL metacharacters (', ", ;, --, /* */) and syntax into input fields and observing responses. Techniques include appending conditions (e.g., `OR 1=1`), checking for errors, and attempting basic injections.
### Automated Scanning Tools #DAST #SAST #Scanner
Using Dynamic Application Security Testing (DAST) tools (e.g., SQLMap, Burp Suite Scanner, OWASP ZAP) or Static Application Security Testing (SAST) tools to automatically identify potential vulnerabilities.
### Code Review #WhiteBox #SourceCode #SecureCoding
Manually or automatically reviewing application source code to identify insecure database interaction patterns.

## Exploitation Techniques #Payload #AttackExecution #PostExploitation
Methods used by attackers once an SQLi vulnerability is confirmed.
### Database Enumeration #Discovery #Reconnaissance #Metadata
Gathering information about the database.
#### Discovering Database Version and Type #Fingerprinting #DBMSInfo
#### Extracting Database Names #Schema #InformationSchema
#### Listing Tables and Columns #Structure #DataLayout
#### Identifying Users and Privileges #Permissions #AccessControl
### Data Extraction #Exfiltration #Theft #Confidentiality
Retrieving sensitive data from the database tables.
### Data Manipulation #Modification #IntegrityLoss #Tampering
Altering existing data (UPDATE), deleting data (DELETE), or inserting new data (INSERT).
### Bypassing Authentication #Login #AccessControl #PrivilegeEscalation
Injecting SQL code into login forms to bypass username/password checks (e.g., `' OR '1'='1`).
### Code Execution / Command Execution #RCE #OSCommand #Compromise
Executing operating system commands through database functions (e.g., `xp_cmdshell` on SQL Server, User-Defined Functions (UDFs)). Requires specific database configurations and privileges.
### Reading/Writing Files #FileSystem #DataLeak #Persistence
Using database functions to read sensitive files from the server's file system or write files (e.g., web shells) to the server. Requires specific privileges (e.g., `LOAD_FILE`, `SELECT ... INTO OUTFILE` in MySQL).

## Impact and Consequences #Risk #Damage #BusinessImpact
The potential negative effects of successful SQL Injection attacks.
### Data Breach and Confidentiality Loss #SensitiveData #PII #Compliance
Unauthorized access to and theft of sensitive information (customer data, financial records, intellectual property).
### Data Corruption and Integrity Loss #Tampering #DataModification #Trust
Unauthorized modification or deletion of data, leading to inaccurate records and loss of trust.
### Denial of Service (DoS) #Availability #Disruption #Shutdown
Making the application or database unavailable, potentially by dropping tables, overloading the database, or corrupting critical data.
### Full System Compromise #Pivoting #LateralMovement #Takeover
Using SQLi as an entry point to gain further access, potentially executing OS commands, uploading shells, and compromising the entire server or network.
### Reputational Damage #Trust #Brand #PublicRelations
Loss of customer trust and damage to the organization's reputation following a public breach.
### Financial Losses #Remediation #Fines #LegalCosts
Costs associated with incident response, system cleanup, legal fees, regulatory fines (e.g., GDPR, CCPA), and lost business.

## Prevention and Mitigation Strategies #Defense #SecureCoding #Countermeasures
Techniques and best practices to prevent SQL Injection vulnerabilities.
### Input Validation and Sanitization #Filtering #Allowlisting #Denylisting
Validating user input against expected formats (type, length, range, characters) and sanitizing potentially dangerous characters. Using allowlists is generally preferred over denylists.
### Parameterized Queries (Prepared Statements) #Separation #Placeholders #SafeAPI
The most effective defense. Separating SQL code from user-supplied data, ensuring input is treated as data, not executable code. Supported by most database APIs.
### Stored Procedures #Encapsulation #DatabaseLogic #SecurityContext
Using stored procedures can help, but *only* if implemented securely (i.e., not dynamically constructing SQL within the procedure using input parameters). They can help limit the application's direct SQL interaction surface.
### Principle of Least Privilege #Permissions #DatabaseUsers #AccessControl
Configuring database user accounts with the minimum necessary permissions required for the application to function. Avoid using high-privilege accounts (like `sa` or `root`) for application connections.
### Web Application Firewalls (WAFs) #Filtering #Detection #ProtectionLayer
Using WAFs to detect and block known SQLi patterns in HTTP requests. WAFs are a supplementary defense layer, not a replacement for secure coding.
### Output Encoding #Contextual #DefenseInDepth #XSSPrevention (Related)
Encoding data retrieved from the database before displaying it on web pages. Primarily prevents Cross-Site Scripting (XSS) but is part of overall secure output handling.
### Regular Security Audits and Penetration Testing #Verification #Proactive #Assessment
Periodically testing applications for SQLi and other vulnerabilities.
### Disabling Detailed Error Messages #InfoLeak #Obscurity #ProductionEnv
Configuring applications and databases to show generic error messages to users, avoiding leaking database structure details.

## SQL Injection Tools #Automation #TestingSuite #ExploitationFramework
Software used to detect and exploit SQLi vulnerabilities.
### Automated Scanners #DAST #DetectionTool
Examples: SQLMap, Acunetix, Netsparker (Invicti), OWASP ZAP, Burp Suite Scanner.
### Manual Exploitation Proxies #Interception #AnalysisTool #Debugging
Examples: Burp Suite (Proxy/Repeater/Intruder), OWASP ZAP (Proxy), Fiddler.
### Frameworks #ExploitationKit #PayloadGenerator
Example: Metasploit Framework (contains some SQLi modules).

## Advanced SQL Injection Topics #Complex #Evasion #Nuances
More sophisticated techniques and scenarios.
### Second-Order SQL Injection #Stored #Indirect #DelayedExecution
Injecting malicious SQL that is stored by the application (e.g., in the database) and later executed in a different context where it causes harm.
### Bypassing Filters and WAFs #Evasion #Obfuscation #Techniques
Using techniques like character encoding, comments, case variations, alternative syntax, HTTP Parameter Pollution (HPP), and exploiting specific parser weaknesses to evade detection.
### Advanced Blind SQLi Optimization #Inference #Speed #Automation
Techniques to speed up data extraction in blind SQLi scenarios (e.g., binary search algorithms, leveraging specific database functions).
### SQL Injection in Different Contexts #BeyondWeb #OtherInputs
SQLi vulnerabilities arising from sources other than standard web forms (e.g., SOAP/XML requests, JSON APIs, backend scripts processing file uploads, custom protocols).
### DOM-based SQL Injection (Conceptual Link) #ClientSide #TaintedData
While typically associated with client-side vulnerabilities, data originating from the DOM could potentially be sent to the server and used insecurely in SQL queries if not handled properly, though this is less direct than typical SQLi.

## Database-Specific SQL Injection #DBMS #Variations #Dialects
Differences in syntax, functions, metadata schemas, and default configurations affect SQLi techniques.
### MySQL #InformationSchema #LoadFile #Comments
Specific functions (`LOAD_FILE`, `SLEEP`), comment styles (`#`, `-- `), and metadata (`information_schema`).
### Microsoft SQL Server #xp_cmdshell #StackedQueries #ErrorMessages
Specific functions (`xp_cmdshell`, `WAITFOR DELAY`), support for stacked queries (multiple statements separated by `;`), detailed error messages, metadata (`sys.objects`, `INFORMATION_SCHEMA`).
### PostgreSQL #pg_sleep #UserDefinedFunctions #Metadata
Specific functions (`pg_sleep`), powerful procedural languages (PL/pgSQL), support for UDFs, metadata (`pg_catalog`, `information_schema`).
### Oracle #PLSQL #UTL_HTTP #ErrorHandling
PL/SQL language, packages (`UTL_HTTP`, `DBMS_LDAP`), specific error handling, different comment syntax (`--`), metadata (`ALL_TABLES`, `USER_TAB_COLUMNS`).
### SQLite #AttachedDatabases #Simplicity #FileSystem
Simpler syntax, file-based nature, `ATTACH DATABASE` command.

## Testing Methodologies for SQLi #Approach #Strategy #Pentesting
How SQLi testing fits into broader security assessment processes.
### Black-Box Testing #NoKnowledge #ExternalView #DAST
Testing without prior knowledge of the application's internal structure or source code. Relies heavily on probing and automated scanning.
### Gray-Box Testing #PartialKnowledge #UserCredentials #Targeted
Testing with some knowledge, such as user credentials or basic architectural information. Allows for more targeted testing.
### White-Box Testing #FullKnowledge #SourceCodeReview #SAST
Testing with full access to source code, architecture diagrams, and potentially developer interaction. Enables thorough code review and identification of flaws missed by other methods.

## Legal and Ethical Considerations #Compliance #Law #Responsibility
The legal ramifications and ethical guidelines surrounding SQL Injection.
### Unauthorized Access Laws #CFAA #ComputerMisuse #Legality
Laws prohibiting unauthorized access to computer systems and data (e.g., Computer Fraud and Abuse Act in the US, Computer Misuse Act in the UK). Exploiting SQLi without permission is illegal.
### Responsible Disclosure #Ethics #VulnerabilityReporting #Coordination
Ethical guidelines for reporting vulnerabilities discovered to the affected organization, allowing them time to remediate before public disclosure.
### Penetration Testing Ethics #Scope #Permission #Professionalism
The importance of obtaining explicit, written permission and defining the scope before conducting any form of security testing, including SQLi detection.

## Case Studies and Real-World Examples #Breaches #History #LessonsLearned
Notable security incidents where SQL Injection was the primary attack vector.
### Heartland Payment Systems (2008) #MassiveBreach #FinancialData
### TalkTalk (2015) #ReputationDamage #Fines
### Various Government and Corporate Breaches #OngoingThreat #ImpactExamples
Numerous examples illustrating the widespread nature and severe impact of SQLi.

## Future Trends and Research #Evolution #AI #EmergingTech
The evolving landscape of SQL Injection attacks and defenses.
### Automation and AI in Attack/Defense #MachineLearning #AdaptiveSecurity #ThreatIntel
Using AI/ML for more sophisticated attack generation, WAF bypasses, and conversely, for improved detection and prevention.
### SQLi in NoSQL Databases? #NoSQLInjection #DifferentParadigm
While classic SQLi targets SQL databases, similar injection concepts can apply to NoSQL databases depending on how queries are constructed and input is handled (e.g., NoSQL Injection).
### Evolution of Database Technologies #NewAttackSurfaces #CloudDatabases
How new database features, cloud-native databases, and ORMs might introduce new variations or mitigation challenges.
