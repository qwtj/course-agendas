# I. Understanding the Angular Project

*   **Learning Objective:** Gain familiarity with the Angular project's mission, structure, governance, community norms, and code of conduct to effectively navigate and engage with the project.
    *   "<llm_prompt> Generate a detailed overview for the 'Understanding the Angular Project' section (start with heading level 2) of a learning agenda focused on contributing to Angular. This section aims to familiarize potential contributors with the project's core aspects. Ensure the output defines learning objectives for this section clearly."

## Project Goals & Philosophy
*   **Description:** Comprehend the fundamental mission, vision, and principles guiding Angular's development and evolution.
    *   "<llm_prompt> Explain the core project goals and development philosophy of the Angular framework (start with heading level 3), focusing on aspects relevant to new contributors understanding the 'why' behind design decisions and project direction. Mention Angular's mission and vision."

## Repository Structure
*   **Description:** Learn to navigate the Angular monorepo (`angular/angular`) and understand the organization of its codebase, build system (Bazel), and related repositories like `angular/cli` and `angular/components`.
    *   "<llm_prompt> Describe the repository structure of the main Angular project (angular/angular) (start with heading level 3). Explain its monorepo nature, the role of Bazel, and how different parts like the core framework, CLI, and components are organized within this structure or related repositories. Provide tips for navigating this large codebase."

## Governance Model
*   **Description:** Understand how the Angular project is managed, including the roles of the core team, working groups, and the processes for making decisions.
    *   "<llm_prompt> Outline the governance model of the Angular open-source project (start with heading level 3). Detail the decision-making process, the structure and responsibilities of the core team, and the function of any working groups involved in guiding the project's development."

## Community & Communication Channels
*   **Description:** Identify and learn how to engage with the Angular community through official channels like Discord, GitHub Discussions, Twitter, etc.
    *   "<llm_prompt> List and describe the primary communication channels used by the Angular community and core team (start with heading level 3). Include platforms like Discord servers, GitHub Discussions, mailing lists, Twitter accounts, and forums, explaining the typical purpose of each channel for contributors."

## Code of Conduct
*   **Description:** Familiarize yourself with the expected standards of behavior and ethical guidelines for participating in the Angular community.
    *   "<llm_prompt> Explain the importance of the Angular project's Code of Conduct (start with heading level 3). Summarize its key principles regarding respectful and inclusive behavior expected from all community members and contributors. Provide a link to the official Code of Conduct."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Understanding the Angular Project' section, highlighting the key takeaways about its goals, structure, governance, community, and conduct. Follow this with a reflective prompt asking the learner how understanding these aspects prepares them for contribution."
*   **Glossary Terms:**
    *   "<llm_prompt> Define the following terms in the context of the Angular project: Monorepo, Bazel, Governance Model, Code of Conduct."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short multiple-choice quiz (3-4 questions) to test understanding of the Angular project's structure, main communication channels, and governance basics, based on the topics covered in Section I."

# II. Setting Up the Development Environment

*   **Learning Objective:** Prepare a local development environment by installing necessary prerequisites, forking/cloning the repository, installing dependencies, building the project, and running initial tests.
    *   "<llm_prompt> Generate a detailed overview for the 'Setting Up the Development Environment' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives for successfully preparing a local machine for development and contribution."

## Prerequisites
*   **Description:** Install and configure the required software dependencies, such as specific versions of Node.js, npm/yarn, and Git.
    *   "<llm_prompt> List the essential prerequisites (software and tools) required for setting up a local development environment for contributing to Angular (start with heading level 3). Specify recommended versions for Node.js, npm/yarn, and Git, and mention any other necessary tools. Include commands for checking installed versions, e.g., `node -v`, `npm -v`, `git --version`."

## Forking the Repository
*   **Description:** Create a personal copy (fork) of the main `angular/angular` repository on GitHub.
    *   "<llm_prompt> Provide step-by-step instructions on how to fork the main `angular/angular` GitHub repository (start with heading level 3). Explain the purpose of forking in the context of open-source contribution."

