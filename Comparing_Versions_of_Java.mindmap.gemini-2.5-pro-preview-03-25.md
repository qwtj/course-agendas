# Comparing Versions of Java #Java #SoftwareDevelopment #Versioning
Overview of the purpose and scope of comparing different Java releases.

## Introduction and Motivation #Overview #Goals #Context
Understanding why comparing Java versions is crucial for developers, architects, and organizations.
*   Impact on application performance, security, and maintainability.
*   Leveraging new language features and APIs for better code.
*   Staying current with the Java ecosystem and support lifecycles.

### Why Compare? #Rationale #Benefits
*   Informed decision-making for upgrades.
*   Understanding feature availability.
*   Assessing performance implications.
*   Evaluating security posture.
*   Managing technical debt.

### Who Benefits? #Stakeholders #Roles
*   Developers (using new features, APIs).
*   Architects (platform choices, long-term strategy).
*   Operations/DevOps (deployment, monitoring, JVM tuning).
*   Security Teams (vulnerability management).
*   Project Managers (upgrade planning, resource allocation).

## Java Versioning History and Release Cadence #Timeline #LTS #Releases
Tracing the evolution of Java's release strategy.

### Pre-Java 9 Era #History #Legacy
*   Longer release cycles (years between major versions).
*   Examples: Java 1.0, 1.1, 1.2 (J2SE), 1.3, 1.4, 5 (Tiger), 6 (Mustang), 7 (Dolphin), 8 (Spider).

### The Shift to Time-Based Releases (Java 9+) #ModernJava #AgileRelease
*   Six-month feature release cycle (March and September).
*   Decoupling of feature development from major releases.

### Long-Term Support (LTS) Versions #LTS #Support #Stability
*   Designated versions with extended support (updates and security patches).
*   Current Cadence: Every two years (previously three years).
*   Key LTS Versions: Java 8, Java 11, Java 17, Java 21.
*   Importance for production environments.

### Non-LTS Versions #FeatureRelease #ShortTerm
*   Supported only until the next feature release (approx. 6 months).
*   Opportunity to try new features earlier.
*   Generally not recommended for long-term production deployment unless actively managed.

### Version Numbering Scheme #SemanticVersioning #Naming
*   Understanding `MAJOR.MINOR.SECURITY.PATCH` (older scheme) vs. `YY.M` based feature releases.
*   JDK vs. JRE vs. OpenJDK #Distribution #Runtime

## Evolution of Language Features #Syntax #Programming #LanguageDesign
Comparing key syntax and language constructs introduced across versions.

### Java 5 (Tiger) #Generics #Annotations #Autoboxing
*   Generics: Type safety.
*   Annotations: Metadata.
*   Autoboxing/Unboxing: Primitive/Wrapper conversion.
*   Enhanced `for` loop (for-each).
*   Varargs.
*   Static Imports.
*   Enums.

### Java 7 (Dolphin) #ProjectCoin #NIO2
*   Strings in `switch` statements.
*   Try-with-resources statement.
*   Diamond operator (`<>`) for type inference.
*   Binary literals (`0b...`).
*   Underscores in numeric literals.
*   Multi-catch exceptions.
*   `ForkJoinPool` (Concurrency).

### Java 8 (Spider) #Lambda #Streams #FunctionalProgramming
*   Lambda Expressions.
*   Functional Interfaces.
*   Stream API for collections.
*   `Optional` class.
*   Default and static methods in interfaces.
*   New Date and Time API (`java.time`).
*   Nashorn JavaScript engine (later removed).

### Java 9 #Modules #JPMS #REPL
*   Java Platform Module System (JPMS / Project Jigsaw).
*   `jshell` (REPL - Read-Eval-Print Loop).
*   Private methods in interfaces.
*   Enhancements to `Optional`, `Stream`.
*   Process API updates.
*   HTTP/2 Client (Incubator).

### Java 10 #TypeInference #var
*   Local-Variable Type Inference (`var` keyword).

### Java 11 (LTS) #HTTPClient #LambdaVar
*   Standardized HTTP Client API.
*   `var` syntax for lambda parameters.
*   `String` API additions (`lines()`, `strip()`, `repeat()`).
*   Epsilon Garbage Collector (Experimental).
*   Flight Recorder standard feature.

### Java 12 #SwitchExpressions #ShenandoahGC
*   Switch Expressions (Preview).
*   Shenandoah GC (Low-Pause GC, Experimental).
*   Microbenchmark Suite.

### Java 13 #SwitchExpressions #TextBlocks
*   Switch Expressions (Second Preview).
*   Text Blocks (Preview).

