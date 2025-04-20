# Software Concurrency #Overview #CoreConcept
The study and practice of managing multiple computations executing overlapping in time, potentially interacting with each other.

## Fundamentals of Concurrency #Basics #Theory #Introduction
Core principles and motivations behind concurrent programming.

### Definition #WhatIsConcurrency #Terminology
Executing multiple tasks seemingly simultaneously, progressing independently over time.

### Motivation #WhyConcurrency #Benefits
Reasons for using concurrency in software.
#### Performance #Speed #Throughput
Utilizing multiple processing units (cores) for faster computation via parallelism.
#### Responsiveness #UserExperience #UI
Keeping applications, especially GUIs, responsive during long-running tasks.
#### Resource Utilization #Efficiency #Hardware
Making better use of CPU, I/O devices, and network connections.
#### Natural Problem Decomposition #Modeling #RealWorld
Modeling real-world systems with independent, interacting entities.

### Key Challenges #Problems #Difficulties
Inherent complexities in concurrent systems.
#### Complexity #Design #Management
Managing interactions between concurrent tasks is inherently difficult.
#### Safety Issues #Correctness #Bugs
Ensuring data integrity and avoiding race conditions, deadlocks, etc.
#### Liveness Issues #Progress #Bugs
Ensuring tasks make progress and do not get stuck (deadlock, livelock, starvation).
#### Non-Determinism #Debugging #Testing
Behavior can vary depending on the unpredictable timing of events, making debugging hard.
#### Performance Overhead #Cost #Efficiency
Synchronization and context switching introduce performance costs.

## Concurrency vs. Parallelism #Distinction #Definitions #Hardware
Understanding the relationship and differences between these two concepts.

### Concurrency Definition Recap #Overlap #Time
Dealing with multiple tasks logically active at the same time. Can occur on a single core via time-slicing.

### Parallelism Definition #Simultaneity #Execution
Executing multiple tasks physically at the exact same time, requiring multiple processing units (cores).

### Relationship #Subset #Goal
Parallelism is one way to achieve concurrency, leveraging hardware for simultaneous execution. Concurrency is a broader concept about managing overlapping tasks.

## Concurrency Models #Approaches #Architecture #Abstraction
Different ways to structure and manage concurrent units of execution.

### Processes #OSLevel #Isolation
Heavyweight units of execution managed by the OS with separate memory spaces.
#### Inter-Process Communication (IPC) #Communication #DataSharing
Mechanisms like pipes, sockets, shared memory, message queues.

### Threads #SharedMemory #Lightweight
Lighter-weight units of execution within a single process, sharing the same memory space.
#### Kernel Threads #OSManaged #Scheduling
Managed directly by the operating system scheduler.
#### User Threads #LibraryManaged #Efficiency
Managed by a user-level library; often faster context switching but potential blocking issues.
#### Hybrid Threads #Combination #Flexibility
Combines user-level and kernel-level threads (e.g., N:M mapping).
#### Thread Pools #Management #ResourceReuse
Managing a fixed set of worker threads to execute tasks.

### Asynchronous Programming / Event-Driven #NonBlocking #IOBound
Using non-blocking operations and callbacks/futures/promises to handle concurrency, often single-threaded.
#### Callbacks #Events #Continuation
Functions executed upon completion of an asynchronous operation.
#### Futures / Promises #Placeholders #Results
Objects representing the result of an asynchronous computation.
#### Async/Await #Syntax #Coroutines
Syntactic sugar built upon futures/promises for writing asynchronous code more linearly.

### Coroutines / Fibers #UserLevel #Cooperative
User-level, cooperatively scheduled "threads" that yield control voluntarily. Very lightweight context switching.

### Actor Model #Isolation #Messaging #State
Concurrent entities (actors) that communicate solely via asynchronous messages, encapsulating their own state. (e.g., Erlang/Akka)

### Communicating Sequential Processes (CSP) #Channels #Communication
Processes interact by sending messages over explicit channels. (e.g., Go)

## Synchronization Primitives #Coordination #ResourceSharing #MutualExclusion
Mechanisms used to control access to shared resources and coordinate execution among concurrent tasks.

### Mutexes (Mutual Exclusion Locks) #Locking #CriticalSection
Ensure only one thread can access a critical section of code or data at a time.
#### Spinlocks #BusyWaiting #LowLatency
Locks that repeatedly check if the lock is free (busy-waiting). Best for very short critical sections.
#### Recursive Locks #Reentrancy #Ownership
Allow the same thread to acquire the lock multiple times.
#### Reader-Writer Locks #SharedAccess #ExclusiveAccess
Allow multiple concurrent readers OR one exclusive writer.