## Cloning the Repository
*   **Description:** Download the forked repository from GitHub to your local machine using Git.
    *   "<llm_prompt> Explain how to clone a forked Angular repository to a local machine using the `git clone` command (start with heading level 3). Provide the command structure and explain how to get the correct repository URL from GitHub."

## Installing Dependencies
*   **Description:** Use npm or yarn to install the project's numerous dependencies defined in `package.json`.
    *   "<llm_prompt> Describe the process of installing project dependencies for the cloned Angular repository using package managers (start with heading level 3). Provide the specific commands (`npm install` or `yarn install`) and explain what this step achieves (populating the `node_modules` directory)."

## Building the Project
*   **Description:** Compile the Angular source code locally, typically using the Bazel build system.
    *   "<llm_prompt> Explain the process for building the Angular project locally after installing dependencies (start with heading level 3). Mention the build system used (e.g., Bazel) and provide the common command(s) needed to compile the source code (e.g., `yarn build`). Briefly explain why a local build is necessary."

## Running Tests Locally
*   **Description:** Execute the project's test suite (unit tests, integration tests) to verify the development environment is correctly set up and baseline tests are passing.
    *   "<llm_prompt> Instruct the user on how to run the Angular project's test suite locally (start with heading level 3). Provide the command(s) (e.g., `yarn test`) and explain the importance of running tests to confirm the environment setup is correct before making any changes."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Setting Up the Development Environment' section, listing the key steps involved. Follow this with a reflective prompt asking the learner to consider potential challenges they might face during setup and how they would troubleshoot them."
*   **Glossary Terms:**
    *   "<llm_prompt> Define the following terms in the context of setting up a development environment for Angular: Fork (GitHub), Clone (Git), Dependencies (npm/yarn), Build System (Bazel)."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) covering the sequence of steps for environment setup (fork, clone, install, build, test) and the commands used."

# III. Finding Contribution Opportunities

*   **Learning Objective:** Learn how to identify suitable tasks for contribution, including bug fixes, feature requests, documentation improvements, and bug triage, by navigating the project's issue tracker and understanding different contribution areas.
    *   "<llm_prompt> Generate a detailed overview for the 'Finding Contribution Opportunities' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to identifying and selecting appropriate tasks for contribution."

## Issue Tracker (GitHub Issues)
*   **Description:** Learn how to effectively browse, filter, and understand issues logged in the Angular GitHub repository, looking for labels like `good first issue` or `help wanted`.
    *   "<llm_prompt> Explain how to use the GitHub Issues tracker for the Angular project to find contribution opportunities (start with heading level 3). Describe common labels (like `good first issue`, `help wanted`, `type: bug`, `type: feature`, `comp: core`, `comp: docs`) and how to filter issues based on them. Emphasize understanding issue descriptions and discussions."

## Feature Requests
*   **Description:** Understand the process for proposing new features or enhancements and participating in discussions around them.
    *   "<llm_prompt> Describe the process for finding, understanding, and potentially contributing to feature requests within the Angular project (start with heading level 3). Explain where feature requests are typically tracked and discussed (e.g., GitHub Issues/Discussions) and the importance of community input."

## Documentation Needs
*   **Description:** Identify areas within the official Angular documentation (guides, API reference, tutorials) that require updates, corrections, or additions.
    *   "<llm_prompt> Explain how contributors can identify opportunities for improving Angular's documentation (start with heading level 3). Mention looking for issues labeled `comp: docs` or identifying gaps, inaccuracies, or areas needing clarification while using the documentation (angular.dev)."

## Bug Triage
*   **Description:** Learn about the process of helping to verify reported bugs, reproduce issues, and add relevant information or categorization labels.
    *   "<llm_prompt> Describe the role of bug triage in the Angular project and how contributors can participate (start with heading level 3). Explain tasks like verifying bug reports, attempting to reproduce issues, and adding relevant context or labels to help maintainers."

## Specific Areas
*   **Description:** Focus contribution efforts on specific parts of the Angular ecosystem like the Core framework, Compiler, Router, CLI, Components (CDK/Material), Forms, Internationalization (i18n), or Documentation.
    *   "<llm_prompt> List the major specific areas within the Angular project where contributors can focus their efforts (start with heading level 3). Briefly describe each area (e.g., Core, Compiler, Router, CLI, Components, Forms, i18n, Docs) and suggest how a contributor might choose an area based on their interests or skills."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Finding Contribution Opportunities' section, outlining the main avenues for finding tasks. Follow this with a reflective prompt asking the learner to consider which types of contributions or specific areas of Angular most appeal to them and why."
