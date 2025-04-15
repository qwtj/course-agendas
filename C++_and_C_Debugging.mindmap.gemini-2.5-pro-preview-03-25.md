# C++ and C Debugging #Overview #Programming #Troubleshooting
Introduction to the discipline of finding and fixing errors (bugs) in C and C++ programs. Debugging is an essential skill for any C/C++ developer due to the languages' low-level nature and potential for complex errors.

## Understanding Bugs #Errors #Fundamentals #Theory
Defining what bugs are, their various manifestations, and their lifecycle within software development.
### Categories of Bugs #Classification #Types
Different kinds of errors encountered in C/C++ development.
#### Syntax Errors #CompileTime #Language
Errors detected by the compiler due to violations of the C/C++ grammar rules.
#### Linker Errors #Linking #Build
Errors detected by the linker when combining object files and libraries, often related to undefined symbols or duplicate definitions.
#### Runtime Errors #Execution #Crashes
Errors that occur during program execution, often leading to abnormal termination.
##### Segmentation Faults (SIGSEGV) #Memory #Crash
Attempting to access memory that the program is not allowed to access (e.g., NULL pointer dereference, writing to read-only memory).
##### Bus Errors (SIGBUS) #Memory #Alignment
Memory access errors often related to incorrect memory alignment or accessing non-existent physical addresses.
##### Floating Point Exceptions (SIGFPE) #Math #IEEE754
Errors during floating-point arithmetic, such as division by zero or overflow.
##### Aborted Execution (SIGABRT) #Assertions #Checks
Program termination requested by the program itself, often via `abort()` or failed `assert()`.
#### Logic Errors #IncorrectBehavior #Algorithm
The program compiles and runs but produces incorrect results or behaves unexpectedly due to flaws in the algorithm or implementation logic.
#### Memory Errors #MemoryManagement #Pointers
A broad category including leaks, corruption, invalid accesses, common in C/C++.
#### Concurrency Errors #Multithreading #Synchronization
Bugs specific to multi-threaded or parallel programs, like data races and deadlocks.
#### Performance Issues #Optimization #Bottlenecks
Code that is functionally correct but unacceptably slow or resource-intensive.
#### Resource Leaks #MemoryLeak #FileHandles #Sockets
Failure to release acquired system resources (memory, file descriptors, network sockets, etc.) leading to eventual exhaustion.
#### Security Vulnerabilities #Exploits #Safety
Bugs that can be exploited for malicious purposes, such as buffer overflows or format string vulnerabilities.
### The Bug Lifecycle #Process #DebuggingWorkflow
The typical stages a bug goes through from creation to resolution.
#### Bug Discovery/Reporting #Detection #Testing
Identifying that a bug exists, often through testing or user reports.
#### Bug Reproduction #Isolation #Consistency
Reliably triggering the bug under controlled conditions. Creating a Minimal Reproducible Example (MRE).
#### Bug Localization/Isolation #Pinpointing #Analysis
Narrowing down the location of the bug within the codebase.
#### Bug Cause Identification #RootCause #Understanding
Determining the underlying reason for the bug.
#### Bug Correction #Fixing #Coding
Modifying the code to eliminate the bug.
#### Verification #Testing #Confirmation
Ensuring the fix works and hasn't introduced new problems (regressions).

## Debugging Philosophies and Strategies #Methodology #Approach
General mindsets and systematic methods for approaching the debugging process.
### Divide and Conquer #Isolation #Technique
Progressively narrowing down the scope where the bug could be located by eliminating sections of code or data.
### Scientific Method #Hypothesis #Testing
Formulating hypotheses about the bug's cause, designing experiments (e.g., adding print statements, using a debugger) to test them, and refining the hypothesis based on results.
### Reproducing the Bug #Consistency #Testing
Emphasizing the critical step of being able to reliably trigger the bug. Essential for effective debugging.
### Rubber Duck Debugging #Explanation #Technique
Explaining the code, line by line or section by section, to someone else (or an inanimate object like a rubber duck). The act of verbalizing often reveals the flaw.
### Delta Debugging #Automation #Isolation
Automated techniques to minimize the input or code changes required to reproduce a bug.
### Backtracking #Tracing #History
Starting from the point of failure and tracing execution (mentally, via logs, or with a debugger) backward to find the origin of the error.
### Comparing Working vs. Non-Working #Differencing #Regression
Comparing code, configurations, or environments between a version where the feature works and one where it fails (useful for regressions).

