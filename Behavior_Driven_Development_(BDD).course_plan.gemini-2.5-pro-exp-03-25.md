# I. Fundamentals of BDD
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding the core concepts, principles, and introduction to Behavior Driven Development (BDD), starting output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this first section lays the groundwork by defining BDD, exploring its history, goals, and comparing it to traditional methods, starting output at heading level 2.</prompt>"

## What is BDD?
*   **Content Prompt:** "<prompt>Define Behavior Driven Development (BDD), explaining it as a collaborative software development process derived from TDD that focuses on shared understanding and behavior specification through examples. Emphasize the communication aspect. Start output at heading level 2 under the parent topic 'Fundamentals of BBD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define the term 'Behavior Driven Development (BDD)' for a glossary, highlighting its focus on collaboration and behavior.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to reflect on how focusing on 'behavior' might change the way requirements are discussed compared to traditional methods.</prompt>"

## Origins of BDD
*   **Content Prompt:** "<prompt>Describe the history and evolution of BDD, explaining its roots in Test-Driven Development (TDD) and Agile practices. Mention key figures like Dan North and the problems BDD aimed to solve (e.g., communication gaps). Start output at heading level 2 under the parent topic 'Fundamentals of BBD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define the term 'Test-Driven Development (TDD)' for a glossary, contrasting its focus with BDD.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to Dan North's original article introducing BDD.</prompt>"

## Goals of BDD
*   **Content Prompt:** "<prompt>List and explain the primary objectives and purpose of implementing BDD, including improving communication between technical and non-technical roles, reducing ambiguity in requirements, focusing development on business value, and creating living documentation. Start output at heading level 2 under the parent topic 'Fundamentals of BBD'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider which goal of BDD seems most impactful for a team they know or imagine.</prompt>"

## BDD vs. Traditional Testing
*   **Content Prompt:** "<prompt>Compare and contrast BDD with traditional approaches to software requirements specification and testing. Highlight differences in collaboration, documentation format (e.g., Gherkin vs. static specs), and the timing of test definition. Start output at heading level 2 under the parent topic 'Fundamentals of BBD'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box highlighting the key difference: BDD focuses on *examples of behavior* as specifications, whereas traditional methods often use abstract requirement statements.</prompt>"

## Ubiquitous Language
*   **Content Prompt:** "<prompt>Explain the concept of 'Ubiquitous Language' (borrowed from Domain-Driven Design) and its critical importance in BDD. Describe how using a shared, consistent language across business, development, and testing roles minimizes misunderstandings. Start output at heading level 2 under the parent topic 'Fundamentals of BBD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define the term 'Ubiquitous Language' for a glossary within the context of BDD and DDD.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference note mentioning that Ubiquitous Language is also a key concept in Domain-Driven Design (DDD), which will be discussed further in section XI.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the key takeaways from the 'Fundamentals of BDD' section, reiterating the definition, origins, goals, distinction from traditional testing, and the importance of Ubiquitous Language. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short multiple-choice quiz (3-4 questions) to test understanding of the core concepts covered in 'Fundamentals of BDD'. Include questions on BDD's definition, goals, and relation to TDD. Start output at heading level 2.</prompt>"

# II. The Three Practices of BDD
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding the three core practices of BDD: Discovery, Formulation, and Automation. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section details the core activities cycle that defines the BDD methodology. Start output at heading level 2.</prompt>"

## Discovery (Deliberate Discovery)
*   **Content Prompt:** "<prompt>Explain the 'Discovery' phase of BDD, emphasizing its collaborative nature. Describe techniques like 'Three Amigos' meetings, 'Example Mapping', and 'Feature Mapping' used to explore requirements, identify rules, and generate concrete examples of behavior. Start output at heading level 2 under the parent topic 'The Three Practices of BDD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Three Amigos' and 'Example Mapping' for a glossary in the context of BDD Discovery workshops.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to think about challenges a team might face during the Discovery phase and how they could be overcome.</prompt>"

## Formulation
*   **Content Prompt:** "<prompt>Describe the 'Formulation' phase of BDD, where the examples and understanding gained during Discovery are written down in a structured, semi-formal language understandable by all stakeholders. Mention Gherkin as the common language for this. Start output at heading level 2 under the parent topic 'The Three Practices of BDD'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference note stating that the Gherkin language used for Formulation will be detailed in section III.</prompt>"