*   **Glossary Terms:**
    *   "<llm_prompt> Define the following terms relevant to finding Angular contributions: Issue Tracker, Label (GitHub), Bug Triage, `good first issue`, Feature Request."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) about using GitHub issues labels, the definition of bug triage, and identifying different types of contribution opportunities (bugs, features, docs)."

# IV. The Contribution Workflow

*   **Learning Objective:** Master the standard Git and GitHub workflow used for submitting code changes to the Angular project, from creating a branch to submitting a Pull Request.
    *   "<llm_prompt> Generate a detailed overview for 'The Contribution Workflow' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to the step-by-step process of developing and submitting changes."

## Creating a Feature Branch
*   **Description:** Isolate your work by creating a new Git branch from the latest `main` branch for each bug fix or feature.
    *   "<llm_prompt> Explain the importance of using feature branches in Git for contributions (start with heading level 3). Provide the Git command `git checkout -b my-new-branch-name` and best practices for naming branches (e.g., `fix/issue-123`, `feat/new-widget`)."

## Making Code Changes
*   **Description:** Implement the required code modifications or additions according to the issue description and Angular's standards.
    *   "<llm_prompt> Describe the process of making code changes within the context of an Angular contribution (start with heading level 3). Emphasize understanding the issue requirements, adhering to project coding standards (covered later), and focusing changes relevant to the specific issue being addressed."

## Writing/Updating Tests
*   **Description:** Add new unit tests or end-to-end tests to cover the changes made, or update existing tests to reflect the modifications. Ensure adequate code coverage.
    *   "<llm_prompt> Explain the requirement of writing or updating tests (Unit and/or E2E) alongside code changes when contributing to Angular (start with heading level 3). Stress the importance of test coverage for maintaining code quality and preventing regressions."

## Committing Changes
*   **Description:** Save changes using Git commits with clear messages that follow Angular's Conventional Commits format.
    *   "<llm_prompt> Explain how to commit changes using Git (`git commit`) (start with heading level 3). Detail the Angular project's specific commit message conventions (Conventional Commits). Provide examples like `fix(compiler): correct output for directive X` or `feat(forms): add new validator Y`. Emphasize atomic commits."

## Keeping Your Fork Synced
*   **Description:** Regularly update your local branch and fork with the latest changes from the upstream `angular/angular` repository to avoid merge conflicts.
    *   "<llm_prompt> Provide instructions on how to keep a local Git branch and fork synchronized with the upstream Angular repository (start with heading level 3). Include steps for adding the upstream remote (`git remote add upstream ...`), fetching changes (`git fetch upstream`), and rebasing the feature branch (`git rebase upstream/main`)."

## Pushing Changes to Your Fork
*   **Description:** Upload the local commits from your feature branch to your remote repository on GitHub.
    *   "<llm_prompt> Explain how to push committed changes from a local feature branch to the corresponding branch on the contributor's GitHub fork using `git push origin my-new-branch-name` (start with heading level 3)."

## Creating a Pull Request (PR)
*   **Description:** Submit your changes for review by creating a Pull Request (PR) from your feature branch to the main Angular repository. Write a clear PR description linking to the relevant issue.
    *   "<llm_prompt> Describe the final step of creating a Pull Request (PR) on GitHub from the pushed feature branch to the Angular repository's main branch (start with heading level 3). Emphasize the importance of a clear PR title and detailed description, including linking the relevant GitHub issue (e.g., 'Fixes #12345')."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for 'The Contribution Workflow' section, recapping the Git/GitHub steps from branching to PR submission. Follow this with a reflective prompt asking the learner to identify the most critical step in this workflow for ensuring a smooth review process."
