# I. Foundations of Reactive Programming

*   **Learning Objective:** Understand the fundamental concepts and motivations behind reactive programming.

## A. Understanding Reactive Principles
"Explain the core principles of the Reactive Manifesto (Responsive, Resilient, Elastic, Message Driven) and how they relate to asynchronous, non-blocking I/O in modern application development."

## B. Contrasting Imperative vs. Reactive Models
"Compare and contrast the traditional imperative/synchronous programming model with the reactive/asynchronous model, highlighting key differences in execution flow, resource utilization, and error handling."

## C. Introduction to Reactive Streams Specification
"Describe the key components of the Reactive Streams specification: `Publisher`, `Subscriber`, `Subscription`, and `Processor`. Explain the rules governing their interaction, particularly regarding demand signaling (backpressure)."

*   **Reflective Prompt:** "Consider an application you are familiar with. How might its responsiveness or resilience benefit from adopting a reactive programming model?"

---
**Section I Summary:** This section introduced the 'why' and 'what' of reactive programming, establishing the core ideas of responsiveness, resilience, asynchronous operations, non-blocking I/O, and the standardized Reactive Streams specification.
**Transition:** Now that the foundational concepts are clear, we will delve into Project Reactor, the specific library used by Spring for reactive capabilities.
---

# II. Core Concepts of Project Reactor

*   **Learning Objective:** Learn the fundamentals of Project Reactor, the Java library underpinning Spring's reactive stack.

## A. Introduction to Reactor Types: `Mono` and `Flux`
"Describe the purpose and key differences between `Mono` (0..1 items) and `Flux` (0..N items) in Project Reactor. Provide simple code examples using `Mono.just()`, `Flux.just()`, `Flux.range()` to create instances."

## B. Basic Operators for Transformation and Filtering
"Explain and demonstrate common synchronous Reactor operators for transforming and filtering data streams, including `map`, `filter`, and `flatMap` (for `Mono`). Provide code examples for each."
*   **Prompt:** "Illustrate how `map` transforms items emitted by a `Flux<Integer>`."
*   **Prompt:** "Show how `filter` selects items from a `Flux<String>` based on a predicate."

## C. Combining Reactive Streams
"Explain operators used for combining multiple reactive streams. Provide examples for `merge`, `concat`, and `zip`."
*   **Prompt:** "Demonstrate merging two `Flux<String>` streams using `Flux.mergeWith()`."
*   **Prompt:** "Show how `zip` combines elements from two `Flux` streams into pairs (`Tuple2`)."

## D. Understanding Backpressure
"Define backpressure in the context of Project Reactor. Explain its importance in preventing resource exhaustion for slow consumers. Briefly introduce strategies like `onBackpressureBuffer()`, `onBackpressureDrop()`, `onBackpressureLatest()`."
*   **Prompt:** "Provide a conceptual example illustrating a scenario where backpressure is necessary between a fast `Publisher` and a slow `Subscriber`."

## E. Handling Errors in Reactive Streams
"Describe basic error handling mechanisms in Reactor using operators like `onErrorReturn`, `onErrorResume`, and `onErrorMap`."
*   **Prompt:** "Show how to provide a default value using `onErrorReturn` when a `Mono<String>` signals an error."
*   **Prompt:** "Demonstrate using `onErrorResume` to switch to a fallback `Mono` or `Flux` upon encountering an error."

*   **Interactive Quiz:** "Generate a 5-question multiple-choice quiz covering the differences between `Flux` and `Mono`, the purpose of `map`, `filter`, `flatMap`, `zip`, and basic error handling operators."
*   **Reflective Prompt:** "How does the concept of operators chaining together in Reactor compare to method chaining or stream processing in imperative Java?"

---
**Section II Summary:** This section covered Project Reactor's core types (`Mono`, `Flux`), essential operators for data manipulation, stream combination, the crucial concept of backpressure, and basic error handling strategies.
**Glossary Terms:** `Publisher`, `Subscriber`, `Subscription`, `Processor`, `Operator`, `Mono`, `Flux`, `Backpressure`, `Non-blocking I/O`. (Define each term). Prompt: "Define 'Backpressure' within the context of reactive streams and Project Reactor."
**Transition:** With a grasp of Reactor basics, we can now explore how Spring integrates these concepts into its web framework, Spring WebFlux.
---

# III. Spring WebFlux Fundamentals

*   **Learning Objective:** Understand and implement reactive web endpoints using Spring WebFlux.

