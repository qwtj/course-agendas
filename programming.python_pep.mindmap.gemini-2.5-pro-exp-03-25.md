# Python PEP #Overview #Governance #PythonDevelopment
Python Enhancement Proposals (PEPs) are design documents for the Python community, typically proposing a new feature, collecting community input on an issue, or documenting design decisions.

## What is a PEP? #Definition #Purpose #Documentation
Defines the core concept and goals of the PEP system.
### Purpose of PEPs #Goals #Specification #Communication
   - Proposing new features for Python.
   - Documenting Python design decisions and guidelines.
   - Collecting community input on specific issues.
   - Standardizing processes and conventions within the Python ecosystem.
### Audience #Community #Developers #Stakeholders
   - Python Core Developers
   - Python Steering Council
   - Library and Framework Developers
   - General Python Community Members
### Relationship to RFCs #Inspiration #StandardsProcess
PEPs were inspired by the Internet RFC (Request for Comments) process.

## The PEP Process #Workflow #Lifecycle #Proposal
The end-to-end process for how a PEP is proposed, discussed, decided upon, and implemented or rejected.
### Idea Generation #Innovation #Discussion #CommunityInput
   - Initial discussion on mailing lists (python-ideas, python-dev), forums, or other channels.
   - Gauging initial community interest and feasibility.
### PEP Authorship #Responsibility #Champion #Writing
   - Role of the PEP Author(s) or Champion.
   - Finding a Core Developer sponsor (often required).
   - Drafting the PEP document according to guidelines (PEP 1, PEP 12).
### Submission & Initial Review #Draft #PEPEditors #Formatting
   - Submitting the draft PEP to the PEP Editors.
   - Assignment of a PEP number.
   - Review for completeness, formatting, and clarity.
### Community Discussion & Refinement #Feedback #Iteration #Debate
   - Broader discussion on relevant mailing lists/forums.
   - Incorporating feedback and revising the PEP draft.
   - Addressing concerns and alternative proposals.
