# I. Core Concepts

## Introduction to Core Concepts
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Core Concepts. Objectives should cover understanding distributed tracing, the purpose of X-Ray, and its key terminology.</prompt>"

## What is Distributed Tracing?
"<prompt>Starting with H2, define 'distributed tracing' in the context of microservices and distributed systems. Explain the problem it solves by tracing requests across multiple components. Context: AWS X-Ray Core Concepts.</prompt>"

## X-Ray's Role
"<prompt>Starting with H2, explain the specific role and value proposition of AWS X-Ray. How does it help developers analyze and debug production, distributed applications, especially those built using microservices? Context: AWS X-Ray Core Concepts.</prompt>"

## Key Terminology
"<prompt>Starting with H2, introduce the Key Terminology subsection for AWS X-Ray. Explain that this section will define essential terms. Context: AWS X-Ray Core Concepts.</prompt>"
*   **Trace**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Trace' in AWS X-Ray. Explain that it represents the entire path of a single request through the application and contains segments. Mention the `X-Amzn-Trace-Id` header. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Segment**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Segment' in AWS X-Ray. Explain that it represents the work done by a single application resource (e.g., a service, a Lambda function) while processing a request. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Subsegment**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Subsegment' in AWS X-Ray. Explain that it provides more granular timing information for operations within a segment, like calls to downstream services or AWS resources. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Service Graph (Service Map)**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Service Graph' (or Service Map) in AWS X-Ray. Explain that it's a visual representation of the application's services, their relationships, and health status based on trace data. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Annotations**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Annotations' in AWS X-Ray. Explain that they are key-value pairs indexed for filtering traces (e.g., `userID`, `orderID`). Mention supported types (String, Number, Boolean). Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Metadata**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Metadata' in AWS X-Ray. Explain that they are key-value pairs providing additional context but are *not* indexed for filtering. Mention they can contain complex objects (JSON). Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Sampling**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Sampling' in AWS X-Ray. Explain its purpose in controlling the volume of trace data collected to manage cost and performance. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **Errors, Faults, Throttles**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define 'Errors,' 'Faults,' and 'Throttles' as categorized by AWS X-Ray. Explain how they indicate different types of request processing issues (e.g., 4xx client errors, 5xx server faults, 429 throttling errors). Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **X-Ray Daemon**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define the 'X-Ray Daemon' (or Agent). Explain its role as a background process that collects trace data sent by the SDK over UDP and forwards it to the X-Ray API. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"
*   **X-Ray SDK**
    "<prompt>Starting with a bullet point under H3 Key Terminology, define the 'X-Ray SDK.' Explain that it provides libraries for developers to instrument their application code to generate and send trace data (segments, subsegments) to the X-Ray daemon or API. Context: AWS X-Ray Core Concepts > Key Terminology.</prompt>"

## Section I Summary & Review
"<prompt>Generate a concise summary paragraph recapping the main ideas covered in the AWS X-Ray Core Concepts section (distributed tracing, X-Ray's role, key terms like trace, segment, subsegment, annotations, metadata, sampling, daemon, SDK).</prompt>"
"<prompt>Create a 4-question multiple-choice quiz to test understanding of AWS X-Ray Core Concepts. Cover the definition of a trace, the difference between annotations and metadata, the role of the daemon, and the purpose of sampling. Provide answers.</prompt>"
"<prompt>Generate a highlighted callout box summarizing the 3 most crucial takeaways from the Core Concepts section for someone new to AWS X-Ray.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to consider how distributed tracing could be applied to an application they are familiar with, even if it doesn't use X-Ray yet.</prompt>"
"<prompt>Suggest adding links to the official AWS X-Ray documentation page for 'Core Concepts' and 'Glossary'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Data Collection & Instrumentation.</prompt>"

# II. Data Collection & Instrumentation

## Introduction to Data Collection
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Data Collection & Instrumentation. Objectives should cover understanding how trace data is captured using SDKs, agents, and integrations.</prompt>"

## X-Ray SDKs
"<prompt>Starting with H2, introduce the concept of AWS X-Ray SDKs. Explain their purpose as language-specific libraries for instrumenting application code. Context: AWS X-Ray Data Collection.</prompt>"
*   **Supported Languages**
    "<prompt>Starting with a bullet point under H3, list the primary programming languages officially supported by AWS X-Ray SDKs (Java, .NET, Node.js, Python, Ruby, Go). Mention community/third-party support for others like PHP. Context: AWS X-Ray Data Collection > SDKs.</prompt>"
*   **Core SDK Functionality**
    "<prompt>Starting with a bullet point under H3, describe the core functionality provided by the X-Ray SDKs, such as interceptors, trace context propagation, segment creation, and sending data to the daemon/API. Context: AWS X-Ray Data Collection > SDKs.</prompt>"

## Automatic Instrumentation
"<prompt>Starting with H2, explain 'Automatic Instrumentation' in AWS X-Ray. Describe how SDKs can automatically trace common operations like incoming HTTP requests and calls made using the AWS SDK without manual code changes. Context: AWS X-Ray Data Collection.</prompt>"
*   **Web Frameworks**
    "<prompt>Starting with a bullet point under H3, provide examples of web frameworks where the X-Ray SDK offers automatic instrumentation for incoming requests (e.g., Express for Node.js, Spring Boot for Java, Flask/Django for Python, ASP.NET for .NET). Context: AWS X-Ray Data Collection > Automatic Instrumentation.</prompt>"
*   **AWS SDK Client Calls**
    "<prompt>Starting with a bullet point under H3, explain how the X-Ray SDK automatically creates subsegments for calls made through the standard AWS SDK clients (e.g., calls to S3, DynamoDB, SQS). Context: AWS X-Ray Data Collection > Automatic Instrumentation.</prompt>"

## Manual Instrumentation
"<prompt>Starting with H2, explain 'Manual Instrumentation' in AWS X-Ray. Describe scenarios where developers need to add custom code using the SDK to trace specific parts of their application logic or external calls not covered automatically. Context: AWS X-Ray Data Collection.</prompt>"
*   **Creating Custom Segments**
    "<prompt>Starting with a bullet point under H3, explain how and why to create custom segments manually using the X-Ray SDK. Provide a conceptual example scenario (e.g., tracing a background job). Context: AWS X-Ray Data Collection > Manual Instrumentation.</prompt>"
*   **Creating Custom Subsegments**
    "<prompt>Starting with a bullet point under H3, explain how and why to create custom subsegments manually using the X-Ray SDK. Provide a conceptual example scenario (e.g., timing a specific function call or an external non-AWS API call). Use inline code formatting for example SDK method names like `AWSXRay.captureAsyncFunc()` or `AWSXRay.captureFunc()`. Context: AWS X-Ray Data Collection > Manual Instrumentation.</prompt>"
