# Checkmarx #ApplicationSecurity #AST #DevSecOps
Checkmarx is an enterprise application security company providing a platform and solutions designed to identify and remediate security vulnerabilities throughout the software development lifecycle (SDLC). It aims to integrate security testing seamlessly into development workflows.

## Checkmarx One Platform #UnifiedPlatform #CloudNative #ASPM
The central, unified cloud-based platform delivering Checkmarx's application security testing (AST) services. It integrates various scanning engines and provides consolidated results, correlation, prioritization, and management capabilities. Aims to provide a single pane of glass for AppSec.
### Platform Concept #Consolidation #Integration #CloudBased
Unifies multiple AST tools (SAST, SCA, IaC, API Security, etc.) into a single interface and workflow.
Delivered primarily as a secure cloud service, reducing infrastructure management overhead.
### Application Security Posture Management (ASPM) #ASPM #RiskManagement #Visibility
Correlates and prioritizes security signals from Checkmarx tools and third-party solutions (via API/SARIF/OSCF import).
Provides end-to-end visibility from code to cloud, incorporating runtime insights (e.g., via partnerships with Sysdig, Wiz, AWS).
Aims to reduce noise (up to 80-95%) by focusing on reachable and exploitable vulnerabilities.
Uses the Fusion engine for correlation and Application Risk Management for prioritization.
Offers a holistic view of application risk and helps manage overall security posture.
### Cloud Insights #CloudSecurity #RuntimeContext #Prioritization
Integrates data from Cloud Service Providers (CSPs) and Cloud-Native Application Protection Platforms (CNAPP).
Helps prioritize vulnerabilities based on runtime context, such as open-source libraries called at runtime or internet-facing exposure.
Tracks remediation through the SDLC via attack path analysis.

## Static Application Security Testing (SAST) #SAST #CodeAnalysis #WhiteBox
Analyzes application source code, bytecode, or binaries for security vulnerabilities without executing the code. Integrates early in the SDLC.
### CxSAST #CoreProduct #StaticAnalysis
Checkmarx's flagship SAST solution.
### Key Features #Capabilities #Scanning
Supports a wide range of programming languages and frameworks (>35 languages, >80 frameworks).
Incremental Scanning: Scans only changed code for faster feedback loops.
Best Fix Location: Identifies the optimal place in the code to fix multiple related vulnerabilities.
High Accuracy: Aims for low false-positive rates (claims up to 80% lower).
Customizable Queries/Rulesets: Allows tailoring scans to specific needs, including custom query creation. AI Query Builder allows using natural language.
IDE Integration: Plugins for IDEs like VS Code for scanning and viewing results directly.
OWASP Top 10 Coverage: Detects common web application vulnerabilities.
Scan Uncompiled Code: Ability to scan code without requiring a full build.
AI Security Champion / AI Guided Remediation: Uses GenAI for remediation guidance.

