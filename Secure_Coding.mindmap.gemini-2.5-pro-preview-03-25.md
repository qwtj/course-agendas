# Secure Coding #Overview #Cybersecurity #SoftwareEngineering
Practices for developing software resistant to vulnerabilities and attacks.

## Fundamentals of Secure Coding #Basics #Concepts #Introduction
Core principles and the importance of writing secure code.
Understanding the threat landscape, common attack vectors, and the cost of insecurity.

### Why Secure Coding Matters #Motivation #Impact #Risk
Business impact of security breaches (financial, reputational).
Legal and compliance requirements.
Ethical considerations.

### Key Security Concepts #Terminology #Principles
Confidentiality, Integrity, Availability (CIA Triad).
Authentication, Authorization, Auditing (AAA).
Non-repudiation.
Least Privilege.
Defense in Depth.
Attack Surface Reduction.
Fail Securely.
Threats vs. Vulnerabilities vs. Risks vs. Exploits.

### Common Security Myths #Misconceptions #Pitfalls
"Security through obscurity is effective."
"My code isn't a target."
"Security is someone else's job."
"We can add security later."

## Secure Design Principles #Architecture #Design #Strategy
Incorporating security considerations early in the design phase.

### Principle of Least Privilege #AccessControl #Minimization
Granting only necessary permissions for users and processes.

### Defense in Depth #LayeredSecurity #Redundancy
Implementing multiple layers of security controls.

### Fail-Safe Defaults (Fail Securely) #ErrorHandling #Defaults
Ensuring failures don't compromise security (e.g., default deny).

### Economy of Mechanism #Simplicity #KISS
Keeping the design simple and small makes it easier to secure and audit.

### Complete Mediation #AccessChecks #Validation
Verifying access rights for every access attempt.

### Open Design #Transparency #Cryptography
Avoiding security through obscurity; relying on robust, public algorithms and designs.

### Separation of Privilege #Segregation #Roles
Requiring multiple conditions/privileges to perform critical actions.

### Least Common Mechanism #Isolation #ResourceSharing
Minimizing shared resources between components.

### Psychological Acceptability #Usability #UserExperience
Ensuring security mechanisms are usable and don't unduly burden users.

### Attack Surface Reduction #Minimization #Exposure
Reducing the number of potential entry points for attackers.

## Threat Modeling #RiskAssessment #ProactiveSecurity #Design
Identifying potential threats and vulnerabilities early in the development process.

### Threat Modeling Methodologies #STRIDE #PASTA #VAST #Trike
Different frameworks for analyzing threats.
STRIDE: Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege.

### Steps in Threat Modeling #Process #Workflow
Identifying assets.
Defining security objectives.
Decomposing the application.
Identifying threats.
Identifying vulnerabilities.
Documenting threats and countermeasures.

### Data Flow Diagrams (DFDs) #Visualization #Analysis
Mapping data movement, processes, storage, and trust boundaries.

### Identifying Trust Boundaries #SecurityZones #Interfaces
Where data or execution control crosses between different levels of trust.

## Input Validation and Output Encoding #DataHandling #Injection #XSS
Preventing attacks stemming from untrusted input and ensuring safe output display.

### Sources of Untrusted Input #Users #APIs #Files #Databases #Environment
Identifying all potential channels for malicious data.

### Input Validation Techniques #Allowlisting #Blocklisting #Sanitization #TypeChecking #LengthChecking
Methods to ensure input conforms to expected formats and values.
Preferring allow-listing (positive validation) over block-listing (negative validation).
Regular expressions for validation.

### Output Encoding #CrossSiteScripting #XSS #HTML #JavaScript #SQL
Safely handling data before displaying it to users or using it in different contexts.
Context-aware encoding (HTML body, HTML attributes, JavaScript, CSS, URL).
Using established libraries for encoding (e.g., OWASP ESAPI).

### Parameterized Queries (Prepared Statements) #SQLInjection #DatabaseSecurity
Preventing SQL injection by separating code from data.

### Preventing Injection Flaws #SQLi #OSCommandInjection #LDAPInjection #XMLInjection
General strategies beyond input validation and output encoding.

