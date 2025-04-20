# Kubernetes SIGs #Kubernetes #Community #Governance
Special Interest Groups (SIGs) are the primary organizing units within the Kubernetes open-source project. They are persistent groups focused on specific areas or components of Kubernetes.

## What are Kubernetes SIGs? #Definition #Purpose #Community
SIGs are groups of contributors from various companies and organizations responsible for managing and advancing specific parts of the Kubernetes project. Think of them as specialized departments within the larger project, each focused on a particular domain like networking, storage, or documentation. Their goal is to distribute decision-making and code ownership, provide focused forums for work, and help onboard new contributors.

### Core Concept #Focus #Ownership
SIGs own and develop specific subprojects within Kubernetes, ensuring focused effort and expertise. Each part of the Kubernetes project (code, docs, APIs, tests, etc.) is intended to be owned by a SIG.

### Importance #Collaboration #Innovation
SIGs enable streamlined development, faster innovation, and organized collaboration across the vast Kubernetes project. They provide the structure needed to manage the project's complexity without a single central authority overseeing everything end-to-end.

## Purpose and Goals of SIGs #Mission #Scope #Collaboration
The primary purpose of a SIG is to own, maintain, and advance a specific part of the Kubernetes project.

### Key Tasks #Responsibilities #Activities
SIGs undertake various tasks, including:
*   **Code Development:** Working on new features, bug fixes, and code enhancements.
*   **Testing and Validation:** Overseeing testing and ensuring Kubernetes releases meet quality standards.
*   **Documentation:** Developing and maintaining user guides, reference materials, and API documentation.
*   **Community Outreach & Education:** Organizing events like meetups and webinars to educate users and promote engagement.
*   **Release Management:** Coordinating feature development, bug fixes, and documentation updates for releases.
*   **Architecture & Design:** Providing guidance on the architecture and design of Kubernetes to ensure scalability, reliability, and maintainability.

## SIG Structure and Organization #Hierarchy #Roles #Membership
SIGs form the core organizational structure of the Kubernetes project.

### Leadership #Chairs #TechLeads
Each SIG is led by one or two chairs (or co-chairs) who act as organizers and facilitators. They guide the SIG's work, facilitate discussions, make decisions, and ensure contributions align with project goals. SIGs may also have Tech Leads responsible for technical direction.

### Membership #Contributors #Participation
SIG membership is open to anyone interested in participating, provided they adhere to the Kubernetes Code of Conduct. Members come from diverse companies and organizations.

### Subprojects #FocusAreas #IndependentWork
SIGs can divide their work into smaller, independently operating groups called subprojects. Each subproject owns specific parts of the code or documentation within the SIG's scope. Examples include specific controllers, APIs, or tools managed by a SIG.

## SIG Governance and Processes #Charter #DecisionMaking #Lifecycle
SIGs operate with open and transparent processes.

### SIG Charters #Scope #Responsibilities #Rules
Each SIG must have a charter defining its scope, responsibilities, authority, leadership selection process, decision-making methods, and conflict resolution procedures.

### Decision Making #Consensus #KEPs
Decisions are typically made transparently within the SIG. A key process is the Kubernetes Enhancement Proposal (KEP), used to propose, discuss, refine, and gain consensus on changes to the project.

### SIG Lifecycle #Formation #Election #Oversight
Proposals for new SIGs or adding members are reviewed by the Kubernetes Steering Committee to ensure alignment with project goals. Once approved, the SIG elects its own leaders (chairs) through a nomination and voting process involving SIG members. The specifics can vary per SIG.

## How SIGs Function #Meetings #Communication #Contribution
SIGs collaborate openly and inclusively.

### Meetings #Transparency #Collaboration
SIGs hold regular meetings, typically online via video conferencing, which are open to the public. Meeting details are on the community calendar, and recordings are often available. During meetings, members discuss ongoing work, review proposals (like KEPs), and make decisions.

### Communication Channels #Slack #MailingLists #GitHub
Common communication channels include dedicated mailing lists, Slack channels, and GitHub issues/pull requests. These foster collaboration and discussion.

### Contribution Workflow #KEPs #CodeReview #Issues
Contributions often involve proposing changes via KEPs, submitting code via Pull Requests on GitHub, reviewing proposals and code from others, and participating in discussions on issues and mailing lists. SIGs often label issues as "help wanted" to guide new contributors.

## Types of Kubernetes Community Groups #SIGs #WGs #UGs #Committees
Kubernetes governance includes several types of groups:
### Special Interest Groups (SIGs) #Core #Persistent
Persistent groups focusing on specific parts of the project (e.g., SIG Network, SIG Storage, SIG Docs). They own code, docs, or policy long-term. SIGs can be categorized as:
    *   **Vertical SIGs:** Own a specific component (e.g., SIG Node owns the Kubelet).
    *   **Horizontal SIGs:** Concerned with a function across multiple components (e.g., SIG Security, SIG Architecture).
### Working Groups (WGs) #Temporary #CrossSIG
Temporary groups formed to address issues spanning multiple SIGs. They don't own code long-term and dissolve once their specific task is complete. WG examples include WG Batch or WG Multitenancy.
### User Groups (UGs) #Users #Feedback
Groups focused on users of specific Kubernetes areas, providing feedback and sharing experiences.
### Committees #SensitiveTopics #Oversight
Groups chartered for sensitive topics or high-level oversight, allowed private communication when necessary. Examples include the Steering Committee, Code of Conduct Committee, and Security Committee.