*   **Glossary Terms:**
    *   "<llm_prompt> Define the following Git/GitHub terms in the context of Angular contribution: Feature Branch, Commit Message Convention (Conventional Commits), Upstream Remote, Rebase, Pull Request (PR)."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (4-5 questions) testing the order of the contribution workflow steps and the purpose of key Git commands like `git checkout -b`, `git commit`, `git fetch upstream`, `git rebase`, and `git push`."

# V. Coding Standards and Conventions

*   **Learning Objective:** Understand and apply the coding styles, patterns, naming conventions, and commit message formats required by the Angular project to ensure code consistency and readability.
    *   "<llm_prompt> Generate a detailed overview for the 'Coding Standards and Conventions' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to adhering to the project's established coding practices."

## Style Guide
*   **Description:** Familiarize yourself with the official Angular style guide, which dictates formatting, syntax, and best practices.
    *   "<llm_prompt> Explain the importance of the official Angular Style Guide for contributors (start with heading level 3). Provide a link to the guide and summarize its main goals (readability, maintainability, consistency). Mention that linters often enforce these rules."

## Linting and Formatting Tools
*   **Description:** Learn to use automated tools like ESLint and Prettier, configured within the project, to check and automatically format code according to the style guide.
    *   "<llm_prompt> Describe the role of linting (e.g., ESLint) and formatting (e.g., Prettier) tools within the Angular development workflow (start with heading level 3). Explain how contributors can run these tools locally (e.g., via `npm run lint` or `npm run format`) to ensure their code meets project standards before committing."

## Naming Conventions
*   **Description:** Adhere to consistent naming conventions for variables, functions, classes, files, modules, etc., as practiced within the Angular codebase.
    *   "<llm_prompt> Outline the general principles of naming conventions used in the Angular project for different code elements (variables, functions, classes, interfaces, files, selectors, etc.) (start with heading level 3). Encourage contributors to infer conventions by observing existing code in the relevant module."

## Architectural Patterns
*   **Description:** Recognize and utilize common software design patterns and architectural approaches prevalent in the Angular framework's source code.
    *   "<llm_prompt> Discuss the importance of understanding and applying relevant architectural and design patterns when contributing to the Angular codebase (start with heading level 3). Mention that familiarity with patterns used in Angular (like Dependency Injection, Observable patterns, etc.) helps in writing idiomatic and maintainable code. Suggest studying existing code as a primary resource."

## Commit Message Conventions
*   **Description:** Master the specific format (Conventional Commits) required for Git commit messages, enabling automated changelog generation and clear history.
    *   "<llm_prompt> Reiterate and provide more detail on the Conventional Commits specification as used by Angular (start with heading level 3). Explain the structure `<type>(<scope>): <subject>` and list common types (`feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`). Provide examples and explain the significance for tooling (e.g., changelog generation)."
    *   **Example Commit Messages:**
        *   "<llm_prompt> Provide 3-4 diverse examples of well-formatted Angular Conventional Commit messages, covering different types (feat, fix, docs) and scopes (e.g., compiler, forms, common, docs)."
        *   `feat(common): add 'titlecase' pipe`
        *   `fix(compiler): resolve issue with AOT compilation for nested components`
        *   `docs(http): clarify interceptor usage examples`
        *   `chore(github): update issue templates`

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Coding Standards and Conventions' section, emphasizing the importance of consistency. Follow this with a reflective prompt asking the learner why adhering to these standards is crucial in a large collaborative project like Angular."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: Style Guide, Linter (ESLint), Formatter (Prettier), Naming Conventions, Conventional Commits."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) focusing on the purpose of the style guide, the role of linting/formatting tools, and the structure of a Conventional Commit message."

# VI. Testing Requirements

*   **Learning Objective:** Understand the importance of testing in Angular development, learn how to write and run unit and end-to-end tests, and be aware of code coverage expectations.
    *   "<llm_prompt> Generate a detailed overview for the 'Testing Requirements' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to ensuring code quality through comprehensive testing."

## Unit Testing
*   **Description:** Write focused tests for individual functions, classes, or components in isolation using frameworks like Jasmine, Karma, or Jest.
    *   "<llm_prompt> Explain the concept and importance of unit testing in the context of Angular contributions (start with heading level 3). Mention the typical frameworks used (Jasmine, Karma, Jest) and the goal of testing units in isolation. Provide guidance on where to find existing unit tests and how to add new ones for the changed code."