## Authentication and Authorization #AccessControl #Identity #Permissions
Verifying user identity and controlling access to resources.

### Authentication Mechanisms #Passwords #MFA #Biometrics #Tokens #SSO
Methods for proving identity.
Password hashing and salting (e.g., bcrypt, Argon2).
Multi-Factor Authentication (MFA/2FA).
OAuth, OpenID Connect, SAML.

### Authorization Mechanisms #RBAC #ABAC #ACLs
Methods for enforcing permissions.
Role-Based Access Control (RBAC).
Attribute-Based Access Control (ABAC).
Access Control Lists (ACLs).

### Common Authentication Flaws #WeakPasswords #CredentialStuffing #SessionFixation #BruteForce
Vulnerabilities related to identity verification.

### Common Authorization Flaws #PrivilegeEscalation #InsecureDirectObjectReferences #IDOR #MissingFunctionLevelAccessControl
Vulnerabilities related to permission enforcement.

## Session Management #StateManagement #Cookies #Tokens
Securely handling user sessions after authentication.

### Session Identifiers #Cookies #JWT #SessionIDs
Generating strong, unpredictable session identifiers.
Secure cookie attributes (HttpOnly, Secure, SameSite).

### Session Handling Flaws #SessionFixation #SessionHijacking #CrossSiteRequestForgery #CSRF
Vulnerabilities related to managing user sessions.
CSRF prevention techniques (e.g., Anti-CSRF tokens).

### Session Timeout and Termination #Lifecycle #Security
Implementing inactivity timeouts and secure logout mechanisms.

### Token-Based Sessions (e.g., JWT) #Stateless #APISecurity
Using tokens like JSON Web Tokens for session management, especially in APIs.
JWT security considerations (algorithm choice, validation, storage).

## Cryptography Applied #Encryption #Hashing #DigitalSignatures #SecretsManagement
Using cryptographic techniques correctly to protect data.

### Choosing Appropriate Algorithms #Standards #BestPractices #Symmetric #Asymmetric
Selecting strong, vetted cryptographic algorithms (e.g., AES, RSA, ECC).
Avoiding broken or weak algorithms (e.g., DES, MD5, SHA-1 for signatures).

### Key Management #Lifecycle #Storage #Distribution
Secure generation, storage, distribution, rotation, and destruction of cryptographic keys.
Hardware Security Modules (HSMs).
Key Management Services (KMS) in cloud environments.

### Secure Random Number Generation #Entropy #Predictability
Using cryptographically secure pseudo-random number generators (CSPRNGs).

### Common Cryptographic Mistakes #HardcodedKeys #WeakAlgorithms #IncorrectImplementation #IVReuse
Pitfalls to avoid when implementing cryptography.
Using standard, well-tested libraries.

### Transport Layer Security (TLS/SSL) #HTTPS #DataInTransit
Securing data transmitted over networks.
Proper TLS configuration (versions, cipher suites).

### Hashing vs. Encryption #UseCases #Passwords #Integrity
Understanding the difference and appropriate use cases.

## Error Handling and Logging #Exceptions #Auditing #Monitoring
Managing errors securely and logging relevant information without leaking sensitive data.

### Secure Error Handling #InformationDisclosure #FailSecurely
Avoiding revealing sensitive information (stack traces, system details) to users.
Generic error messages for users.
Detailed error information logged securely.

### Secure Logging Practices #Auditing #Compliance #Forensics
Logging security-relevant events (logins, failures, access changes, critical operations).
Protecting log integrity and confidentiality.
Avoiding logging sensitive data (passwords, credit card numbers, PII).
Log formats and centralization.

### Handling Exceptions Securely #CatchBlocks #ResourceCleanup
Ensuring exceptions don't leave the application in an insecure state.
Proper resource cleanup (files, network connections).

## Data Security (Storage and Transit) #Confidentiality #Integrity #Encryption
Protecting sensitive data wherever it resides or travels.

### Protecting Data at Rest #Encryption #DatabaseSecurity #FileSecurity
Encrypting sensitive data stored in databases, filesystems, or configuration files.
Full Disk Encryption (FDE) vs. Database Encryption vs. Application-Level Encryption.