## Debugging Tools #Software #Utilities
Software applications and utilities designed to assist in the debugging process.
### Interactive Debuggers #ExecutionControl #Inspection
Tools that allow controlling program execution (stepping, breakpoints) and inspecting program state (variables, memory).
#### GDB (GNU Debugger) #Linux #Unix #CrossPlatform
The standard debugger on many Unix-like systems. Features command-line interface (CLI), Text User Interface (TUI), and scripting capabilities (Python, Guile).
#### LLDB #Clang #macOS #CrossPlatform
The debugger component of the LLVM project, default on macOS. Similar capabilities to GDB, integrates well with Clang, Python scriptable.
#### Visual Studio Debugger #Windows #IDE #Microsoft
Powerful debugger integrated into the Visual Studio IDE, known for its graphical interface and extensive features.
#### WinDbg #Windows #Advanced #Kernel
A powerful debugger for Windows, capable of user-mode and kernel-mode debugging, and post-mortem crash dump analysis.
#### IDE-Integrated Debuggers #VisualStudioCode #CLion #Eclipse #Xcode
Debuggers embedded within Integrated Development Environments, providing graphical frontends to underlying debug engines (like GDB or LLDB) or native implementations.
### Memory Debuggers #MemoryManagement #LeakDetection
Tools specifically designed to detect memory-related errors.
#### Valgrind (Memcheck Tool) #Linux #DynamicAnalysis
A dynamic analysis framework; its Memcheck tool detects memory leaks, invalid memory access, use of uninitialized values, etc., by running the program in a virtual machine. Slows down execution significantly.
#### AddressSanitizer (ASan) #CompilerInstrumentation #RuntimeCheck
A fast memory error detector integrated into compilers (GCC, Clang). Uses compile-time instrumentation and a runtime library to detect issues like use-after-free, buffer overflows, etc., with moderate performance overhead.
#### MemorySanitizer (MSan) #UninitializedReads #CompilerInstrumentation
Detects reads of uninitialized memory. Requires instrumenting all code, including libraries. Part of the sanitizer suite in Clang/GCC.
#### LeakSanitizer (LSan) #LeakDetection #CompilerInstrumentation
Detects memory leaks at program exit. Often combined with ASan. Part of the sanitizer suite in Clang/GCC.
#### Electric Fence #Library #Memory
A library that uses virtual memory hardware to detect buffer overflows or uses of freed memory immediately upon occurrence by placing inaccessible pages adjacent to allocations.
#### Purify / PurifyPlus #Commercial #Memory
Commercial dynamic analysis tool for memory corruption and leak detection.
### Static Analysis Tools #CodeAnalysis #CompileTime
Tools that analyze source code without executing it to find potential bugs, style issues, and anti-patterns.
#### Clang Static Analyzer (`scan-build`) #Clang #OpenSource
Integrated into Clang, finds bugs through path-sensitive analysis.
#### Cppcheck #OpenSource #StaticAnalysis
An open-source static analysis tool focusing on detecting undefined behavior and dangerous coding constructs.
#### PVS-Studio #Commercial #StaticAnalysis
A commercial static analysis tool for C, C++, C#, and Java, detecting a wide range of errors.
#### Coverity Scan #Commercial #Cloud
A high-end commercial static analysis platform, often used in large projects. Offers a free service for open-source projects.
#### Compiler Warnings (`-Wall`, `-Wextra`, etc.) #Compiler #BestPractices
Enabling and paying attention to compiler warnings is a fundamental form of static analysis.
### Profilers #Performance #Bottlenecks
Tools used to analyze the runtime performance of software to identify bottlenecks. While often for optimization, they are crucial for debugging performance issues.
#### gprof #GNU #Profiling
Classic GNU profiler, uses instrumentation and sampling. Provides call graph and flat profiles.
#### Valgrind (Callgrind/Cachegrind) #Linux #Profiling
Valgrind tools: Callgrind for call graph analysis, Cachegrind for cache simulation and analysis. Very detailed but slow.
#### Perf #Linux #Kernel #PerformanceCounters
Powerful Linux profiling tool using hardware performance counters and kernel event tracing. Low overhead.
#### Visual Studio Profiler #Windows #IDE
Integrated profiler in Visual Studio for CPU usage, memory allocation, I/O, etc.
#### Intel VTune Profiler #Intel #AdvancedProfiling
Advanced profiler targeting Intel architectures, analyzes CPU, GPU, threading, I/O, etc.
### Logging Frameworks #Tracing #RuntimeInfo
Libraries that facilitate recording events, variable states, and execution flow during runtime for later analysis.
#### spdlog #Library #C++
Popular, header-only, fast C++ logging library.
#### Boost.Log #Library #C++ #Boost
Comprehensive logging library from the Boost collection.
#### Glog (Google Logging Library) #Library #C++
Application-level logging library developed by Google.
#### Custom Logging Solutions #DIY #Logging
Project-specific logging implementations using `printf`, `fprintf`, `std::cout`, etc.
### Build System Integration #CMake #Make #Build
Configuring build systems (like CMake, Make, Meson) to create debug builds (with symbols, without optimizations) vs. release builds.

