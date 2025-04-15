# C++ Rules of Thumb #CorePrinciples #BestPractices #Guidelines
General heuristics and best practices for writing effective, maintainable, and robust C++ code.

## General Principles & Philosophy #CoreConcepts #Mindset #Design
Overarching ideas that guide C++ development.

### Prefer Clarity and Readability #Readability #Maintainability #Clarity
Write code that is easy for others (and your future self) to understand.

### Keep It Simple, Stupid (KISS) #Simplicity #DesignPrinciple
Avoid unnecessary complexity; prefer straightforward solutions.

### Don't Repeat Yourself (DRY) #CodeDuplication #Maintainability #Abstraction
Avoid duplicating code; use functions, templates, or classes to abstract common logic.

### Write Code for Humans First, Computers Second #Readability #Maintainability
Optimize for human understanding before micro-optimizing for performance.

### Know Your Tools #Development #Environment #Efficiency
Understand your compiler, debugger, build system, and profiler.

### Understand the Standard #CppStandard #LanguageFeatures #CoreLanguage
Be familiar with the C++ standard version you are using. Read the documentation.

### Principle of Least Astonishment #Usability #API #Design
Functions and classes should behave in a way that users expect.

## Code Style and Formatting #Readability #Consistency #StyleGuide
Rules related to the visual appearance and structure of the code.

### Adopt and Enforce a Consistent Style Guide #Formatting #Teamwork #Consistency
Use tools like ClangFormat to automate and ensure consistency (e.g., Google C++ Style Guide, LLVM Style Guide).

### Use Meaningful Names #Naming #Readability #Clarity
Choose descriptive names for variables, functions, classes, etc. Avoid abbreviations where possible.

### Prefer `const` Correctness #Const #Immutability #Safety
Use `const` wherever possible for variables, parameters, pointers, references, and member functions.

### Scope Variables Tightly #Scoping #RAII #Clarity
Declare variables in the smallest possible scope, preferably close to their first use.

### Use Whitespace Effectively #Formatting #Readability
Use blank lines and indentation to structure code logically.

### Comment Judiciously #Documentation #Comments #Maintainability
Comment *why* something is done, not *what* is being done (unless the 'what' is complex). Keep comments up-to-date.

## Resource Management #Memory #RAII #Pointers #Ownership
Handling resources like memory, file handles, network sockets, mutexes.

### RAII is Your Friend (Resource Acquisition Is Initialization) #RAII #Exceptions #ResourceSafety
Bind resource lifetime to object lifetime using constructors and destructors. This is fundamental in C++.

### Prefer Smart Pointers over Raw Pointers #SmartPointers #MemoryManagement #Safety
Use `std::unique_ptr`, `std::shared_ptr`, and `std::weak_ptr` to manage dynamic memory automatically.

#### Use `std::unique_ptr` for Exclusive Ownership #UniquePtr #Ownership #ModernCpp
Default choice for owning pointers.

#### Use `std::shared_ptr` for Shared Ownership #SharedPtr #Ownership #ReferenceCounting
Use when multiple pointers need to co-own a resource. Be mindful of potential cycles (use `weak_ptr`).

#### Use `std::weak_ptr` to Break Cycles or Observe #WeakPtr #Cycles #Observation
Use with `shared_ptr` to observe an object without affecting its lifetime or to break ownership cycles.

### Avoid Manual `new` and `delete` When Possible #MemoryManagement #RAII #Safety
Let RAII containers (like `std::vector`, `std::string`) and smart pointers handle memory.

### Understand Pointer and Reference Ownership #Ownership #Pointers #References #Design
Clearly define who owns dynamically allocated memory or resources. Dangling pointers/references are common bugs.

### Beware of Dangling Pointers/References #Bugs #MemorySafety #UndefinedBehavior
Ensure pointers and references always point to valid objects/memory.

### Use `nullptr` Instead of `NULL` or `0` #Nullptr #ModernCpp #TypeSafety
`nullptr` is type-safe and avoids ambiguity present with `NULL` or `0`.

## Object-Oriented Design (OOD) #OOP #Classes #Inheritance #Polymorphism
Rules related to designing classes and their interactions.

### Follow SOLID Principles #SOLID #OOD #DesignPrinciples
Guiding principles for flexible, maintainable, and understandable object-oriented design.

#### Single Responsibility Principle (SRP) #SRP #Cohesion
A class should have only one reason to change.

#### Open/Closed Principle (OCP) #OCP #Extensibility
Software entities should be open for extension but closed for modification.

#### Liskov Substitution Principle (LSP) #LSP #Inheritance #Polymorphism
Subtypes must be substitutable for their base types without altering correctness.