## Automation
*   **Content Prompt:** "<prompt>Explain the 'Automation' phase of BDD, where the formulated specifications (e.g., Gherkin scenarios) are automated to become executable specifications. Highlight that these automated tests verify the system's behavior against the agreed-upon examples. Start output at heading level 2 under the parent topic 'The Three Practices of BDD'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference note pointing to section V for details on Automation implementation and tooling.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box emphasizing that Automation in BDD is about verifying *behavior* described in the formulated scenarios, serving as both tests and documentation.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the three core practices of BDD (Discovery, Formulation, Automation) and how they form a cycle that drives development based on shared understanding and executable examples. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) asking the learner to match BDD practices (Discovery, Formulation, Automation) with their primary activities or outputs. Start output at heading level 2.</prompt>"

# III. Specification using Gherkin
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding the Gherkin language, its syntax, structure (Feature files, Scenarios), keywords, and best practices for writing effective specifications. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section focuses on Gherkin, the specific language used in the Formulation phase to write behavior specifications. Start output at heading level 2.</prompt>"

## Gherkin Syntax Overview
*   **Content Prompt:** "<prompt>Provide an overview of the Gherkin syntax. Explain its purpose as a Domain Specific Language (DSL) for behavior specification. List and briefly explain the main keywords: `Feature`, `Rule`, `Example` (or `Scenario`), `Given`, `When`, `Then`, `And`, `But`. Use inline code formatting for keywords. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Gherkin', 'Given', 'When', 'Then' for a glossary, explaining their roles in structuring scenarios.</prompt>"

## Feature Files (`.feature`)
*   **Content Prompt:** "<prompt>Describe the structure and purpose of Gherkin Feature Files (files typically ending in `.feature`). Explain how they organize scenarios related to a specific software feature or capability. Show a simple example structure. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Example Prompt:** "<prompt>Provide a simple, multi-line code block example of a basic `.feature` file structure, including `Feature`, `Scenario`, `Given`, `When`, `Then` keywords. Use Markdown code block formatting. Start output at heading level 3.</prompt>"

## Writing Good Gherkin
*   **Content Prompt:** "<prompt>Discuss best practices for writing clear, concise, and maintainable Gherkin scenarios. Include tips like: focusing on *what* the system does (behavior) not *how* it does it (implementation), using the Ubiquitous Language, writing in a declarative style, and keeping scenarios focused and independent where possible. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference to section XI (BDD Anti-Patterns) for examples of poorly written Gherkin to avoid.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to rewrite a hypothetical imperative step (e.g., 'When I click the login button') into a more declarative style (e.g., 'When I attempt to log in').</prompt>"

## Scenarios and Scenario Outlines
*   **Content Prompt:** "<prompt>Explain the difference between a `Scenario` (representing a single concrete example) and a `Scenario Outline` (a template for multiple examples). Describe how `Scenario Outlines` use `Examples` tables to parameterize tests. Use inline code formatting for keywords. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Example Prompt:** "<prompt>Provide a multi-line code block example of a `Scenario Outline` with an `Examples` table. Use Markdown code block formatting. Start output at heading level 3.</prompt>"

## Background
*   **Content Prompt:** "<prompt>Explain the use of the `Background` keyword in Gherkin. Describe how it allows defining common `Given` steps that apply to all scenarios within a feature file, reducing repetition. Use inline code formatting for keywords. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box advising caution with `Background` - overuse can make individual scenarios harder to understand in isolation.</prompt>"

## Step Definitions
*   **Content Prompt:** "<prompt>Briefly introduce the concept of Step Definitions as the code that connects or 'glues' each Gherkin step (`Given`, `When`, `Then`) to the actual automation code that executes the action or verifies the outcome. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Step Definition' for a glossary, explaining its role as the bridge between Gherkin and automation code.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference note pointing to section V for details on implementing Step Definitions.</prompt>"

## Tags
*   **Content Prompt:** "<prompt>Explain the use of tags (e.g., `@tagname`) in Gherkin. Describe how tags can be used to categorize features and scenarios, allowing for selective test execution (e.g., running only `@smoke` tests or tests related to a specific `@module`). Use inline code formatting for tags. Start output at heading level 2 under the parent topic 'Specification using Gherkin'.</prompt>"
*   **Example Prompt:** "<prompt>Show examples of placing tags above `Feature` and `Scenario` keywords in a Gherkin file. Start output at heading level 3.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the key elements of Gherkin syntax, including keywords, feature file structure, scenarios vs. scenario outlines, background, step definitions (conceptually), and tags. Reiterate the importance of writing good Gherkin. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (3-4 questions) testing understanding of Gherkin keywords (Given/When/Then roles), the purpose of Scenario Outlines, and the function of tags. Start output at heading level 2.</prompt>"

# IV. BDD Workflow and Collaboration
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding how BDD fits into the software development lifecycle, the collaborative practices involved (like Three Amigos), and the roles various team members play. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section explores the practical application of BDD within a team, focusing on the process flow and collaborative interactions. Start output at heading level 2.</prompt>"

