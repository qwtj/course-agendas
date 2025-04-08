# I. FHIR Fundamentals

## Understanding FHIR's Purpose and Core Principles
"<prompt>Explain the core mission of HL7 FHIR (Fast Healthcare Interoperability Resources) 4.0.1, including its key design principles like focus on implementation, use of modern web standards, human readability, and extensibility. What problems in healthcare interoperability does FHIR aim to solve?</prompt>"

## Exploring FHIR Resources
"<prompt>Define what a FHIR Resource is in the context of FHIR 4.0.1. Describe the basic structure of a FHIR resource, including metadata, narrative, and data elements. List 5-10 common clinical and administrative resources (e.g., `Patient`, `Observation`, `Encounter`, `Organization`, `Practitioner`).</prompt>"

### Resource Example: Patient
"<prompt>Provide a minimal JSON example of a FHIR 4.0.1 `Patient` resource, illustrating its basic structure including `resourceType`, `id`, `meta`, `text` (narrative), and a few key data elements like `identifier`, `name`, and `birthDate`.</prompt>"

## Understanding FHIR Data Types
"<prompt>Explain the concept of FHIR Data Types as used in FHIR 4.0.1. Differentiate between primitive types (e.g., `string`, `boolean`, `dateTime`) and complex types (e.g., `Identifier`, `HumanName`, `Address`, `CodeableConcept`). Provide examples of how these types are used within resource elements.</prompt>"

### Data Type Example: `CodeableConcept`
"<prompt>Show how the `CodeableConcept` data type is structured in FHIR 4.0.1 JSON, including its common elements like `coding` (with `system`, `code`, `display`) and `text`. Explain its purpose in representing coded concepts.</prompt>"

## Introduction to FHIR Exchange Paradigms
"<prompt>Briefly introduce the four main paradigms for exchanging FHIR data as defined in FHIR 4.0.1: RESTful API, Messaging, Documents, and Services. Outline the primary use case for each paradigm.</prompt>"

*   **Placeholder for Section Transition:**
    "<prompt>Generate a brief transition statement summarizing the foundational concepts of FHIR (purpose, resources, data types, exchange paradigms) and leading into the next section on the core components and structures.</prompt>"
*   **Placeholder for Key Points Callout:**
    "<prompt>Highlight the key takeaways from FHIR Fundamentals: FHIR's goal is interoperability using web standards, Resources are the core data units, Data Types define element structure, and multiple exchange paradigms exist.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 3-5 question multiple-choice quiz testing understanding of FHIR's purpose, the definition of a Resource, common Resource examples, the difference between primitive and complex data types, and the names of the exchange paradigms in FHIR 4.0.1.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to the official FHIR 4.0.1 specification pages covering the Introduction, Resources, Data Types, and Exchange Modules.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'Based on your current understanding, how might FHIR Resources and Data Types simplify the process of sharing patient information compared to older healthcare standards you might be familiar with?'</prompt>"

# II. Core FHIR Concepts and Structures

## Resource Identity and References
"<prompt>Explain how resources are identified in FHIR 4.0.1 using logical IDs and URLs (absolute and relative). Describe how FHIR References (`Reference` data type) are used to link resources together, including literal and logical references.</prompt>"

### Example: Linking `Encounter` to `Patient`
"<prompt>Show a JSON snippet from a FHIR 4.0.1 `Encounter` resource demonstrating a `Reference` element pointing to a `Patient` resource using a relative URL (e.g., `Patient/123`).</prompt>"

## Narrative and Human Readability
"<prompt>Describe the purpose and structure of the `text` element (Narrative data type) within FHIR 4.0.1 resources. Explain its importance for human readability and safety, and the different statuses (`generated`, `extensions`, `additional`, `empty`).</prompt>"

## Extensibility: Using Extensions
"<prompt>Explain the concept of Extensions in FHIR 4.0.1. Describe how they allow for the inclusion of data not part of the base resource specification, covering simple, complex, and modifier extensions. Show the JSON structure for defining and using an extension.</prompt>"

### Defining a Simple Extension
"<prompt>Provide a JSON example of a minimal `StructureDefinition` resource used to define a simple extension (e.g., patient's favorite color) for the `Patient` resource in FHIR 4.0.1.</prompt>"