#### Interface Segregation Principle (ISP) #ISP #Interfaces #API
Clients should not be forced to depend on interfaces they do not use.

#### Dependency Inversion Principle (DIP) #DIP #Decoupling #Abstraction
Depend upon abstractions, not concretions.

### Prefer Composition Over Inheritance #Composition #Inheritance #Flexibility #Design
Favor has-a relationships over is-a relationships for better flexibility and encapsulation. Use inheritance primarily for subtyping/polymorphism.

### Understand the Rule of Zero/Three/Five #SpecialMembers #RAII #ClassDesign
If you manage resources manually, you might need copy/move constructors/assignment operators and a destructor. If you use RAII containers/smart pointers, you often need none (Rule of Zero).

### Make Interfaces Easy to Use Correctly and Hard to Use Incorrectly #API #Design #Usability
Design class interfaces to guide users towards correct usage and prevent common errors.

### Use Virtual Destructors for Base Classes with Virtual Functions #Destructors #Inheritance #Polymorphism #MemorySafety
Ensure derived class destructors are called correctly when deleting via a base class pointer.

### Avoid Object Slicing #Slicing #Inheritance #Bugs
Be careful when copying derived objects by value using base class types, as derived-specific data is lost. Pass by reference or pointer.

## Performance Optimization #Performance #Profiling #Efficiency
Making code run faster or use fewer resources.

### Don't Optimize Prematurely #Optimization #Clarity #Maintainability
Write clear, correct code first. Optimize only when necessary and based on measurement.

### Profile Before Optimizing #Profiling #Measurement #Performance
Use profiling tools to identify actual bottlenecks; don't guess.

### Understand Algorithmic Complexity (Big O Notation) #Algorithms #Complexity #Scalability
Choose appropriate algorithms and data structures for the task based on their performance characteristics.

### Prefer Stack Allocation When Feasible #Stack #Heap #Performance #Memory
Stack allocation is generally faster than heap allocation (`new`). Use local variables, `std::array`, or `std::vector` with `reserve`.

### Minimize Memory Allocations/Deallocations #Heap #Performance #MemoryManagement
Frequent allocations/deallocations can be slow. Reuse memory or use custom allocators if needed.

### Understand Cache Effects #Cache #MemoryHierarchy #Performance
Optimize memory access patterns for better CPU cache utilization (locality of reference).

### Use Move Semantics Effectively #MoveSemantics #RvalueReferences #Performance #ModernCpp
Leverage move constructors and move assignment operators (often automatically generated) to avoid unnecessary copies of resources.

### Consider Inlining Judiciously #Inlining #Compiler #Performance
Small, frequently called functions might benefit from inlining, but trust the compiler first. Excessive inlining can increase code size.

### Prefer Pass-by-Reference (`const&`) for Large Objects #Parameters #Performance #Copying
Avoid copying large objects when passing them to functions. Use `const&` for read-only access. Consider pass-by-value for small, cheap-to-copy types or when you need a local copy (sink arguments).

## Error Handling and Exceptions #Exceptions #ErrorCodes #Robustness #Safety
Strategies for dealing with runtime errors and exceptional conditions.

### Use Exceptions for Exceptional Circumstances #Exceptions #Errors #ControlFlow
Use exceptions for errors that prevent a function from fulfilling its contract, especially in constructors and operators.

### Prefer Exceptions over Error Codes for Class Invariants #Exceptions #Constructors #RAII #OOD
Exceptions are often better for signaling construction failures or issues violating class invariants.

### Know When *Not* to Use Exceptions #Performance #Destructors #ErrorHandling
Avoid exceptions in performance-critical loops, across module boundaries without care, or in destructors (generally). Consider alternatives like `std::optional` or error codes in specific contexts.

### Throw by Value, Catch by Reference (Usually `const&`) #Exceptions #BestPractice
Throw exception objects by value. Catch them by reference (`const&` preferably) to avoid slicing and extra copies.

### Use `noexcept` Appropriately #Noexcept #Exceptions #Performance #ModernCpp
Mark functions that are guaranteed not to throw exceptions as `noexcept`. This helps the compiler optimize and is crucial for move operations and destructors.

### Ensure Exception Safety #ExceptionSafety #RAII #Robustness
Strive for code that maintains invariants and avoids resource leaks even when exceptions occur.

#### Basic Guarantee #ExceptionSafety #Guarantees
Invariants are preserved, and no resources are leaked.

#### Strong Guarantee #ExceptionSafety #Guarantees #Transactions
Operation has either completed successfully or has rolled back to the original state.

#### Nothrow Guarantee #ExceptionSafety #Guarantees #Noexcept
Operation is guaranteed not to throw any exceptions.