## The BDD Cycle
*   **Content Prompt:** "<prompt>Describe the iterative BDD cycle: Discovery -> Formulation -> Automation -> Development -> Repeat. Explain how feedback from each stage informs the next, driving development based on clarified behavior examples. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"
*   **Diagram Prompt:** "<prompt>Describe a simple diagram illustrating the cyclical nature of Discovery, Formulation, Automation, and Development in BDD.</prompt>"

## The Three Amigos
*   **Content Prompt:** "<prompt>Elaborate on the 'Three Amigos' meeting concept. Explain its purpose: bringing together perspectives from Business (Product Owner/BA), Development, and Testing *before* development starts to discuss requirements, explore examples, and ensure shared understanding. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box emphasizing that the 'Three Amigos' are roles/perspectives, not necessarily exactly three specific people.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider what questions each 'Amigo' (Business, Dev, Test) might typically bring to a requirements discussion.</prompt>"

## Example Mapping
*   **Content Prompt:** "<prompt>Explain Example Mapping as a specific, structured workshop technique used during Discovery (often in Three Amigos meetings). Describe how it helps break down user stories or features into business rules and concrete examples, identifying scope and potential questions visually using cards or a whiteboard. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to an article or resource explaining the Example Mapping technique in more detail (e.g., by Matt Wynne).</prompt>"

## Integrating BDD in Agile Sprints
*   **Content Prompt:** "<prompt>Discuss how BDD practices can be integrated into common Agile frameworks like Scrum or Kanban. Explain how feature files and scenarios can serve as Acceptance Criteria for user stories and how the BDD cycle aligns with sprint cadences (e.g., Discovery/Formulation early in the sprint or during backlog refinement, Automation alongside development). Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Acceptance Criteria' in the context of Agile and how BDD scenarios fulfill this role.</prompt>"

## Role of Product Owner / Business Analyst
*   **Content Prompt:** "<prompt>Describe the role and responsibilities of the Product Owner (PO) or Business Analyst (BA) in a BDD process. Focus on their involvement in defining features, participating actively in Discovery sessions (like Three Amigos, Example Mapping), clarifying business rules, defining acceptance criteria (often via scenarios), and validating the final implementation against the specified behavior. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"

## Role of Developers
*   **Content Prompt:** "<prompt>Describe the role and responsibilities of Developers in a BDD process. Highlight their participation in Discovery sessions to understand requirements and feasibility, implementing the software features guided by the BDD scenarios, and often writing or pairing on the automation code (step definitions) that makes the scenarios executable. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"

## Role of Testers / QA
*   **Content Prompt:** "<prompt>Describe the role and responsibilities of Testers or QA professionals in a BDD process. Emphasize their role in driving the Discovery process by asking clarifying questions and thinking about edge cases, collaborating on formulating scenarios, implementing test automation (step definitions and supporting code), performing exploratory testing beyond the automated scenarios, and ensuring overall quality. Start output at heading level 2 under the parent topic 'BDD Workflow and Collaboration'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner how the role of QA might shift in a BDD environment compared to a traditional testing process.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the BDD workflow as an iterative cycle integrated within Agile processes. Recap the importance of collaborative practices like the Three Amigos and Example Mapping, and outline the key contributions of PO/BAs, Developers, and Testers. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (3-4 questions) about the BDD cycle, the purpose of the Three Amigos meeting, and the typical responsibilities of different roles (PO, Dev, QA) within the BDD workflow. Start output at heading level 2.</prompt>"

# V. Automation in BDD
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding how BDD scenarios are automated, including step definition implementation, selecting tools, test execution, maintenance strategies, and common automation patterns like POM. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section delves into the technical aspects of the Automation phase, turning Gherkin specifications into executable tests. Start output at heading level 2.</prompt>"

## Step Definition Implementation
*   **Content Prompt:** "<prompt>Explain the process of implementing Step Definitions (the 'glue code'). Describe how each Gherkin step (`Given`, `When`, `Then`) is mapped to a specific function or method in a programming language (e.g., Java, C#, Python, Ruby, JavaScript). Show conceptually how annotations or regular expressions link the Gherkin text to the code. Start output at heading level 2 under the parent topic 'Automation in BDD'.</prompt>"
*   **Example Prompt:** "<prompt>Provide pseudo-code examples in a couple of languages (e.g., Java using Cucumber annotations, Python using pytest-bdd decorators) showing how a Gherkin step like `Given I am on the login page` might be linked to an automation function. Use Markdown code block formatting. Start output at heading level 3.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Glue Code' as a synonym for Step Definitions in the context of BDD automation.</prompt>"