### Using a Simple Extension
"<prompt>Show a JSON snippet of a FHIR 4.0.1 `Patient` resource that includes an instance of the simple extension defined previously (e.g., patient's favorite color).</prompt>"

## Controlling Vocabularies: Value Sets and Code Systems
"<prompt>Explain the role of `ValueSet` and `CodeSystem` resources in FHIR 4.0.1 for managing terminologies and constraining the allowed values for coded elements (like `CodeableConcept` and `Coding`). Differentiate between internal and external code systems.</prompt>"

### Example: Binding a `ValueSet`
"<prompt>Illustrate how a `ValueSet` is bound to an element within a `StructureDefinition` (Profile) in FHIR 4.0.1, specifying the required strength (e.g., `required`, `extensible`, `preferred`, `example`).</prompt>"

*   **Placeholder for Section Summary:**
    "<prompt>Summarize the key concepts covered in this section: Resource identity and linking via References, the role of Narrative, extending resources with Extensions, and managing terminology with ValueSets and CodeSystems in FHIR 4.0.1.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 3-5 question quiz covering resource identification methods, the purpose of Narrative, the function of Extensions (including modifier extensions), and the difference/relationship between `ValueSet` and `CodeSystem` in FHIR 4.0.1.</prompt>"
*   **Placeholder for Cross-References:**
    "<prompt>Provide cross-links back to the 'FHIR Resources' and 'FHIR Data Types' sections from Section I, and forward to the 'Conformance Resources' section in Section IV.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'How does the concept of Extensions provide flexibility in FHIR? What potential challenges might arise from using extensions extensively?'</prompt>"

# III. FHIR Exchange Mechanisms in Detail

## RESTful API (FHIR REST)
"<prompt>Describe the FHIR 4.0.1 RESTful API conventions. Explain the mapping of CRUD operations (Create, Read, Update, Delete) to HTTP verbs (POST, GET, PUT, DELETE). Cover the standard interactions like `read`, `vread`, `update`, `patch`, `delete`, `create`, `search`, `history`, and `capabilities`.</prompt>"

### Performing a Search Operation
"<prompt>Explain the basic syntax for searching FHIR resources via the REST API in FHIR 4.0.1. Show examples of searching for `Patient` resources by identifier and name using GET requests with query parameters (e.g., `GET [base]/Patient?identifier=...` and `GET [base]/Patient?name=...`).</prompt>"

### Understanding Search Parameters
"<prompt>Describe common FHIR 4.0.1 search parameter types (e.g., `string`, `token`, `date`, `reference`, `quantity`, `composite`). Explain search result parameters like `_include`, `_revinclude`, `_sort`, `_count`.</prompt>"

*   **Example Search Query:**
    "<prompt>Provide a complete example HTTP GET request URL for a FHIR 4.0.1 server to find all `Observation` resources for a specific `Patient` (referenced by ID) with a LOINC code for 'Body Weight', sorted by date, including the referenced `Patient` resource in the result Bundle.</prompt>"

### Batch and Transaction Interactions
"<prompt>Explain the purpose and usage of `batch` and `transaction` interactions within the FHIR 4.0.1 REST API, typically using HTTP POST with a `Bundle` resource. Differentiate between their atomicity guarantees.</prompt>"

*   **Example Transaction Bundle:**
    "<prompt>Provide a JSON example of a FHIR 4.0.1 `Bundle` resource of `type` 'transaction', showing requests to create a `Patient` and a related `Observation` conditionally.</prompt>"

## FHIR Messaging
"<prompt>Describe the FHIR 4.0.1 Messaging paradigm. Explain its asynchronous nature, the structure of a `MessageHeader` resource, and how `Bundle` resources are used to package messages. Contrast this with the RESTful approach.</prompt>"

## FHIR Documents
"<prompt>Explain the FHIR 4.0.1 Documents paradigm. Describe how a `Bundle` of `type` 'document', anchored by a `Composition` resource, represents a clinical document snapshot. Discuss typical use cases like discharge summaries.</prompt>"

## FHIR Services (Operations)
"<prompt>Describe FHIR 4.0.1 Operations ($)-prefixed interactions). Explain how they extend the standard RESTful API for custom or complex actions (e.g., `$validate`, `$lookup`, `$apply`). Differentiate between instance, type, and system-level operations.</prompt>"

