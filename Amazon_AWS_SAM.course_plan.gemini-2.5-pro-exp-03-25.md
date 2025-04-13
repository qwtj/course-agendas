# I. Introduction to AWS SAM
*(Transition: Begin with the foundational concepts of AWS SAM to establish context.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective for understanding the fundamental concepts, purpose, and benefits of AWS SAM as an introduction, starting at heading level 2.</llm_prompt>"

## Overview, Concepts, Basics
"<llm_prompt>Starting at heading level 2, explain the core concepts of AWS Serverless Application Model (SAM), its purpose in serverless development on AWS, and its main benefits compared to other approaches.</llm_prompt>"

### What is SAM?
"<llm_prompt>Starting at heading level 3, define AWS SAM, explaining its relationship with AWS CloudFormation and its primary function as a framework for simplifying serverless application definitions.</llm_prompt>"

### Why Use SAM?
"<llm_prompt>Starting at heading level 3, elaborate on the advantages of using AWS SAM, covering aspects like simplified syntax for serverless resources, local testing and debugging capabilities, integrated best practices, and its role as an extension of CloudFormation.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a brief comparative example highlighting the difference in syntax verbosity between defining a simple Lambda function in native CloudFormation versus AWS SAM, using Markdown code blocks, starting at heading level 4.</llm_prompt>"

### Key Components
"<llm_prompt>Starting at heading level 3, identify and describe the key components of the AWS SAM ecosystem, including the SAM Template (`template.yaml`/`template.json`), the SAM CLI, and the AWS resources it supports.</llm_prompt>"

### SAM vs. CloudFormation
"<llm_prompt>Starting at heading level 3, clarify the relationship between AWS SAM and AWS CloudFormation. Explain how SAM templates are transformed into CloudFormation templates during deployment and highlight the specific value proposition of SAM's shorthand syntax for serverless patterns.</llm_prompt>"

### SAM vs. Serverless Framework vs. CDK
"<llm_prompt>Starting at heading level 3, compare and contrast AWS SAM with other popular Infrastructure as Code (IaC) and serverless development frameworks like the Serverless Framework and the AWS Cloud Development Kit (CDK). Focus on their respective strengths, weaknesses, and typical use cases.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to the introduction to AWS SAM: AWS SAM, CloudFormation, Serverless, SAM CLI, IaC, CDK, Serverless Framework, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 multiple-choice questions to test understanding of the core concepts, benefits, and key components of AWS SAM, as covered in the Introduction section, starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to consider scenarios where AWS SAM might be a more suitable choice than native CloudFormation or the AWS CDK, based on the introductory concepts, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to official AWS documentation or reputable blog posts introducing AWS SAM and its core concepts, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph recapping the key takeaways from the 'Introduction to AWS SAM' section, emphasizing its purpose, benefits, and main components, starting at heading level 2.</llm_prompt>"

# II. SAM Template Specification
*(Transition: Having understood what SAM is, delve into the structure and syntax of its core component: the SAM template.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective for understanding the structure, syntax, key sections, and intrinsic functions used within an AWS SAM template file, starting at heading level 2.</llm_prompt>"

## Syntax, Structure, Core
"<llm_prompt>Starting at heading level 2, provide a detailed explanation of the AWS SAM template file (`template.yaml` or `template.json`), covering its overall structure, required sections, and the specific syntax used to define serverless resources.</llm_prompt>"

### Template Anatomy
"<llm_prompt>Starting at heading level 3, break down the typical structure of a SAM template file, listing and briefly describing the purpose of its main sections.</llm_prompt>"

#### `AWSTemplateFormatVersion`
"<llm_prompt>Starting at heading level 4, explain the purpose and typical value of the `AWSTemplateFormatVersion` section in a SAM template.</llm_prompt>"

#### `Transform`
"<llm_prompt>Starting at heading level 4, explain the critical role of the `Transform` section, specifically the `AWS::Serverless-2016-10-31` declaration, in enabling SAM syntax processing.</llm_prompt>"

#### `Globals` Section
"<llm_prompt>Starting at heading level 4, describe the function of the `Globals` section in a SAM template. Explain how it helps reduce redundancy by defining common properties for resources like Functions, APIs, and SimpleTables. Provide a simple example using a Markdown code block.</llm_prompt>"
*   **Function Globals:** "<llm_prompt>List and explain common properties that can be set globally for `AWS::Serverless::Function` resources within the `Globals` section (e.g., `Runtime`, `Handler`, `MemorySize`, `Timeout`, `Environment Variables`, `Layers`), starting at heading level 5.</llm_prompt>"
*   **Api Globals:** "<llm_prompt>List and explain common properties that can be set globally for `AWS::Serverless::Api` resources within the `Globals` section (e.g., `Auth`, `Cors`), starting at heading level 5.</llm_prompt>"
*   **HttpApi Globals:** "<llm_prompt>List and explain common properties that can be set globally for `AWS::Serverless::HttpApi` resources within the `Globals` section (e.g., `Auth`, `Cors`), starting at heading level 5.</llm_prompt>"

#### `Resources` Section
"<llm_prompt>Starting at heading level 4, explain that the `Resources` section is the core part of the SAM template where actual AWS resources (Functions, APIs, Databases, etc.) are defined using SAM or CloudFormation syntax.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a basic example snippet within a Markdown code block showing how an `AWS::Serverless::Function` might be defined within the `Resources` section, starting at heading level 5.</llm_prompt>"

#### `Parameters` Section
"<llm_prompt>Starting at heading level 4, describe the purpose of the `Parameters` section for defining inputs that allow customization of the SAM stack during deployment.</llm_prompt>"

#### `Outputs` Section
"<llm_prompt>Starting at heading level 4, explain how the `Outputs` section is used to declare values that should be accessible after the stack is created or updated (e.g., API endpoint URL, Function ARN).</llm_prompt>"

#### `Conditions` Section
"<llm_prompt>Starting at heading level 4, explain the use of the `Conditions` section to control whether certain resources are created or properties are defined based on parameter values or other conditions.</llm_prompt>"

#### `Mappings` Section
"<llm_prompt>Starting at heading level 4, describe the `Mappings` section and how it serves as a lookup table for configuration values, often used for environment-specific or region-specific settings.</llm_prompt>"

#### `Description`
"<llm_prompt>Starting at heading level 4, explain the simple purpose of the `Description` section for adding human-readable metadata to the template.</llm_prompt>"

### Intrinsic Functions
"<llm_prompt>Starting at heading level 3, explain the concept of CloudFormation Intrinsic Functions (e.g., `!Ref`, `!GetAtt`, `!Sub`, `!ImportValue`) and how they are used within SAM templates to reference resources, parameters, outputs, and construct dynamic values.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide short examples using Markdown inline code formatting for common intrinsic functions like `!Ref`, `!GetAtt`, and `!Sub` within the context of a SAM template resource definition, starting at heading level 4.</llm_prompt>"

### Metadata Section
"<llm_prompt>Starting at heading level 3, describe the purpose of the `Metadata` section in a SAM template, explaining that it often contains information used by other AWS services or tools.</llm_prompt>"

#### `AWS::ServerlessRepo::Application`
"<llm_prompt>Starting at heading level 4, specifically explain the `AWS::ServerlessRepo::Application` metadata key and its role in preparing a SAM application for publishing to the AWS Serverless Application Repository.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to the SAM Template Specification: Transform, Globals, Resources, Parameters, Outputs, Conditions, Mappings, Intrinsic Functions (`Ref`, `GetAtt`, `Sub`), Metadata, Serverless Application Repository, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 4 multiple-choice or fill-in-the-blank questions testing understanding of the main SAM template sections (`Transform`, `Globals`, `Resources`, `Outputs`) and the purpose of intrinsic functions, starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to think about how the `Globals`, `Parameters`, and `Conditions` sections contribute to creating reusable and environment-agnostic SAM templates, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to the official AWS SAM specification documentation and examples of common template patterns, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph recapping the key elements of the SAM template specification, focusing on its structure, major sections, and the use of intrinsic functions, starting at heading level 2.</llm_prompt>"

# III. AWS SAM CLI
*(Transition: With knowledge of the template structure, explore the command-line tool used to build, test, and deploy SAM applications.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on mastering the installation, configuration, and usage of the AWS SAM CLI for the entire serverless application development lifecycle (init, build, test, package, deploy, monitor), starting at heading level 2.</llm_prompt>"

## Tooling, Commands, Development
"<llm_prompt>Starting at heading level 2, introduce the AWS SAM Command Line Interface (CLI) as the primary tool for developing, testing, and deploying SAM applications. Provide an overview of its role in the developer workflow.</llm_prompt>"

### Installation & Configuration
"<llm_prompt>Starting at heading level 3, provide instructions and prerequisites for installing the SAM CLI, mentioning dependencies like Python, Pip, and optionally Docker. Also, cover the configuration of AWS credentials needed for the CLI to interact with AWS services.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'Local Testing and Debugging' section (VI) regarding the Docker requirement for local simulation, starting at heading level 4.</llm_prompt>"

### Core Commands
"<llm_prompt>Starting at heading level 3, introduce the core SAM CLI commands that form the typical development and deployment workflow.</llm_prompt>"

#### `sam init`
"<llm_prompt>Starting at heading level 4, explain the `sam init` command, its purpose for bootstrapping new serverless projects, and the types of templates and runtimes it supports.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to run `sam init` to create a sample 'Hello World' application, specifying the runtime (e.g., Python or Node.js), starting at heading level 5.</llm_prompt>"

#### `sam build`
"<llm_prompt>Starting at heading level 4, describe the `sam build` command. Explain how it processes the SAM template, installs dependencies (e.g., `requirements.txt` for Python, `package.json` for Node.js), and prepares application artifacts in a structured `.aws-sam/build` directory for packaging or local testing.</llm_prompt>"
*   **Build Options:** "<llm_prompt>Explain key `sam build` options like `--use-container` (for building inside a Docker container matching the Lambda environment), `--manifest` (specifying dependency manifests), and `--cached` (for faster builds), starting at heading level 5.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to run `sam build` within their initialized project directory, starting at heading level 5.</llm_prompt>"

#### `sam package`
"<llm_prompt>Starting at heading level 4, explain the `sam package` command. Describe how it takes the built artifacts, zips the code and dependencies, uploads the zip file to a specified S3 bucket, and generates a new CloudFormation template (`packaged.yaml`) with references to the S3 location. This command is often implicitly handled by `sam deploy`.</llm_prompt>"

#### `sam deploy`
"<llm_prompt>Starting at heading level 4, describe the `sam deploy` command as the primary mechanism for deploying the serverless application to AWS CloudFormation. Explain that it creates or updates a CloudFormation stack based on the SAM template (or the output of `sam package`).</llm_prompt>"
*   **Guided Deployments:** "<llm_prompt>Explain the `--guided` flag for `sam deploy`, highlighting its utility for first-time deployments or when needing interactive prompts for stack name, region, parameters, and configuration saving (`samconfig.toml`), starting at heading level 5.</llm_prompt>"
*   **Deployment Options:** "<llm_prompt>List and briefly explain essential `sam deploy` options like `--stack-name`, `--s3-bucket`, `--capabilities`, `--parameter-overrides`, `--config-file`, and `--resolve-s3`, starting at heading level 5.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'Deployment with SAM' section (IV) for more details on capabilities, change sets, and stack management, starting at heading level 5.</llm_prompt>"

#### `sam sync`
"<llm_prompt>Starting at heading level 4, introduce the `sam sync` command as part of SAM Accelerate. Explain its purpose for enabling rapid iteration during development by synchronizing local code and template changes directly to the AWS Cloud without a full CloudFormation deployment. Mention the `--watch` flag.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'Advanced SAM Features' section (VII) for more details on SAM Accelerate, starting at heading level 5.</llm_prompt>"

#### `sam delete`
"<llm_prompt>Starting at heading level 4, explain the `sam delete` command and its function in removing the deployed CloudFormation stack and associated resources.</llm_prompt>"

#### `sam logs`
"<llm_prompt>Starting at heading level 4, describe the `sam logs` command for fetching and tailing logs generated by Lambda functions within a deployed SAM stack, aiding in monitoring and troubleshooting.</llm_prompt>"

#### `sam validate`
"<llm_prompt>Starting at heading level 4, explain the `sam validate` command for performing basic syntax and structural validation of a SAM template file before deployment.</llm_prompt>"

### Local Testing & Debugging Commands
"<llm_prompt>Starting at heading level 3, introduce the subset of SAM CLI commands specifically designed for testing and debugging serverless functions and APIs locally, before deploying to the cloud.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'Local Testing and Debugging' section (VI) for in-depth explanations and usage patterns of these commands, starting at heading level 4.</llm_prompt>"

#### `sam local invoke`
"<llm_prompt>Starting at heading level 4, briefly describe `sam local invoke` for executing a single Lambda function locally with a given event payload.</llm_prompt>"

#### `sam local start-api`
"<llm_prompt>Starting at heading level 4, briefly describe `sam local start-api` for running a local web server that simulates API Gateway, routing requests to local Lambda functions.</llm_prompt>"

#### `sam local start-lambda`
"<llm_prompt>Starting at heading level 4, briefly describe `sam local start-lambda` for starting a local endpoint that emulates the Lambda Invoke API, useful for testing services that invoke Lambda functions directly.</llm_prompt>"

#### `sam local generate-event`
"<llm_prompt>Starting at heading level 4, briefly describe `sam local generate-event` for creating sample event payloads from various AWS services (S3, API Gateway, SNS, etc.) to use with `sam local invoke`.</llm_prompt>"

### Configuration Files
"<llm_prompt>Starting at heading level 3, explain the use of the `samconfig.toml` file. Describe how it stores default parameter values and configurations for `sam deploy` and `sam sync` commands, allowing for consistent deployments across different environments (e.g., dev, staging, prod).</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a simple example snippet of a `samconfig.toml` file showing how different environments might be configured, starting at heading level 4.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to the AWS SAM CLI: SAM CLI, `sam init`, `sam build`, `sam package`, `sam deploy`, `sam sync`, `sam logs`, `sam delete`, `sam validate`, `sam local invoke`, `sam local start-api`, `samconfig.toml`, SAM Accelerate, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 4 practical questions requiring the user to identify the correct SAM CLI command for specific tasks (e.g., 'Which command bootstraps a new project?', 'Which command deploys the stack?', 'Which command tests a function locally?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to compare the traditional `build -> package -> deploy` workflow with the `sam sync` workflow and consider the trade-offs for different development phases, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to the official AWS SAM CLI command reference and tutorials on using the core commands, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph highlighting the role of the SAM CLI and summarizing the purpose of its core commands (`init`, `build`, `deploy`, `sync`, `local`, `logs`, `validate`, `delete`) in the serverless development lifecycle, starting at heading level 2.</llm_prompt>"

# IV. Deployment with SAM
*(Transition: Focus specifically on the deployment process facilitated by the SAM CLI, including underlying CloudFormation concepts.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective covering the process of deploying SAM applications, understanding the relationship with CloudFormation stacks, managing updates safely using change sets, handling capabilities, and configuring stack policies and rollbacks, starting at heading level 2.</llm_prompt>"

## CloudFormation, Process, Lifecycle
"<llm_prompt>Starting at heading level 2, detail the process of deploying serverless applications defined with AWS SAM, emphasizing its reliance on AWS CloudFormation for provisioning and managing resources.</llm_prompt>"

### Deployment Workflow
"<llm_prompt>Starting at heading level 3, reiterate the standard deployment workflow using SAM CLI commands: `sam build` -> (`sam package`) -> `sam deploy`. Explain how these steps translate the SAM template into a deployed CloudFormation stack.</llm_prompt>"
*   **Callout:** "<llm_prompt>Add a highlighted callout explaining that `sam deploy` often implicitly handles the packaging step if an S3 bucket is specified or configured, starting at heading level 4.</llm_prompt>"

### CloudFormation Stacks
"<llm_prompt>Starting at heading level 3, explain how each deployed SAM application corresponds to a CloudFormation stack. Describe how to view and manage these stacks in the AWS Management Console or via the AWS CLI.</llm_prompt>"

### Change Sets
"<llm_prompt>Starting at heading level 3, explain the concept of CloudFormation change sets and their importance for safe updates. Describe how `sam deploy` uses change sets by default and how to use the `--no-execute-changeset` flag to preview proposed changes before applying them.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to make a small change to their sample application's `template.yaml` (e.g., change a Lambda memory setting) and then run `sam deploy --no-execute-changeset` to generate and review a change set, starting at heading level 4.</llm_prompt>"

### Capabilities
"<llm_prompt>Starting at heading level 3, explain why deployments sometimes require acknowledging capabilities like `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, or `CAPABILITY_AUTO_EXPAND`. Clarify that this is a CloudFormation mechanism to confirm awareness of potential IAM resource creation or macro expansion.</llm_prompt>"
*   **Example:** "<llm_prompt>Show how capabilities are typically acknowledged using the `--capabilities` flag with `sam deploy` or configured in `samconfig.toml`, using Markdown inline code formatting, starting at heading level 4.</llm_prompt>"

### Stack Policies
"<llm_prompt>Starting at heading level 3, introduce CloudFormation stack policies as a mechanism to protect stack resources from accidental updates or deletion. Explain how they can be applied during stack creation or updates, although direct SAM CLI support is limited (often managed via AWS Console/CLI for the stack itself).</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide a link to the AWS CloudFormation documentation on Stack Policies, starting at heading level 4.</llm_prompt>"

### Rollback Configuration
"<llm_prompt>Starting at heading level 3, discuss CloudFormation's automatic rollback feature on deployment failure. Mention how to view rollback events and briefly touch upon advanced rollback configurations (though primarily a CloudFormation feature rather than SAM-specific).</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to SAM deployment: CloudFormation Stack, Change Set, Capabilities (`CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`), Stack Policy, Rollback, Deployment Workflow, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 scenario-based questions asking how to handle specific deployment situations (e.g., 'How do you preview changes before applying?', 'What must you specify if your template creates IAM roles?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner why using change sets is a crucial best practice, especially when updating production environments, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2 curated links to AWS documentation or articles covering CloudFormation change sets and deployment best practices relevant to SAM, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph outlining the SAM deployment process via CloudFormation, emphasizing the workflow, the role of stacks, the safety provided by change sets and capabilities, and the concepts of stack policies and rollbacks, starting at heading level 2.</llm_prompt>"

# V. Supported AWS Resources
*(Transition: Explore the specific AWS resource types that SAM provides simplified syntax for.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on identifying and understanding the syntax and capabilities of the core serverless resource types provided by AWS SAM (Function, Api, HttpApi, SimpleTable, StateMachine, etc.), including their key properties and event source integrations, starting at heading level 2.</llm_prompt>"

## Integration, Services, Serverless Types
"<llm_prompt>Starting at heading level 2, provide an overview of the specialized AWS resource types defined within the `AWS::Serverless` namespace. Explain that these offer a simplified syntax compared to their native CloudFormation counterparts, focusing on common serverless patterns.</llm_prompt>"

### `AWS::Serverless::Function`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::Function` resource type for defining AWS Lambda functions. Highlight key simplified properties like `CodeUri`, `Handler`, `Runtime`, `MemorySize`, `Timeout`, `Policies`, and the `Events` property for defining triggers.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block demonstrating the definition of a basic Lambda function using `AWS::Serverless::Function`, including a simple API event trigger, starting at heading level 4.</llm_prompt>"
*   **Event Sources:** "<llm_prompt>List common event sources that can trigger `AWS::Serverless::Function`, such as API Gateway (`Api`, `HttpApi`), S3, SNS, SQS, Kinesis, DynamoDB Streams, EventBridge (including `Schedule`), etc. Explain how these are configured within the `Events` property, starting at heading level 4.</llm_prompt>"
*   **Provisioned Concurrency:** "<llm_prompt>Explain how to configure provisioned concurrency for Lambda functions using the relevant property within `AWS::Serverless::Function` to manage cold starts, starting at heading level 4.</llm_prompt>"
*   **Lambda Layers:** "<llm_prompt>Explain how `AWS::Serverless::Function` can reference Lambda Layers using the `Layers` property for sharing code or dependencies. Cross-reference `AWS::Serverless::LayerVersion`, starting at heading level 4.</llm_prompt>"
*   **Function URLs:** "<llm_prompt>Explain how to configure Lambda Function URLs directly within the `AWS::Serverless::Function` definition for simple HTTPS access, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::Api`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::Api` resource type for defining an Amazon API Gateway REST API. Explain how it simplifies aspects like stage deployment, CORS configuration, and authorizers. Mention its integration with `AWS::Serverless::Function` events.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing a minimal `AWS::Serverless::Api` definition linked to a Lambda function's event source, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::HttpApi`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::HttpApi` resource type for defining an Amazon API Gateway HTTP API (v2). Highlight its characteristics as a lower-cost, lower-latency alternative to REST APIs and its simplified configuration options.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing a minimal `AWS::Serverless::HttpApi` definition linked to a Lambda function's event source, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::SimpleTable`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::SimpleTable` resource type for defining an Amazon DynamoDB table. Emphasize its simplified syntax, particularly the default to PAY_PER_REQUEST billing mode and basic key schema definition.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing how to define a simple DynamoDB table using `AWS::Serverless::SimpleTable`, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::StateMachine`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::StateMachine` resource type for defining AWS Step Functions state machines. Explain that it typically involves embedding or referencing an Amazon States Language (ASL) definition.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing 'Advanced SAM Features' (VII) for SAM Accelerate support with Step Functions, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::Application`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::Application` resource type used for embedding nested applications (stacks) from the AWS Serverless Application Repository (SAR) or an S3 location. Explain its role in modular application design.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing 'Advanced SAM Features' (VII) for more on Nested Applications, starting at heading level 4.</llm_prompt>"

### `AWS::Serverless::LayerVersion`
"<llm_prompt>Starting at heading level 3, describe the `AWS::Serverless::LayerVersion` resource type for defining AWS Lambda Layer versions, allowing code and dependencies to be packaged and shared across multiple functions.</llm_prompt>"

### `AWS::Serverless::Connector`
"<llm_prompt>Starting at heading level 3, introduce the `AWS::Serverless::Connector` resource as a way to simplify defining permissions and wiring between other SAM resources (e.g., granting a Function read access to an SQS queue). Explain that it automatically generates the necessary IAM policies.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing 'Advanced SAM Features' (VII) for more details and examples of Connectors, starting at heading level 4.</llm_prompt>"
*   **Callout:** "<llm_prompt>Add a highlighted callout mentioning that while SAM provides these simplified types, any standard AWS CloudFormation resource can also be used directly within the `Resources` section of a SAM template, starting at heading level 4.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key SAM resource types: `AWS::Serverless::Function`, `AWS::Serverless::Api`, `AWS::Serverless::HttpApi`, `AWS::Serverless::SimpleTable`, `AWS::Serverless::StateMachine`, `AWS::Serverless::Application`, `AWS::Serverless::LayerVersion`, `AWS::Serverless::Connector`, Event Source, Lambda Layer, Provisioned Concurrency, Function URL, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 4 matching questions pairing SAM resource types (`Function`, `Api`, `SimpleTable`, `LayerVersion`) with their primary purpose, starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to consider the trade-offs between using a simplified SAM resource type (like `AWS::Serverless::SimpleTable`) versus its full CloudFormation equivalent (`AWS::DynamoDB::Table`), starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to the AWS SAM documentation detailing the specifications and properties of the core `AWS::Serverless::*` resource types, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph listing the major simplified resource types provided by SAM (`Function`, `Api`, `HttpApi`, `SimpleTable`, `StateMachine`, `LayerVersion`, `Application`, `Connector`) and highlighting their role in streamlining serverless resource definition, starting at heading level 2.</llm_prompt>"

# VI. Local Testing and Debugging
*(Transition: Shift focus to the development inner loop – how to test and debug SAM applications locally before deploying.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on utilizing SAM CLI commands (`sam local invoke`, `sam local start-api`, `sam local start-lambda`) for local testing and debugging of Lambda functions and APIs, including understanding the Docker requirement and enabling debugger attachment, starting at heading level 2.</llm_prompt>"

## Development, Simulation, Troubleshooting
"<llm_prompt>Starting at heading level 2, explain the importance of local testing and debugging in the serverless development workflow. Introduce the SAM CLI commands designed to simulate the AWS Lambda and API Gateway environments locally.</llm_prompt>"

### Using `sam local invoke`
"<llm_prompt>Starting at heading level 3, provide a detailed explanation of the `sam local invoke [FunctionLogicalId]` command. Describe how to use it to execute a specific Lambda function locally, passing event data via stdin or the `-e` flag. Mention its utility for unit testing function logic.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to use `sam local generate-event s3 put` to create a sample S3 event, and then use `sam local invoke` with the `-e` flag to trigger their sample function locally with this event, starting at heading level 4.</llm_prompt>"

### Using `sam local start-api`
"<llm_prompt>Starting at heading level 3, explain the `sam local start-api` command. Describe how it starts a local HTTP server that hosts endpoints defined by API event sources in the SAM template, routing requests to the corresponding local Lambda functions. Highlight its use for integration testing of API-driven applications.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to run `sam local start-api` in their sample project and then use `curl` or a web browser to send a request to the local endpoint corresponding to their 'Hello World' function, starting at heading level 4.</llm_prompt>"

### Using `sam local start-lambda`
"<llm_prompt>Starting at heading level 3, explain the `sam local start-lambda` command. Describe its function in starting a local endpoint that emulates the AWS Lambda service's Invoke API. Explain its relevance when testing integrations where other services or applications directly invoke Lambda functions.</llm_prompt>"

### Debugging Locally
"<llm_prompt>Starting at heading level 3, describe the process for enabling step-through debugging of Lambda functions running locally via `sam local invoke` or `sam local start-api`. Explain the use of debug port arguments (e.g., `-d 5892` or `--debug-port 5892`) and how to attach an IDE debugger (like VS Code) to the specified port within the running Docker container.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide command examples using Markdown inline code formatting for running `sam local invoke` and `sam local start-api` with debugging enabled. Also, provide a sample VS Code `launch.json` configuration snippet for attaching to a Node.js or Python SAM local debug session, using Markdown code blocks, starting at heading level 4.</llm_prompt>"

### Docker Requirement
"<llm_prompt>Starting at heading level 3, explicitly state and explain the requirement for Docker to be installed and running for most `sam local` commands. Clarify that Docker is used to create containers that simulate the actual AWS Lambda execution environment, ensuring consistency between local testing and cloud execution.</llm_prompt>"
*   **Callout:** "<llm_prompt>Add a highlighted callout emphasizing that if Docker is not available, `sam local` functionality will be limited or unavailable, starting at heading level 4.</llm_prompt>"

### Hot Reloading
"<llm_prompt>Starting at heading level 3, discuss techniques for improving the speed of the local development cycle. Mention the `--warm-containers` flag for `sam local start-api`/`start-lambda` and the potential use of external file watchers (like `nodemon`) to automatically restart the local SAM environment or reload function code upon changes (though native hot-reloading might vary by runtime and setup).</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note contrasting local hot reloading techniques with the cloud-based hot-syncing provided by `sam sync` (covered in Section III and VII), starting at heading level 4.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to local testing: `sam local invoke`, `sam local start-api`, `sam local start-lambda`, `sam local generate-event`, Docker, Debug Port, Hot Reloading, Warm Containers, Event Payload, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 practical questions asking which `sam local` command to use for specific testing scenarios (e.g., 'Test API endpoints locally?', 'Test a single function with an SQS event?', 'Enable step-debugging?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to consider the benefits and limitations of local simulation compared to testing directly in a deployed AWS environment, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to AWS documentation or blog posts detailing local testing and debugging workflows with AWS SAM CLI, including IDE integration guides, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph reviewing the capabilities of `sam local invoke`, `start-api`, and `start-lambda` for local testing and debugging, emphasizing the Docker requirement and the process for enabling step-through debugging, starting at heading level 2.</llm_prompt>"

# VII. Advanced SAM Features
*(Transition: Move beyond the basics to explore more sophisticated features and capabilities offered by AWS SAM.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective covering the understanding and application of advanced AWS SAM features, including SAM Accelerate, nested applications, policy templates, API Gateway authorizers, request/response transformations, Lambda destinations, CodeDeploy integration, SAM Connectors, and resource sharing mechanisms, starting at heading level 2.</llm_prompt>"

## Capabilities, Extensions, Optimization
"<llm_prompt>Starting at heading level 2, introduce advanced features within AWS SAM that enable more complex application architectures, faster development cycles, enhanced security, and safer deployment strategies.</llm_prompt>"

### SAM Accelerate
"<llm_prompt>Starting at heading level 3, elaborate on SAM Accelerate, focusing on the `sam sync --watch` command. Explain how it significantly speeds up the development feedback loop by automatically detecting local changes (code and template for supported resources like Lambda, Step Functions, API Gateway) and rapidly deploying only those changes to the AWS cloud environment, bypassing the full CloudFormation deployment cycle for iterative development.</llm_prompt>"
*   **Benefit:** "<llm_prompt>Highlight the key benefit of SAM Accelerate: achieving near-instant feedback on cloud-based resources during active development, starting at heading level 4.</llm_prompt>"

### Nested Applications
"<llm_prompt>Starting at heading level 3, discuss the concept of nested applications (stacks) using the `AWS::Serverless::Application` resource type. Explain how this promotes modularity, reusability, and better organization for large serverless applications by breaking them down into smaller, independently deployable units.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the `AWS::Serverless::Application` resource definition in Section V, starting at heading level 4.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing how to reference a nested application from SAR or S3 within a parent SAM template, starting at heading level 4.</llm_prompt>"

### Policy Templates
"<llm_prompt>Starting at heading level 3, explain AWS SAM Policy Templates. Describe them as predefined, managed IAM policy snippets that simplify granting common permissions to Lambda functions (e.g., `SQSPollerPolicy`, `DynamoDBCrudPolicy`, `VPCAccessPolicy`). Show how they are used within the `Policies` property of `AWS::Serverless::Function`.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block demonstrating the use of a SAM Policy Template (e.g., `SQSPollerPolicy`) within a function definition, starting at heading level 4.</llm_prompt>"

### API Gateway Authorizers
"<llm_prompt>Starting at heading level 3, discuss how to configure security authorizers for API Gateway endpoints defined using `AWS::Serverless::Api` or `AWS::Serverless::HttpApi`. Cover Lambda authorizers (both `TOKEN` and `REQUEST` types for REST APIs) and Cognito User Pool authorizers, explaining how they are defined within the SAM template.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'Security with SAM' section (VIII) for broader security concepts, starting at heading level 4.</llm_prompt>"

### API Gateway Request/Response Transformation
"<llm_prompt>Starting at heading level 3, briefly introduce the capability to perform request and response transformations within API Gateway, often using Velocity Template Language (VTL) or mapping templates. Mention that while complex transformations might be configured directly in API Gateway, some aspects can be influenced or set up via SAM template properties, particularly for REST APIs.</llm_prompt>"

### Lambda Destinations
"<llm_prompt>Starting at heading level 3, explain the concept of AWS Lambda Destinations for asynchronous invocations. Describe how to configure `OnSuccess` and `OnFailure` destinations (SNS topic, SQS queue, EventBridge bus, another Lambda function) directly within the `AWS::Serverless::Function` resource definition in SAM, enabling robust asynchronous processing and error handling patterns.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing how to configure an `OnFailure` destination (e.g., an SQS queue) for a Lambda function, starting at heading level 4.</llm_prompt>"

### CodeDeploy Integration
"<llm_prompt>Starting at heading level 3, explain how SAM integrates with AWS CodeDeploy to facilitate safer, gradual deployments for Lambda functions (aliases). Describe common deployment strategies like `Canary` and `Linear` rollouts and how they are configured within the `DeploymentPreference` property of `AWS::Serverless::Function`.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block illustrating the configuration of a Canary deployment strategy for a Lambda function using `DeploymentPreference`, starting at heading level 4.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the 'CI/CD Integration' section (IX) for the broader context of deployment pipelines, starting at heading level 4.</llm_prompt>"

### SAM Connectors
"<llm_prompt>Starting at heading level 3, revisit `AWS::Serverless::Connector` with more detail. Explain its goal of abstracting IAM policy generation for common resource interactions. Provide an example scenario (e.g., Function needs to write to DynamoDB table) and show how a Connector resource simplifies defining the required permissions between the source (`Function`) and destination (`SimpleTable`) resources defined in the same template.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block demonstrating the use of `AWS::Serverless::Connector` to grant permissions between a Lambda function and a DynamoDB table, starting at heading level 4.</llm_prompt>"

### Sharing Resources via Exports/Imports
"<llm_prompt>Starting at heading level 3, explain the standard CloudFormation mechanism for sharing resources between stacks using `Outputs` with `Export` and the `Fn::ImportValue` intrinsic function. Describe how this pattern is applied in SAM to allow separate stacks (potentially representing different microservices or layers) to reference shared resources like VPCs, SQS queues, or API endpoints managed in other stacks.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing the `Outputs` section in 'SAM Template Specification' (II) and Intrinsic Functions, starting at heading level 4.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to advanced SAM features: SAM Accelerate, Nested Application, Policy Template, API Gateway Authorizer (Lambda, Cognito), Lambda Destinations, CodeDeploy, Deployment Preference (Canary, Linear), SAM Connector, CloudFormation Export, `Fn::ImportValue`, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 4 scenario-based questions asking which advanced SAM feature would be most appropriate to solve a specific problem (e.g., 'Need faster cloud updates during dev?', 'Need safe Lambda rollouts?', 'Need to share resources between stacks?', 'Need simpler permissions between resources?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to consider how features like Nested Applications and Connectors contribute to building more modular, maintainable, and secure serverless systems, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 3-4 curated links to AWS documentation or deep-dive articles covering SAM Accelerate, Nested Applications, Policy Templates, Lambda Destinations, CodeDeploy integration, and SAM Connectors, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph summarizing the advanced features of SAM, including SAM Accelerate, nested stacks, policy templates, authorizers, destinations, safe deployments with CodeDeploy, Connectors, and cross-stack referencing, emphasizing their role in enhancing development speed, modularity, security, and deployment safety, starting at heading level 2.</llm_prompt>"

# VIII. Security with SAM
*(Transition: Address crucial security considerations when building and deploying serverless applications using SAM.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on applying security best practices within SAM applications, covering IAM permissions, resource policies, API security mechanisms, VPC configuration, and secrets management, starting at heading level 2.</llm_prompt>"

## IAM, Permissions, Networking, Secrets
"<llm_prompt>Starting at heading level 2, discuss the critical aspects of security in the context of AWS SAM applications, emphasizing the principle of least privilege and covering identity management, network configuration, and data protection.</llm_prompt>"

### IAM Roles and Permissions
"<llm_prompt>Starting at heading level 3, explain the importance of defining granular IAM execution roles for Lambda functions defined with `AWS::Serverless::Function`. Discuss methods for defining permissions, including inline policies, managed policies, and the use of SAM Policy Templates (cross-reference Section VII). Emphasize the principle of least privilege – granting only the permissions necessary for the function to operate.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a YAML snippet within a Markdown code block showing how to define an IAM role with a specific inline policy for a Lambda function within the SAM template, starting at heading level 4.</llm_prompt>"

### Resource Policies
"<llm_prompt>Starting at heading level 3, explain the concept of resource-based policies (e.g., S3 bucket policies, SQS queue policies, EventBridge event bus policies). Describe scenarios where resource policies are needed to grant access *to* a resource (e.g., allowing API Gateway or S3 to invoke a Lambda function).</llm_prompt>"

### API Gateway Security
"<llm_prompt>Starting at heading level 3, detail the security mechanisms available for APIs defined with `AWS::Serverless::Api` or `AWS::Serverless::HttpApi`. Cover authentication and authorization methods like API Keys, Usage Plans, Lambda Authorizers (Token/Request), and Cognito User Pool Authorizers (cross-reference Section VII). Also, briefly mention the role of Resource Policies for controlling access to the API itself and throttling for preventing abuse.</llm_prompt>"
*   **Task:** "<llm_prompt>Instruct the learner to add a simple API Key requirement to an API Gateway endpoint defined in their SAM template, starting at heading level 4.</llm_prompt>"

### VPC Configuration
"<llm_prompt>Starting at heading level 3, explain how to configure `AWS::Serverless::Function` resources to run within a Virtual Private Cloud (VPC). Describe the `VpcConfig` property, specifying subnet IDs and security group IDs, allowing functions to access private resources (e.g., RDS databases, ElastiCache clusters) within the VPC. Discuss the implications for internet access and the need for NAT Gateways or VPC Endpoints if required.</llm_prompt>"
*   **Callout:** "<llm_prompt>Add a highlighted callout explaining the potential impact of VPC configuration on Lambda cold start times and costs (due to ENI provisioning), starting at heading level 4.</llm_prompt>"

### Secrets Management
"<llm_prompt>Starting at heading level 3, discuss secure methods for handling sensitive data like database credentials, API keys, or tokens within SAM applications. Recommend integrating with AWS Secrets Manager or AWS Systems Manager Parameter Store (SecureString type). Explain how Lambda functions can retrieve these secrets at runtime via the AWS SDK, using appropriate IAM permissions, rather than hardcoding them or using plain environment variables.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a Python or Node.js code snippet (using Markdown code blocks) demonstrating how a Lambda function might retrieve a secret from AWS Secrets Manager using the AWS SDK, starting at heading level 4.</llm_prompt>"

### Input Validation
"<llm_prompt>Starting at heading level 3, emphasize the importance of validating all incoming data, especially for public-facing APIs. Mention that validation can occur at the API Gateway level (using request models/validators for REST APIs) and/or within the Lambda function code itself as a critical security best practice to prevent injection attacks and ensure data integrity.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to SAM security: IAM Execution Role, Least Privilege, Resource Policy, API Key, Usage Plan, Lambda Authorizer, Cognito Authorizer, VPC Configuration, Security Group, Subnet, NAT Gateway, VPC Endpoint, Secrets Management, AWS Secrets Manager, AWS Systems Manager Parameter Store, Input Validation, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 scenario-based questions about securing SAM applications (e.g., 'How should database passwords be stored?', 'What feature controls access to private RDS instances?', 'What SAM feature simplifies common Lambda permissions?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to explain why the principle of least privilege is particularly important in serverless architectures with many small, independent functions, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to AWS documentation or security whitepapers covering serverless security best practices, IAM for Lambda, API Gateway security, and secrets management, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph covering the key security considerations for SAM applications, including managing IAM roles and least privilege, using resource policies, securing APIs (keys, authorizers), configuring VPC access, employing secrets management services, and performing input validation, starting at heading level 2.</llm_prompt>"

# IX. CI/CD Integration
*(Transition: Explore how to automate the building, testing, and deployment of SAM applications using CI/CD pipelines.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective about integrating AWS SAM applications into CI/CD pipelines, covering typical pipeline stages, using AWS native tools (CodePipeline, CodeBuild) or third-party platforms, managing environments, and incorporating automated testing, starting at heading level 2.</llm_prompt>"

## Automation, DevOps, Pipelines
"<llm_prompt>Starting at heading level 2, explain the benefits of implementing Continuous Integration and Continuous Delivery (CI/CD) for serverless applications built with AWS SAM, focusing on automation, consistency, and faster, safer releases.</llm_prompt>"

### Pipeline Stages
"<llm_prompt>Starting at heading level 3, outline the typical stages found in a CI/CD pipeline for a SAM application: Source (code commit triggers pipeline), Build (using `sam build`), Test (unit, integration, static analysis), Deploy (using `sam deploy` to staging/production environments), and potentially Post-Deploy actions (e.g., end-to-end tests, monitoring checks).</llm_prompt>"

### Using AWS CodePipeline / CodeBuild
"<llm_prompt>Starting at heading level 3, describe how to implement a CI/CD pipeline using native AWS DevOps services. Explain the role of AWS CodeCommit/GitHub/Bitbucket as source providers, AWS CodeBuild for running build and test commands (including SAM CLI commands within a specified build environment), and AWS CodePipeline for orchestrating the workflow, including deployments via CloudFormation actions triggered by `sam package` / `sam deploy`.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a conceptual example of a simple `buildspec.yml` file for CodeBuild, showing how `sam build` and `sam deploy` commands would be executed within the build environment, using a Markdown code block, starting at heading level 4.</llm_prompt>"

### Using Jenkins, GitLab CI, GitHub Actions
"<llm_prompt>Starting at heading level 3, explain that SAM CLI commands are platform-agnostic and can be integrated into popular third-party CI/CD tools like Jenkins, GitLab CI/CD, and GitHub Actions. Describe how build agents/runners for these platforms would need the SAM CLI installed (or use a Docker image with it pre-installed) and configured with AWS credentials to execute the `sam build`, `sam package`, and `sam deploy` steps.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a conceptual example snippet for a GitHub Actions workflow step that executes `sam deploy`, using a Markdown code block, starting at heading level 4.</llm_prompt>"

### Environment Management
"<llm_prompt>Starting at heading level 3, discuss strategies for managing deployments to multiple environments (e.g., development, staging, production) within a CI/CD pipeline using SAM. Cover techniques like: using different `samconfig.toml` files per environment (passed via `--config-file`), overriding parameters using `--parameter-overrides` during the `sam deploy` step based on the pipeline branch or environment, and potentially using separate AWS accounts per environment.</llm_prompt>"

### Automated Testing
"<llm_prompt>Starting at heading level 3, emphasize the importance of incorporating automated tests into the CI/CD pipeline. Discuss different levels of testing: Unit tests (testing individual function logic, possibly using `sam local invoke` or standard testing frameworks), Integration tests (testing interactions between components, potentially using `sam local start-api` or deployed resources in a test environment), Static Analysis (linting, code style checks), and End-to-End tests (testing the full application flow via public endpoints in a deployed environment).</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to CI/CD: Continuous Integration (CI), Continuous Delivery/Deployment (CD), Pipeline, Source Stage, Build Stage, Test Stage, Deploy Stage, AWS CodePipeline, AWS CodeBuild, `buildspec.yml`, Jenkins, GitLab CI, GitHub Actions, Environment Management, Automated Testing (Unit, Integration, E2E), Parameter Overrides, `samconfig.toml`, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 multiple-choice questions about integrating SAM into CI/CD (e.g., 'Which SAM command is used in the build stage?', 'What AWS service orchestrates the pipeline?', 'How can you manage different deployment environments?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner why automated testing is particularly critical in a CI/CD pipeline for serverless applications compared to manual deployment processes, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to AWS documentation or tutorials demonstrating how to build CI/CD pipelines for SAM applications using AWS CodePipeline/CodeBuild and potentially one example using GitHub Actions or GitLab CI, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph explaining the integration of SAM applications into CI/CD pipelines, covering the typical stages, tooling options (AWS native and third-party), strategies for environment management, and the necessity of automated testing for robust deployments, starting at heading level 2.</llm_prompt>"

# X. SAM Best Practices & Patterns
*(Transition: Consolidate knowledge by reviewing recommended practices and common architectural patterns for building effective SAM applications.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on applying best practices and common design patterns for structuring, developing, deploying, monitoring, and optimizing AWS SAM applications to ensure maintainability, scalability, resilience, and cost-effectiveness, starting at heading level 2.</llm_prompt>"

## Design, Architecture, Optimization
"<llm_prompt>Starting at heading level 2, discuss recommended best practices and architectural patterns to follow when developing serverless applications with AWS SAM, aiming for robust, scalable, maintainable, and cost-efficient solutions.</llm_prompt>"

### Project Structure
"<llm_prompt>Starting at heading level 3, recommend conventions for organizing SAM project directories. Suggest separating Lambda function code (perhaps by function), template files (`template.yaml`), test code, build scripts, and dependency manifests (`requirements.txt`, `package.json`) for clarity and maintainability, especially as applications grow.</llm_prompt>"
*   **Example:** "<llm_prompt>Show an example directory structure for a simple SAM project with multiple functions using Markdown text formatting, starting at heading level 4.</llm_prompt>"

### Dependency Management
"<llm_prompt>Starting at heading level 3, discuss best practices for managing external dependencies for Lambda functions. Recommend using `sam build --use-container` to ensure dependencies are built in an environment matching Lambda. Discuss the trade-offs between packaging dependencies with each function versus using Lambda Layers (`AWS::Serverless::LayerVersion`) for shared dependencies to reduce deployment package size and potentially improve cold starts.</llm_prompt>"
*   **Cross-reference:** "<llm_prompt>Add a note referencing `AWS::Serverless::LayerVersion` in Section V and `sam build` options in Section III, starting at heading level 4.</llm_prompt>"

### Environment Variables
"<llm_prompt>Starting at heading level 3, recommend using environment variables (defined in the `Environment` property of `AWS::Serverless::Function`) for passing configuration settings (like table names, queue URLs, logging levels) to Lambda functions. Reiterate the importance of *not* using environment variables for sensitive data; instead, use AWS Secrets Manager or Parameter Store (cross-reference Section VIII).</llm_prompt>"

### Monitoring and Logging
"<llm_prompt>Starting at heading level 3, emphasize the importance of implementing comprehensive monitoring and logging. Recommend structured logging (e.g., JSON format) within Lambda functions to facilitate easier querying in Amazon CloudWatch Logs. Discuss leveraging CloudWatch Metrics (standard and custom) and CloudWatch Alarms for monitoring application health and performance. Mention AWS X-Ray for distributed tracing across services (Lambda, API Gateway, etc.) which can be enabled via SAM function properties.</llm_prompt>"
*   **Example:** "<llm_prompt>Provide a simple Python or Node.js logging example using JSON formatting within a Markdown code block, starting at heading level 4.</llm_prompt>"

### Error Handling
"<llm_prompt>Starting at heading level 3, discuss strategies for robust error handling. Recommend implementing try-catch blocks within function code, utilizing Dead Letter Queues (DLQs) for asynchronous invocations (like SQS, SNS) to capture failed events, and configuring Lambda Destinations (`OnFailure`) for more granular asynchronous error handling (cross-reference Section VII). Discuss implementing retries where appropriate (e.g., for transient failures when calling downstream services).</llm_prompt>"
*   **Callout:** "<llm_prompt>Add a highlighted callout emphasizing the importance of idempotent design for functions that might be retried, starting at heading level 4.</llm_prompt>"

### Cost Optimization
"<llm_prompt>Starting at heading level 3, provide tips for optimizing the cost of SAM applications. Suggest right-sizing Lambda function memory (which also affects CPU allocation), choosing appropriate API Gateway types (HTTP API vs REST API), utilizing DynamoDB On-Demand (Pay-Per-Request) capacity unless workloads are very predictable, and implementing efficient code to minimize execution duration.</llm_prompt>"
*   **Tooling:** "<llm_prompt>Mention tools like AWS Lambda Power Tuning for helping determine optimal memory configurations, starting at heading level 4.</llm_prompt>"

### Single Responsibility Principle
"<llm_prompt>Starting at heading level 3, advocate for applying the Single Responsibility Principle (SRP) to Lambda functions. Encourage designing functions that perform one specific task or handle one type of event. Explain how this promotes reusability, testability, and easier maintenance compared to large, monolithic functions.</llm_prompt>"

### Shared Infrastructure Stacks
"<llm_prompt>Starting at heading level 3, suggest managing foundational or shared resources (like VPCs, shared DynamoDB tables, central event buses) in separate CloudFormation/SAM stacks. Explain how these resources can then be referenced by application-specific stacks using cross-stack references (`Fn::ImportValue`, cross-reference Section VII). This promotes better lifecycle management and separation of concerns.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to best practices: Project Structure, Dependency Management, Lambda Layers, Environment Variables, Structured Logging, CloudWatch Logs, CloudWatch Metrics, AWS X-Ray, Error Handling, Dead Letter Queue (DLQ), Idempotency, Cost Optimization, Lambda Power Tuning, Single Responsibility Principle (SRP), Shared Infrastructure Stacks, Cross-Stack Reference, starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 4 best practice questions (e.g., 'Where should sensitive data be stored?', 'What principle guides function design size?', 'What helps manage shared dependencies?', 'How can failed asynchronous events be captured?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to think about how adhering to the Single Responsibility Principle for functions impacts testing and deployment strategies within a CI/CD pipeline, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to the AWS Well-Architected Framework (Serverless Lens), articles on serverless best practices (logging, monitoring, cost optimization), and examples of common serverless patterns, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph highlighting key best practices for SAM development, including project organization, dependency management (layers), configuration (environment variables, secrets), observability (logging, monitoring, tracing), resilience (error handling, DLQs), cost optimization, function design (SRP), and managing shared infrastructure, starting at heading level 2.</llm_prompt>"

# XI. Comparing SAM
*(Transition: Conclude by positioning AWS SAM relative to its main alternatives within the AWS ecosystem and the broader serverless landscape.)*

*   **Learning Objective:** "<llm_prompt>Generate a concise learning objective focused on comparing and contrasting AWS SAM with native AWS CloudFormation, the Serverless Framework, and the AWS Cloud Development Kit (CDK), highlighting their respective strengths, weaknesses, syntax, and ideal use cases, starting at heading level 2.</llm_prompt>"

## Alternatives, Frameworks, IaC
"<llm_prompt>Starting at heading level 2, provide a comparative analysis of AWS SAM against other prominent tools and frameworks used for defining and deploying cloud infrastructure, particularly for serverless applications on AWS.</llm_prompt>"

### SAM vs. Native CloudFormation
"<llm_prompt>Starting at heading level 3, perform a direct comparison between AWS SAM and using native AWS CloudFormation directly. Emphasize SAM's role as an extension that simplifies syntax specifically for serverless resources (Functions, APIs, SimpleTables, etc.), reducing the amount of boilerplate YAML/JSON needed. Mention SAM's local testing and debugging capabilities via the SAM CLI, which are not inherent to native CloudFormation. Acknowledge that SAM ultimately transforms into CloudFormation.</llm_prompt>"
*   **Pros/Cons:** "<llm_prompt>List the pros and cons of using SAM compared to native CloudFormation, focusing on aspects like verbosity, serverless focus, local development tooling, and abstraction level, starting at heading level 4.</llm_prompt>"

### SAM vs. Serverless Framework
"<llm_prompt>Starting at heading level 3, compare AWS SAM with the Serverless Framework (serverless.com). Highlight key differences: SAM is AWS-specific, while Serverless Framework supports multiple cloud providers. Discuss the plugin ecosystem of the Serverless Framework, which offers extensive extensibility, potentially broader than SAM's built-in features. Compare the CLI tools and community support. Note that both often use CloudFormation under the hood on AWS.</llm_prompt>"
*   **Pros/Cons:** "<llm_prompt>List the pros and cons of using SAM compared to the Serverless Framework, considering provider lock-in, plugin ecosystem, feature set, AWS integration depth, and community size/focus, starting at heading level 4.</llm_prompt>"

### SAM vs. AWS CDK (Cloud Development Kit)
"<llm_prompt>Starting at heading level 3, compare AWS SAM with the AWS Cloud Development Kit (CDK). Contrast SAM's declarative approach using YAML/JSON templates with CDK's imperative approach using familiar programming languages (like TypeScript, Python, Java, C#). Explain that CDK allows developers to define infrastructure using code constructs (classes, objects, loops, conditionals), which can offer higher levels of abstraction and reusability for complex applications. Mention that CDK also synthesizes CloudFormation templates.</llm_prompt>"
*   **Pros/Cons:** "<llm_prompt>List the pros and cons of using SAM compared to the AWS CDK, focusing on declarative vs. imperative approach, language choice, level of abstraction, testing capabilities (infrastructure as code), learning curve, and suitability for different team skill sets, starting at heading level 4.</llm_prompt>"

*   **Glossary:** "<llm_prompt>Define the following key terms related to comparisons: Native CloudFormation, AWS SAM, Serverless Framework, AWS Cloud Development Kit (CDK), Declarative (IaC), Imperative (IaC), Plugin Ecosystem, Multi-Cloud, Abstraction Level, Synthesize (CDK), starting at heading level 3.</llm_prompt>"
*   **Quiz:** "<llm_prompt>Generate 3 comparison questions (e.g., 'Which framework uses programming languages to define infrastructure?', 'Which framework is multi-cloud?', 'What is the main advantage of SAM over native CloudFormation for serverless?'), starting at heading level 3.</llm_prompt>"
*   **Reflection:** "<llm_prompt>Provide a reflective prompt asking the learner to consider a scenario (e.g., a team primarily composed of Python developers building a complex application vs. a team needing a simple API backend) and justify which framework (SAM, CDK, Serverless Framework) might be the best fit and why, starting at heading level 3.</llm_prompt>"
*   **Further Reading:** "<llm_prompt>Provide 2-3 curated links to articles or documentation comparing SAM vs. CDK, SAM vs. Serverless Framework, or providing guidance on choosing the right IaC tool for serverless development on AWS, starting at heading level 3.</llm_prompt>"
*   **Section Summary:** "<llm_prompt>Generate a concise summary paragraph comparing AWS SAM with native CloudFormation (simplicity for serverless), the Serverless Framework (multi-cloud, plugins), and AWS CDK (imperative coding, higher abstraction), positioning SAM as an AWS-focused, declarative framework that simplifies serverless development with strong local tooling, starting at heading level 2.</llm_prompt>"