## Selecting Automation Tools
*   **Content Prompt:** "<prompt>Discuss factors to consider when selecting BDD automation frameworks and tools. Include criteria like programming language/platform compatibility (e.g., Cucumber-JVM for Java, SpecFlow for .NET, Behave for Python), integration with other testing tools (like Selenium, Appium, REST clients), community support, reporting capabilities, and team skill set. Start output at heading level 2 under the parent topic 'Automation in BDD'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference to section IX (Common BDD Tools) for a list of specific framework examples.</prompt>"

## Test Execution
*   **Content Prompt:** "<prompt>Describe how automated BDD scenarios are executed. Explain common methods like running tests from an IDE, using build tools (e.g., Maven, Gradle, dotnet CLI), or integrating them into Continuous Integration (CI) / Continuous Deployment (CD) pipelines. Mention the use of tags (covered in section III) to filter which tests are run. Start output at heading level 2 under the parent topic 'Automation in BDD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Continuous Integration (CI)' and briefly explain how automated BDD tests fit into it.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide links to documentation examples for running tests with popular BDD frameworks (e.g., Cucumber-JVM with Maven, SpecFlow with dotnet test).</prompt>"

## Maintaining Automation Code
*   **Content Prompt:** "<prompt>Discuss the importance of maintaining BDD automation code (step definitions and underlying logic). Outline strategies for keeping the code clean, readable, and maintainable, such as refactoring, avoiding duplication (e.g., using helper methods), keeping step definitions concise and focused on orchestrating calls to lower-level automation logic, and applying good coding practices. Start output at heading level 2 under the parent topic 'Automation in BDD'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner why maintaining automation code is as important as maintaining production code.</prompt>"

## Page Object Model (POM) / Screenplay Pattern
*   **Content Prompt:** "<prompt>Introduce common design patterns used to structure automation code, particularly for UI automation often used with BDD. Explain the Page Object Model (POM), describing how it encapsulates UI pages or components into classes, separating UI interaction logic from test logic (step definitions). Briefly mention the Screenplay Pattern as an alternative, user-centric approach. Start output at heading level 2 under the parent topic 'Automation in BDD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Page Object Model (POM)' and 'Screenplay Pattern' for a glossary, highlighting their purpose in structuring automation code.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide links to resources explaining POM and the Screenplay Pattern in more detail.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box emphasizing that patterns like POM help make automation code more robust, maintainable, and less brittle when the UI changes.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the key aspects of BDD automation, covering step definition implementation, tool selection criteria, test execution methods (including CI/CD integration), the importance of maintenance, and the role of design patterns like POM or Screenplay. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (3-4 questions) about the purpose of step definitions, factors in tool selection, how tags are used in execution, and the primary benefit of using patterns like POM. Start output at heading level 2.</prompt>"

# VI. Living Documentation
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding the concept of Living Documentation in BDD, its benefits, how reports are generated, and how it enhances stakeholder communication. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining how the automated BDD specifications serve a dual purpose as up-to-date system documentation. Start output at heading level 2.</prompt>"

## Concept of Living Documentation
*   **Content Prompt:** "<prompt>Define the concept of 'Living Documentation'. Explain that in BDD, the Gherkin feature files, when combined with the results of their automated execution, serve as reliable, current documentation of the system's behavior because they are constantly validated against the working software. Contrast this with traditional documentation that often becomes outdated. Start output at heading level 2 under the parent topic 'Living Documentation'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Living Documentation' for a glossary, emphasizing its connection to executable specifications.</prompt>"

## Generating Reports
*   **Content Prompt:** "<prompt>Describe how BDD automation tools typically generate human-readable reports after test execution. Mention common formats like HTML, JSON, or XML. Explain that these reports often display the Gherkin scenarios alongside the pass/fail status of each step, providing clear visibility into what behaviors are working as expected. Start output at heading level 2 under the parent topic 'Living Documentation'.</prompt>"
*   **Example Prompt:** "<prompt>Describe the typical content and appearance of an HTML report generated by a BDD tool like Cucumber or SpecFlow.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide links to examples of BDD test reports from popular frameworks.</prompt>"

## Benefits for Stakeholders
*   **Content Prompt:** "<prompt>Explain the benefits of Living Documentation specifically for non-technical stakeholders (e.g., Product Owners, Business Analysts, managers). Highlight how the business-readable format of Gherkin, combined with execution reports, provides transparency into system functionality, test coverage, and project progress without needing to understand the underlying code. Start output at heading level 2 under the parent topic 'Living Documentation'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to imagine explaining the status of a feature to a non-technical manager using a BDD report versus traditional test results.</prompt>"