### Protecting Data in Transit #Encryption #TLS #HTTPS #NetworkSecurity
Using protocols like TLS/HTTPS to encrypt data moving across networks.
Securing internal network communication.

### Data Classification #Sensitivity #PII #Compliance
Identifying and classifying data based on sensitivity to apply appropriate controls.

### Data Minimization #Privacy #GDPR
Collecting and retaining only the data necessary for the intended purpose.

### Secure Data Deletion #Scrubbing #Disposal
Ensuring data is securely and permanently deleted when no longer needed.

## Memory Safety #BufferOverflow #MemoryLeaks #UseAfterFree
Preventing vulnerabilities related to insecure memory management, especially in languages like C/C++.

### Buffer Overflows #StackOverflow #HeapOverflow #FormatString
Understanding and preventing writing beyond allocated buffer boundaries.
Using safe functions (e.g., `strncpy`, `snprintf` with proper size checks).
Stack canaries / buffer security checks.

### Integer Overflows and Underflows #ArithmeticErrors #SecurityImpact
Preventing integer manipulation that leads to unexpected behavior or vulnerabilities.

### Dangling Pointers and Use-After-Free #MemoryCorruption #Exploitation
Preventing access to memory that has been freed.

### Memory Leaks #ResourceExhaustion #DenialOfService
Ensuring allocated memory is properly released to prevent resource exhaustion.

### Memory Safe Languages and Techniques #Rust #Go #ManagedCode #SafeLibraries
Using languages with built-in memory safety features or employing safer libraries and coding practices.

## Common Vulnerabilities (OWASP Top 10) #WebSecurity #Risk #Awareness
Understanding and mitigating the most critical web application security risks identified by OWASP.
Note: The specific Top 10 list changes over time; reference the current version.

### Injection (A03:2021) #SQLi #NoSQLi #OSCommand #LDAPi
Preventing code injection flaws.

### Broken Authentication (A07:2021) #Credentials #SessionManagement
Flaws in identity verification and session handling.

### Sensitive Data Exposure (Superseded/Merged in 2021) #Encryption #DataLeakage
Protecting sensitive data from compromise. Covered now under broader categories.

### XML External Entities (XXE) (A05:2021 - Vulnerable/Outdated Components) #XMLParsing #DataLeakage #SSRF
Exploiting vulnerable XML parsers.

### Broken Access Control (A01:2021) #Authorization #Permissions #IDOR
Failures in enforcing restrictions on what users are allowed to do.

### Security Misconfiguration (A05:2021) #Defaults #Hardening #Patching
Insecure default settings, unpatched flaws, unnecessary features enabled.

### Cross-Site Scripting (XSS) (A03:2021 - Injection context) #JavaScriptInjection #ContentSecurityPolicy
Injecting malicious scripts into websites viewed by other users.
Reflected, Stored, DOM-based XSS.
Content Security Policy (CSP).

### Insecure Deserialization (A08:2021 - Software/Data Integrity Failures) #ObjectInjection #RCE
Exploiting flawed deserialization of untrusted data.

### Using Components with Known Vulnerabilities (A06:2021) #Dependencies #Patching #SBOM
Using libraries, frameworks, or other software modules with known security flaws.
Software Composition Analysis (SCA).
Software Bill of Materials (SBOM).

### Insufficient Logging & Monitoring (A09:2021) #Detection #Response #Forensics
Inadequate logging, monitoring, and response capabilities hindering timely detection of breaches.

### Server-Side Request Forgery (SSRF) (A10:2021) #NetworkPivot #InternalAccess
Forcing the server to make requests to unintended locations.

## Web Application Security #WebDev #BrowserSecurity #HTTP
Specific considerations for securing web applications.

### HTTP Security Headers #CSP #HSTS #XFrameOptions #XXSSProtection #ReferrerPolicy
Using HTTP headers to enhance browser-level security.
Content Security Policy (CSP).
HTTP Strict Transport Security (HSTS).

### Cookie Security Attributes #HttpOnly #Secure #SameSite
Securing cookies against theft and misuse.

### Cross-Origin Resource Sharing (CORS) #BrowserPolicy #APIAccess
Configuring CORS correctly to allow/restrict cross-origin requests.