*   **Placeholder for Section Summary:**
    "<prompt>Summarize the key FHIR 4.0.1 exchange mechanisms detailed: the synchronous RESTful API with its CRUD and Search operations, Batch/Transaction bundles, asynchronous Messaging, clinical Documents, and custom Services (Operations).</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 5-7 question quiz testing understanding of FHIR REST interactions (CRUD, search), common search parameters, the difference between batch and transaction, the purpose of Messaging and Documents, and the function of FHIR Operations.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to the official FHIR 4.0.1 specification pages for the RESTful API, Search, Bundle resource, Messaging, Documents, and Operations.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'In what scenarios would you choose FHIR Messaging over the RESTful API? When would a FHIR Document be more appropriate than retrieving individual resources via REST?'</prompt>"

# IV. Conformance and Implementation Guides

## Understanding Conformance Resources
"<prompt>Introduce the key FHIR 4.0.1 Conformance resources: `CapabilityStatement`, `StructureDefinition`, `ImplementationGuide`, `SearchParameter`, `OperationDefinition`, `ValueSet`, `CodeSystem`, `ConceptMap`. Explain their role in defining system capabilities, data models, and implementation rules.</prompt>"

## CapabilityStatement Resource
"<prompt>Describe the purpose of the `CapabilityStatement` resource in FHIR 4.0.1. Explain how it declares a server's or client's capabilities, including supported resources, interactions, search parameters, operations, and security mechanisms. How is it typically accessed (e.g., `GET [base]/metadata`)?</prompt>"

## StructureDefinition Resource (Profiling)
"<prompt>Explain how `StructureDefinition` resources are used in FHIR 4.0.1 to define the structure, constraints, and extensions for resources and data types. Describe the concept of 'Profiling' – constraining base FHIR resources or data types for specific use cases.</prompt>"

### Example: Constraining Patient Resource
"<prompt>Outline the key elements within a `StructureDefinition` JSON that would constrain the base `Patient` resource in FHIR 4.0.1, such as setting element cardinality (`min`/`max`), fixing values, binding to specific value sets, or adding extensions.</prompt>"

## Implementation Guides (IGs)
"<prompt>Describe the purpose and structure of an `ImplementationGuide` resource and the associated IG publication process in FHIR 4.0.1. Explain how IGs package profiles, extensions, value sets, examples, and narrative guidance for a specific use case or jurisdiction (e.g., US Core IG).</prompt>"

### Using the IG Publisher Tool
"<prompt>Briefly describe the role of the HL7 FHIR IG Publisher tool in compiling `ImplementationGuide` resources and associated conformance artifacts into a human-readable web publication.</prompt>"

*   **Placeholder for Section Transition:**
    "<prompt>Generate a brief transition statement summarizing Conformance Resources and Implementation Guides, linking the definition of rules (Profiles, IGs) to the practical aspects of validation and security discussed next.</prompt>"
*   **Placeholder for Key Points Callout:**
    "<prompt>Highlight the importance of Conformance Resources (`CapabilityStatement`, `StructureDefinition`, `ImplementationGuide`) for ensuring interoperability and defining specific implementation requirements in FHIR 4.0.1.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 3-5 question quiz on the purpose of `CapabilityStatement`, `StructureDefinition` (Profiling), `ImplementationGuide`, and the relationship between these resources.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to the official FHIR 4.0.1 specification pages for Conformance Introduction, `CapabilityStatement`, `StructureDefinition`, `ImplementationGuide`, and the IG Publisher documentation.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'Why are Implementation Guides crucial for achieving practical interoperability with FHIR beyond the base specification?'</prompt>"

# V. Security and Privacy in FHIR

## Security Overview and Threat Model
"<prompt>Provide an overview of security considerations for FHIR 4.0.1 implementations based on the specification's Security page. Outline common threats (e.g., unauthorized access, data breach, denial of service) and general security principles (authentication, authorization, audit logging, encryption).</prompt>"

## Authentication and Authorization (SMART on FHIR)
"<prompt>Explain the SMART on FHIR framework, focusing on how it uses OAuth 2.0 and OpenID Connect for app authorization and user authentication in the context of FHIR 4.0.1 APIs. Describe the concept of scopes for controlling access to specific resources and operations.</prompt>"

### SMART Launch Sequences
"<prompt>Briefly describe the EHR launch and standalone launch sequences within the SMART on FHIR protocol.</prompt>"