### Java 14 #PatternMatching #Records #JFRStreaming
*   Pattern Matching for `instanceof` (Preview).
*   Records (Preview).
*   Helpful `NullPointerExceptions`.
*   JFR Event Streaming.
*   Text Blocks (Standard).

### Java 15 #Records #SealedClasses #HiddenClasses
*   Records (Standard).
*   Sealed Classes (Preview).
*   Text Blocks (Standard).
*   Hidden Classes.
*   ZGC (Production Ready).
*   Shenandoah GC (Production Ready).

### Java 16 #PatternMatching #Records #VectorAPI
*   Pattern Matching for `instanceof` (Standard).
*   Records (Standard).
*   Vector API (Incubator).
*   Unix-Domain Socket Channels.
*   Sealed Classes (Second Preview).

### Java 17 (LTS) #SealedClasses #PatternMatchingSwitch
*   Sealed Classes (Standard).
*   Pattern Matching for `switch` (Preview).
*   Enhanced Pseudo-Random Number Generators.
*   Vector API (Second Incubator).
*   Foreign Function & Memory API (Incubator).

### Java 18 #UTF8ByDefault #SimpleWebServer
*   UTF-8 by Default.
*   Simple Web Server (`jwebserver`).
*   Code Snippets in Java API Documentation (`@snippet`).
*   Vector API (Third Incubator).
*   Foreign Function & Memory API (Second Incubator).
*   Pattern Matching for `switch` (Second Preview).

### Java 19 #VirtualThreads #StructuredConcurrency #PatternMatchingRecord
*   Virtual Threads (Project Loom - Preview).
*   Structured Concurrency (Incubator).
*   Record Patterns (Preview).
*   Pattern Matching for `switch` (Third Preview).
*   Vector API (Fourth Incubator).
*   Foreign Function & Memory API (Preview).

### Java 20 #VirtualThreads #StructuredConcurrency #RecordPatterns
*   Virtual Threads (Second Preview).
*   Structured Concurrency (Second Incubator).
*   Record Patterns (Second Preview).
*   Pattern Matching for `switch` (Fourth Preview).
*   Vector API (Fifth Incubator).
*   Foreign Function & Memory API (Second Preview).

### Java 21 (LTS) #VirtualThreads #StructuredConcurrency #PatternMatchingSwitch
*   Virtual Threads (Project Loom - Standard).
*   Record Patterns (Standard).
*   Pattern Matching for `switch` (Standard).
*   Sequenced Collections.
*   Scoped Values (Preview).
*   Structured Concurrency (Preview).
*   Vector API (Sixth Incubator).
*   Foreign Function & Memory API (Third Preview).
*   Unnamed Patterns and Variables (Preview).
*   Unnamed Classes and Instance Main Methods (Preview).

### Java 22+ #Future #PreviewFeatures
*   Ongoing evolution (Stream Gatherers, Class-File API, etc.)
*   Features moving from Incubator/Preview to Standard.

## Key API and Library Changes #API #Libraries #CoreJava
Significant additions and modifications to the standard Java libraries.

### Collections Framework #DataStructures #Collections
*   Improvements pre-Java 8.
*   Stream API integration (Java 8).
*   Factory methods for immutable collections (`List.of`, `Set.of`, `Map.of`) (Java 9).
*   Sequenced Collections (Java 21).

### NIO (New I/O) and NIO.2 #IO #Filesystem #Networking
*   `java.nio` package (Buffers, Channels, Selectors).
*   NIO.2 (`java.nio.file`) - Modern file system API (Java 7).
*   Asynchronous I/O operations.

### Date and Time API (`java.time`) #DateTime #JodaTime
*   Introduced in Java 8, replacing legacy `java.util.Date` and `java.util.Calendar`.
*   Immutable classes.
*   Clear separation of concepts (Date, Time, DateTime, Zone, Duration, Period).

### Concurrency Utilities (`java.util.concurrent`) #Threading #Parallelism
*   Executor Framework.
*   Concurrent collections.
*   Synchronizers (Semaphores, Latches, Barriers).
*   Locks (`ReentrantLock`).
*   Atomic variables.
*   `ForkJoinPool` (Java 7).
*   `CompletableFuture` (Java 8).
*   Flow API (Reactive Streams) (Java 9).
*   Virtual Threads & Structured Concurrency (Java 19+).

### HTTP Client API #Networking #HTTP
*   Incubated in Java 9, Standard in Java 11.
*   Supports HTTP/1.1, HTTP/2, WebSockets.
*   Synchronous and asynchronous programming models.