### Web Server and Application Server Hardening #Configuration #Patching
Securing the underlying infrastructure hosting the web application.

### File Upload Vulnerabilities #Malware #DirectoryTraversal
Securely handling user-uploaded files.

### URL Redirection and Forwards #Phishing #OpenRedirect
Preventing manipulation of redirects for malicious purposes.

## API Security #Microservices #REST #GraphQL #WebServices
Securing Application Programming Interfaces.

### API Authentication and Authorization #OAuth #APIKeys #JWT
Securing access to API endpoints.

### Rate Limiting and Throttling #DenialOfService #BruteForce
Protecting APIs from abuse and DoS attacks.

### Securing API Endpoints #InputValidation #AccessControl
Applying security principles specifically to API design and implementation.
OWASP API Security Top 10.

### GraphQL Security Considerations #Introspection #QueryDepth #Complexity
Specific challenges in securing GraphQL APIs.

## Mobile Application Security #iOS #Android #MobileDev
Specific considerations for securing mobile apps.

### Platform-Specific Security Features #iOSKeychain #AndroidKeystore #Sandboxing
Leveraging built-in security capabilities of mobile platforms.

### Insecure Data Storage #MobileData #Encryption
Protecting sensitive data stored on the device.

### Insecure Communication #MobileNetwork #TLS
Ensuring secure transmission of data from the mobile app.

### Code Tampering and Reverse Engineering #Obfuscation #AntiDebugging
Protecting mobile app code from analysis and modification.

### Insecure Authentication and Authorization #MobileAuth #Biometrics
Securely authenticating users and authorizing actions within the app.

### OWASP Mobile Security Project #MASVS #MASTG
Resources and standards for mobile security.

## Database Security Practices #DataStorage #SQL #NoSQL
Securing the database layer.

### Principle of Least Privilege for Database Accounts #DBUsers #Permissions
Granting minimal necessary privileges to application database accounts.

### Preventing SQL Injection #ParameterizedQueries #StoredProcedures #ORM
Specific database-level techniques against SQLi.

### Database Encryption #TDE #ColumnLevelEncryption
Encrypting sensitive data within the database.
Transparent Data Encryption (TDE).

### Auditing Database Activity #DBLogs #Monitoring
Logging and monitoring access and changes within the database.

### Database Hardening and Patching #Configuration #Updates
Securing the database server configuration and keeping it updated.

## Secure Development Lifecycle (SDL) #Process #Methodology #DevSecOps
Integrating security activities throughout the entire software development lifecycle.

### SDL Phases and Activities #Requirements #Design #Implementation #Testing #Deployment #Maintenance
Mapping security tasks to development phases.
Security requirements gathering.
Secure design reviews.
Secure coding standards.
Security testing (SAST, DAST, IAST, Pen Testing).
Secure deployment and configuration.
Ongoing monitoring and maintenance.

### Microsoft SDL #BSIMM #SAMM #DevSecOps
Examples of established SDL frameworks and maturity models.
Integrating security into Agile and DevOps workflows (DevSecOps).

### Security Gates #Checkpoints #QualityAssurance
Defining criteria that must be met before moving to the next phase.

## Security Testing and Verification #SAST #DAST #IAST #Pentesting #Validation
Techniques and tools for finding security vulnerabilities in code and applications.

### Static Application Security Testing (SAST) #WhiteBox #CodeAnalysis #Tools
Analyzing source code or compiled code for vulnerabilities without executing it.
Linters, static analyzers.

### Dynamic Application Security Testing (DAST) #BlackBox #RuntimeAnalysis #Fuzzing
Testing the running application from the outside for vulnerabilities.
Web scanners, fuzz testing tools.

### Interactive Application Security Testing (IAST) #Hybrid #Instrumentation
Combining SAST and DAST elements using agents or instrumentation within the running application.

### Manual Code Review #PeerReview #ExpertAnalysis
Human inspection of source code to identify security flaws.

### Penetration Testing #EthicalHacking #AttackSimulation
Simulating real-world attacks to find vulnerabilities.

### Fuzz Testing (Fuzzing) #AutomatedTesting #EdgeCases
Providing invalid, unexpected, or random data as input to identify crashes or vulnerabilities.