## Concurrency and Multithreading #Threading #Parallelism #Synchronization #DataRaces
Writing code that executes multiple tasks simultaneously.

### Understand Data Races and Avoid Them #DataRaces #Concurrency #UndefinedBehavior #Synchronization
Data races (unsynchronized concurrent access to mutable data, with at least one write) cause undefined behavior.

### Protect Shared Data #Mutex #Locks #Atomics #Synchronization
Use synchronization primitives like `std::mutex`, `std::shared_mutex`, `std::atomic` to protect access to data shared between threads.

### Prefer Standard Library Concurrency Features #StdThread #StdMutex #StdFuture #ModernCpp
Use `std::thread`, `std::mutex`, `std::condition_variable`, `std::atomic`, `std::async`, `std::future`, etc.

### Be Aware of Deadlocks and Livelocks #Deadlock #Livelock #ConcurrencyBugs #Synchronization
Understand how deadlocks (circular dependencies) and livelocks (threads continuously change state without making progress) occur and how to prevent them (e.g., lock ordering, `std::lock`, `std::scoped_lock`).

### Minimize Lock Contention #Performance #Scalability #Concurrency
Hold locks for the shortest possible duration. Consider finer-grained locking or lock-free techniques if contention is a bottleneck.

### Consider Lock-Free Programming Cautiously #LockFree #Atomics #Complexity #Performance
Lock-free programming using atomics can offer performance benefits but is significantly more complex and error-prone.

## Templates and Generic Programming #Templates #Metaprogramming #Generics #Reuse
Writing code that works with arbitrary types.

### Understand Template Instantiation #Templates #Compiler #CodeGeneration
Know how and when the compiler generates code from templates.

### Use `typename` and `template` Keywords Correctly #Templates #Syntax #DependentTypes
Required in specific contexts when dealing with dependent types within templates.

### Beware of Code Bloat #Templates #BinarySize #CompileTime
Excessive template use can lead to larger executables and slower compile times. Use explicit instantiation or extern templates if needed.

### Use Concepts (C++20) for Clearer Constraints #Concepts #Templates #ModernCpp #Readability
Prefer C++20 concepts over SFINAE or `static_assert` for constraining templates. They improve error messages and expressiveness.

### Understand SFINAE (Substitution Failure Is Not An Error) #SFINAE #Templates #Metaprogramming #EnableIf
A core C++ technique for template metaprogramming (now often replaceable by Concepts or `if constexpr`).

### Consider Type Traits (`<type_traits>`) #TypeTraits #Metaprogramming #Templates #CompileTime
Use standard type traits for compile-time introspection and manipulation of types.

## Standard Library Usage #STL #Containers #Algorithms #Utilities
Leveraging the C++ Standard Library effectively.

### Prefer Standard Library Components #STL #Reuse #Correctness #Portability
Use standard containers, algorithms, iterators, smart pointers, etc., over custom implementations whenever possible.

### Use Standard Algorithms (`<algorithm>`, `<numeric>`) #Algorithms #STL #Efficiency #Readability
Leverage generic algorithms like `std::sort`, `std::find_if`, `std::transform`, `std::accumulate`. They are often highly optimized.

### Understand Iterator Invalidation Rules #Iterators #Containers #Bugs #STL
Know which container operations invalidate existing iterators, pointers, or references (e.g., inserting into a `std::vector`).

### Use `std::string` and `std::string_view` #Strings #STL #ModernCpp #Safety
Prefer `std::string` over C-style character arrays. Use `std::string_view` (C++17) for non-owning, read-only views of character sequences.

### Be Aware of Container Performance Characteristics #Containers #DataStructures #Performance #STL
Choose the right container for the job (`std::vector`, `std::deque`, `std::list`, `std::map`, `std::unordered_map`, etc.) based on access patterns, insertion/deletion needs, and memory overhead.

## Modern C++ Practices (C++11 and beyond) #ModernCpp #Cpp11 #Cpp14 #Cpp17 #Cpp20
Using features introduced in C++11 and later standards.

### Embrace Modern C++ Features Where Appropriate #ModernCpp #Readability #Efficiency #Safety
Leverage features like `auto`, range-based for loops, lambdas, smart pointers, move semantics, `constexpr`, etc.

### Use `auto` Judiciously #Auto #TypeInference #Readability #ModernCpp
Use `auto` to simplify declarations, especially with complex types (iterators, lambdas), but ensure it doesn't obscure the underlying type excessively.

### Utilize Range-Based For Loops #RangeFor #Loops #Readability #ModernCpp #Containers
Prefer range-based for loops for iterating over containers or ranges when appropriate.

### Leverage Lambda Expressions #Lambdas #Closures #Functional #ModernCpp #Algorithms
Use lambdas for concise inline function objects, especially with standard algorithms.