## Maintaining Documentation Accuracy
*   **Content Prompt:** "<prompt>Reiterate how Living Documentation inherently maintains accuracy. Because the documentation (Gherkin scenarios) is directly linked to automated tests that run against the actual system, any discrepancy between the documented behavior and the system's actual behavior will cause tests to fail. This failure prompts updates, ensuring the documentation remains synchronized with the software. Start output at heading level 2 under the parent topic 'Living Documentation'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box stating: 'If the Living Documentation says the system does X, and the tests pass, the system actually does X.'</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the concept of Living Documentation as a key benefit of BDD, where executable specifications double as accurate, up-to-date system documentation. Recap how reports are generated, the value for stakeholders, and the mechanism ensuring accuracy. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) about the definition of Living Documentation, its primary benefit for non-technical stakeholders, and how its accuracy is maintained. Start output at heading level 2.</prompt>"

# VII. BDD vs. TDD vs. ATDD
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for comparing and contrasting BDD with related methodologies like Test-Driven Development (TDD) and Acceptance Test-Driven Development (ATDD), understanding their scope, focus, participants, and how they can complement each other. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section clarifies the relationship between BDD and similar-sounding development practices like TDD and ATDD. Start output at heading level 2.</prompt>"

## Test-Driven Development (TDD)
*   **Content Prompt:** "<prompt>Define Test-Driven Development (TDD). Explain its core cycle (Red-Green-Refactor) focused on writing failing unit tests *before* writing production code. Emphasize that TDD is primarily a developer practice aimed at driving code design and ensuring code correctness at a low level. Use inline code formatting for `Red-Green-Refactor`. Start output at heading level 2 under the parent topic 'BDD vs. TDD vs. ATDD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Unit Test' for a glossary in the context of TDD.</prompt>"

## Acceptance Test-Driven Development (ATDD)
*   **Content Prompt:** "<prompt>Define Acceptance Test-Driven Development (ATDD). Explain that it focuses on collaboratively defining acceptance criteria for a feature, often in the form of tests, *before* development begins. Highlight that BDD is considered a specific type or implementation of ATDD, emphasizing collaboration and specification through examples. Start output at heading level 2 under the parent topic 'BDD vs. TDD vs. ATDD'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Acceptance Test-Driven Development (ATDD)' for a glossary, noting its relationship to BDD.</prompt>"

## Key Differences
*   **Content Prompt:** "<prompt>Summarize the key differences between BDD, TDD, and ATDD based on: Scope (feature/behavior vs. unit/code), Focus (shared understanding/specification vs. code design/correctness), Primary Participants (whole team vs. primarily developers), and Typical Artifacts (Gherkin scenarios vs. unit test code). Use a table format for clarity if possible. Start output at heading level 2 under the parent topic 'BDD vs. TDD vs. ATDD'.</prompt>"
*   **Table Prompt:** "<prompt>Generate a markdown table comparing TDD, ATDD, and BDD across dimensions like 'Primary Goal', 'Scope', 'Participants', and 'Key Artifact'.</prompt>"

## How They Complement Each Other
*   **Content Prompt:** "<prompt>Explain that BDD, TDD, and ATDD are not mutually exclusive and can be used together effectively. Describe a common synergy where BDD/ATDD is used at the feature level to define *what* the system should do (acceptance criteria/behavior), while TDD is used at the unit level by developers to drive the implementation details and ensure the code components work correctly ('double-loop' testing). Start output at heading level 2 under the parent topic 'BDD vs. TDD vs. ATDD'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box summarizing: 'Use BDD/ATDD for the outer loop (feature behavior) and TDD for the inner loop (code implementation).'</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider how using both BDD and TDD might impact overall software quality and team confidence.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the definitions and distinctions between BDD, TDD, and ATDD, focusing on their scope, goals, and participants. Reiterate that BDD is a form of ATDD and how these practices can complement each other in a development process. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (3-4 questions) asking to differentiate between BDD, TDD, and ATDD based on their primary focus (e.g., behavior vs. code design) and scope (feature vs. unit). Include a question about how they can work together. Start output at heading level 2.</prompt>"

# VIII. Implementing BDD Successfully
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding practical strategies for adopting BDD, including starting small, gaining team buy-in, focusing on collaboration, making tooling choices, and measuring success. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section provides practical advice and strategies for introducing and effectively using BDD within a team or organization. Start output at heading level 2.</prompt>"

## Starting Small
*   **Content Prompt:** "<prompt>Recommend a gradual approach to BDD adoption rather than a 'big bang' rollout. Suggest starting with a pilot project or a single team, focusing initially on the collaborative aspects (Discovery, Formulation) before diving deep into complex automation. Start output at heading level 2 under the parent topic 'Implementing BDD Successfully'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner what advantages a 'start small' approach might have when introducing a new process like BDD.</prompt>"