## Overview of Active SIGs (Grouped by Area) #Directory #FocusAreas
Kubernetes has numerous active SIGs covering various aspects of the project. A full, up-to-date list can usually be found in the `kubernetes/community` repository on GitHub. Key examples include:
### Core Infrastructure SIGs #Node #Network #Storage
*   **SIG Node:** Focuses on the components running on a node, primarily the Kubelet and container runtimes (CRI).
*   **SIG Network:** Responsible for Kubernetes networking components and APIs (e.g., Services, Ingress, Network Policy).
*   **SIG Storage:** Manages storage aspects, including volume plugins, Persistent Volumes, and the Container Storage Interface (CSI).
### Cluster Lifecycle SIGs #ClusterLifecycle #Kubeadm
*   **SIG Cluster Lifecycle:** Deals with creating, configuring, upgrading, and managing Kubernetes clusters. Owns tools like kubeadm.
### Application SIGs #Apps #API
*   **SIG API Machinery:** Focuses on the Kubernetes API server, client libraries, and API patterns.
*   **SIG Apps:** Concerned with running applications on Kubernetes, including workloads APIs (Deployments, StatefulSets, CronJobs) and application packaging (Helm).
*   **SIG CLI:** Develops and maintains `kubectl` and related command-line tools.
*   **SIG UI:** Focuses on the Kubernetes Dashboard and UI-related concerns.
### Cross-Cutting SIGs #Architecture #Auth #Security #Scalability #Testing
*   **SIG Architecture:** Maintains and evolves Kubernetes design principles and ensures architectural consistency. Oversees the KEP process and API conventions.
*   **SIG Auth:** Deals with authentication, authorization, and security policy in Kubernetes.
*   **SIG Instrumentation:** Focuses on logging, metrics, and tracing within Kubernetes.
*   **SIG Scalability:** Works on defining and measuring Kubernetes scalability and performance.
*   **SIG Security:** Addresses security concerns across the project, handles vulnerability reporting and fixes.
*   **SIG Testing:** Manages the testing infrastructure and framework for Kubernetes, including E2E tests.
### Community & Project SIGs #ContributorExperience #Docs #Release
*   **SIG Contributor Experience (ContribEx):** Works on improving the health and experience of the contributor community, including onboarding, mentoring, and tooling.
*   **SIG Docs:** Responsible for creating, maintaining, and improving the Kubernetes documentation.
*   **SIG Release:** Manages the Kubernetes release process, including timelines, release tooling, and coordinating release tasks.
*   **SIG K8s Infra:** Manages the infrastructure used by the Kubernetes project itself.
### Platform SIGs #Windows #Multicluster #Scheduling
*   **SIG Scheduling:** Develops and maintains the Kubernetes scheduler (kube-scheduler) and related scheduling components.
*   **SIG Cloud Provider:** Works on integrating Kubernetes with various cloud providers (though much work now happens in external provider repositories).
*   **SIG Multicluster:** Focuses on managing applications and clusters across multiple Kubernetes clusters.
*   **SIG Windows:** Enables and improves running Windows workloads on Kubernetes.

## How to Get Involved with SIGs #Contribution #Participation #Onboarding
Joining the Kubernetes community and contributing via SIGs is encouraged.
### Finding a SIG #Interests #Skills
Identify SIGs that align with your interests or skills. The SIG list in the community repo is a good starting point. SIG ContribEx is often recommended for newcomers.
### Joining Communication Channels #Slack #MailingList
Join the main Kubernetes Slack and relevant SIG mailing lists and Slack channels. Links are usually in the SIG's README in the community repo.
### Attending Meetings #Listening #Learning
Attend SIG meetings, initially perhaps just to listen and understand the ongoing work and processes.
### Starting Contributions #HelpWanted #SmallTasks #NonCode
Look for "good first issues" or "help wanted" tags in GitHub issues. Start with smaller tasks, documentation improvements, or even non-code contributions like organizing meetings, improving workflows, or marketing. Reviewing documentation or pull requests is another way to start.
### Contributing Code #KEPs #PullRequests
Once more familiar, contribute code by working on features or bug fixes, often involving the KEP process and submitting pull requests.

## Relationship with Steering Committee #Oversight #Guidance #Strategy
The Kubernetes Steering Committee is the governing body responsible for the overall direction and health of the project. It evaluates proposals for new SIGs, ensures SIGs align with project goals, resolves conflicts, and provides high-level guidance. SIGs report to the Steering Committee, often through annual reports.

## SIG Resources and Communication #MailingLists #Slack #Documentation
Each SIG maintains its own communication channels and resources.
### SIG-Specific Channels #Collaboration #Information
These typically include dedicated mailing lists and Slack channels for focused discussions.
### Community Repository #READMEs #Charters #Meetings
The `kubernetes/community` GitHub repository contains directories for each SIG, usually including:
*   A README with meeting times, communication links, and leadership information.
*   The SIG's charter.
*   Meeting notes.
### Kubernetes Enhancement Proposals (KEPs) #DesignDocs #Process
The KEP process is central to proposing and tracking significant changes. KEPs themselves serve as important design documents.
