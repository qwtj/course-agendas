# OWASP #AppSec #WebSecurity #Community
The Open Worldwide Application Security Project (formerly Open Web Application Security Project) is a non-profit foundation and online community dedicated to improving software security. It provides freely accessible articles, methodologies, documentation, tools, and technologies related to web application, system software, and IoT security.

## About OWASP #Foundation #Mission #History
Overview of the organization, its goals, and guiding principles.
### Mission and Vision #Goals #Purpose
To make software security visible, enabling organizations and individuals to make informed decisions about true software security risks. To help organizations develop, acquire, and maintain reliable and secure applications and APIs. [20]
### Core Principles #Values #OpenSource
Key tenets guiding OWASP's work, including openness, global community, and innovation. All materials are freely available and open source. [2, 10]
### History #Origins #Evolution
Founded by Mark Curphey on September 9, 2001. The OWASP Foundation was established in 2004 in the US, followed by OWASP Europe VZW in Belgium in 2011. [6]
### The OWASP Foundation #NonProfit #Governance
The 501(c)(3) non-profit organization supporting OWASP infrastructure and projects. [6] It ensures vendor neutrality. [5]

## OWASP Top 10 #Risks #Awareness #Flagship
A standard awareness document identifying the ten most critical web application security risks. Updated periodically based on community input and data analysis. [11, 6, 10, 16]
### Purpose and Goals #Education #Prioritization
To raise awareness, provide a starting point for secure coding practices, and help organizations prioritize security efforts. [11]
### Current Top 10 List (2021) #Vulnerabilities #WebAppSec
The latest iteration of the most critical risks. [11, 10, 6, 21]
#### A01: Broken Access Control #AccessControl #Authorization
Failures in enforcing restrictions on what authenticated users are allowed to do. [10, 6]
#### A02: Cryptographic Failures #Encryption #DataSecurity
Failures related to cryptography (or lack thereof) often leading to sensitive data exposure. Previously "Sensitive Data Exposure". [10, 6]
#### A03: Injection #InjectionFlaws #SQLi #XSS
Flaws allowing untrusted data to be sent to an interpreter as part of a command or query (e.g., SQL injection, Cross-Site Scripting). [10, 6]
#### A04: Insecure Design #SecureDesign #ThreatModeling
Risks related to fundamental design flaws or missing security controls. [10, 6, 21]
#### A05: Security Misconfiguration #Configuration #Hardening
Improperly configured security settings, permissions, or controls. [10, 6]
#### A06: Vulnerable and Outdated Components #Dependencies #SCA
Using components (libraries, frameworks, OS, etc.) with known vulnerabilities or that are unsupported/outdated. [10, 15, 16]
#### A07: Identification and Authentication Failures #Authentication #SessionManagement
Incorrect implementation of functions related to user identity, authentication, and session management. [10, 6]
#### A08: Software and Data Integrity Failures #Integrity #Deserialization #CI/CD
Failures related to code and infrastructure integrity, including insecure CI/CD pipelines and insecure deserialization. [10, 6]
#### A09: Security Logging and Monitoring Failures #Logging #Monitoring #Detection
Insufficient logging, monitoring, or response capabilities to detect and react to attacks. [10, 6]
#### A10: Server-Side Request Forgery (SSRF) #SSRF #ServerSideAttacks
Flaws allowing an attacker to induce server-side applications to make requests to an unintended location. [10]
### Methodology #DataCollection #Analysis
Based on comprehensive data compiled from partner organizations, bug bounty programs, and community surveys. [6, 21, 23] Data factors include incidence rate, testing coverage, and exploit weighting. [21]
### Evolution (Previous Lists) #History #Trends
Comparison with previous versions (e.g., 2017, 2013) shows evolving threat landscape. [16, 11]
### Using the Top 10 #Implementation #Strategy
Guidance on how organizations can adopt the Top 10 to improve their security posture and development culture. [11, 21]