### Software Composition Analysis (SCA) #Dependencies #ThirdPartyCode #SBOM
Identifying vulnerabilities in third-party libraries and components.

## Security Tools and Automation #Efficiency #CI/CD #Tooling
Leveraging tools to automate security checks and processes.

### IDE Security Plugins #Linters #RealtimeFeedback
Tools integrated into the developer's environment for immediate feedback.

### SAST Tools #CodeScanners #StaticAnalyzers
Examples: SonarQube, Checkmarx, Veracode Static Analysis, Semgrep.

### DAST Tools #WebScanners #VulnerabilityScanners
Examples: OWASP ZAP, Burp Suite, Nessus, Acunetix.

### SCA Tools #DependencyCheckers
Examples: OWASP Dependency-Check, Snyk, Dependabot (GitHub), Trivy.

### Integrating Security into CI/CD Pipelines #DevSecOps #Automation #ShiftLeft
Automating SAST, DAST, SCA scans within build and deployment pipelines.

### Secrets Management Tools #Vault #KMS
Tools for securely storing and accessing secrets like API keys and passwords (e.g., HashiCorp Vault, AWS Secrets Manager, Azure Key Vault).

## Language-Specific Secure Coding #Implementation #BestPractices #Pitfalls
Security considerations unique to specific programming languages.

### C/C++ Security #MemorySafety #BufferOverflows #Pointers
Manual memory management pitfalls, safe libraries (e.g., Safe C String Library).

### Java Security #JVM #Serialization #ClassLoaders #SecurityManager
Security Manager policies, secure serialization, bytecode verification.

### Python Security #Pickle #InputHandling #Dependencies
Risks with modules like `pickle`, input validation, dependency management.

### JavaScript Security (Node.js & Browser) #XSS #PrototypePollution #npmSecurity
DOM manipulation risks, Node.js security (e.g., path traversal, command injection), securing npm dependencies.

### C# / .NET Security #CodeAccessSecurity #ManagedCode #LINQInjection
Framework security features, avoiding injection in LINQ.

### PHP Security #IncludeVulnerabilities #SessionSecurity #TypeJuggling
Common PHP pitfalls like remote file inclusion, secure session handling.

## Compliance and Standards #Regulations #Frameworks #Governance
Adhering to relevant security laws, regulations, and industry standards.

### PCI DSS #PaymentCards #Finance
Payment Card Industry Data Security Standard.

### HIPAA #Healthcare #Privacy #USSpecific
Health Insurance Portability and Accountability Act.

### GDPR / CCPA #Privacy #DataProtection #EU #California
General Data Protection Regulation (EU) / California Consumer Privacy Act.

### ISO 27001 #ISMS #ManagementSystem
Standard for Information Security Management Systems.

### NIST Standards #Frameworks #USGov #CybersecurityFramework
National Institute of Standards and Technology guidelines (e.g., CSF, SP 800-53).

### OWASP ASVS #WebApplication #VerificationStandard
Application Security Verification Standard.

## Security Culture and Awareness #HumanFactor #Training #Collaboration
Building a security-conscious mindset within the development team and organization.

### Developer Security Training #Education #Skills
Providing ongoing education on secure coding practices and emerging threats.

### Security Champions Program #Advocates #Collaboration
Identifying and empowering developers with a security focus within teams.

### Creating Security Policies and Standards #Guidelines #Documentation
Documenting clear security expectations and coding guidelines.

### Fostering Collaboration #Dev #Sec #Ops #Communication
Breaking down silos between Development, Security, and Operations teams.

## Incident Preparedness and Response #Breach #Recovery #LessonsLearned
Planning for and handling security incidents related to application vulnerabilities.

### Incident Response Plan #Preparation #Process
Having a documented plan for identifying, containing, eradicating, and recovering from incidents.

### Post-Mortem Analysis #RootCause #Improvement
Analyzing incidents to understand the root cause (often a code vulnerability) and prevent recurrence.

### Secure Code Updates and Patching Strategy #VulnerabilityManagement #Remediation
Processes for quickly and safely patching vulnerabilities discovered in production.
