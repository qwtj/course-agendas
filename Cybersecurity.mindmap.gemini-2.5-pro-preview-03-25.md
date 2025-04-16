# Cybersecurity #Overview #InformationSecurity
Cybersecurity involves the technologies, processes, and practices designed to protect networks, devices, programs, and data from attack, damage, or unauthorized access. It aims to ensure the confidentiality, integrity, and availability of information.

## Fundamentals of Cybersecurity #Basics #Concepts #Principles
Core ideas and principles underpinning the field of cybersecurity.
### The CIA Triad #CoreConcepts #SecurityGoals
Fundamental security objectives.
#### Confidentiality #Privacy #AccessControl
Ensuring information is not accessed by unauthorized individuals. Techniques include encryption and access controls.
#### Integrity #Accuracy #Trustworthiness
Maintaining the accuracy and completeness of data throughout its lifecycle, ensuring it hasn't been improperly modified.
#### Availability #Accessibility #Uptime
Ensuring systems, services, and data are operational and accessible to authorized users when needed. Protection against disruption like DDoS attacks.
### Key Terminology #Definitions #Glossary
Understanding common cybersecurity language.
#### Threat #RiskSource #Danger
A potential cause of an undesirable incident, which may result in harm to a system or organization.
#### Vulnerability #Weakness #Exploitable
A flaw or weakness in a system's design, implementation, or operation that could be exploited to violate security policy.
#### Risk #PotentialHarm #LikelihoodImpact
The potential for loss or damage when a threat exploits a vulnerability. Often assessed based on likelihood and impact.
#### Exploit #AttackVector #Compromise
A piece of software, data, or sequence of commands that takes advantage of a vulnerability to cause unintended behavior.
#### Attack Surface #Exposure #EntryPoints
The sum of the different points where an attacker can try to enter or extract data from an environment.
### Authentication vs. Authorization #Access #Identity
Distinguishing between verifying identity and granting permissions.
#### Authentication #IdentityVerification #Login
The process of verifying the identity of a user or system (e.g., passwords, MFA, biometrics).
#### Authorization #Permissions #AccessRights
The process of determining what an authenticated user or system is allowed to do.

## Threat Landscape & Attack Vectors #Threats #Attacks #Malware
Understanding the common types of cyber threats and how attacks are conducted.
### Malware #MaliciousSoftware #Viruses
Software designed to disrupt, damage, or gain unauthorized access.
#### Viruses #SelfReplicating #Infection
Malware that attaches to legitimate files and spreads when executed.
#### Worms #NetworkPropagation #SelfContained
Self-replicating malware that spreads across networks without user intervention.
#### Trojans #Deceptive #Backdoor
Malware disguised as legitimate software.
#### Ransomware #Encryption #Extortion
Malware that encrypts victim's data and demands payment for decryption.
#### Spyware #Surveillance #DataTheft
Malware that secretly observes user activity and steals information.
#### Adware #Advertising #UnwantedAds
Software that automatically displays or downloads advertising material.
#### Keyloggers #KeystrokeLogging #CredentialTheft
Malware that records keystrokes to steal passwords and other sensitive data.
### Social Engineering #HumanHacking #Deception
Manipulating people into divulging confidential information or performing actions.
#### Phishing #EmailScam #CredentialHarvesting
Fraudulent attempts, usually via email, to trick users into revealing sensitive information.
#### Spear Phishing #TargetedAttack #Personalized
Phishing attacks tailored to specific individuals or organizations.
#### Whaling #CEOFraud #ExecutiveTargeting
Spear phishing aimed at high-profile executives.
#### Vishing #VoicePhishing #PhoneScam
Phishing conducted over phone calls.
#### Smishing #SMSPhishing #TextScam
Phishing conducted via SMS text messages.
#### Baiting #Lure #InfectedMedia
Using enticing offers or infected physical media (like USB drives) to trick victims.
#### Pretexting #Impersonation #FabricatedScenario
Creating a believable scenario (pretext) to gain trust and information.
### Network-Based Attacks #NetworkThreats #InfrastructureAttacks
Attacks targeting network infrastructure and communication.
#### Denial-of-Service (DoS) #Overload #Disruption
Overwhelming a system or network resource to make it unavailable to legitimate users.
#### Distributed Denial-of-Service (DDoS) #Botnet #Amplification
DoS attacks launched from multiple compromised systems simultaneously.
#### Man-in-the-Middle (MitM) #Eavesdropping #Interception
Attackers secretly intercepting and possibly altering communications between two parties.
#### Packet Sniffing #TrafficAnalysis #DataInterception
Capturing and analyzing data packets traversing a network.
### Application-Level Attacks #WebAppSec #SoftwareExploits
Attacks targeting software applications, particularly web applications.
#### SQL Injection (SQLi) #DatabaseAttack #CodeInjection
Injecting malicious SQL code into input fields to manipulate backend databases.
#### Cross-Site Scripting (XSS) #BrowserAttack #ScriptInjection
Injecting malicious scripts into websites viewed by other users.
#### Cross-Site Request Forgery (CSRF) #SessionRiding #UnauthorizedActions
Tricking a victim's browser into making unwanted requests to a web application where they are authenticated.
#### Insecure Deserialization #ObjectInjection #RemoteCodeExecution
Exploiting flaws in how applications deserialize data.
### Advanced Persistent Threats (APTs) #Stealth #LongTerm #Espionage
Sophisticated, often state-sponsored, cyberattacks that establish a long-term presence on a network to steal data or disrupt operations.
### Insider Threats #InternalRisk #MaliciousEmployee
Security risks originating from within the organization (employees, contractors).