## A. Introduction to Spring WebFlux
"Explain the role of Spring WebFlux as the reactive web stack in Spring Boot. Contrast it with the traditional Spring MVC, focusing on the underlying threading model and request processing lifecycle."

## B. Building Reactive Controllers (Annotation-Based)
"Demonstrate how to create a simple reactive REST controller using Spring WebFlux annotations (`@RestController`, `@GetMapping`, `@PostMapping`, `@RequestBody`, `@PathVariable`). Show examples returning `Mono<T>` and `Flux<T>`."
*   **Prompt:** "Provide a code example for a `@GetMapping` endpoint that returns a `Flux<User>` representing a stream of user objects."
*   **Prompt:** "Show a `@PostMapping` endpoint that accepts a `Mono<UserProfile>` in the request body and returns a `Mono<Void>` upon successful processing."

## C. Functional Endpoints with RouterFunctions
"Introduce the functional programming model for defining endpoints using `RouterFunction` and `HandlerFunction`. Compare this approach to the annotation-based model."
*   **Prompt:** "Provide a code example defining a simple GET route `/functional/greet` using `RouterFunctions.route()` and a `HandlerFunction` that returns `Mono<ServerResponse>`."

## D. Understanding Reactive Clients (`WebClient`)
"Explain the purpose and usage of `WebClient`, Spring's reactive, non-blocking HTTP client. Demonstrate how to make GET and POST requests and handle reactive responses (`Mono`/`Flux`)."
*   **Prompt:** "Show a code example using `WebClient` to perform a GET request to an external API and retrieve the response body as a `Mono<String>`."
*   **Prompt:** "Illustrate making a POST request using `WebClient`, sending a JSON body, and processing the `Mono<ResponseEntity<Void>>` response."

> **Key Point:** WebFlux allows handling many concurrent requests with fewer threads compared to Spring MVC by leveraging non-blocking I/O and event loops.

*   **Reflective Prompt:** "When might you choose the functional endpoint approach (`RouterFunction`) over the traditional annotation-based controllers in WebFlux, and vice-versa?"
*   **(Cross-reference):** Concepts learned here build upon Project Reactor fundamentals (Section II). `WebClient` usage often involves operators from Reactor.

---
**Section III Summary:** This section introduced Spring WebFlux, covering both annotation-based and functional ways to create reactive web endpoints, and demonstrated how to perform reactive HTTP calls using `WebClient`.
**Transition:** Next, we will explore how to interact with databases in a reactive manner using Spring Data Reactive modules.
---

# IV. Data Access with Spring Data Reactive

*   **Learning Objective:** Implement non-blocking data access using Spring Data's reactive repositories.

## A. Overview of Spring Data Reactive Repositories
"Explain the concept of reactive repositories provided by Spring Data modules (e.g., Spring Data MongoDB Reactive, Spring Data R2DBC). Describe how they extend familiar Spring Data concepts to work with `Mono` and `Flux`."

## B. Implementing Reactive Repositories
"Demonstrate how to define a reactive repository interface (e.g., extending `ReactiveCrudRepository` or `ReactiveMongoRepository`). Show examples of basic CRUD operations returning `Mono` or `Flux`."
*   **Prompt:** "Provide a code example for a `UserRepository` interface extending `ReactiveCrudRepository<User, String>` for a reactive MongoDB setup."
*   **Prompt:** "Show example usage of repository methods like `save(entity)`, `findById(id)`, `findAll()`, and `deleteById(id)` within a service layer, handling the returned `Mono` or `Flux`."

## C. Custom Queries in Reactive Repositories
"Explain how to define custom query methods in reactive repositories using `@Query` annotations or derived query method names, ensuring they return reactive types (`Mono`/`Flux`)."
*   **Prompt:** "Show an example of a custom query method `findUsersByLastName(String lastName)` in a reactive repository returning `Flux<User>`."

## D. Introduction to R2DBC (Reactive Relational Database Connectivity)
"Describe the purpose of R2DBC as a specification for reactive drivers for SQL databases. Explain its role in enabling non-blocking access to relational databases within a reactive application."
*   **Prompt:** "Briefly explain why traditional JDBC is blocking and how R2DBC overcomes this limitation for reactive applications."
*   **(External Link):** "Provide a link to the official R2DBC specification website (r2dbc.io)."