### Optional Class #NullSafety #FP
*   Introduced in Java 8 to handle potential null values gracefully.
*   Methods like `isPresent()`, `orElse()`, `map()`, `flatMap()`.

### Process API Updates #OS #ProcessManagement
*   Enhancements in Java 9 for better interaction with OS processes.
*   Getting process ID (PID), information, handling process trees.

### Reflection API Changes #Introspection #Metaprogramming
*   Module system impact (access restrictions).
*   Performance improvements.

## JVM Enhancements #JVM #Performance #GC
Improvements made to the Java Virtual Machine itself.

### Garbage Collection (GC) Algorithms #MemoryManagement #GC
*   Serial GC, Parallel GC, CMS (Concurrent Mark Sweep - deprecated/removed).
*   G1 GC (Garbage-First) - Default since Java 9.
*   ZGC (Scalable Low-Latency GC) - Production ready since Java 15.
*   Shenandoah GC (Ultra-Low-Pause-Time GC) - Production ready since Java 15.
*   Epsilon GC (No-Op GC) - Experimental in Java 11.
*   Generational ZGC (Ongoing improvement).

### Performance Improvements #Optimization #Speed
*   Just-In-Time (JIT) Compilation enhancements (C1, C2 compilers, GraalVM JIT).
*   Startup time improvements (AppCDS - Application Class-Data Sharing).
*   String representation changes (Compact Strings - Java 9).
*   Intrinsic functions optimization.
*   Escape Analysis improvements.

### Monitoring and Diagnostics #JFR #JMX #Troubleshooting
*   Java Flight Recorder (JFR) - Standardized, low-overhead profiling (Java 11+).
*   JFR Event Streaming (Java 14).
*   Java Management Extensions (JMX) evolution.
*   Unified JVM Logging (`-Xlog`).
*   Helpful `NullPointerExceptions` (Java 14).

### Class Loading #ClassLoader #AppCDS
*   Application Class-Data Sharing (AppCDS) for faster startup and reduced footprint.
*   Dynamic CDS Archives.

### GraalVM Integration #JIT #AOT #Polyglot
*   Use of Graal as a JIT compiler (`-XX:+UseJVMCICompiler`).
*   Potential for Ahead-of-Time (AOT) compilation (experimental features).

## Platform Module System (JPMS) #Modularity #ProjectJigsaw #Encapsulation
The introduction and impact of the module system in Java 9.

### Motivation #Dependencies #Encapsulation #Scalability
*   Reliable configuration (solving "classpath hell").
*   Strong encapsulation (hiding internal APIs).
*   Scalable platform (custom JREs).
*   Improved security and maintainability.

### Key Concepts #Modules #Requires #Exports
*   `module-info.java` descriptor.
*   `requires` clauses (dependencies).
*   `exports` clauses (public API).
*   `opens` clauses (for reflection).
*   `uses` and `provides` (ServiceLoader).
*   Automatic modules.
*   Unnamed module.

### Impact on Development #BuildTools #Migration
*   Changes to build processes (Maven, Gradle support).
*   Potential migration challenges for legacy applications.
*   Visibility and accessibility rules (`--add-opens`, `--add-exports`).

### Modular JDK #InternalAPIs #JDKInternals
*   The JDK itself is modularized.
*   Encapsulation of internal APIs like `sun.misc.Unsafe` (with escape hatches initially).

## Concurrency Model Evolution #Threading #Parallelism #Async
Changes in how Java handles concurrent and parallel execution.

### Traditional Threads #Threads #Synchronization
*   Platform threads (`java.lang.Thread`).
*   `synchronized` keyword, `wait()`, `notify()`, `notifyAll()`.
*   Challenges: Resource consumption, context switching overhead.

### `java.util.concurrent` Package #Executors #Futures
*   Introduced in Java 5.
*   Executor framework, thread pools.
*   Locks, Semaphores, Barriers.
*   `Future<T>` interface.

### Fork/Join Framework #ParallelTasks #WorkStealing
*   Introduced in Java 7.
*   Efficient execution of parallel tasks that can be broken down recursively.
*   Work-stealing algorithm.

### `CompletableFuture` #Asynchronous #Reactive
*   Introduced in Java 8.
*   Enhanced `Future` supporting non-blocking operations, chaining, composition.

### Reactive Streams (Flow API) #ReactiveProgramming #Backpressure
*   Standardized interfaces (`Publisher`, `Subscriber`, `Subscription`, `Processor`) in Java 9.
*   Interoperability for reactive libraries (RxJava, Project Reactor).