## OWASP Projects #Software #Tools #Documentation
OWASP hosts numerous open-source projects covering tools, documentation, and code libraries. [7, 5]
### Project Categories #Classification #Maturity
Projects are categorized based on maturity and strategic value. [7]
#### Flagship Projects #Mature #Strategic
Projects demonstrating strategic value (e.g., ASVS, ZAP, SAMM, Top 10, Cheat Sheets). [7]
#### Production Projects #Stable #ReadyToUse
Projects considered stable and ready for production use. [7]
#### Lab Projects #Experimental #Development
Projects under active development, potentially less stable. [7]
#### Incubator Projects #New #Emerging
New projects starting within the OWASP framework. [7]
### Key Projects (Examples) #Tools #Standards #Guides
Selected prominent OWASP projects beyond the Top 10.
#### OWASP ZAP (Zed Attack Proxy) #DAST #PenTesting #Tool
A popular, free, open-source dynamic application security testing (DAST) tool for finding vulnerabilities. [2, 8, 20]
#### OWASP Dependency-Check #SCA #Dependencies #Tool
Software Composition Analysis (SCA) tool to detect publicly disclosed vulnerabilities within project dependencies. [2, 5, 20]
#### OWASP Application Security Verification Standard (ASVS) #Standard #Verification #Testing
A framework for testing web application security controls and defining security requirements. [2, 5, 6, 7]
#### OWASP Software Assurance Maturity Model (SAMM) #MaturityModel #Strategy #Assessment
A framework to help organizations assess and improve their software security posture through defined maturity levels and practices. [1, 2, 3, 13, 18, 22]
##### SAMM Structure #BusinessFunctions #SecurityPractices
Organized into Business Functions (e.g., Governance, Design, Implementation, Verification, Operations), Security Practices, Streams, and Maturity Levels. [3, 13, 22]
#### OWASP Web Security Testing Guide (WSTG) #Testing #Methodology #Guide
A comprehensive guide for testing the security of web applications and services. [5, 6]
#### OWASP Cheat Sheet Series #Guidance #Developers #QuickReference
Concise guides on specific security topics for developers and defenders. [7]
#### OWASP Mobile Security Project #Mobile #MASVS #Testing
Focuses on mobile app security, including the Mobile Application Security Verification Standard (MASVS) and Mobile Security Testing Guide (MSTG).
#### OWASP Amass #Reconnaissance #AttackSurface #Tool
Network mapping and asset discovery tool. [7]
#### OWASP ModSecurity Core Rule Set (CRS) #WAF #Rules #Defense
A set of generic attack detection rules for use with ModSecurity or compatible web application firewalls. [11]
#### OWASP Security Knowledge Framework (SKF) #Development #Training #Guidance
A guide and tool for secure software development, linking requirements, testing, and code examples.
#### OWASP CycloneDX #SBOM #SupplyChain
A lightweight Software Bill of Materials (SBOM) standard.
#### OWASP Security Shepherd #Training #Platform #Education
A web and mobile application security training platform. [7]
#### OWASP Offensive Web Testing Framework (OWTF) #PenTesting #Framework #Tool
Framework aiming to make penetration testing more efficient. [7]
### Integration Standards Project #SDLC #Mapping
Efforts to map OWASP projects to the Software Development Lifecycle (SDLC). [7]

## OWASP Community & Chapters #Networking #Collaboration #LocalGroups
OWASP is driven by a global community of volunteers, security experts, developers, and organizations. [2]
### Global Community #Volunteers #Members
Tens of thousands of members worldwide contribute to projects, events, and knowledge sharing. [11]
### Local Chapters #Meetings #Training #Networking
Over 280 local chapters worldwide providing a platform for networking, training, and local talks. Meetings are free and open to all. [9, 12, 14, 17]
#### Chapter Activities #Events #Talks
Organize local meetings, training sessions, workshops, Capture The Flag (CTF) events, and presentations. [12, 14, 17]
#### Finding a Chapter #Geography #Participation
Chapters exist across continents (Africa, Asia, Europe, Americas, Oceania). Use Meetup or the OWASP website to find local chapters. [12, 14]
#### Starting a Chapter #Leadership #Initiative
Guidelines and support available for starting new local chapters. [11]
### Student Chapters #Academia #Education
Chapters specifically focused on engaging students in application security. [19]
### Committees #Governance #Support
Various committees support OWASP functions, such as the Chapter Committee, Project Committee, and Education & Training Committee. [19]

## OWASP Resources & Education #Learning #Guidance #Tools
OWASP provides a wide range of free resources to promote security awareness and practices. [4, 10]
### Documentation #Guides #Standards
Includes key publications like the Top 10, ASVS, WSTG, Cheat Sheets, and Development Guide. [4, 6]
### Tools #Scanners #Libraries
Offers open-source security tools (ZAP, Dependency-Check, Amass) and code libraries. [2, 4, 5, 8]
#### SAST/DAST/IAST Tool Lists #TestingTools #Comparison
Maintains lists of Static Application Security Testing (SAST), Dynamic Application Security Testing (DAST), and Interactive Application Security Testing (IAST) tools, indicating free options. [8]
### Training Materials #Courses #Workshops
Develops and provides educational content, including courses like SAMM Fundamentals and platforms like Security Shepherd. [1, 2, 7, 22]
### Forums and Communication #Discussion #Collaboration
Online forums, mailing lists, and Slack channels (e.g., #chapter-london) facilitate communication and knowledge sharing. [10, 14]
### Code Samples #Examples #SecureCoding
Provides code examples demonstrating secure coding practices (e.g., in the Development Guide). [4, 6]

## OWASP Events & Conferences #AppSecGlobal #Training #Networking
Organizes global and regional conferences focused on application security. [5]
### Global AppSec Conferences #MajorEvents #International
Flagship conferences held in different regions (e.g., Global AppSec EU, Global AppSec USA). [5, 11]
### Regional Events #LocalConferences #AppSecDays
Smaller, regional events like AppSec Days. [5]
### Chapter Events #LocalMeetups #Workshops
Local chapters regularly host meetings, talks, and workshops. [12, 14]
### Virtual Events #Online #Accessibility
Increasing use of virtual formats, like the OWASP Chapters All Day online conference. [9]

## Secure Development Practices #Coding #SDLC #Prevention
OWASP promotes integrating security throughout the software development lifecycle (SDLC). [4, 6]
### Secure Coding Guidelines #BestPractices #Prevention
Recommendations for writing secure code, addressing common vulnerabilities (e.g., input validation, output encoding, secure session management). [2, 4]
### Threat Modeling #RiskAnalysis #Design
Identifying potential threats and designing countermeasures early in the development process.
### Security Testing #Verification #Validation
Incorporating security testing (SAST, DAST, IAST, Pen Testing) into the development and QA process. [8]
### Dependency Management #SCA #SupplyChainSecurity
Practices for managing and securing third-party components and libraries. [2, 15, 16]
### Security in DevOps (DevSecOps) #Automation #CI/CD
Integrating security practices and tools into automated CI/CD pipelines (e.g., OWASP AppSec Pipeline project). [6, 8]
