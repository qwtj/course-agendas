# I. Security and Risk Management

## Understanding Security Principles

### Confidentiality, Integrity, and Availability (CIA Triad)
  *  Define each element (Confidentiality, Integrity, Availability).
  *  Examples illustrating breaches of each principle.

### Authentication, Authorization, and Accounting (AAA)
 *  Understanding the functions of each element
 *  Differences between identification, authentication, and authorization.

### Security Governance Principles
  *  Due Care vs. Due Diligence: Understanding the difference.
  *  Principle of Least Privilege: Definition and examples.
  *  Separation of Duties: Importance and application.
  *  Defense in Depth: Concept and examples of layered security.

## Legal and Regulatory Compliance

### Laws and Regulations
  *  HIPAA (Health Insurance Portability and Accountability Act): Basic requirements.
  *  GDPR (General Data Protection Regulation): Basic requirements.
  *  PCI DSS (Payment Card Industry Data Security Standard): Overview.
  *  Understanding international laws relevant to data privacy.

### Privacy Principles
  *  Fair Information Practices (FIPs): Overview of the principles.
  *  Privacy Impact Assessments (PIAs): Purpose and process.

### Intellectual Property
  *  Copyright: Definition and rights protected.
  *  Patents: Definition and types.
  *  Trademarks: Definition and purpose.
  *  Trade Secrets: Definition and protection.

## Risk Management

### Risk Management Frameworks
  *  NIST Risk Management Framework (RMF): Overview of the steps (Categorize, Select, Implement, Assess, Authorize, Monitor).
  *  ISO 27005: Overview and its relation to ISO 27001.

### Risk Assessment Methodologies
  *  Qualitative Risk Assessment: Using scales and descriptions to assess risk.
  *  Quantitative Risk Assessment: Calculating ALE (Annualized Loss Expectancy) and ROI.
  *  Hybrid Risk Assessment: Combining qualitative and quantitative approaches.

### Risk Response Strategies
  *  Risk Avoidance: Example scenarios.
  *  Risk Transference: Insurance and outsourcing examples.
  *  Risk Mitigation: Implementing security controls.
  *  Risk Acceptance: Understanding when it's appropriate.

### Business Continuity and Disaster Recovery Planning
  *  Business Impact Analysis (BIA): Identifying critical business functions.
  *  Recovery Time Objective (RTO) and Recovery Point Objective (RPO): Definitions and examples.
  *  Disaster Recovery Plan (DRP) Testing: Types of tests (tabletop, simulation, full interruption).
  *  Business Continuity Plan (BCP) Development: Key components.

# II. Asset Security

## Information and Asset Classification

### Data Classification
  *  Public Data: Examples and handling.
  *  Private/Confidential Data: Examples and handling.
  *  Sensitive Data: Examples and handling.
  *  Government Classification Levels (Unclassified, Confidential, Secret, Top Secret).

### Data Labeling and Handling
  *  Implementing data labeling policies.
  *  Secure data handling procedures.

### Asset Management
  *  Asset inventory creation and maintenance.
  *  Asset lifecycle management.

## Data Security Controls

### Data at Rest Protection
  *  Disk Encryption: Full disk encryption vs. file-level encryption.
  *  Database Security: Access controls, encryption, auditing.

### Data in Transit Protection
  *  TLS/SSL: Understanding the protocol and its role.
  *  VPNs: Types of VPNs (site-to-site, remote access).

### Data in Use Protection
  *  Data Loss Prevention (DLP): Technology and policies.
  *  Endpoint Security: Anti-malware, host-based firewalls.

### Data Masking and Tokenization
  *  Data Masking: Static vs. dynamic masking.
  *  Tokenization: Replacing sensitive data with non-sensitive tokens.

### Data Retention and Disposal
  *  Data retention policies based on legal and business requirements.
  *  Secure data disposal methods (shredding, degaussing, wiping).

# III. Security Architecture and Engineering

## Security Models and Architecture

### Security Models
  *  Bell-LaPadula (Confidentiality): Principles and application.
  *  Biba (Integrity): Principles and application.
  *  Clark-Wilson (Real-World Integrity): Principles and application.