## End-to-End (E2E) Testing
*   **Description:** Write tests that simulate user interactions and workflows across multiple parts of the application, using tools like Protractor (legacy), Cypress, or Playwright.
    *   "<llm_prompt> Describe End-to-End (E2E) testing and its role in verifying complete user flows within Angular (start with heading level 3). Mention common E2E testing tools (Protractor, Cypress, Playwright) used by or relevant to Angular projects. Explain when E2E tests need to be added or updated as part of a contribution."

## Code Coverage
*   **Description:** Understand the concept of test code coverage and the potential requirement to meet minimum coverage thresholds for contributed code.
    *   "<llm_prompt> Explain code coverage as a metric in software testing (start with heading level 3). Discuss its relevance in the Angular contribution process, mentioning that PRs might be checked for maintaining or increasing test coverage. Explain how developers might check coverage locally."

## Running the Test Suite
*   **Description:** Know how to execute the entire test suite or specific subsets of tests locally and understand the role of Continuous Integration (CI) in running tests automatically.
    *   "<llm_prompt> Provide instructions on how to run the different types of tests (unit, E2E) locally within the Angular project environment (start with heading level 3). Mention commands like `yarn test` or specific commands for package testing. Explain that these tests are also run automatically by CI systems upon PR submission."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Testing Requirements' section, highlighting the different types of tests and the importance of coverage. Follow this with a reflective prompt asking the learner why comprehensive testing is particularly vital for a foundational framework like Angular."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: Unit Testing, End-to-End (E2E) Testing, Code Coverage, Test Suite, Continuous Integration (CI)."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) distinguishing between unit and E2E tests, explaining the purpose of code coverage, and identifying how tests are executed in the contribution workflow."

# VII. Documentation Contributions

*   **Learning Objective:** Learn how to contribute to Angular's official documentation, including understanding its structure, updating existing content, writing new guides, and previewing changes locally.
    *   "<llm_prompt> Generate a detailed overview for the 'Documentation Contributions' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to improving and expanding the project's documentation."

## Docs Structure and Style
*   **Description:** Understand the organization of Angular's documentation website (angular.dev) and adhere to its writing style and formatting guidelines.
    *   "<llm_prompt> Describe the general structure and organization of the Angular documentation (angular.dev) (start with heading level 3). Explain the importance of following the established documentation style guide for clarity, consistency, and tone. Provide pointers on where to find style guidelines if available."

## Updating Existing Docs
*   **Description:** Identify and correct errors, improve clarity, or add missing information to existing documentation pages.
    *   "<llm_prompt> Explain the process for making updates to existing Angular documentation pages (start with heading level 3). This includes identifying issues (typos, outdated info, unclear explanations), locating the corresponding source file (often Markdown), making edits, and submitting a PR following the standard workflow, often targeting the `comp: docs` label."

## Writing New Guides or Sections
*   **Description:** Create new documentation content, such as tutorials, conceptual explanations, or guides for new features.
    *   "<llm_prompt> Discuss the process for contributing new documentation content (guides, tutorials, sections) to Angular (start with heading level 3). Mention that this might involve discussion with the docs team or arise from new feature development. Emphasize structuring content logically and adhering to style."

## API Reference Documentation
*   **Description:** Understand how API documentation is generated (often from source code comments using tools like TypeDoc) and how to update or improve these comments.
    *   "<llm_prompt> Explain how Angular's API reference documentation is typically generated (e.g., from TSDoc comments in the source code) (start with heading level 3). Describe how contributors can improve API docs by enhancing these source code comments, ensuring accuracy and completeness."

## Building and Previewing Docs Locally
*   **Description:** Learn how to build the documentation site locally to preview changes before submitting a Pull Request.
    *   "<llm_prompt> Provide instructions or point to resources explaining how to build and preview the Angular documentation site locally (start with heading level 3). Explain the typical commands involved (e.g., `yarn build-docs`, `yarn serve-docs`) and the importance of previewing changes for layout and correctness."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Documentation Contributions' section, covering the types of doc contributions and the process. Follow this with a reflective prompt asking the learner how high-quality documentation impacts the adoption and usability of a framework like Angular."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: API Reference Documentation, TSDoc/JSDoc, Markdown, Documentation Style Guide."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) about different ways to contribute to docs (updates vs. new content), how API docs are often generated, and the purpose of previewing docs locally."