## Audit Logging (`AuditEvent` Resource)
"<prompt>Describe the purpose and structure of the `AuditEvent` resource in FHIR 4.0.1. Explain its role in recording security-relevant events like data access, creation, modification, and deletion for auditing purposes.</prompt>"

## Privacy and Consent (`Consent` Resource)
"<prompt>Explain how the `Consent` resource in FHIR 4.0.1 can be used to manage patient privacy preferences and consent directives regarding the collection, use, and disclosure of their health information.</prompt>"

*   **Placeholder for Section Summary:**
    "<prompt>Summarize the key security and privacy mechanisms relevant to FHIR 4.0.1: the general security principles, authentication/authorization using SMART on FHIR (OAuth 2.0), audit logging with `AuditEvent`, and managing privacy with the `Consent` resource.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 3-5 question quiz covering the role of SMART on FHIR, OAuth 2.0 scopes, the purpose of `AuditEvent`, and the function of the `Consent` resource in FHIR 4.0.1.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to the official FHIR 4.0.1 specification pages for Security, `AuditEvent`, `Consent`, and the external SMART on FHIR website.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'How do the `AuditEvent` and `Consent` resources work together to support both security auditing and patient privacy management in a FHIR system?'</prompt>"

# VI. Advanced FHIR Topics

## FHIRPath Navigation and Extraction
"<prompt>Introduce FHIRPath as a path-based navigation and extraction language for FHIR 4.0.1 data. Explain its basic syntax and how it can be used for querying within resources, defining invariants in profiles, and conditional logic.</prompt>"

### FHIRPath Examples
"<prompt>Provide 2-3 examples of FHIRPath expressions applied to a sample FHIR 4.0.1 `Patient` resource, demonstrating navigation (e.g., `Patient.name.given`), filtering (e.g., `Patient.telecom.where(system='phone')`), and simple functions (e.g., `Patient.birthDate + 18 years`).</prompt>"

## FHIR Mapping Language (StructureMap)
"<prompt>Describe the purpose of the `StructureMap` resource and the FHIR Mapping Language in FHIR 4.0.1. Explain how it enables the transformation of data between different FHIR structures or between FHIR and other formats.</prompt>"

## Subscriptions
"<prompt>Explain the FHIR 4.0.1 Subscriptions framework. Describe how clients can register interest in specific data changes on a server using the `Subscription` resource and receive notifications (e.g., via REST hooks, WebSockets).</prompt>"

## Bulk Data Access (Flat FHIR)
"<prompt>Introduce the FHIR Bulk Data Access Implementation Guide (often associated with FHIR R4/4.0.1). Explain its purpose for exporting large datasets from a FHIR server efficiently, typically using asynchronous requests and NDJSON format.</prompt>"

## Versioning and Concurrency Control
"<prompt>Describe FHIR 4.0.1's mechanisms for resource versioning (using `meta.versionId`) and concurrency control (using ETags and `If-Match` headers) in the RESTful API.</prompt>"

*   **Placeholder for Section Summary:**
    "<prompt>Summarize the advanced FHIR 4.0.1 topics covered: navigating data with FHIRPath, transforming data with StructureMap, receiving notifications via Subscriptions, exporting large datasets with Bulk Data Access, and managing resource versions and concurrency.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 4-6 question quiz covering the basic purpose of FHIRPath, StructureMap, Subscriptions, Bulk Data Access, and the use of `meta.versionId` and ETags in FHIR 4.0.1.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to the official FHIR 4.0.1 specification pages for FHIRPath, `StructureMap`, `Subscription`, Versioning/Concurrency, and the external FHIR Bulk Data Access IG.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'Consider a scenario where you need to integrate data from a legacy system into FHIR. Which of these advanced topics (FHIRPath, StructureMap) might be most useful, and why?'</prompt>"

# VII. Implementing and Testing FHIR Solutions

## Choosing FHIR Servers and Client Libraries
"<prompt>List popular open-source and commercial FHIR 4.0.1 servers (e.g., HAPI FHIR, Vonk, IBM FHIR Server, Google Cloud Healthcare API) and client libraries for various programming languages (e.g., Java, .NET, Python, JavaScript). Discuss factors to consider when choosing these tools.</prompt>"