*   **Capturing Exceptions**
    "<prompt>Starting with a bullet point under H3, explain how to capture exceptions within segments or subsegments using the X-Ray SDK. Describe how this marks the segment/subsegment with an error/fault flag and includes stack trace information. Context: AWS X-Ray Data Collection > Manual Instrumentation.</prompt>"
*   **Adding Annotations and Metadata**
    "<prompt>Starting with a bullet point under H3, explain how to add custom annotations and metadata to segments/subsegments using the X-Ray SDK. Reiterate the difference (indexed vs. not indexed) and provide example use cases for each. Use inline code formatting for example SDK method names like `segment.putAnnotation()` or `segment.putMetadata()`. Context: AWS X-Ray Data Collection > Manual Instrumentation.</prompt>"

## X-Ray Agent/Daemon
"<prompt>Starting with H2, describe the AWS X-Ray Agent/Daemon in detail. Explain its function as a UDP listener (port 2000), data aggregator, buffer, and forwarder to the X-Ray API. Mention common deployment patterns (sidecar, host process). Context: AWS X-Ray Data Collection.</prompt>"
*   **Installation and Configuration**
    "<prompt>Starting with a bullet point under H3, briefly outline the installation and configuration process for the X-Ray Daemon on different environments like EC2, ECS, EKS, and On-Premises. Context: AWS X-Ray Data Collection > X-Ray Agent/Daemon.</prompt>"
*   **Buffering and Retries**
    "<prompt>Starting with a bullet point under H3, explain the buffering and retry mechanism built into the X-Ray Daemon, which helps prevent data loss during temporary connectivity issues. Context: AWS X-Ray Data Collection > X-Ray Agent/Daemon.</prompt>"
*   **Daemon Configuration Options**
    "<prompt>Starting with a bullet point under H3, mention key configuration options for the X-Ray Daemon, such as sampling file location, logging settings, buffer memory limits, and proxy settings. Context: AWS X-Ray Data Collection > X-Ray Agent/Daemon.</prompt>"

## OpenTelemetry Integration
"<prompt>Starting with H2, introduce OpenTelemetry (OTel) and its integration with AWS X-Ray. Explain the benefits of using OTel standards for vendor-neutral instrumentation. Context: AWS X-Ray Data Collection.</prompt>"
*   **AWS Distro for OpenTelemetry (ADOT)**
    "<prompt>Starting with a bullet point under H3, explain what the AWS Distro for OpenTelemetry (ADOT) is and its role in providing an AWS-supported distribution of OTel components, including exporters for X-Ray. Context: AWS X-Ray Data Collection > OpenTelemetry Integration.</prompt>"
*   **OTel Collector Configuration for X-Ray**
    "<prompt>Starting with a bullet point under H3, describe how to configure the OpenTelemetry Collector (part of ADOT or standalone) to export trace data to AWS X-Ray using the `awsxray` exporter. Context: AWS X-Ray Data Collection > OpenTelemetry Integration.</prompt>"
*   **OTel SDK Instrumentation**
    "<prompt>Starting with a bullet point under H3, explain that applications can be instrumented using standard OpenTelemetry SDKs and configured (often via the OTel Collector) to send trace data to X-Ray, promoting interoperability. Context: AWS X-Ray Data Collection > OpenTelemetry Integration.</prompt>"

## API Gateway Integration
"<prompt>Starting with H2, explain the native AWS X-Ray tracing integration with Amazon API Gateway. Describe how enabling active tracing in API Gateway automatically generates trace segments for requests passing through it. Context: AWS X-Ray Data Collection.</prompt>"

## Lambda Integration
"<prompt>Starting with H2, explain the native AWS X-Ray tracing integration with AWS Lambda. Describe how enabling 'Active Tracing' in Lambda function configuration automatically instruments the Lambda service invocation and facilitates downstream tracing if the function uses an X-Ray-enabled SDK. Context: AWS X-Ray Data Collection.</prompt>"

## Other AWS Service Integrations
"<prompt>Starting with H2, list other AWS services that integrate with X-Ray, automatically generating segments or passing trace context. Context: AWS X-Ray Data Collection.</prompt>"
*   "<prompt>Starting with a bullet point under H3, list key AWS services with built-in X-Ray integration, such as Elastic Load Balancing (ALB), EC2, ECS, EKS, Elastic Beanstalk, SQS, SNS, App Runner, and Step Functions. Briefly mention how each contributes to the trace (e.g., ALB adds trace ID header). Context: AWS X-Ray Data Collection > Other AWS Service Integrations.</prompt>"

## Section II Summary & Review
"<prompt>Generate a concise summary paragraph recapping the methods for collecting trace data in AWS X-Ray (SDKs, Auto/Manual Instrumentation, Agent/Daemon, OTel, Native Integrations like API Gateway/Lambda).</prompt>"
"<prompt>Create a 4-question quiz (mix of multiple-choice and true/false) covering topics like the role of the SDK vs. the Daemon, automatic vs. manual instrumentation, and examples of native AWS service integrations. Provide answers.</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the importance of choosing the right instrumentation strategy (automatic vs. manual) based on application needs and the role of the agent/daemon.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to think about which instrumentation methods (SDK, OTel, auto, manual) would be most suitable for a hypothetical microservice based on its language and function.</prompt>"
"<prompt>Suggest adding links to the AWS X-Ray Developer Guide sections on 'Instrumenting your application' for various languages and the 'X-Ray daemon'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on the X-Ray Data Model.</prompt>"

# III. X-Ray Data Model

## Introduction to the Data Model
"<prompt>Starting with H2, state the learning objectives for this section on the AWS X-Ray Data Model. Objectives should cover understanding the structure of traces, segments, subsegments, annotations, and metadata.</prompt>"

## Traces
"<prompt>Starting with H2, provide a detailed explanation of a 'Trace' in the AWS X-Ray data model. Reinforce that it represents the entire request lifecycle and is identified by a unique Trace ID. Context: AWS X-Ray Data Model.</prompt>"
*   **Trace ID Format**
    "<prompt>Starting with a bullet point under H3, describe the format of the AWS X-Ray Trace ID. Mention its components (version, timestamp, unique identifier). Context: AWS X-Ray Data Model > Traces.</prompt>"