## Core Debugging Techniques #Methods #Practice
Specific actions and procedures used within a debugging session, often employing debugging tools.
### Using Breakpoints #Pause #Inspection
Setting points in the code where execution should pause, allowing state inspection.
#### Simple Breakpoints #LineNumber #Function
Pause execution when a specific line of code or the entry point of a function is reached.
#### Conditional Breakpoints #Condition #Expression
Pause execution only if a specific condition (a boolean expression) evaluates to true.
#### Temporary Breakpoints #OneTime #Debug
Breakpoints that are automatically deleted after being hit once.
#### Hardware Breakpoints #MemoryAccess #Limited
Breakpoints implemented using special CPU debug registers. Can trigger on memory access (read/write) to a specific address. Limited in number.
#### Pending Breakpoints #SharedLibraries #FutureLoad
Breakpoints set on locations in code that hasn't been loaded yet (e.g., in a shared library loaded later). The debugger activates them once the code is loaded.
### Stepping Through Code #ExecutionControl #Flow
Executing the program line by line or instruction by instruction.
#### Step Over (`next` in GDB/LLDB) #FunctionCall #Skip
Execute the current line. If it contains a function call, execute the entire function and pause at the next line in the current scope.
#### Step Into (`step` in GDB/LLDB) #FunctionCall #Enter
Execute the current line. If it contains a function call, enter the function and pause at its first line.
#### Step Out (`finish` in GDB/LLDB) #FunctionReturn #Exit
Continue execution until the current function returns, then pause at the call site in the caller function.
#### Continue (`continue` in GDB/LLDB) #Resume #Run
Resume program execution until the next breakpoint is hit, the program terminates, or a signal is received.
#### Run to Line #Execution #Target
Execute until a specific line number within the current file is reached.
#### Instruction-Level Stepping (`stepi`, `nexti`) #Assembly #LowLevel
Step through individual machine code instructions instead of source code lines.
### Inspecting State #Variables #Memory #Data
Examining the program's data while paused.
#### Examining Variables (`print`, `display` in GDB/LLDB) #Values #Scope
Viewing the current values of local variables, function arguments, or global variables. `display` typically re-evaluates and prints each time execution stops.
#### Watching Variables/Expressions (`watch` in GDB/LLDB) #DataChange #Monitor
Setting watchpoints (often hardware breakpoints) to stop execution whenever the value of a variable or expression changes, or when a memory location is read or written.
#### Examining Memory (`x` in GDB/LLDB) #RawData #HexDump
Viewing raw memory contents at specific addresses, often formatted as hex, decimal, characters, etc.
#### Examining Registers (`info registers` in GDB/LLDB) #CPU #LowLevel
Viewing the contents of CPU registers (e.g., instruction pointer, stack pointer, general-purpose registers).
#### Viewing Call Stack (`backtrace`, `bt` in GDB/LLDB) #FunctionCalls #History
Displaying the chain of function calls that led to the current point of execution. Essential for understanding context.
#### Switching Frames (`frame` in GDB/LLDB) #CallStack #ScopeChange
Moving up or down the call stack to examine variables and context within different active function calls.
### Modifying State #Experimentation #Testing
Changing variable values or memory contents during a debug session to test hypotheses or work around issues. Use with caution as it alters program behavior.
### Debugging with Print Statements (`printf` debugging) #Simple #Tracing
Inserting print statements (`printf`, `std::cout`, logging calls) into the code to trace execution flow and variable values. Simple, universally applicable, but requires recompilation and can clutter code/output.
### Using Assertions #Checks #Assumptions #Validation
Using `assert()` macros to check for conditions that should always be true at certain points in the code. Violations typically halt execution, pinpointing unmet assumptions.
#### `assert.h` (C) / `cassert` (C++) #StandardLibrary #RuntimeCheck
Standard library macros for runtime assertions. Can be disabled in release builds (`NDEBUG` macro).
#### `static_assert` (C++) #CompileTimeCheck #Templates
C++ feature for assertions checked at compile time. Very useful for template metaprogramming and validating compile-time constants.