## Network Security #InfrastructureProtection #PerimeterDefense
Protecting the usability, reliability, integrity, and safety of network infrastructure.
### Firewalls #TrafficFiltering #AccessControl
Network security devices that monitor and control incoming and outgoing network traffic based on predetermined security rules.
#### Packet Filtering Firewalls #Stateless #RuleBased
#### Stateful Inspection Firewalls #ConnectionTracking #ContextAware
#### Proxy Firewalls #ApplicationLayer #Intermediary
#### Next-Generation Firewalls (NGFW) #DeepPacketInspection #IPS #AppAware
### Intrusion Detection and Prevention Systems (IDPS) #ThreatDetection #Mitigation
Systems designed to detect and potentially block malicious activity or policy violations.
#### Network-Based IDS/IPS (NIDS/NIPS) #NetworkMonitoring #SignatureBased #AnomalyBased
#### Host-Based IDS/IPS (HIDS/HIPS) #EndpointMonitoring #SystemIntegrity
### Virtual Private Networks (VPNs) #EncryptedTunnel #RemoteAccess #Confidentiality
Creating secure, encrypted connections over less secure networks (like the internet).
### Network Segmentation #Isolation #Containment
Dividing a network into smaller, isolated segments or zones to limit the impact of breaches.
#### VLANs (Virtual Local Area Networks) #LogicalSeparation #BroadcastDomains
#### Micro-segmentation #GranularControl #ZeroTrust
### Wireless Security #WiFiSecurity #EncryptionStandards
Securing wireless networks.
#### WEP, WPA, WPA2, WPA3 #EncryptionProtocols #Authentication
#### SSID Management #NetworkNaming #Hiding
#### MAC Filtering #DeviceAccessControl #LimitedEffectiveness
### Network Access Control (NAC) #PolicyEnforcement #DeviceCompliance
Controlling access to network resources based on identity and security posture assessment.

## Endpoint Security #DeviceProtection #ClientSecurity
Securing end-user devices like desktops, laptops, and mobile devices.
### Antivirus (AV) and Anti-Malware #MalwareDetection #SignatureBased
Software designed to detect, prevent, and remove malware.
### Endpoint Detection and Response (EDR) #AdvancedThreats #BehavioralAnalysis #Forensics
Advanced endpoint security solutions providing continuous monitoring, threat detection, and automated response.
### Host-Based Intrusion Prevention Systems (HIPS) #SystemMonitoring #PolicyEnforcement
Similar to NIPS but operates directly on the host system.
### Patch Management #VulnerabilityRemediation #SoftwareUpdates
The process of managing and applying updates (patches) to software and systems to fix vulnerabilities.
### Mobile Device Management (MDM) / Enterprise Mobility Management (EMM) #MobileSecurity #BYOD
Managing and securing mobile devices used for work purposes.
### Hardening #Configuration #ReducingAttackSurface
Securing a system by reducing its surface of vulnerability (e.g., disabling unnecessary services, configuring security settings).