### Decision Making #Acceptance #Rejection #SteeringCouncil
   - Role of the BDFL (Historically - Guido van Rossum).
   - Role of the Python Steering Council (Current governing body - see PEP 13, PEP 8000 series).
   - Criteria for acceptance (consensus, technical merit, alignment with Python's philosophy).
   - Pronouncement by the Steering Council or their delegate.
### Implementation #Coding #Development #Integration
   - If accepted (especially for Standards Track PEPs), the feature or change is implemented in CPython or relevant libraries.
   - May involve creating a reference implementation.
### PEP Lifecycle Statuses #Tracking #Progress #State
   - Detailed breakdown of the different states a PEP can be in.
   #### Draft #Initial #InProgress
   #### Deferred #Postponed #FutureConsideration
   #### Accepted #Approved #Scheduled
   #### Active #Ongoing #LivingStandard (e.g., PEP 8, PEP 20)
   #### Final #Completed #Implemented
   #### Rejected #Declined #NotApproved
   #### Withdrawn #AuthorDecision #Obsolete
   #### Superseded #Replaced #NewVersion

## PEP Types #Classification #Category #Scope
Different kinds of PEPs serving distinct purposes.
### Standards Track #Features #CoreChanges #Implementation
   - Proposes new features or changes to Python's implementation or language syntax/semantics.
   - Requires a reference implementation.
   - Subtypes sometimes mentioned: Core, Networking, Interface.
### Informational #Guidelines #Conventions #NotCode
   - Provides information, guidelines, or conventions to the Python community.
   - Does not propose new features or code changes (e.g., PEP 20 - The Zen of Python).
   - Documents design issues or community agreements.
### Process #Procedures #WorkflowChanges #Governance
   - Describes or proposes changes to Python processes, workflows, or governance.
   - Examples include the PEP process itself (PEP 1), or governance changes (PEP 13).

## PEP Structure and Format #Template #Sections #Metadata
The standard layout and components of a PEP document.
### Preamble / Header #Metadata #Identification #StatusTracking
   - PEP Number
   - Title
   - Author(s)
   - Sponsor
   - Status (Draft, Accepted, Final, etc.)
   - Type (Standards Track, Informational, Process)
   - Created Date
   - Python Version (if applicable)
   - Post-History (discussion links)
   - Replaces/Superseded-By (if applicable)
### Abstract #Summary #TLDR #Overview
   - A short, concise summary of the proposal.
### Motivation / Problem Statement #Why #Justification #Need
   - Explains the problem being solved or the need for the proposed change/feature.
### Rationale / Design Choices #Reasoning #Alternatives #DecisionLog
   - Explains the reasoning behind specific design choices.
   - Discusses alternative approaches considered and why they were rejected.
### Specification #TechnicalDetails #HowItWorks #ImplementationGuide
   - The detailed technical description of the feature or change.
### Backwards Compatibility #Impact #Migration #LegacySupport
   - Analysis of how the proposal affects existing code and backwards compatibility.
   - Potential migration strategies.
### Security Implications #Security #Vulnerabilities #RiskAssessment
   - Discussion of any potential security impacts or considerations.
### How to Teach This #Pedagogy #Documentation #UserImpact
   - Considerations for explaining the new feature or change to users.
### Reference Implementation #ProofOfConcept #Code #Prototype
   - A working implementation of the proposed feature (often required for Standards Track PEPs).
### Rejected Ideas #AlternativesConsidered #History #DesignLog
   - Explicitly lists ideas or approaches that were considered but ultimately rejected during the design process.
### Open Issues #Unresolved #FutureWork #DiscussionPoints
   - Any points still under discussion or requiring future decisions.
### Copyright / Public Domain Dedication #License #Legal #Permissions
   - Licensing terms for the PEP document itself.

## Key Roles & Responsibilities #People #Governance #DecisionMakers
Individuals and groups involved in the PEP process.
### PEP Author(s) / Champion #Proposer #Advocate #Drafter
   - Writes the initial draft and drives the PEP forward.
   - Responds to feedback and revises the PEP.
### BDFL (Benevolent Dictator For Life) #Historical #GuidoVanRossum #FinalSay
   - Guido van Rossum's historical role as the final decision-maker (until PEP 13).
### Python Steering Council #GoverningBody #DecisionMaking #Current
   - The elected body responsible for final decisions on PEPs (post-BDFL).
   - See PEP 13 and PEP 8000 series for details on governance.
### Core Developers #Implementers #Reviewers #Experts
   - Provide technical feedback, review proposals, and implement accepted PEPs.
   - May act as sponsors for PEPs.
### PEP Editors #ProcessManagement #Formatting #Administration
   - Manage the PEP repository, assign numbers, review for formatting, and update statuses.
   - Ensure the process described in PEP 1 is followed.
   - Current editors listed in PEP 1.
### Python Community #Feedback #Discussion #Users
   - Provides feedback, participates in discussions, and ultimately uses the features/changes proposed.

## Finding and Referencing PEPs #Index #Repository #Access
How to locate, read, and cite PEPs.
### PEP Index (PEP 0) #MasterList #TableOfContents #Directory
   - The canonical index listing all PEPs with their number, title, author, type, and status.
### Official PEP Repository #Storage #VersionControl #Source
   - Typically hosted on GitHub (`github.com/python/peps`).
### Website `peps.python.org` #WebInterface #Reading #Browsing
   - Rendered HTML versions of PEPs for easy reading.
### Citing PEPs #References #Standards #Communication
   - Standard practice is to refer to PEPs by their number (e.g., "as specified in PEP 8").

## Notable and Influential PEPs #Examples #History #Impact
A selection of well-known PEPs that have significantly shaped Python.
### PEP 1: PEP Purpose and Guidelines #MetaPEP #ProcessDefinition
   - Defines the PEP process itself.
### PEP 8: Style Guide for Python Code #Formatting #Readability #Conventions
   - The widely adopted style guide for writing Python code.
### PEP 20: The Zen of Python #Philosophy #GuidingPrinciples #EasterEgg
   - Lists Python's core design principles (`import this`).
### PEP 257: Docstring Conventions #Documentation #API #Standards
   - Guidelines for writing docstrings.
### PEP 484: Type Hints #StaticTyping #TypeChecking #Annotations
   - Introduced the standard syntax and framework for type hints.
### PEP 572: Assignment Expressions #WalrusOperator #Syntax #NewFeature
   - Introduced the `:=` operator. Controversial but ultimately accepted.
### PEP 3000: Python 3000 #Python3 #Future #MajorVersion
   - Outlined the plan and rationale for the Python 3 major version release, including breaking changes.
### PEP 13: Python Governance Model #SteeringCouncil #BDFLRetirement #Democracy
   - Defined the post-BDFL governance model involving the Steering Council.
### PEP 8000 Series #Governance #Elections #SteeringCouncilLogistics
   - Process PEPs related to the structure and election of the Steering Council.

## Writing Your Own PEP #Contribution #Proposal #Guidelines
Steps and considerations for someone wanting to propose a new PEP.
### Pre-computation / Socializing #IdeaValidation #CommunityCheck #MailingList
   - Discuss the core idea on `python-ideas` first before writing a full PEP.
### Finding a Sponsor #CoreDeveloper #Mentorship #Support
   - Gaining support from a core developer can be crucial.
### Following PEP 1 and PEP 12 #Formatting #Structure #Guidance
   - Adhering to the official guidelines for PEP purpose (PEP 1) and structure/format (PEP 12 Sample PEP).
### Clear Motivation and Rationale #Justification #Clarity #Persuasion
   - Clearly articulating the "why" behind the proposal.
### Engaging with Feedback #Responsiveness #Collaboration #Refinement
   - Being prepared to discuss, defend, and revise the proposal based on community input.

## History and Evolution of the PEP Process #Timeline #Development #ChangeLog
How the process itself has changed over time.
### Origins #Inception #EarlyDays #RFCInfluence
   - Initial creation and inspiration from other processes.
### Role of the BDFL #GuidosInfluence #DecisionHistory
   - How decisions were made under Guido van Rossum.
### Transition to Steering Council #GovernanceShift #CommunityDecision #PEP13
   - The reasons for and process of moving away from the BDFL model.
### Process Refinements #PEP1Updates #WorkflowImprovements
   - Minor and major tweaks to the PEP process over the years based on experience.