### Semaphores #Signaling #ResourceCounting
Control access to a resource pool with a limited number of units.
#### Counting Semaphores #ResourcePool #General
Maintain a count of available resources.
#### Binary Semaphores #MutexAlternative #Signaling
Can only have values 0 or 1, often used like mutexes or for signaling.

### Monitors #Encapsulation #ConditionVariables
Higher-level construct encapsulating shared data and synchronization mechanisms (mutex + condition variables).

### Condition Variables #Waiting #Signaling #Predicate
Allow threads to wait efficiently (block) until a specific condition becomes true. Used with a mutex.

### Barriers #SynchronizationPoint #Coordination
Block a group of threads until all threads in the group have reached the barrier point.

### Atomic Operations #Indivisible #HardwareSupport
Operations (like compare-and-swap, fetch-and-add) guaranteed to execute indivisibly without interruption.
#### Compare-and-Swap (CAS) #Optimistic #LockFree
Atomically checks if a memory location holds an expected value and, if so, replaces it with a new value.

## Common Concurrency Problems #Pitfalls #Bugs #Hazards
Typical issues that arise in concurrent programming.

### Race Conditions #SharedState #TimingDependent
Outcome depends on the unpredictable interleaving of operations by multiple threads on shared resources.
#### Data Races #MemoryAccess #UndefinedBehavior
Specific type of race condition involving conflicting memory accesses (at least one write) without ordering guarantees.

### Deadlock #CircularWait #Blocking
Two or more threads are blocked forever, each waiting for a resource held by another thread in the cycle.
#### Conditions for Deadlock #MutualExclusion #HoldAndWait #NoPreemption #CircularWait
The four necessary Coffman conditions.
#### Deadlock Prevention #AvoidConditions #Design
Designing the system to avoid one of the necessary conditions.
#### Deadlock Detection #ResourceGraph #Algorithm
Algorithms to detect if a deadlock has occurred.
#### Deadlock Recovery #Abort #Preempt
Breaking the deadlock, often by terminating processes or preempting resources.
#### Deadlock Avoidance #BankersAlgorithm #SafeState
Dynamically checking resource requests to ensure the system remains in a safe state.

### Livelock #BusyWaiting #NoProgress
Threads are active and responding to each other, but make no overall progress (e.g., repeatedly trying and failing to acquire resources).

### Starvation #Scheduling #Unfairness
A thread is perpetually denied access to necessary resources or CPU time, unable to make progress.

### Priority Inversion #Scheduling #RealTime
A high-priority task is blocked waiting for a resource held by a low-priority task, which itself might be preempted by medium-priority tasks.

## Memory Models #MemoryBehavior #Ordering #Visibility
Defines how threads interact through memory and the guarantees compilers and processors provide about the visibility and ordering of memory operations.

### Definition #Guarantees #Compiler #Hardware
Specifies rules for when writes by one thread become visible to others and how operations can be reordered.

### Memory Consistency Models #Rules #Ordering
Different levels of guarantees provided.
#### Sequential Consistency #Intuitive #Strict
All operations appear to execute in a single global order consistent with program order. Often too restrictive for performance.
#### Relaxed Consistency #Performance #WeakerGuarantees
Allows more reordering by compiler/CPU for better performance, requiring explicit synchronization for ordering.

### Happens-Before Relationship #Ordering #Causality
A formal guarantee that the results of operation A are visible to operation B. Synchronization primitives establish happens-before relationships.