## Compiler Flags and Features for Debugging #Build #Compiler
How compiler settings and features can directly aid in the debugging process.
### Generating Debug Symbols (`-g` for GCC/Clang, `/Zi` or `/ZI` for MSVC) #DebuggerInfo #Symbols
Instructing the compiler to include information (symbols) in the executable/object files that maps machine code back to source code lines, variable names, types, etc. Essential for effective debugger usage.
### Disabling Optimizations (`-O0` for GCC/Clang, `/Od` for MSVC) #DebuggingEase #PredictableCode
Turning off compiler optimizations makes the compiled code map more directly to the source code, simplifying stepping and variable inspection. Optimizations can reorder code, eliminate variables, and inline functions, hindering debugging.
### Enabling Warnings (`-Wall -Wextra` for GCC/Clang, `/W4` for MSVC) #StaticAnalysis #CodeQuality
Maximizing compiler warnings helps catch potential errors and questionable code constructs before runtime. Treat warnings as errors (`-Werror`, `/WX`).
### Using Sanitizers (ASan, TSan, UBSan, MSan) #RuntimeChecks #Instrumentation
Compiler features that add runtime checks for specific types of errors (memory, threads, undefined behavior). Requires compiling with specific flags (e.g., `-fsanitize=address`).
### Preprocessor Macros for Debugging #Macros #ConditionalCompilation
Using macros like `#ifdef DEBUG ... #endif` to include debug-specific code (e.g., extra logging, checks) only in debug builds. Standard macros like `__FILE__`, `__LINE__`, `__func__` are useful within debug messages or assertions.