*   **Reflective Prompt:** "What are the main considerations when choosing between a reactive NoSQL database (like MongoDB) and a relational database via R2DBC for a new reactive application?"
*   **(Cross-reference):** Interacting with repositories often involves chaining operations using Reactor operators (Section II) within service methods.

---
**Section IV Summary:** This section explored reactive data access, focusing on Spring Data Reactive repositories for NoSQL (like MongoDB) and relational databases (via R2DBC), enabling fully non-blocking persistence layers.
**Transition:** Securing web applications is critical. We will now look at how Spring Security integrates with reactive applications built using WebFlux.
---

# V. Reactive Security with Spring Security

*   **Learning Objective:** Secure Spring WebFlux applications using Spring Security's reactive support.

## A. Enabling Reactive Spring Security
"Explain how to add and configure Spring Security for a WebFlux application. Describe the core reactive security components like `SecurityWebFilterChain`, `ReactiveUserDetailsService`, and `ReactiveAuthenticationManager`."
*   **Prompt:** "Show the basic Maven/Gradle dependencies required for `spring-boot-starter-security` in a WebFlux project and a minimal Java configuration class using `@EnableWebFluxSecurity`."

## B. Configuring Security Rules (`SecurityWebFilterChain`)
"Demonstrate how to configure authorization rules (e.g., permitAll, authenticated, hasRole) for specific URL paths using the `ServerHttpSecurity` DSL within a `SecurityWebFilterChain` bean."
*   **Prompt:** "Provide a configuration example securing all paths except `/public/**`, requiring authentication for `/api/**`, and specific roles for `/admin/**`."

## C. Implementing Reactive Authentication
"Explain how to implement custom authentication by providing beans for `ReactiveUserDetailsService` (to load user details) and optionally `ReactiveAuthenticationManager` or `PasswordEncoder`."
*   **Prompt:** "Show a simplified example of a `ReactiveUserDetailsService` implementation that retrieves user details reactively (e.g., from a reactive repository - See Section IV)."

## D. Obtaining Security Context Reactively
"Demonstrate how to access the currently authenticated `Principal` or `Authentication` object within reactive endpoints or service methods using methods like `ReactiveSecurityContextHolder.getContext()`."
*   **Prompt:** "Show an example within a `@GetMapping` method of retrieving the authenticated user's name from the security context reactively and returning it in a `Mono<String>`."

*   **Reflective Prompt:** "How does the approach to security configuration and accessing user details differ between Spring MVC (Servlet-based) Security and WebFlux Reactive Security?"

---
**Section V Summary:** This section covered securing reactive applications using Spring Security's reactive modules, including configuration, defining access rules, implementing custom authentication, and accessing security context reactively.
**Transition:** Testing is essential for robust applications. The next section focuses on strategies for testing reactive code effectively.
---

# VI. Testing Reactive Applications

*   **Learning Objective:** Learn effective strategies and tools for testing reactive components built with Reactor and Spring WebFlux.

## A. Unit Testing Reactor Streams (`StepVerifier`)
"Introduce `StepVerifier` from `reactor-test` as the primary tool for unit testing `Mono` and `Flux` publishers. Demonstrate how to verify emitted elements, completion signals, error signals, and timing."
*   **Prompt:** "Provide a code example using `StepVerifier.create()` to test a `Flux<String>` by expecting specific elements (`expectNext`), verifying completion (`verifyComplete`), or expecting an error (`verifyError`)."
*   **Prompt:** "Show how to use `StepVerifier`'s virtual time capabilities (`withVirtualTime`) to test time-based operators like `delayElements`."

## B. Testing WebFlux Controllers (`WebTestClient`)
"Explain how to use `WebTestClient` for integration testing Spring WebFlux controllers without needing a running server. Demonstrate testing different HTTP methods, headers, request bodies, and verifying responses."
*   **Prompt:** "Provide a code example showing how to bind `WebTestClient` to a specific controller or router function and test a GET endpoint, asserting the status code and response body."
*   **Prompt:** "Illustrate testing a POST endpoint using `WebTestClient`, sending a request body, and verifying the response."

## C. Testing Reactive Repositories
"Describe strategies for testing Spring Data Reactive repositories, including using embedded databases (like Embedded MongoDB or H2 with R2DBC) or mocking the repository interface in service layer tests."
*   **Prompt:** "Outline the setup required for testing a `ReactiveMongoRepository` using an embedded MongoDB instance via libraries like `de.flapdoodle.embed.mongo`."