*   **Trace Header (`X-Amzn-Trace-Id`)**
    "<prompt>Starting with a bullet point under H3, explain the role of the `X-Amzn-Trace-Id` HTTP header in propagating the trace context (Trace ID, Parent Segment ID, Sampling Decision) between services. Context: AWS X-Ray Data Model > Traces.</prompt>"

## Segments
"<prompt>Starting with H2, provide a detailed explanation of a 'Segment' in the AWS X-Ray data model. Explain that it represents the work done by a single resource and contains various fields describing that work. Context: AWS X-Ray Data Model.</prompt>"
*   **Key Segment Fields**
    "<prompt>Starting with a bullet point under H3, list and briefly describe key fields within an X-Ray segment document, including `id`, `trace_id`, `parent_id` (optional), `name`, `start_time`, `end_time`, `error`/`fault`/`throttle` flags, `origin` (e.g., `AWS::Lambda::Function`), `resource_arn`, `http` (request/response data), and `sql` (query data). Context: AWS X-Ray Data Model > Segments.</prompt>"

## Subsegments
"<prompt>Starting with H2, provide a detailed explanation of a 'Subsegment' in the AWS X-Ray data model. Explain its role in breaking down the work within a segment into smaller units. Context: AWS X-Ray Data Model.</prompt>"
*   **Types of Subsegments**
    "<prompt>Starting with a bullet point under H3, give examples of common operations represented by subsegments, such as AWS SDK calls, SQL database queries, external HTTP calls, and custom application logic captured via manual instrumentation. Context: AWS X-Ray Data Model > Subsegments.</prompt>"

## Annotations
"<prompt>Starting with H2, elaborate on 'Annotations' within the X-Ray data model. Emphasize their role as indexed key-value pairs used for filtering and grouping traces in the X-Ray console and analytics. Context: AWS X-Ray Data Model.</prompt>"
*   **Data Types and Use Cases**
    "<prompt>Starting with a bullet point under H3, reiterate the supported data types (String, Number, Boolean) for annotations and provide concrete examples of how they are used for filtering (e.g., filtering by `UserID`, `ProductID`, `AvailabilityZone`). Context: AWS X-Ray Data Model > Annotations.</prompt>"

## Metadata
"<prompt>Starting with H2, elaborate on 'Metadata' within the X-Ray data model. Emphasize that these key-value pairs provide rich contextual information but are *not* indexed and cannot be used for filtering traces directly. Context: AWS X-Ray Data Model.</prompt>"
*   **Data Types and Use Cases**
    "<prompt>Starting with a bullet point under H3, explain that metadata can store complex data structures (anything serializable to JSON) and provide examples like storing request/response bodies (use with caution for size/PII), configuration details, or calculated values relevant to the trace. Context: AWS X-Ray Data Model > Metadata.</prompt>"

## Section III Summary & Review
"<prompt>Generate a concise summary paragraph recapping the components of the AWS X-Ray Data Model: Traces (identified by Trace ID, propagated via header), Segments (work by one resource), Subsegments (granular operations), Annotations (indexed key-value pairs for filtering), and Metadata (non-indexed key-value pairs for context).</prompt>"
"<prompt>Create a 3-question matching quiz where learners match the X-Ray data component (Trace, Segment, Annotation, Metadata) to its primary purpose (end-to-end request view, work by single resource, filterable data, non-filterable context). Provide answers.</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the critical difference between Annotations (for filtering) and Metadata (for context) as it impacts how data should be instrumented.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to consider what information would be useful to add as Annotations versus Metadata for debugging a specific type of request (e.g., a failed order placement).</prompt>"
"<prompt>Suggest adding a link to the AWS X-Ray Developer Guide section on 'Segment documents'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Core Features & Console.</prompt>"

# IV. Core Features & Console

## Introduction to Features & Console
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Core Features & Console. Objectives should cover understanding the Service Map, Trace Views, Analytics Console, Groups, and CloudWatch Integration.</prompt>"

## Service Map
"<prompt>Starting with H2, describe the AWS X-Ray Service Map. Explain it as a key visualization tool showing service topology, dependencies, and high-level performance/health metrics. Context: AWS X-Ray Features & Console.</prompt>"
*   **Node Representation**
    "<prompt>Starting with a bullet point under H3, explain what nodes represent in the Service Map (e.g., services identified by instrumentation, AWS resources like DynamoDB tables or Lambda functions). Context: AWS X-Ray Features & Console > Service Map.</prompt>"
*   **Edge Representation**
    "<prompt>Starting with a bullet point under H3, explain what edges represent in the Service Map (connections between nodes, indicating requests flowing between them). Context: AWS X-Ray Features & Console > Service Map.</prompt>"
*   **Health and Performance Data**
    "<prompt>Starting with a bullet point under H3, describe the health and performance information displayed on the Service Map nodes and edges (e.g., color-coding for OK/Errors/Faults/Throttles, latency distribution percentiles, requests per minute). Context: AWS X-Ray Features & Console > Service Map.</prompt>"

## Trace Views & Details
"<prompt>Starting with H2, describe the Trace Views and Details section of the AWS X-Ray console. Explain its purpose for deep-diving into individual request paths to perform root cause analysis. Context: AWS X-Ray Features & Console.</prompt>"
*   **Trace List/Filtering**
    "<prompt>Starting with a bullet point under H3, describe the trace list view and how users can filter traces based on criteria like time range, status codes, URLs, annotations, and response time. Context: AWS X-Ray Features & Console > Trace Views.</prompt>"
*   **Trace Timeline/Waterfall Diagram**
    "<prompt>Starting with a bullet point under H3, explain the trace timeline (waterfall diagram). Describe how it visualizes the sequence and duration of segments and subsegments within a single trace, helping to pinpoint latency contributors. Context: AWS X-Ray Features & Console > Trace Views.</prompt>"
*   **Segment/Subsegment Details**
    "<prompt>Starting with a bullet point under H3, explain that selecting a segment or subsegment in the waterfall view reveals its detailed information, including timing, status, annotations, metadata, and any associated errors or exceptions (with stack traces). Context: AWS X-Ray Features & Console > Trace Views.</prompt>"
*   **Exception Analysis**
    "<prompt>Starting with a bullet point under H3, specifically mention the capability to analyze exceptions captured within traces, including viewing stack traces directly in the console. Context: AWS X-Ray Features & Console > Trace Views.</prompt>"
*   **Logs Integration (CloudWatch Logs)**
    "<prompt>Starting with a bullet point under H3, describe the integration between X-Ray trace details and CloudWatch Logs, allowing users to jump from a segment to related log entries for deeper context. Context: AWS X-Ray Features & Console > Trace Views.</prompt>"