# VIII. The Review Process

*   **Learning Objective:** Understand the stages a Pull Request goes through after submission, including CLA signing, automated checks, code review by maintainers, addressing feedback, and eventual merging.
    *   "<llm_prompt> Generate a detailed overview for 'The Review Process' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to navigating the PR review cycle effectively."

## Contributor License Agreement (CLA)
*   **Description:** Understand the requirement to sign the Contributor License Agreement (CLA) electronically, typically handled by a bot, granting the project permission to use your contribution.
    *   "<llm_prompt> Explain the purpose of the Contributor License Agreement (CLA) in open-source projects like Angular (start with heading level 3). Describe the process for signing it, usually automated via a GitHub bot upon submitting the first PR, and why it's a necessary legal step."

## Automated Checks (CI/CD)
*   **Description:** Be aware that Continuous Integration (CI) systems will automatically run builds, tests, linting, and other checks on your submitted PR. Monitor the results of these checks.
    *   "<llm_prompt> Describe the role of automated checks (CI/CD pipelines) triggered on Pull Requests in the Angular project (start with heading level 3). Explain that these checks run builds, tests, linters, etc., and contributors need to ensure these checks pass. Mention where to view the status of these checks (e.g., GitHub Checks tab on the PR)."

## Code Review by Maintainers
*   **Description:** Understand that core team members or designated reviewers will examine the submitted code, providing feedback, suggestions, or requesting changes.
    *   "<llm_prompt> Explain the code review stage where Angular maintainers or community reviewers examine the PR's code, design, and tests (start with heading level 3). Describe the nature of feedback (suggestions, questions, change requests) and the importance of viewing it as a collaborative process."

## Addressing Feedback
*   **Description:** Learn how to respond to reviewer comments constructively, make necessary changes to your code, and push updates to the same PR branch.
    *   "<llm_prompt> Provide guidance on how contributors should address feedback received during code review (start with heading level 3). Emphasize responding to comments, making the requested code/test/doc changes, committing them (following conventions), and pushing updates to the *same* feature branch of the PR. Encourage asking clarifying questions if feedback is unclear."

## Merging the Pull Request
*   **Description:** Understand that once the PR is approved by reviewers and all checks pass, a maintainer will merge the changes into the main codebase.
    *   "<llm_prompt> Describe the final step of the review process: merging the Pull Request (start with heading level 3). Explain that this action, performed by a maintainer, integrates the contributor's changes into the main branch (e.g., `main`) of the Angular repository, marking the completion of the contribution."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for 'The Review Process' section, outlining the key stages from CLA to merge. Follow this with a reflective prompt asking the learner how they can prepare for and respond effectively to code review feedback."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: Contributor License Agreement (CLA), Continuous Integration (CI), Code Review, Pull Request Merge."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (4-5 questions) covering the purpose of the CLA, the function of CI checks, the role of maintainer reviews, how to update a PR based on feedback, and who performs the final merge."

# IX. Community Interaction & Etiquette

*   **Learning Objective:** Learn how to communicate effectively and respectfully within the Angular community, ask for help, provide feedback, participate in discussions, and understand potential mentorship opportunities.
    *   "<llm_prompt> Generate a detailed overview for the 'Community Interaction & Etiquette' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to engaging constructively with the community."

## Asking Questions
*   **Description:** Learn the best practices for asking questions effectively, providing sufficient context, and using the appropriate communication channels.
    *   "<llm_prompt> Provide guidelines on how to effectively ask questions when contributing to Angular (start with heading level 3). Emphasize choosing the right channel (e.g., GitHub Discussions, Discord), providing clear context, describing the problem, what was attempted, and being patient and respectful."

## Providing Feedback
*   **Description:** Understand how to offer constructive feedback on issues, PRs, or proposals in a respectful and helpful manner.
    *   "<llm_prompt