## Application Security (AppSec) #SoftwareSecurity #CodeSecurity
Implementing security measures within applications during development and deployment.
### Web Application Security #WebAppSec #BrowserSecurity
Securing applications accessed via web browsers.
#### OWASP Top 10 #CommonVulnerabilities #RiskAwareness
Awareness document representing a broad consensus about the most critical web application security risks.
### Secure Coding Practices #Development #VulnerabilityPrevention
Writing code that is resistant to common security vulnerabilities.
### Security Testing #VulnerabilityAssessment #CodeReview
Methods for finding security flaws in applications.
#### Static Application Security Testing (SAST) #WhiteBox #SourceCodeAnalysis
Analyzing source code or binaries without executing the application.
#### Dynamic Application Security Testing (DAST) #BlackBox #RuntimeAnalysis
Testing the application during its execution by sending inputs and observing outputs.
#### Interactive Application Security Testing (IAST) #Hybrid #AgentBased
Combines SAST and DAST elements, often using agents within the running application.
#### Manual Code Review #HumanAnalysis #LogicFlaws
### API Security #InterfaceProtection #Authentication #Authorization
Securing Application Programming Interfaces (APIs) used for communication between software components.

## Data Security #InformationProtection #Privacy
Protecting digital data from unauthorized access, corruption, or theft throughout its entire lifecycle.
### Encryption #Confidentiality #DataProtection
Converting data into code to prevent unauthorized access.
#### Encryption at Rest #StorageSecurity #DatabaseEncryption
Encrypting data that is stored on physical media.
#### Encryption in Transit #CommunicationSecurity #TLS #SSL #VPN
Encrypting data as it moves across networks.
#### Symmetric Encryption #SharedKey #AES #DES
Using the same key for encryption and decryption.
#### Asymmetric Encryption #PublicKeyCryptography #RSA #ECC
Using separate keys for encryption (public key) and decryption (private key).
### Data Loss Prevention (DLP) #DataLeakage #Monitoring #Control
Strategies and tools to prevent sensitive data from leaving organizational control.
### Data Masking / Obfuscation #Anonymization #TestData
Replacing sensitive data with non-sensitive equivalents while preserving usability.
### Database Security #DBProtection #AccessControl #Auditing
Securing database systems and the data within them.
### Data Classification #SensitivityLevels #Labeling
Categorizing data based on its sensitivity and importance to apply appropriate controls.
### Data Backup and Recovery #Resilience #BusinessContinuity
Creating copies of data to restore in case of loss or corruption.

## Cloud Security #CloudComputing #SharedResponsibility
Protecting data, applications, and infrastructure hosted in cloud environments.
### Shared Responsibility Model #ProviderVsCustomer #SecurityDuties
Understanding the division of security responsibilities between the cloud provider and the customer.
### Cloud Configuration Management #Misconfiguration #CSPM
Ensuring cloud resources are configured securely and according to policy. Cloud Security Posture Management (CSPM) tools help automate this.
### Identity and Access Management (IAM) in Cloud #CloudIAM #RoleBasedAccess
Managing user identities and access permissions within cloud environments.
### Cloud Access Security Brokers (CASB) #Visibility #Compliance #ThreatProtection
Security policy enforcement points placed between cloud service consumers and providers.
### Serverless Security #FunctionSecurity #EventDriven
Securing applications built using serverless architectures (e.g., AWS Lambda, Azure Functions).
### Container Security #DockerSecurity #KubernetesSecurity
Securing containerized applications and orchestration platforms.