## Debugging Specific Scenarios #ProblemTypes #Challenges
Techniques and tool usage tailored to common and difficult types of bugs in C/C++.
### Memory Errors #Pointers #Heap #Stack
Addressing the wide range of memory management issues prevalent in C/C++.
#### Dangling Pointers / Use-After-Free #UseAfterFree #InvalidAccess
Accessing memory through a pointer after the memory it pointed to has been freed or deallocated. Often leads to crashes or corrupted data. Detectable with ASan, Valgrind.
#### Buffer Overflows/Overruns #Bounds #Security
Writing data beyond the allocated boundaries of a buffer (array, allocated memory block). Can corrupt adjacent memory or be exploited for security vulnerabilities. Detectable with ASan, Valgrind.
#### Memory Leaks #ResourceManagement #Allocation
Failing to free allocated memory that is no longer needed, leading to gradual exhaustion of available memory. Detectable with LeakSanitizer, Valgrind, memory profilers.
#### Uninitialized Memory Reads #GarbageValues #Indeterminate
Reading from a variable or memory location before it has been assigned a value. Leads to unpredictable behavior. Detectable with MSan, Valgrind, compiler warnings.
#### Double Free #HeapCorruption #InvalidOperation
Calling `free()` or `delete` twice on the same memory address. Corrupts heap metadata, often leading to crashes later. Detectable with ASan, Valgrind.
#### Stack Overflow #Recursion #LargeLocalVariables
Exceeding the amount of stack space allocated to a thread, typically due to excessively deep recursion or very large local variables/arrays. Leads to a crash.
#### Heap Corruption #MemoryManagement #Metadata
Errors that damage the internal data structures used by the memory allocator (e.g., writing past buffer boundaries, double free). Can cause crashes or strange behavior during `malloc`, `free`, `new`, `delete`.
#### Alignment Issues #DataTypes #Performance #Crash
Attempting to access data types at memory addresses that do not meet their required alignment constraints. Can cause crashes (SIGBUS) or performance degradation on some architectures.
### Concurrency Issues #Multithreading #Parallelism #Synchronization
Debugging problems arising from multiple threads accessing shared resources. Often hard to reproduce due to timing dependencies.
#### Data Races #SharedMemory #UnprotectedAccess
Two or more threads accessing the same memory location concurrently, where at least one access is a write, without proper synchronization. Leads to corrupted data. Detectable with ThreadSanitizer (TSan).
#### Deadlocks #MutualExclusion #Waiting
A situation where two or more threads are blocked forever, each waiting for a resource held by another thread in the cycle. Requires analyzing lock acquisition patterns.
#### Livelocks #BusyWaiting #StateChange
Threads are actively executing but remain unable to make progress because they are continuously reacting to each other's state changes without performing useful work.
#### Race Conditions #Timing #Interleaving
Incorrect program behavior that depends on the specific sequence or timing of uncontrollable events (e.g., thread scheduling). Broader than data races. Hard to debug; requires careful logic review and potentially specialized tools.
#### Debugging with ThreadSanitizer (TSan) #CompilerInstrumentation #RuntimeCheck
Using the TSan compiler feature (`-fsanitize=thread`) to detect data races and some deadlock scenarios at runtime.
#### Debugger Support for Threads #ThreadList #SwitchingThreads
Using debugger commands (`info threads`, `thread <id>`) to list threads, switch between them, and examine their individual call stacks and states.
### Performance Debugging (Profiling) #Optimization #Bottlenecks
Using profilers to identify sections of code consuming excessive CPU time, memory, or other resources.
#### CPU Time Profiling #Hotspots #Sampling #Instrumentation
Identifying functions or lines of code where the most execution time is spent.
#### Memory Profiling #Allocation #Leaks
Analyzing memory allocation patterns, identifying sources of leaks or excessive allocation.
#### I/O Profiling #Disk #Network #Waiting
Analyzing time spent waiting for Input/Output operations.
#### Cache Performance Analysis #CPUcache #Misses
Using tools (like Cachegrind, perf) to analyze CPU cache utilization and identify performance issues caused by cache misses.
### Debugging Crashes and Core Dumps #PostMortem #Analysis
Analyzing the state of a program after it has crashed.
#### Enabling Core Dumps #Configuration #OperatingSystem
Configuring the OS (e.g., `ulimit -c unlimited` on Linux) to save a snapshot of the program's memory (a core dump file) when it crashes.
#### Loading Core Dumps #GDB #LLDB #WinDbg
Opening the core dump file along with the corresponding executable in a debugger (`gdb <executable> <corefile>`).
#### Post-Mortem Analysis #StackTrace #Variables #Memory
Examining the call stack, variable values, and memory contents captured in the core dump to determine the state at the time of the crash.
### Debugging External Libraries #ThirdParty #Symbols
Dealing with bugs that may originate in or involve code from libraries you didn't write.
#### Obtaining Debug Symbols #Packages #Builds
Installing debug versions of libraries (e.g., `-dbg` packages on Debian/Ubuntu) or building libraries from source with debug flags.
#### Stepping Into/Out Of Library Code #Debugger #Integration
Using the debugger to trace execution into library functions (requires symbols).
#### Library-Specific Logging/Tracing #Configuration #API
Utilizing any built-in debugging or logging features provided by the library itself.
### Debugging Template Metaprogramming (C++) #CompileTime #Templates
Challenges related to debugging C++ template code, which is largely processed at compile time.
#### Deciphering Compiler Errors #Messages #Templates
Learning to read and understand the often verbose and complex error messages generated during template instantiation.
#### Using `static_assert` #CompileTimeCheck #Validation
Employing static assertions to validate template parameters and intermediate results during compilation.
#### Template Debugging Libraries/Techniques #PrintType #Visualization
Using helper libraries or techniques to "print" types or values at compile time to understand template instantiation.
### Debugging Build and Linker Issues #Configuration #Dependencies
Troubleshooting problems that occur during the compilation or linking stages.
#### Unresolved External Symbols #Linking #Functions #Variables
Errors indicating the linker couldn't find the definition for a function or variable referenced in the code. Check library linkage, function signatures, `extern "C"`.
#### Library Version Conflicts #Dependencies #ABI
Problems arising from linking against incompatible versions of libraries (ABI incompatibility).
#### Incorrect Build Flags #Compiler #Linker #Options
Ensuring the correct compiler and linker flags are used for include paths, library paths, preprocessor definitions, etc.
### Debugging Platform-Specific Code #OS #Hardware #Portability
Dealing with code that behaves differently or uses different APIs depending on the operating system or hardware.
#### Conditional Compilation (`#ifdef`, `#if`) #Preprocessor #Variants
Using preprocessor directives to include or exclude code sections
 based on the target platform.