## Analytics Console
"<prompt>Starting with H2, describe the AWS X-Ray Analytics console. Explain its purpose for interactive analysis of aggregated trace data to understand performance trends, distributions, and identify systemic issues. Context: AWS X-Ray Features & Console.</prompt>"
*   **Filtering Capabilities**
    "<prompt>Starting with a bullet point under H3, detail the powerful filtering options in the Analytics console, allowing analysis based on annotations, URLs, HTTP methods, status codes, availability zones, instance IDs, etc. Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"
*   **Latency Histograms**
    "<prompt>Starting with a bullet point under H3, explain the latency histograms available in the Analytics console and how they help visualize the distribution of response times for filtered traces. Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"
*   **Time Series Graphs**
    "<prompt>Starting with a bullet point under H3, describe the time series graphs showing trends over time for key metrics like average/pXX latency, error/fault rates, and request counts based on the filtered trace set. Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"
*   **Response Time Distribution Analysis**
    "<prompt>Starting with a bullet point under H3, explain how the Analytics console helps analyze response time distributions across different dimensions to identify patterns or outliers. Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"
*   **User Impact Analysis**
    "<prompt>Starting with a bullet point under H3, describe how the Analytics console can help assess user impact by analyzing performance metrics specifically for certain URLs or user segments (identified via annotations). Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"
*   **Comparing Groups or Time Ranges**
    "<prompt>Starting with a bullet point under H3, explain the capability to compare performance metrics between different groups (defined by filters) or across different time ranges. Context: AWS X-Ray Features & Console > Analytics Console.</prompt>"

## Groups
"<prompt>Starting with H2, explain the concept of 'Groups' in AWS X-Ray. Describe how they allow users to save complex filter expressions to easily focus analysis on specific parts of an application or request types. Context: AWS X-Ray Features & Console.</prompt>"
*   **Filter Expressions**
    "<prompt>Starting with a bullet point under H3, explain that Groups are defined using the same filter expression syntax available in the Trace list and Analytics console. Context: AWS X-Ray Features & Console > Groups.</prompt>"
*   **Group-specific Views**
    "<prompt>Starting with a bullet point under H3, mention that selecting a Group provides group-specific Service Maps and Analytics views, scoped to the traces matching the group's filter expression. Context: AWS X-Ray Features & Console > Groups.</prompt>"

## CloudWatch Integration
"<prompt>Starting with H2, describe the key integration points between AWS X-Ray and Amazon CloudWatch for enhanced monitoring and observability. Context: AWS X-Ray Features & Console.</prompt>"
*   **X-Ray Trace Metrics**
    "<prompt>Starting with a bullet point under H3, explain that X-Ray automatically publishes metrics to CloudWatch (e.g., `ApproximateTraceCount`, `ErrorRate`, `FaultRate`, `ThrottleRate`, `AverageLatency`) per service, allowing for standard CloudWatch monitoring and alarming. Context: AWS X-Ray Features & Console > CloudWatch Integration.</prompt>"
*   **CloudWatch Alarms**
    "<prompt>Starting with a bullet point under H3, explain that users can create CloudWatch Alarms based on the X-Ray metrics to get notified of performance degradation or increased error rates. Context: AWS X-Ray Features & Console > CloudWatch Integration.</prompt>"
*   **Viewing Traces from CloudWatch Logs Insights**
    "<prompt>Starting with a bullet point under H3, describe the capability to link from CloudWatch Logs Insights queries to corresponding X-Ray traces if trace IDs are included in log messages. Context: AWS X-Ray Features & Console > CloudWatch Integration.</prompt>"
*   **Viewing Traces from CloudWatch ServiceLens Service Map**
    "<prompt>Starting with a bullet point under H3, explain that the CloudWatch ServiceLens feature provides a service map similar to X-Ray's but integrated with CloudWatch metrics and logs, and allows linking directly to related X-Ray traces. Context: AWS X-Ray Features & Console > CloudWatch Integration.</prompt>"

## Section IV Summary & Review
"<prompt>Generate a concise summary paragraph recapping the core features and console views in AWS X-Ray: Service Map (visualization), Trace Views (debugging), Analytics Console (trend analysis), Groups (saved filters), and CloudWatch Integration (metrics, alarms, unified observability).</prompt>"
"<prompt>Create a 5-question quiz (mix of multiple-choice and fill-in-the-blank) covering the purpose of the Service Map, where to find detailed waterfall views, what the Analytics console is used for, the function of Groups, and how X-Ray integrates with CloudWatch metrics. Provide answers.</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the distinct roles of the Service Map (high-level overview), Trace Details (deep dive), and Analytics Console (aggregate analysis) in the troubleshooting and performance tuning workflow.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to consider which X-Ray console feature (Service Map, Trace Details, Analytics) they would use first when investigating a report of increased application latency.</prompt>"
"<prompt>Suggest adding links to the AWS X-Ray User Guide sections covering the 'Console features', 'Service map', 'Trace details', and 'Analytics console'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Configuration & Management.</prompt>"

# V. Configuration & Management

## Introduction to Configuration & Management
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Configuration & Management. Objectives should cover understanding sampling rules, encryption, IAM permissions, and cross-account/region tracing.</prompt>"

## Sampling Rules
"<prompt>Starting with H2, explain the concept and importance of 'Sampling Rules' in AWS X-Ray for managing data volume, cost, and performance overhead. Context: AWS X-Ray Configuration & Management.</prompt>"
*   **Default Sampling Rule**
    "<prompt>Starting with a bullet point under H3, describe the default sampling rule provided by AWS X-Ray (typically traces the first request each second and 5% of additional requests) and its purpose. Context: AWS X-Ray Configuration & Management > Sampling Rules.</prompt>"
*   **Custom Sampling Rules**
    "<prompt>Starting with a bullet point under H3, explain how to define custom sampling rules based on criteria like service name, HTTP method, URL path, host, resource ARN, or annotation values to target specific traffic patterns. Context: AWS X-Ray Configuration & Management > Sampling Rules.</prompt>"
*   **Fixed Rate vs. Reservoir Sampling**
    "<prompt>Starting with a bullet point under H3, explain the difference between fixed rate (percentage-based) and reservoir sampling (ensures a minimum number of traces per second before applying a rate) used in sampling rules. Context: AWS X-Ray Configuration & Management > Sampling Rules.</prompt>"
*   **Sampling Configuration File**
    "<prompt>Starting with a bullet point under H3, describe the role of the sampling configuration file (`sampling-rules.json`) used by the X-Ray daemon/agent to load custom rules locally. Context: AWS X-Ray Configuration & Management > Sampling Rules.</prompt>"