> Explain the principles of providing constructive feedback within the Angular community (e.g., on other's PRs or issues) (start with heading level 3). Focus on being specific, polite, focusing on the code/proposal (not the person), and suggesting improvements rather than just criticizing."

## Participating in Discussions
*   **Description:** Engage in technical discussions on platforms like GitHub Discussions, RFCs (Requests for Comments), or design documents regarding Angular's features and future direction.
    *   "<llm_prompt> Describe how contributors can participate in broader discussions about Angular's development (start with heading level 3). Mention channels like GitHub Discussions, RFC processes, or specific working group meetings. Encourage thoughtful participation based on understanding the context."

## Mentorship Opportunities
*   **Description:** Be aware of potential formal or informal mentorship opportunities within the community for learning from experienced contributors or helping newcomers.
    *   "<llm_prompt> Discuss the possibility of mentorship within the Angular contributor community (start with heading level 3). Mention that while formal programs may vary, seeking guidance from or offering help to others is often encouraged. Suggest ways to connect with potential mentors or mentees through community channels."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Community Interaction & Etiquette' section, stressing the importance of respectful and effective communication. Follow this with a reflective prompt asking the learner how positive community interaction benefits both the individual contributor and the project as a whole."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: Etiquette, Constructive Feedback, RFC (Request for Comments), Mentorship."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) on best practices for asking questions, principles of constructive feedback, and appropriate channels for different types of community interaction."

# X. Becoming a Long-Term Contributor

*   **Learning Objective:** Explore pathways for deeper involvement in the Angular project, including making consistent contributions, developing expertise, joining teams, and assisting with project maintenance tasks like triage and reviews.
    *   "<llm_prompt> Generate a detailed overview for the 'Becoming a Long-Term Contributor' section (start with heading level 2) of a learning agenda focused on contributing to Angular. Define the learning objectives related to sustained engagement and increased responsibility within the project."

## Consistent Contributions
*   **Description:** Understand that regular, reliable contributions build trust and demonstrate commitment to the project.
    *   "<llm_prompt> Explain the value of consistent contributions (code, docs, triage, reviews) for becoming a recognized member of the Angular community (start with heading level 3). Emphasize quality and reliability over sheer quantity."

## Areas of Expertise
*   **Description:** Develop deeper knowledge and potentially specialize in specific areas of the Angular framework or tooling.
    *   "<llm_prompt> Discuss the benefits of developing expertise in specific areas of Angular (e.g., Forms, Router, CLI Build system) (start with heading level 3). Explain how specialization can lead to more impactful contributions and potentially greater responsibility within that area."

## Joining Working Groups or Teams
*   **Description:** Learn about the possibility of joining specific working groups or teams that manage distinct parts of the Angular project (e.g., Docs team, CLI team, Core team), often requiring demonstrated expertise and commitment.
    *   "<llm_prompt> Describe the structure of working groups or specialized teams within the Angular project (if applicable) (start with heading level 3). Explain the potential path for dedicated contributors to join these groups, contributing to design decisions and maintenance in their area of expertise."

## Triaging Issues and Reviewing PRs
*   **Description:** Contribute further by helping to manage the influx of GitHub issues (triage) and review Pull Requests submitted by other community members.
    *   "<llm_prompt> Explain how experienced contributors can take on more responsibility by assisting with issue triage (labeling, verifying, closing duplicates) and code reviews for PRs submitted by others (start with heading level 3). Describe the importance of these activities for project health and how one might get involved (e.g., starting with comments, eventually potentially gaining reviewer permissions)."

*   **Section Summary & Reflection:**
    *   "<llm_prompt> Generate a concise summary paragraph for the 'Becoming a Long-Term Contributor' section, outlining paths for deeper involvement. Follow this with a reflective prompt asking the learner what aspects of long-term contribution (e.g., specialization, mentorship, maintenance) they find most appealing."
*   **Glossary Terms:**
    *   "<llm_prompt> Define: Long-Term Contributor, Working Group, Issue Triage, Code Reviewer (Community)."
*   **Self-Assessment Quiz:**
    *   "<llm_prompt> Create a short quiz (3-4 questions) about the benefits of consistent contribution, the concept of specialization, and examples of higher-level contribution activities like triage and reviewing."