#### API Differences #WinAPI #POSIX #Standardization
Understanding and handling variations in system APIs (e.g., file system access, networking, threading) across platforms.
#### Endianness Issues #ByteOrder #DataRepresentation
Debugging problems related to byte order (Big Endian vs. Little Endian) when exchanging binary data between different systems.

## Platform and Environment Considerations #Context #System
Factors related to the specific environment where the code runs or is developed.
### Operating System Differences #Linux #Windows #macOS
Variations in available tools (debuggers, profilers), system call behavior, file systems, signal handling, etc.
### Embedded Systems Debugging #Hardware #CrossCompilation #JTAG #SWD
Challenges unique to debugging on resource-constrained embedded platforms.
#### Remote Debugging #GDBServer #Target
Running the debugger on a host machine connected to the target embedded system (e.g., via GDB server over network or serial).
#### Hardware Debuggers (JTAG/SWD Probes) #OnChipDebug #HardwareControl
Using hardware interfaces like JTAG or SWD and probes (e.g., Segger J-Link, ST-Link) to control the CPU directly, set hardware breakpoints, and access memory/registers without OS involvement.
#### Resource Constraints #Memory #CPU #RealTime
Dealing with limited RAM, ROM, processing power, and potentially real-time constraints.
### Debugging Shared Libraries / DLLs #DynamicLoading #Libraries
Handling breakpoints and symbol loading for code in dynamically loaded libraries. Setting debugger paths for library symbols.
### Debugging Client-Server Applications #Network #Distributed
Debugging interactions between separate processes, potentially across a network. May involve debugging both client and server simultaneously or analyzing network traffic.
### Debugging Kernel Modules / Drivers #LowLevel #OS #Privileged
Specialized debugging techniques for code running in the operating system kernel. Requires tools like WinDbg (kernel mode), KGDB/KDB on Linux, and often a two-machine setup.