## Software Composition Analysis (SCA) #SCA #OpenSource #Dependencies #SBOM
Identifies vulnerabilities and license compliance issues in open-source and third-party components used within applications.
### CxSCA #CoreProduct #OSSsecurity
Checkmarx's SCA solution, available SaaS-based or integrated into Checkmarx One.
### Key Features #Capabilities #SupplyChain
Vulnerability Detection: Scans dependencies against extensive databases (including Checkmarx's own research beyond NVD) for known vulnerabilities (CVEs).
License Compliance: Identifies open-source licenses and potential compliance risks.
Malicious Package Protection: Detects suspicious or known malicious packages in the supply chain.
Prioritization: Helps focus on the most critical OSS vulnerabilities, potentially correlating with SAST findings to identify exploitable risks.
Remediation Guidance: Suggests secure, updated package versions.
Repository Health Scoring: Assesses the security posture of source code repositories used.
Secrets Detection: Identifies accidentally exposed secrets within dependencies or code.
SBOM Generation: Can generate Software Bill of Materials.

## Supply Chain Security #SupplyChain #Malware #Backdoor
Focuses on securing the software supply chain beyond just open-source components, detecting malicious code injections, backdoors, and other threats.
### Origins #Acquisition #Dustico
Enhanced capabilities through the acquisition of Dustico (2021).
### Features #Detection #Prevention
Detects potential backdoors and malicious code injection.
Analyzes dependencies for suspicious behavior or known malicious patterns.
Integrates with SCA capabilities.

## API Security #APISecurity #ShiftLeft #Discovery
Focuses on identifying vulnerabilities and risks specifically within Application Programming Interfaces (APIs).
### Checkmarx API Security #CoreProduct #APIdiscovery
Integrated into Checkmarx One.
Scans source code to discover APIs early in the SDLC ("true shift-left").
Identifies shadow APIs (undocumented) and zombie APIs (deprecated but active).
Provides a comprehensive API inventory.
Detects vulnerabilities specific to APIs (e.g., OWASP API Security Top 10).
Prioritizes API vulnerabilities based on risk and impact.

## Infrastructure as Code (IaC) Security #IaC #Misconfiguration #CloudSecurity
Scans Infrastructure as Code templates (Terraform, Kubernetes, CloudFormation, ARM, Ansible, etc.) for security vulnerabilities, compliance issues, and misconfigurations.
### KICS (Keeping Infrastructure as Code Secure) #OpenSource #Engine
The open-source engine powering Checkmarx IaC Security.
Supports numerous IaC platforms and frameworks.
Features over 2400 customizable queries.
### Checkmarx IaC Security #CoreProduct #IaCScanning
Integrates KICS into the Checkmarx One platform.
Provides real-time feedback and alerts within developer workflows (e.g., IDEs, CI/CD).
Helps prevent insecure cloud deployments.
AI Query Builder support for creating IaC security queries.

## Container Security #ContainerSecurity #ImageScanning #Docker
Scans container images and Dockerfiles for vulnerabilities, misconfigurations, malware, and compliance risks.
### Checkmarx Container Security #CoreProduct #ContainerScanning
Analyzes base images, software dependencies, application code layers, and Dockerfiles.
Identifies vulnerabilities in packages across all image layers (using tools like Syft).
Recommends safer base images.
Integrates with CI/CD pipelines.
Partnership with Sysdig for Runtime Insights: Correlates pre-production findings with runtime data to prioritize exploitable vulnerabilities in running containers.

## Dynamic Application Security Testing (DAST) #DAST #RuntimeAnalysis #BlackBox
Tests applications in their running state by simulating attacks from the outside, identifying runtime vulnerabilities.
### Checkmarx DAST #CoreProduct #DynamicAnalysis
Offered as part of the Checkmarx suite.
Can utilize Checkmarx proprietary engine or sponsor open-source tools like ZAP.
Identifies runtime vulnerabilities and configuration issues.
Complements SAST and SCA findings.

## Interactive Application Security Testing (IAST) #IAST #RuntimeAnalysis #GrayBox
Analyzes applications from within while they are running, often leveraging existing functional tests. Combines aspects of SAST and DAST.
### CxIAST #CoreProduct #InteractiveAnalysis
Deploys an agent within the running application/test environment.
Monitors application behavior, data flow, and interactions during functional testing.
Detects vulnerabilities in custom code, open-source components, and runtime configurations.
Provides real-time feedback with "zero scan time" overhead on testing processes.
Correlates findings with CxSAST for better context and remediation guidance.
Offers source code context for identified vulnerabilities.

## Developer Security Education #Training #SecureCoding #Education
Provides training resources to help developers write more secure code.
### Codebashing #Platform #Gamification #JustInTime
An interactive and gamified secure coding training platform.
Offers bite-sized lessons (e.g., 5 minutes) focused on specific vulnerabilities.
Integrates with Checkmarx SAST to provide "just-in-time" training links directly from vulnerability findings.
Covers OWASP Top 10 and other security concepts.
Allows managers to assign courses, track progress, and run tournaments.
Includes learning paths for specific roles (e.g., Security Champions).
Content updated based on Checkmarx research.

## Platform Features & Capabilities #Integration #Reporting #Workflow
Cross-cutting features supporting the core scanning technologies.
### Integrations #DevOps #CI/CD #SDLC
Seamless integration into CI/CD pipelines (GitLab CI, Jenkins, Azure DevOps, GitHub Actions etc.).
IDE plugins (VS Code, Visual Studio, Eclipse, IntelliJ etc.) for in-workflow scanning and results.
Source Control Management (SCM) integration (GitHub, GitLab, Bitbucket etc.) for automated scans on commits/PRs.
Issue tracker integration (Jira, ServiceNow etc.) for automated ticket creation.
API for custom integrations.
### Reporting & Analytics #Dashboards #Compliance #Metrics
Centralized dashboards providing visibility across all scan types.
Vulnerability classification by severity (Critical, High, Medium, Low).
Trend analysis and progress tracking.
Compliance reporting (PCI-DSS, OWASP Top 10, GDPR, etc.).
Detailed reports with remediation guidance.
### Remediation Support #Guidance #Fixes
Provides guidance on how to fix identified vulnerabilities.
"Best Fix Location" in SAST helps target remediation efficiently.
AI-powered remediation suggestions (AI Guided Remediation).
Links to Codebashing training modules.
### Policy Management #Governance #Customization
Ability to define and enforce custom security policies and coding standards.
Risk-based prioritization of vulnerabilities.
Triage capabilities (marking as Not Exploitable, False Positive, etc.) with audit trails.
### User Management & Access Control #RBAC #Permissions
Role-based access control (RBAC).
Support for Single Sign-On (SSO) via SAML.

## Deployment Models #Cloud #OnPremise #Hybrid
Options for deploying and consuming Checkmarx solutions.
### Checkmarx One (SaaS) #CloudNative #PrimaryModel
Fully cloud-based platform, managed by Checkmarx. Preferred model.
### On-Premises #SelfHosted #AirGapped
Option for installing and managing Checkmarx solutions (especially legacy CxSAST 9.x) within the customer's own infrastructure.
Supports air-gapped environments.
### Hybrid #MixedDeployment
Potential for mixed deployments depending on specific components and needs.
### Managed Service (MSSP) #ManagedSecurity #Partners
Option to consume Checkmarx via Managed Security Service Providers.

## Use Cases & Benefits #DevSecOps #RiskReduction #Compliance
How organizations leverage Checkmarx.
### Shift-Left Security #EarlyDetection #DeveloperEmpowerment
Integrating security testing early and often in the SDLC.
Providing direct feedback to developers in their tools.
### DevSecOps Automation #CI/CD #Automation
Automating security scanning within CI/CD pipelines.
Streamlining security testing without significantly slowing down development.
### Risk Reduction #VulnerabilityManagement #AttackSurface
Identifying and prioritizing critical vulnerabilities across the application portfolio.
Reducing the overall application attack surface.
Securing APIs, open-source, IaC, and containers.
### Compliance Enablement #Standards #Audit
Helping meet compliance requirements (PCI-DSS, HIPAA, GDPR, OWASP).
Providing reports for audits.
### Developer Productivity #Efficiency #Focus
Reducing false positives and noise.
Providing clear remediation guidance and context.
Integrating security into existing workflows.

## Company & Market Context #History #Competitors #Acquisitions
Information about Checkmarx as a company.
### History & Funding #Founding #Growth #Ownership
Founded in 2006 in Israel.
Headquartered in Atlanta, Georgia, US.
Acquired by Hellman & Friedman in 2020.
Over 900 employees (as of ~2023).
### Acquisitions #Strategy #Expansion
Custodela (Security Program Services, 2018).
Dustico (Supply Chain Security, 2021).
### Research #VulnerabilityDiscovery #ThoughtLeadership
Known for security research uncovering vulnerabilities in popular technologies (e.g., Android phones, IoT devices).
### Market Position & Competitors #ASTmarket #Comparison
A leader in the Application Security Testing (AST) market, particularly strong in SAST.
Key competitor areas include SAST, SCA, DAST, IAST, API Security, IaC Security, ASPM.
Competitors include Snyk, Veracode, SonarSource (SonarQube), GitHub (Advanced Security), Synopsys, Invicti (Acunetix), Rapid7, Wiz, Palo Alto Networks (Prisma Cloud), Fortify (OpenText), Mend.io (formerly WhiteSource), Cycode, SpectralOps, GitGuardian and others depending on the specific product category.

## Support & Professional Services #CustomerSupport #Consulting #Implementation
Services offered beyond the software platform.
### Technical Support #HelpDesk #Troubleshooting
Assistance with platform issues, configuration, and usage.
### Professional Services #Implementation #Consulting #Optimization
Assistance with deployment, integration, and optimization of Checkmarx solutions.
AppSec program development consulting (potentially via partners or historically via Custodela).
### Managed Services #Outsourcing #MSSP
Options for managed application security testing services.
