**Learning Objectives**: Understand Log4j 2 architecture, configuration, usage, security, and troubleshooting, including Log4Shell mitigation.

**Prerequisites**: Basic Java programming, familiarity with XML, and understanding of logging concepts.

**Depth & Scope**: Overview to Intermediate, covering core concepts, configuration, security considerations, and practical applications.

**Target Audience**: Java developers, DevOps engineers, and security professionals.

**Technical Details**:
*   Log4j 2 configuration using XML.
*   Maven/Gradle dependencies.
*   Log levels: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `FATAL`.
*   Appenders: `ConsoleAppender`, `FileAppender`, `RollingFileAppender`, `JDBCAppender`.
*   Layouts: `PatternLayout`, `JSONLayout`, `HTMLLayout`.
*   PatternLayout example: `%d{yyyy-MM-dd HH:mm:ss} %-5level %logger{36} - %msg%n`.
*   Log4Shell vulnerability (CVE-2021-44228) details and mitigation strategies.
*   Asynchronous logging configuration.
*   Filters: `ThresholdFilter`, `RegexFilter`, `ScriptFilter`.
*   ThreadContext usage for correlation IDs.

**Relevant Technologies/Tools**: Java, Log4j 2, Maven, Gradle, Spring Boot, XML, Elasticsearch, Graylog, Splunk, Logstash, Fluentd.

**Preferred Format/Length**: Detailed explanations with concise examples.