### Volatile / Atomic Semantics #Visibility #OrderingConstraints
Language keywords/types (like `volatile` in Java/C# or `std::atomic` in C++) that provide specific visibility and ordering guarantees.

### Memory Barriers / Fences #Instructions #ExplicitOrdering
Explicit instructions forcing the processor/compiler to enforce ordering constraints on memory operations around the barrier.

## Concurrent Data Structures #ThreadSafe #Collections #DataManagement
Data structures designed for safe and efficient use by multiple threads concurrently.

### Thread-Safe Wrappers #Synchronization #Legacy
Wrapping standard collections with locks (e.g., Java's `Collections.synchronizedMap`). Often have coarse-grained locking.

### Fine-Grained Locking Structures #Performance #Complexity
Structures using multiple locks to protect different parts, allowing more concurrency (e.g., ConcurrentHashMap).

### Lock-Free Structures #NonBlocking #Atomics
Structures implemented using atomic operations (like CAS) instead of traditional locks, avoiding issues like deadlock.

### Wait-Free Structures #GuaranteedProgress #NonBlocking
Stronger guarantee than lock-free: every participating thread is guaranteed to complete its operation within a finite number of steps, regardless of other threads' speeds.

### Examples #Queue #Map #Set
Concurrent Queues (e.g., BlockingQueue), Concurrent Hash Maps, Concurrent Sets.

## Concurrency Design Patterns #Solutions #BestPractices #Architecture
Proven solutions to common problems in concurrent software design.

### Immutable Objects #Simplicity #Safety
Objects whose state cannot be changed after creation are inherently thread-safe.

### Thread Pool #ResourceManagement #Efficiency
Reusing a pool of threads to execute tasks, avoiding the overhead of thread creation/destruction.

### Producer-Consumer #DataFlow #Queue #Decoupling
One or more producer threads create data/tasks placed into a shared buffer (queue), consumed by one or more consumer threads.

### Reader-Writer Lock Pattern #SharedRead #ExclusiveWrite
Optimizing access where reads are frequent and writes are infrequent, using reader-writer locks.

### Double-Checked Locking (and its pitfalls) #LazyInitialization #Optimization
Pattern for reducing locking overhead during lazy initialization. Requires careful implementation (e.g., `volatile`) to be correct due to memory model issues.

### Active Object #Decoupling #Asynchronous
Decouples method invocation from execution, using a scheduler and message queue to process requests asynchronously.

### Leader/Followers #EventHandling #Efficiency
Manages a pool of threads handling event sources, with one thread (leader) waiting for events and handing them off to followers.

### Thread-Specific Storage #Isolation #State
Each thread has its own private copy of some data, avoiding the need for synchronization.

## Language & Platform Support #Implementation #Tools #Libraries
How different programming languages, libraries, and operating systems provide concurrency features.

### Java #JVM #Libraries
#### `java.lang.Thread` #Core #Primitives
Basic thread creation and management.
#### `synchronized` Keyword #IntrinsicLocks #Monitors
Built-in language support for mutual exclusion using object monitors.
#### `volatile` Keyword #Visibility #Ordering
Ensures visibility of writes across threads and prevents certain reorderings.
#### `java.util.concurrent` Package #HighLevel #Utilities
Rich library with thread pools, concurrent collections, atomic variables, locks, latches, barriers, etc.
#### Fork/Join Framework #Parallelism #WorkStealing
Framework for parallelizing recursive tasks.

### Python #CPython #Libraries
#### `threading` Module #Threads #SharedMemory
Standard library for thread-based concurrency.
#### `multiprocessing` Module #Processes #Parallelism
Standard library for process-based concurrency, bypassing the GIL for CPU-bound tasks.
#### `asyncio` Module #Asynchronous #Coroutines
Support for asynchronous programming with event loops and coroutines (`async`/`await`).
#### Global Interpreter Lock (GIL) #Limitation #CPython
A mutex in CPython ensuring only one thread executes Python bytecode at a time in a single process, limiting CPU-bound parallelism for threads.

### C++ #StandardLibrary #Performance
#### `<thread>` #Core #Creation
Standard library support for creating and managing threads.
#### `<mutex>`, `<shared_mutex>` #Locking #Synchronization
Mutexes, recursive mutexes, shared (reader-writer) mutexes.
#### `<condition_variable>` #Waiting #Signaling
Condition variables for thread coordination.
#### `<atomic>` #LowLevel #LockFree
Atomic types and operations for fine-grained, lock-free programming.
#### `<future>`, `<async>` #Asynchronous #Tasks
Support for asynchronous task execution and retrieving results.

### Go #Goroutines #Channels #CSP
#### Goroutines #Lightweight #ConcurrentFunctions
Extremely lightweight, concurrent functions managed by the Go runtime.
#### Channels #Communication #Synchronization #CSP
Typed conduits for communication and synchronization between goroutines.

### C# / .NET #Platform #Libraries
#### `System.Threading.Thread` #Basic #LowLevel
Fundamental thread class.
#### `lock` Statement / `Monitor` Class #Synchronization #MutualExclusion
Language keyword and class for basic locking.
#### `async` / `await` Keywords #Asynchronous #Tasks
Language support for writing asynchronous code based on Tasks.
#### Task Parallel Library (TPL) #Parallelism #Abstraction
High-level library for data parallelism and task-based concurrency (`Parallel.For`, `Task`).
#### `System.Collections.Concurrent` #DataStructures #ThreadSafe
Namespace with thread-safe collection classes.

### Erlang / Elixir #ActorModel #OTP #FaultTolerance
#### Actor Model Implementation #Processes #Isolation
Lightweight processes (actors) with no shared memory, communicating via messages.
#### OTP (Open Telecom Platform) #Framework #Reliability
Framework providing standard libraries and design principles for building robust, concurrent, distributed systems.

### Operating System Support #Kernel #Scheduling
#### Scheduler #TimeSlicing #Priorities
OS component responsible for allocating CPU time to threads/processes.
#### Context Switching #Overhead #StateSaving
The process of saving the state of one thread/process and loading the state of another.

## Testing & Debugging Concurrent Code #QualityAssurance #Verification #Challenges
Strategies and tools for finding and fixing bugs in concurrent applications.

### Challenges #NonDeterminism #Reproducibility
Bugs (like race conditions, deadlocks) may only appear under specific, hard-to-reproduce timing conditions.

### Techniques #Methods #Strategies
#### Code Review #ManualInspection #DesignCheck
Carefully reviewing code for potential concurrency issues.
#### Static Analysis #Automated #CodeScanning
Tools that analyze source code without executing it to find potential bugs (e.g., potential data races, improper lock usage).
#### Dynamic Analysis / Runtime Detection #Execution #Instrumentation
Tools that monitor program execution to detect concurrency errors as they happen.
##### Thread Sanitizers (TSan) #DataRaceDetection #DeadlockDetection
Instrumentation-based tools (like in GCC/Clang) to detect data races and deadlocks at runtime.
#### Stress Testing #LoadTesting #EdgeCases
Running the application under heavy load or unusual conditions to provoke concurrency bugs.
#### Model Checking / Formal Methods #Verification #MathematicalProof
Mathematically rigorous techniques to verify the correctness of concurrent algorithms or protocols (often complex).
#### Logging and Tracing #Debugging #PostMortem
Careful logging can help reconstruct the sequence of events leading to a failure.

## Performance & Scalability #Efficiency #Throughput #Analysis
Analyzing and optimizing the performance of concurrent systems.

### Metrics #Measurement #Evaluation
#### Throughput #TasksPerUnitTime #Rate
How many tasks are completed per unit of time.
#### Latency #ResponseTime #Delay
The time taken to complete a single task.
#### Scalability #LoadHandling #ResourceAddition
How performance changes as load or resources (e.g., CPU cores) increase.

### Performance Factors #Influences #Bottlenecks
#### Synchronization Overhead #LockingCost #Contention
The time spent acquiring/releasing locks, signaling, etc. Lock contention occurs when multiple threads compete for the same lock.
#### Context Switching Overhead #SchedulerCost #StateSaving
The time taken by the OS/runtime to switch between threads.
#### Cache Coherence Traffic #MemorySystem #Communication
Hardware overhead ensuring different cores have consistent views of memory.
#### False Sharing #CacheLines #Inefficiency
Performance degradation when unrelated data items used by different threads happen to reside on the same cache line.

### Analysis Laws #TheoreticalLimits #Prediction
#### Amdahl's Law #FixedWorkload #SpeedupLimit
Predicts the theoretical maximum speedup achievable by parallelizing a fixed task, limited by its sequential portion.
#### Gustafson's Law #FixedTime #ScaledWorkload
Predicts speedup for problems where the workload size increases with the number of processors. Considers scaled speedup.

### Profiling Tools #Measurement #BottleneckIdentification
Software tools to measure execution time, lock contention, context switches, cache misses, etc., in concurrent applications.

## Advanced Concurrency Concepts #CuttingEdge #Specialized #Future
More complex or specialized topics within concurrency.

### Non-blocking Algorithms #LockFree #WaitFree #ProgressGuarantees
Algorithms designed to avoid traditional locks, improving scalability and avoiding deadlock/priority inversion.
#### Lock-Free #SystemProgress
Guarantees that *some* thread will make progress in a finite number of steps.
#### Wait-Free #PerThreadProgress
Guarantees that *every* participating thread will make progress in a finite number of steps.

### Software Transactional Memory (STM) #Transactions #Atomicity #Optimistic
An alternative concurrency control mechanism allowing blocks of code to execute atomically, like database transactions. Often uses optimistic concurrency.

### GPU Computing / Heterogeneous Computing #MassiveParallelism #SpecializedHardware
Utilizing Graphics Processing Units (GPUs) with thousands of simple cores for massively parallel computations.
#### CUDA (NVIDIA) #API #Platform
NVIDIA's parallel computing platform and API.
#### OpenCL #Standard #CrossPlatform
Open standard for parallel programming across heterogeneous platforms (CPUs, GPUs, DSPs).

## Distributed Concurrency #Network #MultipleMachines #Consistency
Managing concurrency across multiple independent machines connected by a network.

### Challenges #Latency #PartialFailure #Consistency
Dealing with network delays, independent machine failures, and maintaining consistent state across nodes.

### Consistency Models (Distributed) #CAPTheorem #PACELC
Rules governing the consistency of data replicated across multiple nodes (e.g., Strong Consistency, Eventual Consistency).

### Consensus Algorithms #Agreement #FaultTolerance
Protocols enabling a distributed set of nodes to agree on a value, even in the presence of failures (e.g., Paxos, Raft).

### Distributed Frameworks #Abstractions #Tools
Platforms simplifying distributed computation (e.g., MapReduce, Apache Spark, Actor Frameworks like Akka Cluster).