*   **API/Console Configuration**
    "<prompt>Starting with a bullet point under H3, explain that sampling rules can also be configured centrally via the AWS X-Ray API or Management Console, overriding local configurations if desired. Context: AWS X-Ray Configuration & Management > Sampling Rules.</prompt>"

## Encryption
"<prompt>Starting with H2, discuss data encryption options for AWS X-Ray to ensure data security. Context: AWS X-Ray Configuration & Management.</prompt>"
*   **Encryption in Transit**
    "<prompt>Starting with a bullet point under H3, explain that communication between the X-Ray daemon/agent/SDK and the X-Ray API endpoint is secured using TLS/SSL encryption by default. Context: AWS X-Ray Configuration & Management > Encryption.</prompt>"
*   **Encryption at Rest**
    "<prompt>Starting with a bullet point under H3, explain that X-Ray automatically encrypts trace data at rest using AWS-owned keys. Describe the option to configure X-Ray to use an AWS KMS customer-managed key (CMK) for enhanced control over encryption. Context: AWS X-Ray Configuration & Management > Encryption.</prompt>"
*   **Configuring KMS Keys**
    "<prompt>Starting with a bullet point under H3, briefly describe the process of configuring X-Ray to use a specific KMS key via the X-Ray console settings, including necessary key policy permissions. Context: AWS X-Ray Configuration & Management > Encryption.</prompt>"

## Permissions & IAM
"<prompt>Starting with H2, explain the role of AWS Identity and Access Management (IAM) in controlling access to AWS X-Ray data and API actions. Context: AWS X-Ray Configuration & Management.</prompt>"
*   **IAM Policies for Sending Data**
    "<prompt>Starting with a bullet point under H3, describe the typical IAM permissions required for an application/role to send trace data to X-Ray (e.g., actions like `xray:PutTraceSegments`, `xray:PutTelemetryRecords`). Mention managed policies like `AWSXRayDaemonWriteAccess`. Context: AWS X-Ray Configuration & Management > Permissions & IAM.</prompt>"
*   **IAM Policies for Reading Data**
    "<prompt>Starting with a bullet point under H3, describe the typical IAM permissions required for users or roles to access the X-Ray console and read trace data (e.g., actions like `xray:GetTraceSummaries`, `xray:BatchGetTraces`, `xray:GetServiceGraph`). Mention managed policies like `AWSXRayReadOnlyAccess` or `AWSXRayFullAccess`. Context: AWS X-Ray Configuration & Management > Permissions & IAM.</prompt>"
*   **Resource-Based Policies**
    "<prompt>Starting with a bullet point under H3, mention the relevance of resource-based policies, particularly for KMS keys used for encryption, ensuring the X-Ray service has permission to use the key. Context: AWS X-Ray Configuration & Management > Permissions & IAM.</prompt>"

## Cross-Account & Cross-Region
"<prompt>Starting with H2, explain how AWS X-Ray tracing can work across different AWS accounts and regions, although direct cross-account trace viewing within X-Ray itself is limited. Context: AWS X-Ray Configuration & Management.</prompt>"
*   **CloudWatch Cross-Account Observability**
    "<prompt>Starting with a bullet point under H3, explain that the primary mechanism for unified cross-account/cross-region observability involving X-Ray traces is through setting up Amazon CloudWatch cross-account observability. Describe how this allows viewing traces (along with metrics and logs) from multiple accounts in a central monitoring account via CloudWatch ServiceLens. Context: AWS X-Ray Configuration & Management > Cross-Account & Cross-Region.</prompt>"

## Section V Summary & Review
"<prompt>Generate a concise summary paragraph recapping AWS X-Ray configuration and management aspects: Sampling Rules (controlling data volume/cost), Encryption (in transit/at rest with KMS), IAM (permissions for sending/reading data), and using CloudWatch Cross-Account Observability for multi-account scenarios.</prompt>"
"<prompt>Create a 4-question quiz (mix of multiple-choice and true/false) covering sampling rule configuration methods, KMS encryption options, necessary IAM permissions for sending vs. reading data, and the role of CloudWatch for cross-account tracing views. Provide answers.</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the importance of configuring appropriate Sampling Rules to balance visibility with cost and setting up correct IAM permissions based on the principle of least privilege.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to consider how they would configure sampling rules for an application with high-volume health checks but critical, low-volume payment processing endpoints.</prompt>"
"<prompt>Suggest adding links to the AWS X-Ray Developer Guide sections on 'Sampling rules', 'Encryption at rest', and 'Identity and access management'. Also link to the CloudWatch documentation on 'Cross-account observability'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Use Cases & Best Practices.</prompt>"

# VI. Use Cases & Best Practices

## Introduction to Use Cases & Best Practices
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Use Cases & Best Practices. Objectives should cover applying X-Ray for performance analysis, error diagnosis, dependency mapping, optimization, and following recommended practices.</prompt>"

## Performance Bottleneck Identification
"<prompt>Starting with H2, describe how to use AWS X-Ray specifically for identifying performance bottlenecks. Explain techniques like analyzing trace waterfalls, identifying long-duration segments/subsegments, and using the Analytics console for latency distribution analysis. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"

## Error & Fault Diagnosis
"<prompt>Starting with H2, describe how to use AWS X-Ray for diagnosing errors and faults. Explain how to filter traces by error/fault status, examine exception details and stack traces within trace views, and correlate issues across services using the Service Map and trace details. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"

## Microservice Dependency Analysis
"<prompt>Starting with H2, explain how the AWS X-Ray Service Map can be used for analyzing microservice dependencies. Describe how it helps visualize the call graph, understand inter-service communication patterns, and validate application architecture against design. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"

## Optimizing User Experience
"<prompt>Starting with H2, discuss how X-Ray data can inform efforts to optimize end-user experience. Explain how analyzing traces related to specific user actions (identified via URLs or annotations) can pinpoint areas for performance tuning that directly impact users. Mention correlating front-end and back-end traces if applicable. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"

## Monitoring Serverless Applications
"<prompt>Starting with H2, provide specific strategies and best practices for using X-Ray effectively with serverless applications (Lambda, API Gateway). Emphasize enabling active tracing, understanding cold starts, and tracing asynchronous workflows (e.g., involving SQS, Step Functions). Context: AWS X-Ray Use Cases & Best Practices.</prompt>"