### Virtual Threads (Project Loom) #LightweightThreads #Scalability
*   Preview in Java 19/20, Standard in Java 21.
*   Lightweight user-mode threads managed by the JVM.
*   Dramatically increases scalability for concurrent applications with blocking I/O.
*   Minimal changes required for existing code using `ExecutorService`.

### Structured Concurrency #ConcurrencyControl #ErrorHandling
*   Incubator/Preview feature alongside Virtual Threads.
*   Simplifies concurrent programming by treating concurrent tasks as a unit.
*   Improved error handling and cancellation propagation.

### Scoped Values #Immutability #ThreadLocals
*   Preview in Java 21.
*   Alternative to thread-local variables, especially useful with virtual threads.
*   Immutable, efficiently share data within a thread and its children.

## Security Improvements Across Versions #Security #Cryptography #TLS
Enhancements related to security features and protocols.

### Cryptographic Algorithm Support #Encryption #Hashing #Signatures
*   Newer algorithms added (e.g., ChaCha20, Poly1305).
*   Stronger default algorithms.
*   Deprecation/removal of weak or insecure algorithms (e.g., MD5 signed certs, SHA-1).

### TLS/SSL Enhancements #HTTPS #NetworkingSecurity
*   Support for newer TLS versions (TLS 1.2 default in Java 8, TLS 1.3 support in Java 11).
*   Deprecation of older SSL/TLS versions.
*   Server Name Indication (SNI) support.

### Security Manager Changes #Sandboxing #Permissions
*   Ongoing efforts to deprecate and potentially remove the Security Manager for removal.
*   Focus shifts towards other security mechanisms (modules, containerization).

### Serialization Filtering #Deserialization #SecurityVulnerability
*   Introduced to mitigate deserialization vulnerabilities.
*   Configurable filters to restrict allowed classes during deserialization (JEP 290 - Java 9).

### Secure Jar Signing #CodeSigning #Integrity
*   Stronger algorithms and timestamping requirements.

### Removal of Risky Features #Applets #SecurityManager
*   Applet API deprecated (Java 9) and removed (Java 11).
*   Security Manager deprecated for removal (Java 17).

## Tooling and Development Experience #IDE #BuildTools #JDKTools
Changes affecting the tools developers use.

### JDK Tools #Compiler #Debugger #Profiler
*   `javac` (Compiler): Support for new language features.
*   `java` (Launcher): Module path (`--module-path`), single-file source-code execution.
*   `jdb` (Debugger): Updates for new features.
*   `jcmd`: Diagnostic command tool.
*   `jstat`, `jmap`, `jstack`: Monitoring and troubleshooting tools.
*   `jshell` (REPL): Interactive Java (Java 9+).
*   `jpackage`: Application packaging tool (Java 14+).
*   `jwebserver`: Simple web server for static files (Java 18+).

### Build Tool Compatibility #Maven #Gradle #Ant
*   Support for module system (JPMS) in Maven and Gradle.
*   Handling multi-release JAR files.
*   Toolchains feature for managing JDK versions.

### IDE Support #Eclipse #IntelliJ #VSCode
*   Integration of new language features, code completion, refactoring.
*   Debugging support for new constructs (e.g., virtual threads).
*   Module system integration.

### Documentation Tools #Javadoc #Snippets
*   Javadoc enhancements.
*   `@snippet` tag for including example source code (Java 18).

## Deprecated and Removed Features #Deprecation #Removal #Compatibility
Tracking features marked for removal or already removed.

### Motivation for Removal #Maintenance #Modernization #Security
*   Reducing JDK complexity and maintenance burden.
*   Removing outdated or insecure APIs.
*   Encouraging adoption of modern alternatives.

### Notable Deprecations #Warning #FutureRemoval
*   Applet API (Deprecated Java 9).
*   Pack200 Tools (Deprecated Java 11).
*   Security Manager (Deprecated for removal Java 17).
*   Finalization (`Object.finalize()`) (Deprecated for removal Java 18).

### Notable Removals #RemovedAPI #BreakingChange
*   CORBA and Java EE modules (`java.corba`, `java.xml.ws`, etc.) (Removed Java 11).
*   Nashorn JavaScript Engine (Removed Java 15).
*   Applet API (Removed Java 17).
*   AOT Compilation (Experimental feature removed).
*   Concurrent Mark Sweep (CMS) GC (Removed Java 14).

### Impact on Migration #CodeChanges #Dependencies
*   Applications using removed features require code changes or alternative dependencies.
*   Importance of checking deprecation warnings during compilation.

## Performance Benchmarking and Comparison #Benchmarks #Metrics #Throughput
Methods and results for comparing performance across versions.