### Prefer `enum class` over Unscoped `enum` #EnumClass #Enums #TypeSafety #Scoping #ModernCpp
Scoped enumerations (`enum class`) are type-safe and don't pollute the surrounding namespace.

### Use `constexpr` for Compile-Time Computation #Constexpr #CompileTime #Performance #Metaprogramming
Evaluate expressions at compile time where possible for constants and simple functions.

### Utilize `std::optional`, `std::variant`, `std::any` #ModernCpp #TypeSafety #ErrorHandling
Use `std::optional` (C++17) for optional values, `std::variant` (C++17) for type-safe unions, and `std::any` (C++17) for type-safe containers for single values of any type.

## Testing and Debugging #Testing #Debugging #Correctness #Quality
Ensuring code correctness and finding/fixing bugs.

### Write Unit Tests #UnitTesting #TDD #Regression #Quality
Use testing frameworks (Google Test, Catch2) to write automated tests for individual components.

### Use Assertions for Invariants #Assertions #Debug #Contracts #Validation
Use `assert()` (or custom assertion macros) to check preconditions, postconditions, and invariants during development and debugging.

### Learn to Use a Debugger Effectively #Debugging #Tools #GDB #LLDB #VisualStudio
Master stepping through code, setting breakpoints, inspecting variables, and examining the call stack.

### Enable and Heed Compiler Warnings #CompilerWarnings #StaticAnalysis #CodeQuality #Safety
Compile with high warning levels (`-Wall -Wextra -pedantic` for GCC/Clang, `/W4` for MSVC) and treat warnings as errors (`-Werror`, `/WX`).

### Consider Static Analysis Tools #StaticAnalysis #Linters #CodeQuality #Bugs
Use tools like Clang-Tidy, Cppcheck, PVS-Studio, or SonarQube to find potential issues beyond compiler warnings.

### Test Edge Cases and Error Conditions #Testing #Robustness #EdgeCases
Explicitly test boundary conditions, invalid inputs, and error paths.

## Build System and Dependencies #Build #CMake #Dependencies #ProjectManagement
Managing the compilation, linking, and external libraries of a project.

### Use a Standard Build System Generator #BuildSystem #CMake #Meson #Bazel #Portability
Prefer tools like CMake that generate native build files (Makefiles, Visual Studio solutions, Ninja files) for cross-platform compatibility.

### Manage Dependencies Explicitly #DependencyManagement #Conan #Vcpkg #Reproducibility
Use package managers (Conan, vcpkg) or submodules (Git) to handle external libraries consistently. Avoid system-wide installs for project dependencies.

### Understand Header Inclusion Guards / `#pragma once` #Headers #CompileTime #Build
Prevent multiple inclusions of the same header file within a single translation unit using standard include guards or the (non-standard but widely supported) `#pragma once` directive.

### Minimize Header Dependencies (Pimpl Idiom, Forward Declarations) #CompileTime #Decoupling #Headers #BuildTimes
Reduce compile times and coupling by including only necessary headers. Use forward declarations in header files when a full definition isn't required. Consider the Pointer-to-Implementation (Pimpl) idiom.

### Separate Interface from Implementation (.h/.hpp vs .cpp) #Encapsulation #CompileTime #Organization
Declare classes and functions in header files (`.h`, `.hpp`) and define them in source files (`.cpp`) to improve modularity and reduce build dependencies.

## Security Considerations #Security #Vulnerabilities #Safety #BestPractices
Writing code that is resistant to common security threats.

### Validate and Sanitize Inputs #InputValidation #Security #Robustness
Never trust external input (from users, files, network). Validate format, range, and length. Sanitize data before using it.

### Beware of Buffer Overflows #BufferOverflow #MemorySafety #Security #Vulnerabilities
Use bounds-checked functions and containers (`std::vector::at`, `std::string`) instead of raw pointers and C-style arrays where possible. Be careful with functions like `strcpy`, `sprintf`.

### Avoid Using Deprecated or Unsafe Functions #Security #Safety #BestPractices
Avoid notoriously unsafe C functions like `gets`. Check documentation for safer alternatives.

### Handle Integer Overflow/Underflow #IntegerOverflow #Security #Bugs #Arithmetic
Be aware that integer arithmetic can wrap around or lead to unexpected results, potentially causing vulnerabilities. Use appropriate types or checks.

### Sanitize Outputs #OutputSanitization #Security #XSS
Ensure data output to other systems (HTML, SQL, shell commands) is properly escaped or encoded to prevent injection attacks.

### Be Cautious with External Libraries #Dependencies #Security #Vulnerabilities #SupplyChain
Keep dependencies updated. Be aware of the security implications of the libraries you use.