## Getting Team Buy-in
*   **Content Prompt:** "<prompt>Stress the importance of obtaining buy-in from the entire team (business, development, testing). Discuss the need for training on BDD principles and practices, clearly communicating the 'why' behind the adoption (e.g., improved communication, better requirements), and addressing concerns proactively. Emphasize that BDD requires a shift in mindset and collaboration culture. Start output at heading level 2 under the parent topic 'Implementing BDD Successfully'.</prompt>"

## Focusing on Collaboration
*   **Content Prompt:** "<prompt>Advise teams implementing BDD to prioritize the collaborative practices (Discovery workshops, Three Amigos, Example Mapping) over merely focusing on test automation tools or Gherkin syntax. Reinforce that the primary value of BDD comes from shared understanding built through conversation. Start output at heading level 2 under the parent topic 'Implementing BDD Successfully'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box stating: 'BDD is primarily about conversations; the tools and artifacts support the conversations.'</prompt>"

## Tooling Choices and Integration
*   **Content Prompt:** "<prompt>Provide guidance on selecting and setting up BDD tooling. Reiterate the need to choose frameworks compatible with the team's technology stack (as discussed in section V). Discuss integrating BDD tools into the existing development workflow, including version control, CI/CD pipelines, and potentially task tracking systems. Start output at heading level 2 under the parent topic 'Implementing BDD Successfully'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add cross-references back to section V (Automation in BDD) and forward to section IX (Common BDD Tools).</prompt>"

## Measuring Success
*   **Content Prompt:** "<prompt>Suggest ways to measure the success and impact of implementing BDD. Propose potential metrics, such as reduced ambiguity in requirements, fewer defects related to misunderstandings, improved collaboration feedback (qualitative), faster feedback cycles from automated tests, and potentially impact on delivery speed or predictability. Emphasize tracking trends over time. Start output at heading level 2 under the parent topic 'Implementing BDD Successfully'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner what metrics they think would be most convincing to management about the value of BDD.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the key strategies for successful BDD implementation: starting small, securing team buy-in through training and communication, prioritizing collaboration, making informed tooling choices, integrating into workflows, and measuring impact. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) focusing on the recommended approach for BDD adoption (gradual vs. big bang), the most crucial aspect to focus on initially (collaboration vs. tools), and the importance of team buy-in. Start output at heading level 2.</prompt>"

# IX. Common BDD Tools
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for identifying popular BDD frameworks across different programming languages and platforms. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph stating that this section provides an overview of commonly used software frameworks that facilitate the implementation of BDD automation. Start output at heading level 2.</prompt>"

## Cucumber
*   **Content Prompt:** "<prompt>Describe Cucumber as one of the most popular and widely ported BDD frameworks. Mention its availability for multiple platforms like Java (`Cucumber-JVM`), JavaScript (`Cucumber.js`), and Ruby (`Cucumber-Ruby`). Highlight its large community and extensive documentation. Use inline code formatting for tool names. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the main Cucumber website/documentation.</prompt>"

## SpecFlow
*   **Content Prompt:** "<prompt>Describe SpecFlow as the leading BDD framework for the .NET ecosystem (C#, F#, VB.NET). Mention its tight integration with Visual Studio and its similarity in concepts to Cucumber. Use inline code formatting for tool names and languages. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the SpecFlow website/documentation.</prompt>"

## Behave
*   **Content Prompt:** "<prompt>Describe Behave as a popular BDD framework specifically for the Python language. Note its use of Gherkin for feature files and Python for step definitions. Use inline code formatting for tool names and language. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the Behave documentation.</prompt>"

## JBehave
*   **Content Prompt:** "<prompt>Describe JBehave as another established BDD framework for Java, positioning it as an alternative to Cucumber-JVM. Mention any key differentiators if known (e.g., slightly different approach to syntax or configuration). Use inline code formatting for tool names and language. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the JBehave website/documentation.</prompt>"

## Codeception
*   **Content Prompt:** "<prompt>Describe Codeception as a comprehensive PHP testing framework that includes support for writing BDD-style acceptance tests using Gherkin syntax. Use inline code formatting for tool names and language. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the Codeception website/documentation.</prompt>"

## pytest-bdd
*   **Content Prompt:** "<prompt>Describe `pytest-bdd` as a plugin for the popular Python testing framework `pytest`. Explain that it allows developers to write BDD tests using Gherkin feature files while leveraging the `pytest` ecosystem for execution, fixtures, and reporting. Use inline code formatting for tool names. Start output at heading level 2 under the parent topic 'Common BDD Tools'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide a link to the `pytest-bdd` documentation.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the section by listing the common BDD tools covered (Cucumber, SpecFlow, Behave, JBehave, Codeception, pytest-bdd) and the primary platforms/languages they target. Reiterate that the choice depends on the project's technology stack. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short matching quiz (3-4 questions) asking the learner to match BDD frameworks (e.g., SpecFlow, Behave, Cucumber.js) with their primary programming language or platform (.NET, Python, JavaScript). Start output at heading level 2.</prompt>"