## Implementing Custom Instrumentation
"<prompt>Starting with H2, provide best practices for implementing manual/custom instrumentation using the X-Ray SDK. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"
*   **Meaningful Segments/Subsegments**
    "<prompt>Starting with a bullet point under H3, advise on creating custom subsegments for logically distinct units of work or external calls that are important for performance monitoring, but avoiding excessive granularity. Context: AWS X-Ray Use Cases > Custom Instrumentation Best Practices.</prompt>"
*   **Strategic Annotations**
    "<prompt>Starting with a bullet point under H3, recommend using annotations strategically for data that will be crucial for filtering and grouping traces (e.g., user IDs, tenant IDs, business transaction IDs, A/B test flags). Context: AWS X-Ray Use Cases > Custom Instrumentation Best Practices.</prompt>"
*   **Contextual Metadata**
    "<prompt>Starting with a bullet point under H3, suggest using metadata for adding rich contextual information useful for debugging specific traces, but remembering it's not indexed. Context: AWS X-Ray Use Cases > Custom Instrumentation Best Practices.</prompt>"
*   **Avoiding Sensitive Information**
    "<prompt>Starting with a bullet point under H3, strongly advise against putting sensitive personal information (PII) or secrets into annotations or metadata. Context: AWS X-Ray Use Cases > Custom Instrumentation Best Practices.</prompt>"

## Managing Trace Volume & Cost
"<prompt>Starting with H2, provide best practices for managing X-Ray trace volume and associated costs. Context: AWS X-Ray Use Cases & Best Practices.</prompt>"
*   **Effective Sampling Strategy**
    "<prompt>Starting with a bullet point under H3, reiterate the importance of defining custom sampling rules to focus tracing on critical paths, new features, or problematic areas, while reducing sampling for high-volume, low-impact requests (e.g., health checks). Context: AWS X-Ray Use Cases > Cost Management Best Practices.</prompt>"
*   **Regular Review**
    "<prompt>Starting with a bullet point under H3, recommend periodically reviewing sampling rules and trace volume to ensure they still align with monitoring needs and cost constraints. Context: AWS X-Ray Use Cases > Cost Management Best Practices.</prompt>"
*   **Leverage Free Tier**
    "<prompt>Starting with a bullet point under H3, advise users to be aware of the X-Ray free tier limits and optimize sampling to stay within it where feasible for smaller applications or development environments. Context: AWS X-Ray Use Cases > Cost Management Best Practices.</prompt>"

## Section VI Summary & Review
"<prompt>Generate a concise summary paragraph recapping key use cases (bottleneck ID, error diagnosis, dependency mapping, UX optimization, serverless monitoring) and best practices (custom instrumentation, sampling/cost management) for AWS X-Ray.</prompt>"
"<prompt>Create a scenario-based quiz question: 'An e-commerce site experiences slow checkout processing. Which X-Ray feature(s) and techniques would be most helpful in diagnosing the bottleneck? (Select all that apply: a) Service Map, b) Trace Details/Waterfall, c) Analytics Console filtering by checkout URL, d) Custom sampling rules)'. Provide the answer (b, c are primary, a helps context).</prompt>"
"<prompt>Generate a highlighted callout box summarizing the top 3 best practices for effective X-Ray usage: Strategic Sampling, Meaningful Custom Instrumentation (Annotations!), and Regular Review of data/costs.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to identify one specific use case from this section that would be most valuable for their current or a past project and why.</prompt>"
"<prompt>Suggest adding links to AWS blog posts or whitepapers demonstrating specific X-Ray use cases and best practices.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Security Considerations.</prompt>"

# VII. Security Considerations

## Introduction to Security Considerations
"<prompt>Starting with H2, state the learning objectives for this section on AWS X-Ray Security Considerations. Objectives should cover understanding IAM best practices, data privacy concerns, encryption configuration, and network security using VPC Endpoints.</prompt>"

## IAM Best Practices
"<prompt>Starting with H2, discuss IAM best practices specifically related to AWS X-Ray. Context: AWS X-Ray Security Considerations.</prompt>"
*   **Least Privilege for Applications**
    "<prompt>Starting with a bullet point under H3, emphasize granting only the necessary permissions (e.g., `xray:PutTraceSegments`) to the IAM roles/users associated with applications sending trace data, using policies like `AWSXRayDaemonWriteAccess` as a base but potentially restricting further. Context: AWS X-Ray Security > IAM Best Practices.</prompt>"
*   **Least Privilege for Users**
    "<prompt>Starting with a bullet point under H3, emphasize granting appropriate read-only (`AWSXRayReadOnlyAccess`) or full access (`AWSXRayFullAccess`) permissions to users/groups accessing the X-Ray console based on their roles. Context: AWS X-Ray Security > IAM Best Practices.</prompt>"
*   **Regular Auditing**
    "<prompt>Starting with a bullet point under H3, recommend periodically auditing IAM permissions related to X-Ray access. Context: AWS X-Ray Security > IAM Best Practices.</prompt>"

## Data Privacy
"<prompt>Starting with H2, address data privacy concerns when using AWS X-Ray. Context: AWS X-Ray Security Considerations.</prompt>"
*   **Avoiding PII/Sensitive Data**
    "<prompt>Starting with a bullet point under H3, reiterate the critical importance of *not* including Personally Identifiable Information (PII) or other sensitive data (passwords, tokens, financial details) in X-Ray annotations or metadata. Explain that this data might be less protected than application databases and visible to anyone with console access. Context: AWS X-Ray Security > Data Privacy.</prompt>"
*   **Data Masking/Scrubbing**
    "<prompt>Starting with a bullet point under H3, suggest implementing data masking or scrubbing within the application's instrumentation code if there's a risk of accidentally capturing sensitive data in metadata fields. Context: AWS X-Ray Security > Data Privacy.</prompt>"

## Encryption Configuration
"<prompt>Starting with H2, review the importance of encryption configuration for X-Ray security. Context: AWS X-Ray Security Considerations.</prompt>"
*   **Leveraging KMS CMKs**
    "<prompt>Starting with a bullet point under H3, re-emphasize the option to use AWS KMS customer-managed keys (CMKs) for encryption at rest if required by compliance or internal security policies, providing an auditable trail of key usage. Context: AWS X-Ray Security > Encryption.</prompt>"
*   **Key Policy Management**
    "<prompt>Starting with a bullet point under H3, highlight the need to manage the KMS key policy correctly to allow the X-Ray service (`xray.amazonaws.com`) to use the key for encryption and decryption. Context: AWS X-Ray Security > Encryption.</prompt>"