### Security Architectures
  *  Trusted Computing Base (TCB): Concept and components.
  *  Security Perimeter: Defining and protecting the perimeter.
  *  Defense in Depth Architecture: Implementing layered security controls.
  *  Zero Trust Architecture: Principles and implementation challenges.

## Security Engineering Principles

### Secure Design Principles
  *  Least Privilege: Applying it to system design.
  *  Separation of Duties: Implementing controls to enforce it.
  *  Fail-Safe Defaults: Understanding the concept.
  *  Economy of Mechanism: Keeping designs simple.
  *  Complete Mediation: Checking access to every object.
  *  Open Design: Benefits and drawbacks.
  *  Least Common Mechanism: Minimizing shared resources.
  *  Psychological Acceptability: Designing user-friendly security.

### Cryptographic Principles
  *  Symmetric Cryptography: AES, DES, 3DES.
  *  Asymmetric Cryptography: RSA, ECC.
  *  Hashing: SHA-256, MD5 (understanding vulnerabilities).
  *  Digital Signatures: How they work and their purpose.
  *  Certificates: X.509 standard, certificate authorities.

## System Security

### Operating System Security
  *  Hardening operating systems: Patch management, disabling unnecessary services.
  *  Access control mechanisms: ACLs, RBAC.
  *  Kernel-level security.

### Database Security
  *  Database hardening: Patching, configuration.
  *  Access control: Granting and revoking privileges.
  *  Auditing: Tracking database activity.

### Network Security
  *  Network segmentation: VLANs, firewalls.
  *  Intrusion Detection/Prevention Systems (IDS/IPS): Types and functions.
  *  VPNs and secure remote access.

### Cloud Security
  *  Cloud service models: IaaS, PaaS, SaaS.
  *  Cloud security best practices: Identity and Access Management (IAM), data encryption, network security.
  *  Cloud compliance standards: SOC 2, ISO 27001.

### Mobile Security
  *  Mobile device management (MDM).
  *  Mobile application security.
  *  BYOD (Bring Your Own Device) security policies.

### Embedded Systems Security
  *  Security considerations for IoT devices.
  *  Firmware security.

# IV. Communication and Network Security

## Network Fundamentals

### Network Models
  *  OSI Model: Understanding the layers and their functions.
  *  TCP/IP Model: Understanding the layers and their functions.

### Network Protocols
  *  TCP: Connection-oriented protocol.
  *  UDP: Connectionless protocol.
  *  IP: Addressing and routing.
  *  HTTP/HTTPS: Web communication.
  *  DNS: Domain name resolution.
  *  SMTP: Email transmission.

## Network Security Controls

### Firewalls
  *  Types of firewalls: Packet filtering, stateful inspection, proxy.
  *  Firewall rules: Configuring access control lists (ACLs).
  *  Next-Generation Firewalls (NGFWs): Features and capabilities.

### Intrusion Detection and Prevention Systems (IDS/IPS)
  *  Signature-based IDS/IPS.
  *  Anomaly-based IDS/IPS.
  *  Host-based IDS/IPS (HIDS).
  *  Network-based IDS/IPS (NIDS).

### Wireless Security
  *  Wi-Fi Security Protocols: WEP, WPA, WPA2, WPA3.
  *  Wireless network security best practices.

### VPNs (Virtual Private Networks)
  *  Types of VPNs: SSL VPN, IPSec VPN.
  *  VPN protocols: L2TP, PPTP, OpenVPN.

### Network Segmentation
  *  VLANs (Virtual LANs): Purpose and configuration.
  *  Microsegmentation: Benefits and implementation.

## Communication Security

### Email Security
  *  SPF (Sender Policy Framework).
  *  DKIM (DomainKeys Identified Mail).
  *  DMARC (Domain-based Message Authentication, Reporting & Conformance).
  *  Email encryption: PGP, S/MIME.

### Voice and Video Communication Security
  *  VoIP security considerations.
  *  Secure video conferencing.

### Remote Access Security
  *  Multi-factor authentication (MFA).
  *  Least privilege access.
  *  Secure remote access protocols.