## Identity and Access Management (IAM) #Authentication #Authorization #UserManagement
Managing digital identities and controlling user access to resources.
### Authentication Methods #Verification #Credentials
Ways to verify user identity.
#### Passwords #KnowledgeFactor #ComplexityRules
#### Multi-Factor Authentication (MFA) #LayeredSecurity #VerificationFactors
Using two or more verification factors (knowledge, possession, inherence).
#### Biometrics #InherenceFactor #Fingerprint #FacialRecognition
Using unique biological characteristics for authentication.
#### Single Sign-On (SSO) #CentralizedLogin #UserConvenience
Allowing users to log in once to access multiple related systems.
#### Federation #TrustRelationships #CrossDomainSSO
Establishing trust between different identity management systems.
### Authorization Controls #Permissions #AccessLevels
Mechanisms for granting or denying access rights.
#### Role-Based Access Control (RBAC) #JobFunction #PermissionsGrouping
Assigning permissions based on user roles.
#### Attribute-Based Access Control (ABAC) #Policies #ContextAware
Granting access based on attributes of the user, resource, and environment.
#### Principle of Least Privilege #MinimalAccess #NeedToKnow
Granting users only the minimum permissions necessary to perform their job functions.
### Privileged Access Management (PAM) #AdminAccounts #HighRiskAccess
Managing and monitoring accounts with elevated permissions.
### Identity Governance and Administration (IGA) #LifecycleManagement #Compliance
Managing identity lifecycle (creation, modification, deletion) and ensuring compliance.

## Cryptography #Encryption #Hashing #DigitalSignatures
The science of secure communication techniques that allow only the sender and intended recipient of a message to view its contents.
### Symmetric Key Cryptography #SharedSecret #FastEncryption
Algorithms using a single key for both encryption and decryption (e.g., AES, DES).
### Asymmetric Key Cryptography #PublicKeyInfrastructure #SlowEncryption
Algorithms using a pair of keys (public and private) for encryption/decryption and digital signatures (e.g., RSA, ECC).
### Hashing Algorithms #DataIntegrity #OneWayFunction #Checksum
Functions that produce a fixed-size output (hash value) from an input, used for integrity verification (e.g., SHA-256, MD5 - deprecated).
### Public Key Infrastructure (PKI) #Certificates #TrustManagement
A system for creating, managing, distributing, using, storing, and revoking digital certificates.
### Digital Signatures #Authenticity #NonRepudiation #Integrity
Using asymmetric cryptography to verify the authenticity and integrity of a message or document.
### Steganography #DataHiding #CovertCommunication
Hiding data within other non-secret files or messages.

## Security Operations (SecOps) #Monitoring #Detection #Response
The team and processes responsible for monitoring, detecting, analyzing, and responding to cybersecurity incidents.
### Security Information and Event Management (SIEM) #LogAggregation #Correlation #Alerting
Technology providing real-time analysis of security alerts generated by network hardware and applications.
### Security Orchestration, Automation, and Response (SOAR) #WorkflowAutomation #IncidentResponseEfficiency
Technology enabling organizations to collect security data and automate incident response actions.
### Threat Hunting #ProactiveDetection #HypothesisDriven
Proactively searching through networks and datasets to detect threats that evade existing security controls.
### Vulnerability Management #Scanning #Assessment #Remediation
The process of identifying, evaluating, treating, and reporting on security vulnerabilities in systems and software.
### Security Monitoring #LogAnalysis #NetworkTrafficAnalysis #AlertTriage
Continuous observation of systems and networks for signs of security incidents.
### Threat Intelligence #Context #IndicatorsOfCompromise #ActorAnalysis
Evidence-based knowledge about existing or emerging threats, used to inform security decisions.

## Incident Response (IR) & Forensics #BreachHandling #Investigation #Recovery
The process of responding to and managing the aftermath of a security breach or cyberattack.
### Incident Response Plan (IRP) #Preparation #Playbooks
A documented plan outlining procedures for handling security incidents.
### IR Lifecycle #PICERL #NISTFramework
Phases of incident response (Preparation, Identification, Containment, Eradication, Recovery, Lessons Learned).
#### Preparation #Planning #Training #Tools
#### Identification #Detection #Analysis #Verification
#### Containment #Isolation #PreventingSpread
#### Eradication #RemovingThreat #RootCauseAnalysis
#### Recovery #Restoration #Validation
#### Lessons Learned #PostMortem #Improvement
### Digital Forensics #EvidenceCollection #Analysis #Reporting
The process of collecting, preserving, analyzing, and presenting digital evidence related to cyber incidents.
#### Disk Forensics #FileSystemAnalysis #DeletedDataRecovery
#### Network Forensics #TrafficCapture #LogAnalysis
#### Memory Forensics #RAMAnalysis #RunningProcesses
#### Mobile Forensics #DeviceDataExtraction #AppAnalysis