# X. Benefits and Drawbacks of BDD
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for evaluating the advantages (pros) and disadvantages (cons) of adopting BDD, and identifying contexts where it might be less suitable. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section offers a balanced perspective on BDD, outlining its potential benefits alongside common challenges and drawbacks. Start output at heading level 2.</prompt>"

## Benefits
*   **Content Prompt:** "<prompt>List and elaborate on the key benefits and advantages of using BDD. Include: Improved Collaboration and Shared Understanding, Clearer Requirements and Reduced Ambiguity, Reduced Rework due to fewer misunderstandings, Business-Readable Tests providing transparency, Living Documentation ensuring accuracy, and a stronger Focus on Business Value. Start output at heading level 2 under the parent topic 'Benefits and Drawbacks of BDD'.</prompt>"
*   **Key Point Callout Prompt:** "<prompt>Create a callout box highlighting 'Improved Collaboration' as arguably the most significant benefit of BDD when implemented correctly.</prompt>"

## Drawbacks
*   **Content Prompt:** "<prompt>List and discuss the potential drawbacks, challenges, and costs associated with adopting BDD. Include: Initial Learning Curve for the team (principles and tools), Tooling Setup and Maintenance Overhead, Potential for Poorly Written Scenarios (e.g., too imperative, brittle), Increased Maintenance Effort if not managed well, and the Risk of Focusing Too Much on Gherkin Syntax instead of collaboration. Start output at heading level 2 under the parent topic 'Benefits and Drawbacks of BDD'.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner which potential drawback seems like the biggest hurdle for adoption in their imagined or real context.</prompt>"

## When BDD Might Be Overkill
*   **Content Prompt:** "<prompt>Discuss specific situations or contexts where the overhead of implementing full BDD might outweigh the benefits. Consider factors like: very small, co-located teams with excellent informal communication; extremely simple, well-understood projects; early-stage R&D or prototyping where requirements are highly volatile and formal specification is premature; projects where the cost of automation is prohibitive or unnecessary. Start output at heading level 2 under the parent topic 'Benefits and Drawbacks of BDD'.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the main benefits of BDD (collaboration, clarity, living docs, value focus) and its potential drawbacks (learning curve, overhead, maintenance, risk of poor implementation). Conclude by mentioning contexts where BDD's full rigor might not be necessary. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) asking the learner to identify a key benefit of BDD, a common drawback, and a potential scenario where BDD might be considered overkill. Start output at heading level 2.</prompt>"

# XI. Advanced BDD Concepts
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for exploring more complex aspects of BDD, including common pitfalls (anti-patterns), strategies for scaling BDD, applying it to non-functional requirements, and its relationship with Domain-Driven Design. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this section moves beyond the basics to cover advanced topics, common challenges, and related concepts for experienced practitioners. Start output at heading level 2.</prompt>"

## BDD Anti-Patterns
*   **Content Prompt:** "<prompt>Describe common mistakes and anti-patterns observed when teams implement BDD. Include examples like: Writing imperative scenarios (scripting UI interactions step-by-step) instead of declarative ones (describing behavior); Focusing tests heavily on the UI layer making them brittle; Lack of genuine collaboration (just using Gherkin as a testing script); Using Gherkin for unit tests; Overuse of `Background`. Explain *why* each is an anti-pattern. Start output at heading level 2 under the parent topic 'Advanced BDD Concepts'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference back to section III (Writing Good Gherkin) regarding declarative vs. imperative styles.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider how they might detect or prevent these anti-patterns in a team.</prompt>"

## Scaling BDD
*   **Content Prompt:** "<prompt>Discuss strategies for applying BDD effectively in the context of large organizations, multiple teams, or complex projects. Mention techniques like: Feature Slicing to break down large features; Establishing clear Domain Contexts (linking to DDD); Maintaining consistency in Ubiquitous Language across teams; Strategies for managing shared step definitions; Effective use of tags for organization and execution across large test suites. Start output at heading level 2 under the parent topic 'Advanced BDD Concepts'.</prompt>"

## BDD for Non-Functional Requirements (NFRs)
*   **Content Prompt:** "<prompt>Explore the application (and challenges) of using BDD principles for specifying and testing Non-Functional Requirements like performance, security, or usability. Discuss how Gherkin might be adapted (or if it's suitable) to describe NFR scenarios and how automation might look (e.g., integrating performance metrics into `Then` steps). Acknowledge this is less common than for functional behavior. Start output at heading level 2 under the parent topic 'Advanced BDD Concepts'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Non-Functional Requirements (NFRs)' for a glossary.</prompt>"

