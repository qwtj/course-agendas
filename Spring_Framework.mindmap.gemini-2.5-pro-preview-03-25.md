# Spring Framework #Java #Backend #ApplicationFramework
The Spring Framework is a comprehensive application framework and inversion of control container for the Java platform.

## Core Container (IoC) #Core #IoC #DI
Provides the fundamental functionality of the Spring Framework, including the IoC container.
### Inversion of Control (IoC) #IoC #DesignPattern
The principle of outsourcing the construction and management of objects.
### Dependency Injection (DI) #DI #Wiring
A specific implementation of IoC where dependencies are injected into objects.
#### Constructor Injection #DI #Constructor
Dependencies are provided through class constructors.
#### Setter Injection #DI #Setter
Dependencies are provided through setter methods.
#### Field Injection #DI #Field #Reflection
Dependencies are injected directly into fields (often discouraged).
#### Interface Injection #DI #Interface
Dependencies are provided through methods defined in an interface (less common).
### BeanFactory #IoC #Container #Core
The basic interface for accessing the Spring IoC container.
### ApplicationContext #IoC #Container #Advanced
A more advanced container interface, inheriting from BeanFactory, providing enterprise-specific features.
#### ClassPathXmlApplicationContext #XML #Configuration
Loads context definition from XML files in the classpath.
#### FileSystemXmlApplicationContext #XML #Configuration
Loads context definition from XML files in the file system.
#### AnnotationConfigApplicationContext #JavaConfig #Configuration
Loads context definition from Java-based configuration (@Configuration classes).
#### WebApplicationContext #Web #Context
ApplicationContext designed for web applications.
### Beans #Objects #Components #Managed
Objects whose lifecycle is managed by the Spring IoC container.
#### Bean Definition #Configuration #Metadata
Metadata that describes a bean instance (class, scope, properties, dependencies).
#### Bean Lifecycle #Lifecycle #Callbacks
The phases a bean goes through from instantiation to destruction (init-method, destroy-method, BeanPostProcessor).
#### Bean Scopes #Scope #Singleton #Prototype
Defines the scope of bean instances (singleton, prototype, request, session, application, websocket).
#### Bean Wiring #DI #Autowiring
Connecting collaborating beans together.
##### Autowiring Modes #Autowiring #ByName #ByType #Constructor
Different strategies for automatic dependency injection.
### Java-based Configuration #JavaConfig #Annotations
Using Java classes and annotations for configuration.
#### @Configuration #Configuration #Annotation
Marks a class as a source of bean definitions.
#### @Bean #BeanDefinition #Annotation
Indicates a method produces a bean to be managed by Spring.
#### @Component #Stereotype #Annotation
Generic stereotype for any Spring-managed component.
#### @Service #Stereotype #Annotation
Stereotype for service layer components.
#### @Repository #Stereotype #Annotation
Stereotype for data access layer components (often enables exception translation).
#### @Controller #Stereotype #Annotation #Web
Stereotype for presentation layer components (Spring MVC).
#### @Autowired #DI #Annotation
Marks a constructor, field, setter method, or config method to be autowired by Spring's dependency injection facilities.
#### @Qualifier #DI #Disambiguation
Used alongside @Autowired to specify which bean to inject when multiple candidates exist.
#### @Value #Configuration #Injection
Injects values from properties files, environment variables, etc.
### XML-based Configuration #XML #Configuration #Legacy
Using XML files for defining beans and dependencies.
#### `<beans>`, `<bean>` tags #XML #Syntax
Core elements for defining beans and their properties.
#### `constructor-arg`, `property` tags #XML #DI
Elements for specifying constructor and setter injection.
### Spring Expression Language (SpEL) #SpEL #Expressions
A powerful expression language used for querying and manipulating an object graph at runtime.