### Key Performance Metrics #Latency #Throughput #Startup #Footprint
*   Application throughput.
*   Request latency (average, P99).
*   JVM startup time.
*   Memory footprint.
*   GC pause times.

### Benchmarking Tools #JMH #Profilers
*   Java Microbenchmark Harness (JMH) for microbenchmarks.
*   Profilers (JProfiler, YourKit, VisualVM, JFR).
*   Load testing tools (JMeter, Gatling).

### Typical Performance Trends #Improvements #Regressions
*   General trend of improved performance (throughput, GC) in newer versions.
*   Startup improvements via AppCDS.
*   Potential for minor regressions in specific microbenchmarks, often outweighed by overall gains.
*   Significant gains expected from features like Virtual Threads for I/O-bound apps.

### Comparing Specific Areas #GCComparison #StartupComparison
*   G1 vs. ZGC vs. Shenandoah benchmarks.
*   Impact of Compact Strings.
*   Effect of JIT compiler improvements.

## Migration Strategies and Challenges #Upgrading #Adoption #BestPractices
Planning and executing upgrades to newer Java versions.

### Reasons to Migrate #Security #Performance #Features #Support
*   Access to security patches (especially moving to newer LTS).
*   Performance benefits.
*   Leveraging new language features and APIs.
*   Staying within vendor support windows.
*   Attracting/retaining developers.

### Common Migration Challenges #Compatibility #Dependencies #Testing
*   Breaking changes (removed APIs, changed behavior).
*   Dependency updates (libraries needing newer Java versions).
*   Module system adoption (for migrations post-Java 8).
*   Need for thorough testing (unit, integration, performance).
*   Deprecated feature usage.
*   Illegal reflective access issues post-Java 8.

### Migration Strategies #BigBang #Incremental #MultiReleaseJARs
*   Step-by-step upgrades (e.g., 8 -> 11 -> 17 -> 21).
*   Using multi-release JAR files (MR-JARs) to support multiple Java versions.
*   Thorough static analysis (`jdeps`) and testing.
*   Leveraging containerization for isolated testing.

### Tools for Migration Analysis #StaticAnalysis #DependencyCheck
*   `jdeps`: Java dependency analysis tool.
*   Build tool dependency reports (Maven, Gradle).
*   Static code analysis tools (SonarQube, Checkstyle) with updated rules.

## Choosing the Right Java Version #DecisionMaking #Strategy #LTS
Factors to consider when selecting a Java version for a project.

### LTS vs. Non-LTS Trade-offs #Stability #Features #SupportWindow
*   LTS: Stability, long support, suitable for most production systems.
*   Non-LTS: Faster access to new features, requires faster upgrade cadence, suitable for teams willing to upgrade frequently or for specific feature needs.

### Factors to Consider #ProjectNeeds #TeamSkills #Ecosystem
*   Application type and requirements (performance, concurrency needs).
*   Team's familiarity and willingness to adopt new features/cadence.
*   Third-party library and framework compatibility.
*   Corporate standards and support policies.
*   Security requirements.
*   Operational overhead of frequent upgrades (for Non-LTS).

### Recommended Approach #BestPractices #LTSPreference
*   Default to the latest LTS version for new projects unless compelling reasons exist otherwise.
*   Plan regular upgrades between LTS versions.
*   Evaluate Non-LTS carefully based on specific feature benefits vs. shorter support.

## Future Outlook and Preview Features #Roadmap #JEPs #Incubator
Looking ahead at the direction of Java's evolution.

### Incubator Modules #Experimental #Feedback
*   Features needing real-world testing before standardization (e.g., Vector API, Foreign Function & Memory API).
*   Subject to change or removal.

### Preview Features #Language #JVM #Feedback
*   Fully specified and implemented language or JVM features, but subject to feedback before becoming permanent.
*   Must be explicitly enabled (`--enable-preview`).
*   Examples: Pattern Matching, Records, Virtual Threads initially.

### Major Ongoing Projects #Loom #Panama #Valhalla #Amber
*   Project Loom: Virtual Threads, Structured Concurrency, Scoped Values (mostly delivered).
*   Project Panama: Interconnecting JVM and native code (Foreign Function & Memory API).
*   Project Valhalla: Value objects, primitive classes (advanced JVM/language optimizations).
*   Project Amber: Smaller, productivity-oriented language features (Pattern Matching, Records, etc.).

### Trends #CloudNative #Performance #DeveloperProductivity
*   Continued focus on performance (startup, latency, footprint).
*   Enhancements for cloud-native development.
*   Improving developer productivity through language features.
*   Simplifying concurrency.