## Risk Management & Governance #Strategy #Policy #Compliance #BusinessContinuity
Identifying, assessing, and controlling threats to an organization's capital and earnings, integrated with overall governance.
### Risk Assessment #Identification #Analysis #Evaluation
Process of identifying potential risks, analyzing their likelihood and impact, and evaluating their significance.
### Security Frameworks #BestPractices #Standards
Guidelines and best practices for managing cybersecurity risk.
#### NIST Cybersecurity Framework #IdentifyProtectDetectRespondRecover #USStandard
#### ISO 27001/27002 #ISMS #InternationalStandard
#### CIS Controls #PrioritizedActions #ImplementationGroups
### Security Policies & Procedures #Rules #Guidelines #Directives
Documented rules and processes governing security practices within an organization.
### Business Continuity Planning (BCP) #OperationalResilience #Contingency
Planning how an organization will continue operating during and after a disruption.
### Disaster Recovery (DR) #ITRecovery #Restoration
Focuses specifically on restoring IT infrastructure and operations after a disaster.

## Compliance & Legal Aspects #Regulations #Laws #Auditing
Adhering to laws, regulations, standards, and contractual obligations related to information security and privacy.
### Key Regulations #DataProtection #IndustryStandards
#### GDPR (General Data Protection Regulation) #EUPrivacy #DataSubjectRights
#### HIPAA (Health Insurance Portability and Accountability Act) #USHealthcare #PHIProtection
#### PCI DSS (Payment Card Industry Data Security Standard) #CardholderData #PaymentSecurity
#### SOX (Sarbanes-Oxley Act) #FinancialReporting #InternalControls
### Cyber Law #Legislation #Jurisdiction #Cybercrime
Legal issues related to the use of communications technology, particularly cyberspace.
### Auditing #ComplianceVerification #Assessment
Systematic examination of security controls and practices to ensure effectiveness and compliance.
### Data Privacy #PersonalInformation #Consent #Confidentiality
Principles and regulations concerning the collection, use, storage, and sharing of personal data.

## Secure Software Development Life Cycle (SSDLC) #DevSecOps #SecurityByDesign
Integrating security practices into every phase of the software development lifecycle.
### Security Requirements #ThreatModeling #DesignReview
Defining security needs early in the development process.
### Secure Coding Standards #BestPractices #LanguageSpecific
Guidelines for writing secure code.
### Security Testing Integration #SAST #DAST #IAST #PenTesting
Embedding security testing throughout development and QA.
### Third-Party Component Security #SBOM #VulnerabilityScanning
Managing security risks associated with using external libraries and components (Software Bill of Materials - SBOM).
### DevSecOps Culture #Collaboration #Automation #ShiftLeft
Integrating security seamlessly into DevOps practices.

## Ethical Hacking & Penetration Testing #OffensiveSecurity #VulnerabilityAssessment
Simulating attacks to identify vulnerabilities before malicious actors can exploit them.
### Penetration Testing Methodologies #PTES #OSSTMM #NIST
Standardized approaches for conducting penetration tests.
### Reconnaissance #InformationGathering #Footprinting
Gathering information about the target system or network.
### Scanning #PortScanning #VulnerabilityScanning
Identifying live hosts, open ports, services, and potential vulnerabilities.
### Gaining Access #Exploitation #PrivilegeEscalation
Exploiting vulnerabilities to compromise systems.
### Maintaining Access #Persistence #Backdoors
Establishing mechanisms to retain access to compromised systems.
### Covering Tracks #LogRemoval #AntiForensics
Removing evidence of the intrusion.
### Reporting #Findings #Recommendations #Remediation
Documenting the test results, vulnerabilities found, and suggested fixes.
### Types of Testing #BlackBox #WhiteBox #GrayBox
Testing based on the level of knowledge provided to the tester.