## Validation Tools and Techniques
"<prompt>Describe methods for validating FHIR 4.0.1 resources against the base specification and specific profiles (`StructureDefinition`). Mention common validation tools (e.g., the official Java validator, HAPI FHIR validator, online validators).</prompt>"

### Performing Validation
"<prompt>Explain how to use a common FHIR validation tool (e.g., the official validator JAR) via command line to validate a sample FHIR 4.0.1 resource against the base specification or a specific Implementation Guide profile.</prompt>"
*   **Command Example:**
    ```bash
    # <prompt>Provide the command-line syntax for using the official HL7 FHIR validator JAR to validate a resource file (e.g., patient.json) against the core FHIR 4.0.1 specification.</prompt>
    java -jar org.hl7.fhir.validator.jar patient.json -version 4.0.1

    # <prompt>Provide the command-line syntax for using the official HL7 FHIR validator JAR to validate a resource file (e.g., observation.json) against a specific Implementation Guide profile (e.g., US Core Patient profile defined in us-core vX.Y.Z).</prompt>
    java -jar org.hl7.fhir.validator.jar observation.json -version 4.0.1 -ig hl7.fhir.us.core#X.Y.Z -profile http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
    ```

## Performance Optimization Considerations
"<prompt>Discuss potential performance bottlenecks in FHIR 4.0.1 implementations (e.g., complex searches, large resource handling, frequent validation). Suggest strategies for optimization, such as efficient search parameter design, use of `_summary` or `_elements`, caching, and leveraging Bulk Data Access for large exports.</prompt>"

## Benchmarking and Profiling FHIR APIs
"<prompt>Describe approaches for benchmarking the performance of a FHIR 4.0.1 server API (e.g., response time, throughput for various interactions like search, create, read). Mention tools or techniques for profiling server-side performance to identify bottlenecks.</prompt>"

## Advanced Error Handling and Debugging
"<prompt>Discuss best practices for robust error handling in FHIR 4.0.1 clients and servers beyond basic HTTP status codes. Explain the use of the `OperationOutcome` resource for conveying detailed error, warning, and informational messages.</prompt>"

### Debugging Complex Scenarios
"<prompt>Suggest techniques for debugging complex FHIR 4.0.1 interactions, such as inspecting HTTP request/response headers and bodies, analyzing `OperationOutcome` details, using server logs, and stepping through client/server code during interactions like transactions or complex searches.</prompt>"

*   **Placeholder for Section Summary:**
    "<prompt>Summarize the practical aspects of implementing and testing FHIR 4.0.1 solutions: selecting tools (servers, libraries), validating resources, optimizing and benchmarking performance, and implementing robust error handling and debugging strategies using `OperationOutcome`.</prompt>"
*   **Placeholder for Interactive Quiz:**
    "<prompt>Create a 4-6 question quiz on choosing FHIR tools, the purpose of validation, common performance optimization techniques, the role of `OperationOutcome`, and basic debugging approaches for FHIR 4.0.1.</prompt>"
*   **Placeholder for Further Exploration Links:**
    "<prompt>Provide links to popular FHIR server/client library websites (HAPI FHIR, etc.), the official FHIR validator documentation, and the `OperationOutcome` resource specification page.</prompt>"
*   **Placeholder for Reflective Prompt:**
    "<prompt>Ask the learner: 'When building a FHIR client application, what steps would you take to ensure that the resources you send to a server are valid according to a specific Implementation Guide?'</prompt>"

# VIII. Glossary and Final Review

## Key FHIR 4.0.1 Terms
"<prompt>Define the following key FHIR 4.0.1 terms concisely: Resource, Data Type, Profile (StructureDefinition), Extension, ValueSet, CodeSystem, Bundle, REST, CRUD, Search Parameter, CapabilityStatement, Implementation Guide, Narrative, FHIRPath, OperationOutcome, SMART on FHIR.</prompt>"

## Comprehensive Review Quiz
"<prompt>Create a 10-15 question comprehensive quiz covering all major sections of the FHIR 4.0.1 learning agenda, from fundamentals to advanced topics and implementation considerations.</prompt>"

## Final Reflective Prompt
"<prompt>Ask the learner: 'Having completed this learning agenda, what are the three most important concepts you learned about FHIR 4.0.1, and how do you envision applying this knowledge in a real-world healthcare IT project?'</prompt>"