## Debugging Best Practices and Prevention #Proactive #CodeQuality
Strategies and habits to minimize the introduction of bugs and make debugging easier when they do occur.
### Writing Testable Code #UnitTesting #IntegrationTesting #Design
Designing code (small functions, clear interfaces, dependency injection) that is easy to test in isolation and combination.
### Test-Driven Development (TDD) #Testing #Design
Writing tests *before* writing the corresponding code, driving development and ensuring continuous verification.
### Code Reviews #Collaboration #QualityAssurance
Having other developers review code before merging helps catch bugs, improve design, and share knowledge.
### Using Version Control (Git, SVN) #History #Bisect #Collaboration
Tracking code changes allows reverting to previous states and using tools like `git bisect` to efficiently find the commit that introduced a regression.
### Defensive Programming #Assertions #ErrorHandling #Robustness
Writing code that anticipates potential problems, checks pre-conditions and post-conditions, validates inputs, and handles errors gracefully. Using assertions liberally during development.
### Resource Management (RAII in C++) #MemoryManagement #Exceptions #C++
Resource Acquisition Is Initialization: A core C++ idiom where resource ownership (memory, files, locks) is tied to the lifetime of objects with automatic cleanup in destructors. Prevents resource leaks, especially in the presence of exceptions.
### Using Smart Pointers (C++) #MemoryManagement #RAII #C++
Employing standard C++ smart pointers (`std::unique_ptr`, `std::shared_ptr`, `std::weak_ptr`) to automate dynamic memory management and prevent leaks and dangling pointers.
### Keeping Code Simple and Modular #Design #Maintainability #KISS
Avoiding unnecessary complexity. Breaking down large systems into smaller, well-defined, loosely coupled modules makes them easier to understand, test, and debug.
### Continuous Integration (CI) #Automation #Testing #Build
Automating the build and testing process whenever code changes are committed. Helps catch regressions and integration issues early.

## Advanced Debugging Topics #Expert #Specialized
More complex or less commonly used debugging techniques and scenarios.
### Reverse Engineering #Assembly #Disassembly #Understanding
Analyzing compiled machine code (often without source) to understand its behavior, potentially to debug interactions with closed-source components or analyze malware. Involves disassemblers (like IDA Pro, Ghidra) and debuggers at the assembly level.
### Time-Travel Debugging / Record and Replay #Deterministic #Analysis
Techniques and tools (e.g., `rr`, GDB's reverse debugging) that record a program's execution and allow replaying it deterministically, including stepping backward in time. Extremely powerful for intermittent or complex bugs.
### Scripting Debuggers (Python, Guile) #Automation #Customization #GDB #LLDB
Writing scripts to automate complex debugging tasks, define custom debugger commands, or perform sophisticated program state analysis within GDB or LLDB.
### Debugging Optimized Code #Challenges #Inlining #Reordering
Understanding the difficulties introduced by compiler optimizations (variables optimized away, code reordered, functions inlined) and techniques to mitigate them (e.g., reading assembly, using `volatile`, specific debug info formats like DWARF).
### Kernel Debugging #OS #Drivers #WinDbg #KGDB
Debugging the operating system kernel itself or device drivers. Requires specialized tools and often a separate machine for debugging.
### Hardware-Assisted Debugging #JTAG #Tracepoints #CPUFeatures
Leveraging CPU hardware features (debug registers, performance counters, trace capabilities like Intel Processor Trace) for low-level debugging and tracing, often via JTAG/SWD interfaces.