*   **Reflective Prompt:** "Why is `StepVerifier` particularly important for testing reactive code compared to traditional assertions used in imperative code testing?"

---
**Section VI Summary:** This section focused on testing reactive applications, highlighting `StepVerifier` for unit testing Reactor publishers and `WebTestClient` for integration testing WebFlux endpoints, along with strategies for testing reactive data repositories.
**Transition:** Having covered the fundamentals, testing, and security, we now move to more advanced reactive programming patterns and techniques.
---

# VII. Advanced Reactive Patterns and Techniques

*   **Learning Objective:** Explore advanced operators, patterns, context handling, and techniques for building sophisticated reactive applications.

## A. Advanced Reactor Operators
"Explore more advanced or specialized Reactor operators such as `transform`, `compose`, `handle`, `using`, `groupBy`, and windowing operators."
*   **Prompt:** "Explain the difference between `transform` and `compose` for applying reusable operator chains to `Mono`/`Flux`."
*   **Prompt:** "Demonstrate the use of `handle` for stateful, conditional emission/filtering/transformation of elements."

## B. Context Propagation (`Context` API)
"Explain the importance and mechanisms for propagating contextual information (e.g., tracing IDs, security context) through asynchronous reactive streams using Reactor's `Context` API (`ContextWrite`/`ContextView`)."
*   **Prompt:** "Show an example of writing a value to the Reactor `Context` using `contextWrite()` and reading it downstream using `Mono.deferContextual()` or `Flux.deferContextual()`."
*   **(Cross-reference):** This relates to accessing security context discussed in Section V.

## C. Improving Techniques: Caching Reactive Results
"Discuss strategies for caching results from reactive streams (`Mono`/`Flux`) to avoid redundant computations or external calls using operators like `cache()`."
*   **Prompt:** "Illustrate how `mono.cache()` can be used to ensure that a potentially expensive operation within a `Mono` is executed only once, even with multiple subscribers."

## D. Parallel Execution with `parallel()` and `runOn()`
"Explain how to introduce parallelism into a `Flux` processing pipeline using the `parallel()` operator and specifying execution on different `Scheduler`s using `runOn()`."
*   **Prompt:** "Provide a code example demonstrating how to process elements of a `Flux` in parallel across multiple threads using `flux.parallel().runOn(Schedulers.parallel()).map(...).sequential()`."
> **Key Point:** Be cautious with parallelism; ensure operations are thread-safe and that the overhead doesn't outweigh the benefits. Use appropriate `Schedulers`.

*   **Reflective Prompt:** "Consider a complex data processing pipeline. How might operators like `groupBy`, `parallel`, and context propagation help in implementing it reactively?"

---
**Section VII Summary:** This section delved into advanced Reactor operators, the critical mechanism of context propagation, caching strategies for reactive streams, and techniques for introducing parallelism.
**Transition:** Performance is key in reactive systems. The next section covers optimization, monitoring, and benchmarking.
---

# VIII. Performance Optimization and Monitoring

*   **Learning Objective:** Learn techniques to optimize, monitor, and benchmark reactive Spring applications.

## A. Understanding Schedulers (`Schedulers`)
"Explain the different types of `Schedulers` provided by Project Reactor (e.g., `parallel()`, `boundedElastic()`, `immediate()`, `single()`) and when to use each. Discuss the impact of `publishOn` and `subscribeOn` operators."
*   **Prompt:** "Describe the typical use cases for `Schedulers.boundedElastic()` versus `Schedulers.parallel()`."
*   **Prompt:** "Illustrate the difference in execution context when using `publishOn` versus `subscribeOn` with a simple `Flux` example."

## B. Performance Optimization Strategies
"Discuss common performance bottlenecks in reactive applications (e.g., blocking calls, inefficient operators, improper scheduler use) and strategies to mitigate them."
*   **Prompt:** "Identify three common performance pitfalls in reactive Spring code and suggest how to avoid them."

## C. Benchmarking Reactive Code (JMH)
"Introduce Java Microbenchmark Harness (JMH) as a tool for benchmarking reactive code snippets accurately. Provide guidance on setting up and running JMH benchmarks for Reactor streams."
*   **Prompt:** "Outline the basic structure of a JMH benchmark class (`@State`, `@Benchmark`) designed to compare the performance of two different reactive operator chains."
*   **(External Link):** "Provide a link to the JMH project page or documentation."