## Domain-Driven Design (DDD) and BDD
*   **Content Prompt:** "<prompt>Explain the strong synergy between Domain-Driven Design (DDD) and BDD. Highlight how DDD concepts like 'Ubiquitous Language' and 'Bounded Contexts' directly support and enhance BDD practices. BDD's focus on behavior aligns well with DDD's focus on modeling the core domain. Start output at heading level 2 under the parent topic 'Advanced BDD Concepts'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add a cross-reference back to section I (Ubiquitous Language).</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide links to resources discussing the intersection of BDD and DDD.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the advanced BDD topics covered: common anti-patterns to avoid, strategies for scaling BDD in large contexts, the potential (and challenges) of applying BDD to NFRs, and the synergistic relationship between BDD and Domain-Driven Design. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) asking about a common BDD anti-pattern, a strategy for scaling BDD, and the key DDD concept that strongly supports BDD. Start output at heading level 2.</prompt>"

# XII. BDD in Different Contexts
*   **Learning Objectives Prompt:** "<prompt>Generate learning objectives for understanding how BDD principles and tools can be applied across various software development contexts, including UI, API, mobile, and microservices testing. Start output at heading level 2.</prompt>"
*   **Section Transition Prompt:** "<prompt>Write a brief introductory paragraph explaining that this final section illustrates the versatility of BDD by showing how it can be adapted and applied to different types of software testing and architectures. Start output at heading level 2.</prompt>"

## BDD for Web UI Testing
*   **Content Prompt:** "<prompt>Describe how BDD is commonly applied to web UI testing. Explain how Gherkin scenarios describe user interactions and expected outcomes on the web interface. Mention the integration of BDD frameworks (like Cucumber, SpecFlow) with browser automation tools (like Selenium, Cypress, Playwright) via step definitions. Reiterate the importance of patterns like POM (Section V) here. Start output at heading level 2 under the parent topic 'BDD in Different Contexts'.</prompt>"
*   **Cross-reference Prompt:** "<prompt>Add cross-references back to section V (Automation in BDD, POM/Screenplay) and section IX (Common BDD Tools).</prompt>"

## BDD for API Testing
*   **Content Prompt:** "<prompt>Explain how BDD can be used effectively for API testing (e.g., REST, SOAP). Describe how Gherkin scenarios can specify API requests (endpoints, methods, payloads) and expected responses (status codes, data). Mention that step definitions would use HTTP client libraries to interact with the API. Highlight that API-level BDD tests are often faster and more stable than UI tests. Start output at heading level 2 under the parent topic 'BDD in Different Contexts'.</prompt>"
*   **Example Prompt:** "<prompt>Provide a conceptual Gherkin example for testing an API endpoint (e.g., retrieving user data). Start output at heading level 3.</prompt>"

## BDD for Mobile App Testing
*   **Content Prompt:** "<prompt>Discuss the application of BDD to testing native or hybrid mobile applications. Explain that the principles are the same, but step definitions would integrate with mobile automation frameworks like Appium or platform-specific tools (Espresso for Android, XCUITest for iOS). Start output at heading level 2 under the parent topic 'BDD in Different Contexts'.</prompt>"
*   **Further Exploration Link Prompt:** "<prompt>Provide links to resources or examples of using BDD with mobile automation tools like Appium.</prompt>"

## BDD in Microservices Architecture
*   **Content Prompt:** "<prompt>Explore the use of BDD in a microservices context. Discuss how BDD can be used for service-level tests (testing a single service's behavior via its API) and potentially for contract testing between services (though dedicated contract testing tools might also be used). Mention the importance of defining clear service boundaries and behaviors. Start output at heading level 2 under the parent topic 'BDD in Different Contexts'.</prompt>"
*   **Glossary Prompt:** "<prompt>Define 'Microservices Architecture' and 'Contract Testing' for a glossary.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider the challenges of writing end-to-end BDD scenarios that span multiple microservices and how focusing on service-level BDD tests might be beneficial.</prompt>"

*   **Section Summary Prompt:** "<prompt>Summarize the applicability of BDD across different testing contexts, including Web UI, API, Mobile, and Microservices. Reiterate that the core principles remain the same, while the automation implementation details vary based on the target platform and tools. Start output at heading level 2.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate a short quiz (2-3 questions) asking about the types of tools integrated for UI vs. API testing with BDD, and whether BDD principles change significantly across different contexts. Start output at heading level 2.</prompt>"