# V. Identity and Access Management (IAM)

## Identification and Authentication

### Authentication Methods
  *  Knowledge-based authentication: Passwords, PINs.
  *  Possession-based authentication: Tokens, smart cards.
  *  Biometric authentication: Fingerprints, facial recognition.
  *  Location-based authentication.

### Multi-Factor Authentication (MFA)
  *  Types of MFA: 2FA, 3FA.
  *  Implementing MFA.

### Single Sign-On (SSO)
  *  SSO technologies: SAML, OAuth, OpenID Connect.
  *  Benefits and risks of SSO.

### Federated Identity Management
  *  Identity providers (IdPs) and service providers (SPs).
  *  Trust relationships.

## Authorization and Access Control

### Access Control Models
  *  Discretionary Access Control (DAC).
  *  Mandatory Access Control (MAC).
  *  Role-Based Access Control (RBAC).
  *  Attribute-Based Access Control (ABAC).

### Access Control Lists (ACLs)
  *  Configuring ACLs on file systems and networks.

### Privilege Management
  *  Least privilege principle.
  *  Privileged Access Management (PAM).

## Identity Lifecycle Management

### Provisioning and Deprovisioning
  *  Automated provisioning and deprovisioning processes.

### Identity Governance
  *  User access reviews.
  *  Compliance reporting.

### Directory Services
  *  Active Directory.
  *  LDAP.

# VI. Security Assessment and Testing

## Vulnerability Assessments

### Vulnerability Scanning
  *  Types of vulnerability scanners.
  *  Interpreting vulnerability scan results.
  *  Remediation strategies.

### Penetration Testing
  *  Types of penetration testing: Black box, gray box, white box.
  *  Penetration testing methodologies.
  *  Reporting findings.

## Security Audits

### Types of Audits
  *  Internal audits.
  *  External audits.
  *  Compliance audits.

### Audit Process
  *  Planning the audit.
  *  Gathering evidence.
  *  Reporting findings.

## Security Monitoring

### Log Management
  *  Collecting and analyzing security logs.
  *  SIEM (Security Information and Event Management) systems.

### Intrusion Detection Systems (IDS)
  *  Monitoring network traffic for malicious activity.

### Incident Response
  *  Incident response lifecycle: Preparation, Identification, Containment, Eradication, Recovery, Lessons Learned.
  *  Creating an incident response plan.

# VII. Security Operations

## Security Operations Center (SOC)

### SOC Functions
  *  Monitoring and analysis.
  *  Incident response.
  *  Threat intelligence.

### SOC Technologies
  *  SIEM.
  *  Threat intelligence platforms.
  *  Case management systems.

## Change Management

### Change Management Process
  *  Requesting changes.
  *  Assessing risk.
  *  Implementing changes.
  *  Verifying changes.

## Configuration Management

### Configuration Management Database (CMDB)
  *  Maintaining a CMDB.
  *  Using the CMDB for security purposes.

## Patch Management

### Patch Management Process
  *  Identifying vulnerabilities.
  *  Testing patches.
  *  Deploying patches.
  *  Verifying patches.

# VIII. Software Development Security

## Secure Development Lifecycle (SDLC)

### SDLC Phases
  *  Requirements.
  *  Design.
  *  Implementation.
  *  Testing.
  *  Deployment.
  *  Maintenance.

### Security Activities in Each Phase
  *  Threat modeling.
  *  Security code reviews.
  *  Security testing.

## Secure Coding Practices

### Common Vulnerabilities
  *  OWASP Top 10.
  *  Buffer overflows.
  *  SQL injection.
  *  Cross-site scripting (XSS).
  *  Cross-site request forgery (CSRF).
  *  Insecure deserialization.

### Secure Coding Techniques
  *  Input validation.
  *  Output encoding.
  *  Secure authentication.
  *  Secure authorization.

## Application Security Testing

### Static Application Security Testing (SAST)
  *  Analyzing source code for vulnerabilities.

### Dynamic Application Security Testing (DAST)
  *  Testing running applications for vulnerabilities.

### Software Composition Analysis (SCA)
  *  Identifying vulnerabilities in third-party libraries and components.