## VPC Endpoints
"<prompt>Starting with H2, explain the use of VPC Endpoints for enhancing the network security of X-Ray data transmission. Context: AWS X-Ray Security Considerations.</prompt>"
*   **Private Connectivity**
    "<prompt>Starting with a bullet point under H3, describe how setting up an interface VPC endpoint for AWS X-Ray allows resources within a VPC (like EC2 instances or containers running the X-Ray daemon) to send trace data to the X-Ray API endpoint without traversing the public internet, using AWS PrivateLink. Context: AWS X-Ray Security > VPC Endpoints.</prompt>"
*   **Security Groups and Network ACLs**
    "<prompt>Starting with a bullet point under H3, mention that VPC endpoint security can be further controlled using security groups and network ACLs. Context: AWS X-Ray Security > VPC Endpoints.</prompt>"

## Section VII Summary & Review
"<prompt>Generate a concise summary paragraph recapping key security considerations for AWS X-Ray: applying IAM least privilege, avoiding PII in trace data, configuring KMS encryption, and using VPC endpoints for private network connectivity.</prompt>"
"<prompt>Create a true/false quiz question: 'It is safe to store user email addresses in X-Ray annotations for easy filtering.' Provide the answer (False).</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the single most important security practice: Never put sensitive data (PII, secrets) into X-Ray annotations or metadata.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to review their application's instrumentation plan (or a hypothetical one) and identify potential data privacy risks.</prompt>"
"<prompt>Suggest adding links to the AWS X-Ray Developer Guide sections on 'Security', 'Encryption at rest', 'Identity and access management', and 'X-Ray and interface VPC endpoints'.</prompt>"
"<prompt>Write a short transition sentence leading into the next section on Troubleshooting X-Ray.</prompt>"

# VIII. Troubleshooting X-Ray

## Introduction to Troubleshooting
"<prompt>Starting with H2, state the learning objectives for this section on Troubleshooting AWS X-Ray. Objectives should cover diagnosing common issues like missing data, agent connectivity problems, incorrect trace structures, and performance overhead.</prompt>"

## Missing Trace Data
"<prompt>Starting with H2, discuss common reasons for missing trace data in AWS X-Ray and how to diagnose them. Context: AWS X-Ray Troubleshooting.</prompt>"
*   **Checking SDK Configuration**
    "<prompt>Starting with a bullet point under H3, advise verifying that the X-Ray SDK is correctly initialized and configured in the application, including necessary middleware or interceptors. Context: AWS X-Ray Troubleshooting > Missing Data.</prompt>"
*   **Verifying Daemon/Agent Status and Logs**
    "<prompt>Starting with a bullet point under H3, recommend checking if the X-Ray daemon/agent process is running on the host/container and inspecting its logs for errors related to receiving data or sending it to the API. Context: AWS X-Ray Troubleshooting > Missing Data.</prompt>"
*   **Reviewing Sampling Rules**
    "<prompt>Starting with a bullet point under H3, suggest reviewing the active sampling rules (in the console or local file) to ensure the requests in question are not being aggressively sampled out. Consider temporarily setting a 100% sampling rate for debugging. Context: AWS X-Ray Troubleshooting > Missing Data.</prompt>"
*   **Checking IAM Permissions**
    "<prompt>Starting with a bullet point under H3, confirm that the IAM role/user associated with the application/daemon has the necessary `xray:PutTraceSegments` and `xray:PutTelemetryRecords` permissions. Context: AWS X-Ray Troubleshooting > Missing Data.</prompt>"

## Daemon/Agent Connectivity Issues
"<prompt>Starting with H2, focus on troubleshooting problems related to the X-Ray daemon/agent connecting to the AWS X-Ray API. Context: AWS X-Ray Troubleshooting.</prompt>"
*   **Network Configuration (Firewalls, Security Groups, NACLs)**
    "<prompt>Starting with a bullet point under H3, advise checking network configurations: ensure outbound traffic on UDP port 2000 (for SDK-to-daemon) and TCP port 443 (for daemon-to-API) is allowed by security groups, network ACLs, and local firewalls. Context: AWS X-Ray Troubleshooting > Connectivity Issues.</prompt>"
*   **VPC Endpoints Configuration**
    "<prompt>Starting with a bullet point under H3, if using VPC endpoints, verify the endpoint configuration, associated route tables, security groups, and DNS resolution. Context: AWS X-Ray Troubleshooting > Connectivity Issues.</prompt>"
*   **IAM Permissions (Daemon)**
    "<prompt>Starting with a bullet point under H3, re-check that the IAM role assigned to the instance/task running the daemon has the required permissions to send data to X-Ray. Context: AWS X-Ray Troubleshooting > Connectivity Issues.</prompt>"
*   **Daemon Logs**
    "<prompt>Starting with a bullet point under H3, emphasize inspecting the daemon logs for specific connectivity errors (e.g., timeouts, credential issues, throttling). Context: AWS X-Ray Troubleshooting > Connectivity Issues.</prompt>"

## Incorrect Trace Structure
"<prompt>Starting with H2, discuss issues where traces appear fragmented or segments are not correctly linked as parent/child. Context: AWS X-Ray Troubleshooting.</prompt>"
*   **Trace Context Propagation**
    "<prompt>Starting with a bullet point under H3, explain that the most common cause is broken trace context propagation. Verify that the `X-Amzn-Trace-Id` header is being correctly passed between services (e.g., through load balancers, API gateways, message queues, and inter-service calls). Ensure SDKs are configured to handle context propagation automatically where possible. Context: AWS X-Ray Troubleshooting > Trace Structure Issues.</prompt>"
*   **Manual Instrumentation Errors**
    "<prompt>Starting with a bullet point under H3, if using manual instrumentation, double-check that segment/subsegment creation and closing logic is correct, especially in asynchronous code, to ensure proper nesting and timing. Context: AWS X-Ray Troubleshooting > Trace Structure Issues.</prompt>"
*   **SDK Version Compatibility**
    "<prompt>Starting with a bullet point under H3, suggest checking for potential compatibility issues if using different versions of the X-Ray SDK across various services in the call chain. Context: AWS X-Ray Troubleshooting > Trace Structure Issues.</prompt>"

## Performance Overhead
"<prompt>Starting with H2, address concerns about potential performance overhead introduced by X-Ray instrumentation. Context: AWS X-Ray Troubleshooting.</prompt>"
*   **Impact Assessment**
    "<prompt>Starting with a bullet point under H3, recommend performing load testing with and without X-Ray instrumentation enabled to quantify any actual performance impact in a specific environment. Context: AWS X-Ray Troubleshooting > Performance Overhead.</prompt>"