## Aspect-Oriented Programming (AOP) #AOP #CrossCuttingConcerns #Proxy
Enables modularization of cross-cutting concerns (like logging, security, transactions).
### Core Concepts #AOP #Terminology
Fundamental terms in AOP.
#### Aspect #Concern #Module
A module that encapsulates a cross-cutting concern.
#### Join Point #ExecutionPoint #Event
A point during the execution of a program, such as method execution or exception handling.
#### Pointcut #Expression #JoinPointSelection
An expression that selects specific join points.
#### Advice #Action #Logic
The action taken by an aspect at a particular join point (the code that runs).
##### Before Advice #Advice #Before
Runs before the join point method executes.
##### After Returning Advice #Advice #AfterReturning
Runs after the join point method completes normally.
##### After Throwing Advice #Advice #AfterThrowing
Runs if a method exits by throwing an exception.
##### After (Finally) Advice #Advice #After #Finally
Runs regardless of how the join point exits (normal or exceptional return).
##### Around Advice #Advice #Around
Surrounds the join point execution, allowing custom behavior before and after the method invocation.
#### Target Object #AdvisedObject
The object being advised by one or more aspects.
#### AOP Proxy #Proxy #Weaving
An object created by the AOP framework to implement aspect contracts (usually a JDK dynamic proxy or CGLIB proxy).
#### Weaving #ProxyCreation #Integration
The process of linking aspects with other application types or objects to create an advised object.
##### Compile-time Weaving #Weaving #CompileTime #AspectJ
Aspects are woven at compile time (requires AspectJ compiler).
##### Load-time Weaving (LTW) #Weaving #LoadTime #AspectJ
Aspects are woven when the target class is loaded by the class loader (requires a weaving agent).
##### Runtime Weaving #Weaving #Runtime #SpringAOP
Aspects are woven at runtime using proxies (Spring AOP's approach).
### Spring AOP Implementation #SpringAOP #ProxyBased
Spring's AOP framework uses runtime weaving via proxies.
#### @AspectJ Support #Annotations #AspectJ
Using AspectJ annotations (@Aspect, @Pointcut, @Before, etc.) for defining aspects.
#### Schema-based AOP #XML #Configuration
Defining aspects, pointcuts, and advice using XML configuration (`<aop:config>`).
#### Programmatic AOP #API #Dynamic
Creating proxies and applying advice programmatically (less common).

## Data Access/Integration #Data #Persistence #Transaction
Simplifies data access and transaction management.
### JDBC Support #JDBC #Database #SQL
Provides utilities to simplify working with JDBC.
#### JdbcTemplate #Template #BoilerplateReduction
Reduces boilerplate code for JDBC operations (resource management, exception handling).
#### NamedParameterJdbcTemplate #JDBC #NamedParameters
JdbcTemplate variant allowing named parameters instead of `?`.
#### SimpleJdbcInsert / SimpleJdbcCall #JDBC #StoredProcedures #Inserts
Classes simplifying database inserts and stored procedure calls.
### Object-Relational Mapping (ORM) Integration #ORM #JPA #Hibernate
Integration with ORM frameworks.
#### JPA Support #JPA #PersistenceAPI
Integration with the Java Persistence API standard.
##### EntityManagerFactory Configuration #JPA #Configuration
Setting up JPA EntityManagerFactory in Spring.
##### Persistence Exception Translation #ExceptionHandling #JPA
Translating platform-specific persistence exceptions into Spring's DataAccessException hierarchy.
#### Hibernate Support #Hibernate #ORM
Direct integration support for Hibernate.
#### Other ORM Frameworks #MyBatis #JDO
Support for other persistence technologies like MyBatis, JDO.
### Transaction Management #Transaction #ACID #Consistency
Provides declarative and programmatic transaction management.
#### PlatformTransactionManager #Abstraction #TransactionStrategy
Central interface for transaction strategies.
#### Declarative Transaction Management #Annotation #XML #AOP
Managing transactions using annotations (@Transactional) or XML configuration, leveraging AOP.
##### @Transactional #Annotation #Declarative
Annotation to define transactional boundaries on methods or classes.
##### Propagation Behaviors #Transaction #Propagation
Defines how transactions relate to each other (REQUIRED, REQUIRES_NEW, SUPPORTS, etc.).
##### Isolation Levels #Transaction #Isolation
Defines the degree to which concurrent transactions are isolated from each other (READ_UNCOMMITTED, READ_COMMITTED, REPEATABLE_READ, SERIALIZABLE).
##### Rollback Rules #Transaction #Rollback
Configuring automatic rollback based on specific exceptions.
#### Programmatic Transaction Management #API #ManualControl
Managing transactions directly using TransactionTemplate or PlatformTransactionManager API.
### Spring Data #Data #Repository #Abstraction
Umbrella project to simplify data access using repository abstractions.
#### Repository Abstraction #RepositoryPattern #CRUD
Core concept providing generic CRUD operations.
#### Spring Data JPA #JPA #Data #Repositories
Simplifies JPA-based data access layers.
#### Spring Data JDBC #JDBC #Data #Repositories
Simplifies JDBC-based data access layers.
#### Spring Data MongoDB #NoSQL #MongoDB #Data
Support for MongoDB document database.
#### Spring Data Redis #NoSQL #Redis #Data #Caching
Support for Redis key-value store.
#### Other Spring Data Projects #Elasticsearch #Cassandra #Neo4j
Support for various other SQL and NoSQL databases.

## Spring Web MVC #Web #MVC #ServletAPI
Model-View-Controller web framework built on the Servlet API.
### DispatcherServlet #FrontController #Servlet
The central servlet that handles all incoming requests and dispatches them to appropriate handlers.
### Controllers #Handler #RequestProcessing
Components responsible for processing user requests.
#### @Controller #Annotation #Stereotype #Web
Marks a class as a web controller.
#### @RestController #Annotation #REST #Convenience
Combines @Controller and @ResponseBody, simplifying RESTful web service creation.
#### Request Mapping #Routing #URL
Mapping incoming HTTP requests to handler methods.
##### @RequestMapping #Annotation #Mapping
General annotation for mapping requests (method, path, headers, params).
##### HTTP Method Specific Shortcuts #Annotations #Mapping
@GetMapping, @PostMapping, @PutMapping, @DeleteMapping, @PatchMapping.
### Handler Methods #Controller #Method
Methods within controllers that handle specific requests.
#### Method Arguments #Parameters #Input
Resolving various inputs like @RequestParam, @PathVariable, @RequestBody, Model, HttpServletRequest, etc.
#### Return Values #Response #Output
Handling various return types like String (view name), ModelAndView, ResponseEntity, domain objects (@ResponseBody).
### Model #Data #ViewData
Holds data to be displayed in the view.
### View Resolution #View #Rendering #Strategy
Mechanism to map logical view names returned by controllers to actual View technologies.
#### ViewResolver Interface #View #Configuration
Interface for view resolution strategies.
#### InternalResourceViewResolver #JSP #Servlet #View
Resolves view names to JSP files or other resources within the web application.
#### ContentNegotiatingViewResolver #REST #JSON #XML #View
Resolves views based on the requested media type (Accept header).
#### Thymeleaf, FreeMarker, Groovy Templates #Templating #View
Integration with various templating engines.
### Data Binding #Request #ObjectMapping
Binding request parameters or request body content to model objects.
### Validation #InputValidation #BeanValidation
Support for validating user input, often integrating with Bean Validation (JSR-380/JSR-349).
#### @Valid Annotation #Validation #Annotation
Triggers validation of annotated method arguments.
### Exception Handling #ErrorHandling #Web
Strategies for handling exceptions thrown during request processing.
#### @ExceptionHandler #Annotation #Exception
Defines methods within a controller to handle specific exceptions.
#### HandlerExceptionResolver #Interface #GlobalHandling
Interface for global exception handling strategies.
#### @ControllerAdvice / @RestControllerAdvice #AOP #GlobalHandling
Classes annotated to apply cross-cutting concerns (like exception handling, model attributes) to controllers globally.
### Handler Interceptors #Interceptor #PreProcessing #PostProcessing
Allow custom preprocessing and postprocessing of requests (similar to Servlet Filters but within Spring MVC).
### Web Initializers #Configuration #ServletAPI
Programmatic configuration of the Servlet container (Servlet 3.0+).
#### WebApplicationInitializer #JavaConfig #Web
Interface for programmatically configuring the ServletContext.
#### AbstractAnnotationConfigDispatcherServletInitializer #JavaConfig #Convenience
Convenient base class for WebApplicationInitializer implementations using Java-based configuration.

## Spring WebFlux #Web #Reactive #NonBlocking
Reactive-stack web framework, fully non-blocking, supports Reactive Streams backpressure.
### Reactive Programming Fundamentals #Reactive #Asynchronous #Events
Core concepts of reactive programming.
#### Reactive Streams Specification #Specification #Publisher #Subscriber #Backpressure
Standard for asynchronous stream processing with non-blocking back pressure.
#### Project Reactor #ReactiveLibrary #Mono #Flux
The reactive library underpinning WebFlux (Mono for 0-1 items, Flux for 0-N items).
### Annotation-based Programming Model #Annotations #ReactiveControllers
Similar to Spring MVC but using reactive types.
#### @RestController, @RequestMapping etc. #Annotations #WebFlux
Using familiar annotations with reactive return types (Mono<T>, Flux<T>).
#### Reactive Method Arguments #Parameters #Input
Handling reactive types as input parameters.
### Functional Programming Model (Router Functions) #Functional #Routing #HandlerFunctions
A lightweight, functional programming model for routing and handling requests.
#### RouterFunction #Routing #Functional
Defines the mapping between predicates on requests and handler functions.
#### HandlerFunction #Handler #Functional
Handles the request and returns a Mono<ServerResponse>.
#### ServerRequest / ServerResponse #Request #Response #Functional
Reactive, immutable representations of HTTP request and response.
### WebClient #HTTPClient #Reactive #NonBlocking
Non-blocking, reactive client for performing HTTP requests.
### Reactive WebSocket Support #WebSocket #Reactive
Support for reactive WebSocket interactions.
### Server Support #Netty #Tomcat #Jetty #Undertow
Runs on non-blocking servers like Netty (default), but also supports Tomcat, Jetty, Undertow with Servlet 3.1+.

## Spring Security #Security #Authentication #Authorization
Provides comprehensive security services for Java applications.
### Core Concepts #Security #Principles
Fundamental security ideas.
#### Authentication #WhoAreYou #Credentials
Verifying the identity of a principal (user).
#### Authorization #WhatCanYouDo #Permissions
Determining if a principal is allowed to perform an action.
#### Principal #Identity #User
The currently authenticated entity (user).
#### GrantedAuthority #Role #Permission
Represents an authority granted to the principal (e.g., 'ROLE_ADMIN', 'READ_PRIVILEGE').
#### SecurityContextHolder #Context #PrincipalStorage
Stores details of the currently authenticated principal.
### Web Security #Web #Filters #HTTP
Securing web applications.
#### Servlet Filters #Filter #Chain #Web
Core mechanism using a chain of Servlet Filters (e.g., DelegatingFilterProxy, SecurityFilterChain).
#### SecurityFilterChain #Configuration #WebSecurity
Ordered list of security filters applied to requests.
#### Form Login #Authentication #Web #Form
Handling authentication via HTML forms.
#### Basic Authentication #Authentication #Web #HTTPBasic
Handling HTTP Basic authentication.
#### Remember-Me Authentication #Authentication #Cookie #Token
Remembering user identity across sessions.
#### Logout Handling #Session #Logout
Managing user logout.
### Authorization Mechanisms #Authorization #AccessControl
Controlling access to resources.
#### URL-based Authorization #Authorization #RequestMatchers
Securing web resources based on request paths and HTTP methods.
#### Method Security #Authorization #AOP #Annotations
Securing service layer methods using annotations.
##### @PreAuthorize / @PostAuthorize #Annotation #SpEL #MethodSecurity
Expression-based access control before/after method execution.
##### @Secured #Annotation #RoleBased #MethodSecurity
Role-based access control (requires specific roles).
##### @RolesAllowed (JSR-250) #Annotation #Standard #MethodSecurity
Standard Java annotation for role-based access control.
### Authentication Providers #Authentication #Strategy
Components responsible for specific authentication strategies.
#### DaoAuthenticationProvider #Database #UserDetailsService
Authenticates against user details stored in a database via UserDetailsService.
#### LdapAuthenticationProvider #LDAP #Directory
Authenticates against an LDAP server.
#### In-Memory Authentication #Testing #Simple #Authentication
Configuring users directly in memory (useful for testing/demos).
### UserDetailsService #Service #UserLookup
Interface for loading user-specific data.
### Password Encoding #Security #Hashing #Passwords
Storing passwords securely using hashing.
#### PasswordEncoder Interface #Abstraction #Hashing
Interface for encoding passwords (BCryptPasswordEncoder, Argon2PasswordEncoder, etc.).
### OAuth2 / OpenID Connect #OAuth #OIDC #Federation #SSO
Support for OAuth2 and OpenID Connect protocols.
#### OAuth2 Client #OAuth #Client
Acting as an OAuth2 client to interact with resource servers or identity providers.
#### OAuth2 Resource Server #OAuth #API #ResourceServer
Protecting APIs using OAuth2 bearer tokens.
#### OAuth2 Authorization Server #OAuth #IdentityProvider
(Support moved to separate experimental/community projects, but core framework provides some foundations).
### Reactive Security #WebFlux #Reactive #Security
Security support tailored for Spring WebFlux applications.

## Testing Support #Testing #UnitTest #IntegrationTest
Provides utilities and infrastructure for testing Spring applications.
### TestContext Framework #Testing #IntegrationTest #ContextManagement
Core framework for integration testing Spring components.
#### @RunWith(SpringRunner.class) / @ExtendWith(SpringExtension.class) #JUnit #TestExecution
Integrating Spring TestContext with JUnit 4 / JUnit 5.
#### @ContextConfiguration #Configuration #TestContext
Specifies how to load the ApplicationContext for a test.
#### @SpringBootTest #SpringBoot #IntegrationTest #Annotation
Annotation for Spring Boot integration tests, loading the full ApplicationContext.
#### Test Slices (@WebMvcTest, @DataJpaTest, etc.) #SpringBoot #SliceTest #Focused
Testing specific layers or "slices" of the application in isolation.
##### @WebMvcTest #Testing #Web #MVC
Tests Spring MVC controllers without loading the full context.
##### @DataJpaTest #Testing #Data #JPA
Tests JPA repositories, configuring an in-memory database by default.
##### @RestClientTest #Testing #REST #Client
Tests REST clients (RestTemplate, WebClient).
##### @JsonTest #Testing #JSON
Tests JSON serialization/deserialization.
#### @ActiveProfiles #Configuration #Profiles #Testing
Activates specific Spring configuration profiles for a test.
#### @DirtiesContext #TestContext #Isolation
Indicates the application context should be closed and recreated after a test class or method.
### Mock Objects #Testing #Isolation #Mockito
Creating mock or stub objects for dependencies.
#### Spring MVC Test #Testing #Web #MVC #MockMvc
Provides MockMvc for server-side testing of Spring MVC controllers without running a full HTTP server.
#### Spring WebFlux Test #Testing #Web #WebFlux #WebTestClient
Provides WebTestClient for testing WebFlux endpoints.
#### @MockBean / @SpyBean #SpringBoot #Mocking #DI
Replacing beans in the ApplicationContext with Mockito mocks or spies.
### Test Utilities #Testing #Utils
Helper classes for testing.
#### TestRestTemplate #SpringBoot #IntegrationTest #HTTPClient
A convenient REST client for integration tests using @SpringBootTest.
#### ReflectionTestUtils #Testing #Reflection #Utils
Utilities for setting non-public fields or invoking non-public methods during tests.

## Spring Boot #SpringBoot #AutoConfiguration #Standalone #ConventionOverConfiguration
Opinionated framework simplifying the development of stand-alone, production-grade Spring applications.
### Goals #SpringBoot #Simplicity #Productivity
Key objectives: rapid development, convention over configuration, standalone execution.
### Starters #Dependencies #Convention #SpringBoot
Convenient dependency descriptors providing specific functionalities (e.g., `spring-boot-starter-web`, `spring-boot-starter-data-jpa`).
### Auto-Configuration #SpringBoot #Magic #Conditional
Automatically configures Spring application context based on classpath dependencies, properties, and other conditions (@ConditionalOn...).
### Standalone Execution #EmbeddedServer #JAR #Executable
Creating self-contained applications with embedded servers (Tomcat, Jetty, Undertow) runnable via `java -jar`.
### Externalized Configuration #Configuration #Properties #YAML
Flexible ways to configure applications using properties files, YAML files, environment variables, command-line arguments.
#### application.properties / application.yml #Configuration #Files
Standard configuration file names.
#### Profiles (@Profile) #Configuration #EnvironmentSpecific
Defining environment-specific configuration (dev, test, prod).
### Spring Boot Actuator #Monitoring #Management #ProductionReady
Provides production-ready features like health checks, metrics, monitoring, and management endpoints.
#### Health Endpoint (/actuator/health) #Actuator #Monitoring #HealthCheck
Checks the application's health status.
#### Metrics Endpoint (/actuator/metrics) #Actuator #Monitoring #Performance
Exposes application metrics (JVM, system, custom).
#### Info Endpoint (/actuator/info) #Actuator #Information
Displays arbitrary application information.
#### Other Endpoints #Actuator #Beans #Mappings #Env
Endpoints for inspecting beans, mappings, environment properties, etc.
### Command-Line Runner / Application Runner #Startup #Initialization #SpringBoot
Interfaces to execute code after the SpringApplication starts.
### SpringApplication #Bootstrap #SpringBoot
The class used to bootstrap and launch a Spring Boot application.
### Spring Boot DevTools #Development #Productivity #LiveReload
Provides development-time features like automatic restarts, live reload, etc.

## Spring Cloud #Microservices #DistributedSystems #CloudNative
Tools for building distributed systems and microservices patterns.
### Core Concepts #Microservices #Patterns
Common patterns addressed by Spring Cloud.
#### Service Discovery #Microservices #Discovery #Registry
Locating network locations for service instances (Eureka, Consul, Zookeeper).
##### Spring Cloud Netflix Eureka #ServiceDiscovery #Eureka
Integration with Netflix Eureka service registry.
##### Spring Cloud Consul #ServiceDiscovery #Consul
Integration with HashiCorp Consul.
#### Configuration Management #Microservices #Configuration #Centralized
Managing configuration for distributed services centrally.
##### Spring Cloud Config Server #Configuration #Git #Vault
Centralized external configuration management backed by Git, SVN, HashiCorp Vault, or local filesystem.
##### Spring Cloud Config Client #Configuration #Client
Client-side library to consume configuration from the Config Server.
#### Circuit Breaker #Microservices #Resilience #FaultTolerance
Handling failures gracefully to prevent cascading failures.
##### Resilience4j #CircuitBreaker #Resilience
(Recommended replacement for Hystrix) Provides Circuit Breaker, Rate Limiter, Bulkhead patterns.
##### Spring Cloud Circuit Breaker #Abstraction #Resilience
Provides an abstraction over different circuit breaker implementations.
#### API Gateway #Microservices #Routing #EdgeService
Single entry point for client requests, handling routing, security, monitoring.
##### Spring Cloud Gateway #APIGateway #Reactive #Netty
Reactive API Gateway built on Project Reactor, Netty, and Spring WebFlux.
#### Distributed Tracing #Microservices #Observability #Tracing
Tracking requests as they propagate through multiple services.
##### Micrometer Tracing #Tracing #Abstraction #Observability
(Replaced Spring Cloud Sleuth) Provides an abstraction over distributed tracing systems (Zipkin, OpenTelemetry).
##### Zipkin / OpenTelemetry #Tracing #Tools
Integration with distributed tracing systems.
#### Load Balancing #Microservices #Scalability #ClientSideLB
Distributing client requests across multiple service instances.
##### Spring Cloud LoadBalancer #LoadBalancing #ClientSide #Reactive
Provides client-side load balancing abstraction (replaces Ribbon).
#### Messaging #Microservices #Communication #Events
Asynchronous communication between services.
##### Spring Cloud Stream #Messaging #Abstraction #Kafka #RabbitMQ
Framework for building message-driven microservices, abstracting messaging middleware (Kafka, RabbitMQ).
##### Spring Cloud Bus #Messaging #ControlPlane #Events
Links nodes of a distributed system with a lightweight message broker for broadcasting state changes (e.g., config changes).

## Messaging #Messaging #JMS #AMQP #Kafka
Integration with messaging systems.
### JMS (Java Message Service) #JMS #Standard #Messaging
Support for the standard Java messaging API.
#### JmsTemplate #Template #JMS #BoilerplateReduction
Simplifies sending and receiving JMS messages.
#### Message Listener Containers #JMS #Asynchronous #Receiver
Containers for asynchronous message consumption.
#### @JmsListener #Annotation #JMS #Listener
Annotation for creating message listener endpoints.
### AMQP (Advanced Message Queuing Protocol) #AMQP #RabbitMQ #Messaging
Support for AMQP, commonly used with RabbitMQ.
#### RabbitTemplate #Template #AMQP #RabbitMQ
Simplifies sending and receiving AMQP messages with RabbitMQ.
#### @RabbitListener #Annotation #AMQP #Listener
Annotation for creating AMQP message listener endpoints.
### Apache Kafka #Kafka #Streaming #Messaging
Support for Apache Kafka distributed streaming platform.
#### KafkaTemplate #Template #Kafka
Simplifies producing messages to Kafka topics.
#### @KafkaListener #Annotation #Kafka #Listener
Annotation for creating Kafka message consumer endpoints.
### Spring Messaging Module #Abstraction #Messaging
Provides a generic messaging abstraction (`Message`, `MessageChannel`, `MessageHandler`).

## Spring Integration #Integration #EIP #Connectivity
Framework for building integration solutions based on Enterprise Integration Patterns (EIP).
### Core Concepts (EIP) #EIP #Patterns #Integration
Implementation of patterns from the Enterprise Integration Patterns book.
#### Message #EIP #DataCarrier
Wrapper for data being passed between components.
#### Message Channel #EIP #Pipe
Conduit for messages between endpoints ("pipes" in the pipes-and-filters model).
#### Message Endpoint #EIP #Filter #Transformer #Router
Components that interact with channels (consume/produce messages).
##### Message Transformer #EIP #Endpoint #Transformation
Modifies the message content or structure.
##### Message Filter #EIP #Endpoint #Filtering
Selectively passes messages based on criteria.
##### Message Router #EIP #Endpoint #Routing
Directs messages to different channels based on conditions.
##### Service Activator #EIP #Endpoint #ServiceInvocation
Connects a messaging system to a service method.
##### Channel Adapter #EIP #Endpoint #SystemIntegration
Connects message channels to external systems or transports (Inbound/Outbound).
### Configuration #Integration #XML #JavaConfig #DSL
Defining integration flows using XML, Java Config with Annotations, or the Java DSL.
#### XML Configuration #XML #Integration
Using `<int:*>` namespace elements.
#### Java Configuration (@Configuration, @Bean) #JavaConfig #Integration
Defining channels, endpoints, etc., as beans.
#### Java DSL #DSL #FluentAPI #Integration
A fluent API for defining integration flows in Java.
### Adapters #Integration #Connectivity #Adapters
Pre-built components for integrating with various systems/protocols.
#### File Adapter #Integration #FileIO
Reading from and writing to files.
#### JDBC Adapter #Integration #Database
Interacting with databases via JDBC.
#### JMS Adapter #Integration #JMS
Connecting to JMS message brokers.
#### AMQP Adapter #Integration #AMQP #RabbitMQ
Connecting to AMQP message brokers.
#### Kafka Adapter #Integration #Kafka
Connecting to Apache Kafka.
#### HTTP Adapter #Integration #Web #HTTP
Sending and receiving HTTP requests.
#### TCP/UDP Adapters #Integration #Network
Low-level network communication.
#### Mail Adapter #Integration #Email
Sending and receiving emails.
#### FTP/SFTP Adapters #Integration #FileTransfer
File transfer protocols.

## Spring Batch #BatchProcessing #Jobs #LargeVolumeData
Framework for robust batch processing applications.
### Core Concepts #Batch #Terminology
Fundamental components of Spring Batch.
#### Job #Batch #Process
Represents the entire batch process.
#### Step #Batch #JobUnit
An independent, sequential phase of a Job. Can be chunk-oriented or tasklet-based.
#### JobRepository #Batch #Metadata #Persistence
Stores metadata about Job executions (status, start/end times, etc.).
#### JobLauncher #Batch #Execution
Interface for starting Job executions.
### Item Processing #Batch #ReadProcessWrite
Reading, processing, and writing data in chunks.
#### ItemReader #Batch #Input #Reader
Reads items one at a time from a data source (file, database, queue).
#### ItemProcessor #Batch #Transformation #Logic
Processes or transforms an item read by the ItemReader. (Optional step).
#### ItemWriter #Batch #Output #Writer
Writes chunks of items processed (or read directly) to a target (file, database, etc.).
### Chunk-Oriented Processing #Batch #Chunk #Performance
Processing items in configurable chunks for efficiency and transaction management.
### Tasklet Step #Batch #Task #SimpleStep
A simpler Step implementation involving a single task (e.g., executing a stored procedure, running a shell command).
### Job Execution Lifecycle #Batch #Lifecycle #Status
States and management of job runs (STARTING, COMPLETED, FAILED, STOPPED, etc.).
### Configuration #Batch #XML #JavaConfig
Defining Jobs and Steps using XML or Java-based configuration.
### Scaling and Parallel Processing #Batch #Performance #Scalability
Features for scaling batch jobs (multi-threaded steps, partitioning, remote chunking).

## Ecosystem and Other Projects #Ecosystem #Community #Extensions
Various other projects within the broader Spring ecosystem.
### Spring Data #Data #Persistence #Repositories
(Already covered, but significant part of the ecosystem).
### Spring GraphQL #GraphQL #API
Support for building GraphQL APIs.
### Spring Session #SessionManagement #Clustering #HttpSession
Manages user session information, providing clustering support (Redis, JDBC, etc.).
### Spring HATEOAS #REST #HATEOAS #Hypermedia
Simplifies creating REST representations that follow the HATEOAS principle.
### Spring AMQP #AMQP #RabbitMQ
(Core messaging support, also a project).
### Spring for Apache Kafka #Kafka #Streaming
(Core messaging support, also a project).
### Spring Vault #Security #SecretsManagement #Vault
Integration with HashiCorp Vault for secrets management.
### Spring Statemachine #StateMachine #StateManagement
Framework for building state machine-based applications.
### Spring Shell #CLI #Application #Shell
Facilitates the creation of interactive command-line shell applications.
### Spring Authorization Server #OAuth #Security #AuthorizationServer
Community project for building OAuth2 Authorization Servers.
### Spring Native (Experimental/GraalVM) #AOT #Performance #GraalVM
Support for compiling Spring applications to native executables using GraalVM Ahead-of-Time (AOT) compilation.