## D. Monitoring and Metrics (Micrometer)
"Explain how to integrate Micrometer with Spring WebFlux to expose reactive application metrics (e.g., latency, throughput, error rates) compatible with monitoring systems like Prometheus."
*   **Prompt:** "Show the necessary dependencies (`spring-boot-starter-actuator`, `micrometer-registry-{prometheus}`) and basic configuration to enable WebFlux metrics."
*   **Prompt:** "Describe key metrics automatically provided by Micrometer for WebFlux request handling."

## E. Profiling Reactive Applications
"Discuss tools and techniques for profiling reactive applications to identify CPU hotspots, memory allocation issues, or thread contention, considering the challenges posed by asynchronous execution."
*   **Prompt:** "Mention common Java profilers (e.g., JProfiler, YourKit, VisualVM) and briefly discuss how their features (like CPU profiling, async call stacks) can be applied to reactive code."

*   **Reflective Prompt:** "Why is choosing the correct `Scheduler` and understanding the difference between `publishOn` and `subscribeOn` critical for performance and responsiveness in reactive applications?"

---
**Section VIII Summary:** This section covered crucial aspects of performance, including understanding Reactor Schedulers, optimization strategies, benchmarking with JMH, monitoring with Micrometer, and profiling techniques for reactive applications.
**Transition:** Robust applications require solid error handling. We'll now focus specifically on advanced error management and debugging in reactive contexts.
---

# IX. Advanced Error Handling and Debugging

*   **Learning Objective:** Master advanced error handling techniques and debugging strategies specific to reactive streams.

## A. Advanced Error Handling Operators
"Explore advanced error handling operators like `retry`, `retryWhen`, `timeout`, and their use cases in building resilient reactive flows."
*   **Prompt:** "Demonstrate using `retry(N)` to automatically resubscribe to a failing `Mono` or `Flux` a specific number of times."
*   **Prompt:** "Explain how `retryWhen(RetrySpec)` can be used to implement more complex retry logic (e.g., exponential backoff)."
*   **Prompt:** "Show how to apply a `timeout` to a `Mono` or `Flux` and handle the resulting `TimeoutException`."

## B. Robust Error Management Strategies
"Discuss application-level strategies for handling errors gracefully, including centralized exception handling using `@ControllerAdvice` with `@ExceptionHandler` for reactive controllers, and propagating business-specific errors."
*   **Prompt:** "Provide an example of a reactive `@ControllerAdvice` handling a specific custom exception and returning an appropriate `ResponseEntity<ErrorResponse>`."

## C. Debugging Complex Scenarios
"Discuss challenges and techniques for debugging asynchronous reactive code. Introduce Reactor's debugging features like Hooks (`Hooks.onOperatorDebug()`) and the `checkpoint()` operator."
*   **Prompt:** "Explain how `Hooks.onOperatorDebug()` (or the reactor-tools agent) helps in providing more meaningful stack traces in case of errors in reactive chains."
*   **Prompt:** "Demonstrate adding `.checkpoint("Descriptive Label")` operators within a reactive chain to improve error reporting and identify the point of failure."

> **Key Point:** Debugging reactive streams can be challenging due to asynchronous boundaries. Tools like `checkpoint()` are invaluable for tracing execution flow and errors.

*   **Reflective Prompt:** "Compare the debugging experience of a simple imperative try-catch block with debugging an error occurring deep within a complex reactive chain. What are the key differences and challenges?"

---
**Section IX Summary:** This section focused on advanced error handling using operators like `retry` and `timeout`, robust application-level error strategies, and specific techniques like `checkpoint()` to aid in debugging complex reactive code.
**Transition:** Modern applications rarely exist in isolation. The next section deals with integrating reactive Spring applications with other systems and protocols.
---

# X. Integration with Other Systems

*   **Learning Objective:** Understand how to integrate reactive Spring applications with various external systems and protocols.

## A. Reactive Messaging (Spring Cloud Stream / Kafka / RabbitMQ)
"Explain how reactive principles apply to messaging systems. Discuss using libraries like Spring Cloud Stream with reactive binders (e.g., for Kafka or RabbitMQ) to produce and consume messages reactively."
*   **Prompt:** "Outline the core concepts of using Spring Cloud Stream with a Kafka binder in a reactive manner, showing a simple `Supplier` or `Function` bean that returns/accepts `Flux`."

## B. Server-Sent Events (SSE)
"Demonstrate how to implement Server-Sent Events (SSE) endpoints using Spring WebFlux to push data streams from the server to the client reactively."
*   **Prompt:** "Provide a code example of a WebFlux controller endpoint returning a `Flux<ServerSentEvent<String>>`."