*   **Sampling Rate Tuning**
    "<prompt>Starting with a bullet point under H3, explain that reducing the sampling rate is the primary way to mitigate overhead if it proves significant. Context: AWS X-Ray Troubleshooting > Performance Overhead.</prompt>"
*   **Daemon Resources**
    "<prompt>Starting with a bullet point under H3, ensure the host/container running the X-Ray daemon has sufficient CPU/memory resources, especially under high load, to avoid becoming a bottleneck itself. Context: AWS X-Ray Troubleshooting > Performance Overhead.</prompt>"
*   **SDK Overhead (Rare)**
    "<prompt>Starting with a bullet point under H3, mention that while generally low, SDK overhead can vary by language and complexity of instrumentation. Keep SDKs updated. Context: AWS X-Ray Troubleshooting > Performance Overhead.</prompt>"

## Section VIII Summary & Review
"<prompt>Generate a concise summary paragraph recapping common AWS X-Ray troubleshooting areas: Missing Data (check SDK, daemon, sampling, IAM), Connectivity (check network, IAM, daemon logs), Trace Structure (check context propagation), and Performance Overhead (assess impact, tune sampling).</prompt>"
"<prompt>Create a troubleshooting scenario question: 'You deploy a new microservice, but its traces aren't appearing in X-Ray. List 3 initial things you should check.' Provide possible answers (Daemon running/logs, IAM permissions, Sampling rules, SDK configuration).</prompt>"
"<prompt>Generate a highlighted callout box emphasizing the importance of checking the X-Ray Daemon logs as a first step for many troubleshooting scenarios.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to recall a past distributed system bug and consider how X-Ray troubleshooting steps might have helped diagnose it faster.</prompt>"
"<prompt>Suggest adding links to the AWS X-Ray Developer Guide section on 'Troubleshooting AWS X-Ray'.</prompt>"
"<prompt>Write a short transition sentence leading into the final section on Pricing.</prompt>"

# IX. Pricing

## Introduction to Pricing
"<prompt>Starting with H2, state the learning objective for this section on AWS X-Ray Pricing: Understand the cost structure, free tier, billing dimensions, and cost management techniques for AWS X-Ray.</prompt>"

## Free Tier
"<prompt>Starting with H2, explain the AWS X-Ray free tier. Context: AWS X-Ray Pricing.</prompt>"
*   **Trace Recording Limit**
    "<prompt>Starting with a bullet point under H3, specify the number of traces recorded per month included in the free tier (e.g., first 100,000 traces recorded). Context: AWS X-Ray Pricing > Free Tier.</prompt>"
*   **Trace Retrieval/Scan Limit**
    "<prompt>Starting with a bullet point under H3, specify the number of traces retrieved or scanned per month included in the free tier (e.g., first 1,000,000 traces retrieved or scanned). Emphasize that scans for Analytics count towards this. Context: AWS X-Ray Pricing > Free Tier.</prompt>"
*   **Note:**
    "<prompt>Starting with a bullet point under H3, add a note that free tier limits are subject to change and the learner should consult the official AWS Pricing page for current details. Context: AWS X-Ray Pricing > Free Tier.</prompt>"

## Pricing Model
"<prompt>Starting with H2, explain the AWS X-Ray pricing model for usage beyond the free tier. Context: AWS X-Ray Pricing.</prompt>"
*   **Trace Recording Cost**
    "<prompt>Starting with a bullet point under H3, explain that beyond the free tier, costs are incurred per trace recorded. Specify the unit (e.g., per million traces recorded) and provide the approximate cost tier structure if available (costs might decrease at higher volumes). Context: AWS X-Ray Pricing > Pricing Model.</prompt>"
*   **Trace Retrieval/Scanning Cost**
    "<prompt>Starting with a bullet point under H3, explain that costs are also incurred for retrieving traces (via `GetTraceSummaries`, `BatchGetTraces` APIs) and scanning traces (primarily by the Analytics console) beyond the free tier limit. Specify the unit (e.g., per million traces retrieved or scanned). Context: AWS X-Ray Pricing > Pricing Model.</prompt>"
*   **Cost Examples**
    "<prompt>Starting with a bullet point under H3, suggest providing a simple cost calculation example based on hypothetical usage (e.g., X million traces recorded, Y million traces scanned). Use placeholder prices like $Z per million. Context: AWS X-Ray Pricing > Pricing Model.</prompt>"

## Cost Allocation & Tagging
"<prompt>Starting with H2, explain how to track and manage AWS X-Ray costs using AWS cost management tools. Context: AWS X-Ray Pricing.</prompt>"
*   **AWS Cost Explorer**
    "<prompt>Starting with a bullet point under H3, mention that X-Ray costs will appear in AWS Cost Explorer, filterable by service. Context: AWS X-Ray Pricing > Cost Allocation.</prompt>"
*   **Cost Allocation Tags**
    "<prompt>Starting with a bullet point under H3, explain that while X-Ray itself doesn't directly support resource tagging for cost allocation, costs are associated with the AWS account. Standard AWS account-level tagging strategies can help allocate costs to projects or teams. Context: AWS X-Ray Pricing > Cost Allocation.</prompt>"
*   **Monitoring Usage**
    "<prompt>Starting with a bullet point under H3, recommend monitoring trace recording and scanning usage via AWS Billing and Cost Management dashboard or CloudWatch metrics (if available for usage) to anticipate costs. Context: AWS X-Ray Pricing > Cost Allocation.</prompt>"

## Section IX Summary & Review
"<prompt>Generate a concise summary paragraph recapping AWS X-Ray pricing: A generous free tier for traces recorded and scanned/retrieved, followed by per-trace costs for recording and scanning/retrieval. Emphasize that Analytics usage contributes to scanning costs.</prompt>"
"<prompt>Create a simple pricing calculation question: 'If the cost is $5 per million traces recorded and $1 per million traces scanned, and you record 1.1 million traces and scan 2 million traces in a month (after using the free tier), what is your approximate X-Ray cost?' Provide the calculation: (0.1M recorded * $5/M) + (1M scanned * $1/M) = $0.50 + $1.00 = $1.50.</prompt>"
"<prompt>Generate a highlighted callout box emphasizing that trace *scanning* (especially via the Analytics console) is a separate cost dimension from trace *recording* and should be considered when estimating costs.</prompt>"
"<prompt>Provide a reflective prompt asking the learner to consider how the pricing model influences their decisions about sampling rates and usage of the Analytics console.</prompt>"
"<prompt>Suggest adding a direct link to the official AWS X-Ray Pricing page for the most up-to-date information.</prompt>"