## Operational Technology (OT) & IoT Security #IndustrialControlSystems #ConnectedDevices
Securing industrial systems and the growing number of Internet-connected devices.
### ICS/SCADA Security #CriticalInfrastructure #IndustrialNetworks
Protecting Industrial Control Systems (ICS) and Supervisory Control and Data Acquisition (SCADA) systems.
### IoT Device Security #SmartDevices #FirmwareSecurity #DefaultPasswords
Addressing vulnerabilities in Internet of Things devices.
### Network Segregation (OT/IT) #AirGapping #DemilitarizedZone
Isolating OT networks from IT networks to prevent crossover threats.

## Mobile Security #Smartphones #Tablets #AppSecurity
Securing mobile devices and the data they handle.
### Mobile Device Management (MDM) #PolicyEnforcement #RemoteWipe
See Endpoint Security.
### Mobile Application Security #AppVetting #SecureCoding
Securing applications running on mobile platforms.
### Platform Security (iOS/Android) #OSHardening #Sandboxing
Security features built into mobile operating systems.
### BYOD (Bring Your Own Device) Policies #UserOwnedDevices #RiskManagement
Managing the security risks of employees using personal devices for work.

## Physical Security (Cyber Context) #AccessControl #Environment #SocialEngineeringDefense
Protecting physical assets and infrastructure that support IT systems, and defending against physical social engineering tactics.
### Data Center Security #AccessControl #Surveillance #EnvironmentalControls
Securing facilities housing critical IT infrastructure.
### Secure Disposal #DataDestruction #Degaussing #Shredding
Properly destroying media containing sensitive data.
### Social Engineering Defense (Physical) #TailgatingPrevention #IDChecks
Preventing unauthorized physical access through manipulation.

## Emerging Technologies & Threats #FutureTrends #AdvancedTopics #AI #Quantum
New technologies impacting cybersecurity and evolving threat vectors.
### Artificial Intelligence (AI) & Machine Learning (ML) in Security #ThreatDetection #Automation #AdversarialAI
Using AI/ML for enhanced security analytics and automation, and understanding AI-driven attacks.
### Quantum Computing Impact #CryptographyRisk #PostQuantumCrypto
Potential threat of quantum computers breaking current encryption standards and the development of quantum-resistant cryptography.
### Zero Trust Architecture #NeverTrustAlwaysVerify #Microsegmentation
Security model based on strict identity verification and access control, regardless of location.
### Supply Chain Security #ThirdPartyRisk #SoftwareIntegrity
Securing the entire lifecycle of hardware and software components from development to deployment.
### Blockchain Security #DistributedLedger #SmartContracts
Security considerations for blockchain technology and cryptocurrencies.
### Deepfakes #SyntheticMedia #Disinformation
AI-generated fake videos or audio used for malicious purposes.

## Cybersecurity Awareness & Training #HumanFactor #SecurityCulture #UserEducation
Educating users about cybersecurity risks and best practices.
### Phishing Simulations #TrainingEffectiveness #UserTesting
Testing users' ability to detect phishing attempts.
### Security Best Practices Training #Passwords #EmailSafety #SafeBrowsing
Educating users on fundamental security habits.
### Role-Based Training #SpecificRisks #TargetedEducation
Providing training tailored to specific job roles and access levels.
### Building a Security Culture #SharedResponsibility #AwarenessCampaigns
Fostering an environment where security is a priority for everyone.
### Incident Reporting Procedures #UserGuidance #ReportingChannels
Teaching users how and when to report suspected security incidents.

## Cybersecurity Careers & Professional Development #Jobs #Certifications #Learning
Exploring roles, required skills, certifications, and continuous learning in the cybersecurity field.
### Cybersecurity Roles #Analyst #Engineer #Architect #Pentester #Manager
Common job titles and responsibilities in the industry.
### Key Certifications #CISSP #Security+ #CEH #OSCP #CISM
Industry-recognized certifications for validating skills and knowledge.
### Skill Development #TechnicalSkills #SoftSkills #ContinuousLearning
Areas for ongoing professional growth.
### Ethical Considerations #CodeOfConduct #ResponsibleDisclosure
Understanding the ethical obligations of cybersecurity professionals.