## C. WebSockets
"Explain how to handle WebSocket connections reactively using Spring WebFlux, enabling bidirectional communication."
*   **Prompt:** "Show a basic example of a `WebSocketHandler` implementation in Spring WebFlux managing incoming and outgoing reactive message streams (`Flux<WebSocketMessage>`)."

## D. Complex Integrations: Orchestrating Multiple Reactive Calls
"Discuss strategies for orchestrating multiple dependent or independent reactive calls (e.g., using `WebClient` or reactive repository methods) within a single business transaction using operators like `flatMap`, `zip`, `Mono.when`."
*   **Prompt:** "Illustrate a scenario where user details and user orders are fetched reactively from two different services using `WebClient`, and then combined using `Mono.zip()`."

*   **Reflective Prompt:** "Consider a microservices architecture. How does using reactive communication (e.g., `WebClient`, reactive messaging) between services impact overall system resilience and performance compared to blocking communication?"

---
**Section X Summary:** This section covered integrating reactive Spring applications with external systems, including reactive messaging (Kafka/RabbitMQ via Spring Cloud Stream), Server-Sent Events, WebSockets, and orchestrating multiple asynchronous calls.
**Transition:** Finally, let's consolidate the knowledge by outlining the structure for building a complete reactive application.
---

# XI. Building a Complete Reactive Application (Capstone)

*   **Learning Objective:** Synthesize learned concepts to design and implement a small but complete reactive application.

## A. Project Definition and Design
"Define the requirements for a sample reactive application (e.g., a simple reactive REST API with CRUD operations, data persistence, and possibly a basic UI interaction or external API call)."
*   **Prompt:** "Outline the key features and technology choices (WebFlux, Reactive MongoDB/R2DBC, Reactor, WebClient) for a sample 'Reactive Product Catalog' application."

## B. Implementation Steps
"Break down the implementation into logical steps: setting up the project, defining domain models, implementing reactive repositories (Section IV), creating WebFlux controllers (Section III), adding basic security (Section V), implementing service logic with Reactor operators (Section II), and writing tests (Section VI)."
*   **Prompt:** "List the sequence of implementation tasks required to build the 'Reactive Product Catalog' API."

## C. Applying Advanced Concepts (Optional)
"Incorporate relevant advanced techniques where appropriate, such as custom error handling (Section IX), context propagation (Section VII), or simple monitoring (Section VIII)."
*   **Prompt:** "Suggest one or two advanced features (e.g., adding a `/products/stream` SSE endpoint, implementing a custom `ExceptionHandler`) that could be added to the capstone project."

*   **Reflective Prompt:** "Looking back at the learning journey from foundational concepts to building a complete application, what were the most challenging aspects of learning Spring Reactivity, and what concepts require further practice?"

---
**Section XI Summary:** This concluding section provides a structure for applying all the learned concepts by building a small, end-to-end reactive application, reinforcing the practical application of Spring Reactivity.
**Final Reflection:** Consider the overall benefits and trade-offs of using a reactive stack like Spring WebFlux compared to traditional imperative approaches for different types of applications.
---

# Glossary

*   **Prompt:** "Define 'Publisher' as specified by the Reactive Streams specification."
*   **Prompt:** "Define 'Subscriber' as specified by the Reactive Streams specification."
*   **Prompt:** "Define 'Subscription' as specified by the Reactive Streams specification."
*   **Prompt:** "Define 'Processor' as specified by the Reactive Streams specification."
*   **Prompt:** "Define 'Operator' in the context of Project Reactor."
*   **Prompt:** "Define 'Mono' in Project Reactor."
*   **Prompt:** "Define 'Flux' in Project Reactor."
*   **Prompt:** "Define 'Backpressure' in reactive programming."
*   **Prompt:** "Define 'Non-blocking I/O'."
*   **Prompt:** "Define 'Scheduler' in Project Reactor."
*   **Prompt:** "Define 'WebFlux' in the Spring Framework."
*   **Prompt:** "Define 'WebClient' in Spring WebFlux."
*   **Prompt:** "Define 'R2DBC'."
*   **Prompt:** "Define 'StepVerifier' in `reactor-test`."
*   **Prompt:** "Define 'WebTestClient' in Spring WebFlux testing."
*   **Prompt:** "Define 'Server-Sent Events (SSE)'."
