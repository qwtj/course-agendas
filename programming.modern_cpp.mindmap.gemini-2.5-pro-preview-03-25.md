# Modern C++ #Overview #Evolution #C++11 #C++14 #C++17 #C++20 #C++23
Introduction to the evolution of C++ since C++11, focusing on safer, simpler, and more expressive code.

## Core Language Enhancements #Syntax #Features #Usability
Improvements made directly to the C++ language syntax and core features.

### Automatic Type Deduction #TypeInference #Keywords
#### `auto` Keyword #Variables #Functions
Simplifies variable declarations and function return types.
#### `decltype` Keyword #TypeQuery #Expressions
Determines the type of an expression.
#### `decltype(auto)` #TypeDeduction #Forwarding
Combines `auto` and `decltype` for specific scenarios, especially in generic code.

### Initialization #UniformInitialization #Syntax
#### Uniform Initialization Syntax (`{}`) #Braces #Consistency
Provides a more consistent initialization syntax and prevents narrowing conversions.
#### `std::initializer_list` #Collections #Initialization
Enables initialization of containers and custom types with lists of values.

### Range-Based For Loops #Iteration #Collections #Simplicity
Simplified syntax for iterating over containers, arrays, and initializer lists.

### Lambda Expressions #Functional #Closures #AnonymousFunctions
Allows defining anonymous functions inline, capturing variables from the surrounding scope.
#### Capture Clauses (`[]`) #Scope #Variables #ByValue #ByReference
Controls how external variables are accessed (by value, by reference).
#### Generic Lambdas (C++14) #Templates #Auto
Lambdas with `auto` parameters, making them template-like.
#### `constexpr` Lambdas (C++17) #CompileTime #Metaprogramming
Lambdas that can be evaluated at compile time.

### `nullptr` Keyword #Pointers #Safety #Types
Introduces a type-safe null pointer constant, replacing `NULL`.

### `constexpr` Enhancements #CompileTime #Performance #Metaprogramming
Allows more computations to be performed at compile-time.
#### `constexpr` Variables #Constants #ReadOnly
Compile-time constants.
#### `constexpr` Functions #CompileTimeComputation #Optimization
Functions executable at compile-time (with increasing capabilities in C++14, C++17, C++20).
#### `consteval` (C++20) #ImmediateFunctions #CompileTimeOnly
Functions that *must* be evaluated at compile-time.
#### `constinit` (C++20) #StaticInitialization #ZeroInitialization
Ensures static variables are initialized at compile time, preventing certain order-of-initialization issues.

### Strongly-Typed Enums (`enum class`) #Types #Safety #Scoping
Provides scoped and strongly-typed enumerations, preventing accidental integer conversions and name clashes.

### Attributes #Metadata #CompilerHints #Syntax
Standardized syntax for compiler/tool hints (e.g., `[[nodiscard]]`, `[[deprecated]]`, `[[fallthrough]]`).
#### `[[nodiscard]]` (C++17) #Warnings #ReturnValues
Encourages checking the return value of a function.
#### `[[maybe_unused]]` (C++17) #Warnings #Variables #Parameters
Suppresses unused variable/parameter warnings.
#### `[[deprecated]]` (C++14) #Warnings #API #Evolution
Marks entities as deprecated.

### Structured Bindings (C++17) #Decomposition #Tuples #Structs #Arrays
Allows decomposing tuples, structs, and arrays into individual variables.

### `if constexpr` (C++17) #CompileTime #Branching #Templates
Compile-time conditional branching, primarily used within templates.

### Inline Variables (C++17) #ODR #Headers #StaticInitialization
Allows defining static member variables and global variables in header files without violating the One Definition Rule (ODR).

### Designated Initializers (C++20) #Structs #Aggregates #Readability
Allows initializing aggregate members by name (e.g., `.member = value`).

### User-Defined Literals #Syntax #Types #Readability
Allows creating custom suffixes for literal values (e.g., `10_km`).

## Resource Management and Class Design #RAII #OOP #Memory #Safety
Features improving object lifecycle management, class definition, and memory safety.

### RAII (Resource Acquisition Is Initialization) #Idioms #Exceptions #Safety
The fundamental principle of tying resource lifetime to object lifetime using constructors and destructors.

### Smart Pointers #MemoryManagement #Ownership #RAII
Pointers that automatically manage the lifetime of the object they point to.
#### `std::unique_ptr` #ExclusiveOwnership #MoveSemantics #NoOverhead
Represents exclusive ownership of a resource.
#### `std::shared_ptr` #SharedOwnership #ReferenceCounting #ThreadSafety
Represents shared ownership using reference counting.
#### `std::weak_ptr` #Cycles #Observing #NonOwning
A non-owning pointer used to break cyclical dependencies with `std::shared_ptr`.
#### `std::make_unique` (C++14) #Factory #ExceptionSafety #Simplicity
Preferred way to create `std::unique_ptr`.
#### `std::make_shared` #Factory #Performance #ExceptionSafety
Preferred way to create `std::shared_ptr` (often more efficient).

### Move Semantics #Performance #RvalueReferences #Optimization
Allows transferring resources efficiently instead of copying them.
#### Rvalue References (`&&`) #Temporaries #Move #Syntax
References that bind to temporary objects (rvalues).
#### Move Constructor #ResourceTransfer #ClassDesign
Transfers ownership of resources from a temporary object.
#### Move Assignment Operator #ResourceTransfer #ClassDesign
Transfers ownership of resources from a temporary object.
#### `std::move` #Casting #Rvalue #ExplicitMove
Casts an lvalue to an rvalue reference, enabling move operations.
#### `std::forward` #PerfectForwarding #Templates #GenericCode
Preserves the value category (lvalue/rvalue) of function arguments, crucial in template metaprogramming.

### Rule of Zero/Three/Five #ClassDesign #SpecialMembers #BestPractices
Guidelines for defining special member functions (destructor, copy/move constructor, copy/move assignment).
#### Rule of Zero #DefaultBehavior #NoManualManagement
If a class doesn't manage resources directly, don't declare any special members.
#### Rule of Three (Pre-C++11) #CopySemantics #ResourceManagement
If you need a destructor, copy constructor, or copy assignment, you likely need all three.
#### Rule of Five (C++11 onwards) #MoveSemantics #ResourceManagement
Includes move constructor and move assignment operator.

### Special Member Function Control #Keywords #ClassDesign
#### `default` Keyword #CompilerGenerated #ExplicitDefault
Explicitly requests the compiler-generated version of a special member function.
#### `delete` Keyword #PreventCopying #PreventHeapAllocation #Restrictions
Disables the generation or use of specific member functions (or other functions).

### Class Design Enhancements #Keywords #OOP
#### `override` Keyword #VirtualFunctions #Safety #Clarity
Ensures a virtual function overrides a base class method, preventing subtle errors.
#### `final` Keyword #VirtualFunctions #Inheritance #Optimization
Prevents further overriding of a virtual function or derivation from a class.
#### In-Class Member Initializers #Defaults #Constructors #Simplicity
Allows specifying default values for non-static members directly in the class definition.
#### Inheriting Constructors (C++11) #UsingDeclaration #Boilerplate
Allows derived classes to inherit constructors from their base class using `using Base::Base;`.

## Standard Library Additions #STL #Utilities #Containers #Algorithms
New components and improvements within the C++ Standard Library.

### New Containers #DataStructures #STL
#### `std::array` #FixedSize #StackAllocation #Performance
A fixed-size array container offering STL interface compatibility.
#### `std::forward_list` #SinglyLinkedList #Performance #Memory
A singly-linked list optimized for insertion/erasure at the beginning.
#### Unordered Containers #Hashing #Performance #AverageCase
Hash-table based containers: `std::unordered_map`, `std::unordered_set`, `std::unordered_multimap`, `std::unordered_multiset`.

### Utility Types #VocabularyTypes #Optionality #Alternatives
#### `std::optional` (C++17) #OptionalValues #Nullability #ErrorHandling
Represents an optional value (either contains a value or is empty).
#### `std::variant` (C++17) #SumTypes #TypeSafeUnion #Alternatives
A type-safe union that holds a value from a set of specified alternative types.
#### `std::any` (C++17) #TypeErasure #DynamicTyping #Flexibility
A type-safe container for single values of any type.
#### `std::byte` (C++17) #RawMemory #DataRepresentation #Types
Represents a byte of data, distinct from character types.
#### `std::string_view` (C++17) #Strings #Performance #NonOwning
A non-owning view (reference) to a contiguous sequence of characters (like a string or part of one). Avoids unnecessary copying.
#### `std::span` (C++20) #Arrays #Views #NonOwning #Safety
A non-owning view over a contiguous sequence of objects (like arrays, vectors, or parts thereof).

### Tuple Library #DataStructures #Heterogeneous #FixedSize
#### `std::tuple` #HeterogeneousContainer #CompileTimeSize
Fixed-size heterogeneous collection of values.
#### `std::get` #TupleAccess #CompileTimeIndex #Type
Accesses tuple elements by index or type.
#### `std::tie` #TupleUnpacking #References #Assignment
Creates a tuple of references, often used to unpack return values.
#### `std::make_tuple` #TupleCreation #TypeDeduction
Helper function to create tuples.

### Algorithm Enhancements #STL #Iteration #Functional
#### New Algorithms #CopyIf #Move #Iota #Minmax
Additions like `std::copy_if`, `std::move_backward`, `std::iota`, `std::minmax_element`, etc.
#### Range-Based Algorithm Versions (C++20) #Ranges #Pipelines #Composition
Algorithms operating directly on ranges (see Ranges section).
#### Parallel Algorithms (C++17) #Concurrency #Performance #ExecutionPolicies
Overloads of many standard algorithms accepting execution policies (`std::execution::seq`, `std::execution::par`, `std::execution::par_unseq`).

### Filesystem Library (C++17) #IO #Paths #Directories #Files
Standardized way to interact with the filesystem.
#### `std::filesystem::path` #PathManipulation #CrossPlatform
Represents and manipulates filesystem paths.
#### Directory Operations #Iteration #Creation #Deletion
Functions for working with directories (listing, creating, removing).
#### File Operations #Status #Copying #Deletion
Functions for querying and manipulating files.

### Type Traits Library #Metaprogramming #CompileTime #TypeQuery
Tools for querying and transforming type information at compile-time (`<type_traits>`).

### Random Number Generation #Utilities #Simulation #`<random>`
Improved facilities for generating random numbers with various distributions.

### Chrono Library #Time #Duration #Clocks #Utilities
Library for handling time points, durations, and clocks (`<chrono>`).

### Formatting Library (C++20) #Strings #IO #PythonStyle #TypeSafe
Modern, extensible, and type-safe text formatting library (`<format>`), similar to Python's f-strings or .format().

## Concurrency and Parallelism #Multithreading #Async #Synchronization #Performance
Features for writing multi-threaded and parallel applications.

### Threading Library (`<thread>`) #Execution #Concurrency
#### `std::thread` #ThreadCreation #Management
Class for creating and managing threads of execution.
#### `std::this_thread` Namespace #Utilities #Yield #Sleep
Functions for interacting with the current thread (e.g., `sleep_for`, `yield`).

### Mutexes and Locking (`<mutex>`) #Synchronization #CriticalSections #DataRaces
Primitives for protecting shared data.
#### `std::mutex` #BasicLocking #MutualExclusion
Basic mutual exclusion lock.
#### `std::recursive_mutex` #ReentrantLocking
Allows the same thread to lock the mutex multiple times.
#### `std::timed_mutex` #Timeouts #Locking
Mutex with timed locking attempts (`try_lock_for`, `try_lock_until`).
#### `std::shared_mutex` (C++17) #ReadersWriterLock #Performance
Allows multiple readers or one writer.
#### Lock Guards (`std::lock_guard`, `std::scoped_lock`, `std::unique_lock`) #RAII #ExceptionSafety
RAII wrappers for simplified and safer mutex management. `std::scoped_lock` (C++17) can lock multiple mutexes deadlock-free.

### Condition Variables (`<condition_variable>`) #Synchronization #Waiting #Notification
Allow threads to wait for specific conditions to become true.
#### `std::condition_variable` #Waiting #Signaling
Used with `std::unique_lock<std::mutex>`.
#### `std::condition_variable_any` #Flexibility #AnyLock
Works with any lockable type.

### Futures and Promises (`<future>`) #AsynchronousOperations #Results #Communication
Mechanisms for retrieving results from asynchronous operations.
#### `std::promise` #Provider #SetValue #SetException
Used by the producer/worker thread to set the result or exception.
#### `std::future` #Consumer #GetValue #Wait
Used by the consumer thread to retrieve the result (waits if necessary).
#### `std::shared_future` #MultipleConsumers #SharedResult
Allows multiple threads to retrieve the result from the same future.
#### `std::async` #TaskBased #HighLevel #Threadpool (potentially)
A high-level facility to run functions asynchronously (potentially on a separate thread or deferred).
#### `std::packaged_task` #FunctionWrapper #LazyExecution
Wraps a callable object to be invoked later, storing the result in a future.

### Atomics (`<atomic>`) #LockFree #LowLevel #Synchronization #MemoryOrder
Types and operations for atomic access, enabling lock-free programming.
#### `std::atomic<T>` #AtomicTypes #Specializations
Template for atomic types (integers, pointers, `std::atomic_flag`, custom types if trivially copyable).
#### Atomic Operations #Load #Store #Exchange #CompareExchange #FetchAdd
Lock-free operations on atomic types.
#### Memory Orderings #Relaxed #AcquireRelease #SequentiallyConsistent #Compiler #Hardware
Controls memory visibility and ordering constraints (`std::memory_order`).

### Parallel Algorithms (C++17) #ExecutionPolicies #Performance #STL
Standard library algorithms with execution policy parameters for parallel execution.

## Functional Programming Features #Lambdas #Algorithms #Functional #Immutability
Adoption of concepts and features inspired by functional programming paradigms.

### Lambda Expressions #Closures #HigherOrderFunctions #Functional
(Covered in Core Language Enhancements, but central to functional style)

### `std::function` #TypeErasure #CallableObjects #Polymorphism
A polymorphic function wrapper that can store any callable object (function pointer, lambda, functor).

### Standard Library Algorithms #Iteration #Transformation #Functional
Many algorithms in `<algorithm>` and `<numeric>` encourage a functional approach (e.g., `std::transform`, `std::accumulate`, `std::for_each`).

### `constexpr` #CompileTime #PureFunctions #Immutability
`constexpr` functions promote writing pure functions executable at compile time.

### Immutability #Const #Constexpr #Safety
Modern C++ encourages using `const` and `constexpr` to create immutable data where possible, enhancing predictability and thread safety.

## Metaprogramming Improvements #Templates #CompileTime #CodeGeneration #Concepts
Enhancements for writing code that operates on code at compile-time.

### Variadic Templates #Templates #ArbitraryArguments #GenericCode
Templates that can accept an arbitrary number of template arguments.
#### Parameter Packs #Syntax #Ellipsis
Mechanism for handling variable numbers of arguments.
#### Fold Expressions (C++17) #VariadicTemplates #Conciseness #Operations
Simplified syntax for applying an operator over a parameter pack (e.g., summing all arguments).

### Template Aliases (`using`) #Typedefs #Templates #Readability
Provides a more readable and capable syntax for defining template synonyms compared to `typedef`.

### `constexpr` #CompileTimeComputation #Metaprogramming
(Covered in Core Language Enhancements, crucial for compile-time evaluation)

### Type Traits Library (`<type_traits>`) #CompileTime #TypeQuery #TypeManipulation
Extensive library for inspecting and transforming types at compile-time.

### `if constexpr` (C++17) #CompileTimeBranching #Templates #SFINAEAlternative
(Covered in Core Language Enhancements, simplifies template specialization choices)

### Concepts (C++20) #Templates #Constraints #TypeChecking #Readability
Named constraints on template parameters, improving error messages and enabling cleaner generic code.
#### Defining Concepts #RequiresClause #Syntax
Specifying requirements for template arguments.
#### Using Concepts #TemplateParameters #Auto #Functions
Applying constraints to templates and `auto`.
#### Standard Library Concepts (`<concepts>`) #Predefined #CommonConstraints
A set of predefined concepts for common requirements (e.g., `std::integral`, `std::movable`, `std::regular`).

## C++20 and Beyond Major Features #C++20 #C++23 #Future #Language
Significant additions primarily introduced in C++20 and subsequent standards.

### Modules (C++20) #BuildTimes #Encapsulation #Headers #Organization
An alternative to header files for organizing code, improving build times and encapsulation.
#### Module Interface Units #Export #Contracts
Define the public interface of a module.
#### Module Implementation Units #Internal #Details
Contain the implementation details.
#### Importing Modules #Import #Dependencies
Using code defined in other modules.

### Coroutines (C++20) #Asynchronous #Generators #LazyEvaluation #Concurrency
Functions that can suspend and resume execution, simplifying asynchronous code and enabling generators.
#### `co_await` #Suspend #AsynchronousOperations
Suspends execution until an asynchronous operation completes.
#### `co_yield` #Generators #LazySequences
Suspends execution and yields a value (for implementing generator functions).
#### `co_return` #CoroutineResult #Completion
Completes coroutine execution and returns a value.
#### Coroutine Types #Task #Generator #Customization
Requires library support (or custom types) to define the behavior of specific coroutines.

### Ranges (C++20) #Algorithms #Pipelines #Composition #LazyEvaluation
A new way to work with sequences of elements, enabling composition and lazy evaluation.
#### Range Concept #Sequences #BeginEnd
Represents anything iterable (containers, views).
#### Views #LazyEvaluation #Adaptors #Composition
Non-owning, lazy representations of ranges (e.g., `filter`, `transform`, `take`).
#### Range-Based Algorithms #STL #Ranges #Syntax
Versions of standard algorithms that operate directly on ranges.
#### Pipelining (`|`) #Composition #Readability
Chaining range adaptors and algorithms using the pipe operator.

### Formatting Library (C++20) #Strings #IO #PythonStyle #TypeSafe
(Covered in Standard Library Additions)

### Three-Way Comparison (`<=>`, Spaceship Operator) (C++20) #Comparison #Operators #Boilerplate
Simplifies defining comparison operators (`<`, `<=`, `>`, `>=`, `==`, `!=`) by generating them from a single `operator<=>`.
#### `std::strong_ordering`, `std::weak_ordering`, `std::partial_ordering` #ComparisonCategories #Results
Return types for `operator<=>` indicating the relationship between objects.

### Feature Test Macros #Preprocessor #Compatibility #Standards
Standardized macros to check for the presence of specific C++ language and library features.

### Upcoming Features (C++23 and beyond) #Future #Proposals
#### `std::expected` (C++23) #ErrorHandling #Alternatives #Variant
Represents either an expected value or an error.
#### `std::mdspan` (C++23) #Multidimensional #Views #Arrays #Performance
Multidimensional array view.
#### Further Library Extensions #Networking #Executors #Reflection
Ongoing work in various areas.

## Error Handling Techniques #Exceptions #Optional #Expected #Robustness
Strategies for reporting and handling errors in Modern C++.

### Exceptions #Standard #ErrorPropagation #RAII
The traditional C++ mechanism for handling runtime errors.
#### `try`/`catch` Blocks #Handling #ControlFlow
Syntax for catching and handling exceptions.
#### `throw` Expression #Signaling #Errors
Used to signal an exception.
#### `noexcept` Specifier #Guarantees #Optimization #Contracts
Indicates whether a function may throw exceptions, enabling compiler optimizations.
#### Exception Safety Guarantees #Basic #Strong #Nothrow
Levels of guarantees functions provide in the presence of exceptions.

### Using `std::optional` #OptionalValues #SignalingAbsence
(Covered in Standard Library Additions) Represents the potential absence of a value as an alternative to nullable pointers or special return codes.

### Using `std::variant` / `std::any` #Alternatives #ErrorTypes
Can be used to return either a result or an error type within a single object.

### `std::error_code` and `std::error_condition` #SystemErrors #PortableErrors
Low-level error reporting mechanism, often used for OS-level errors.

### `std::expected` (C++23) #ResultOrError #ExplicitHandling
(Covered in C++20 and Beyond) A dedicated type for returning either a value or an error.

### Assertions #Debugging #Contracts #Preconditions #Postconditions
Using `assert` or static assertions (`static_assert`) to validate assumptions during development and compile-time.

## Build Systems and Ecosystem #Tooling #CMake #Dependencies #Compilers
Tools and practices surrounding the development, building, and management of C++ projects.

### Compilers #GCC #Clang #MSVC #StandardsCompliance
Major C++ compilers and their support for modern standards.

### Build System Generators #CMake #Meson #Automation #CrossPlatform
Tools like CMake or Meson generate native build files (Makefiles, Visual Studio projects, etc.).
#### CMake #Popular #CrossPlatform #Scripting
Widely used build system generator.
#### `CMakeLists.txt` #Configuration #Targets #Dependencies

### Package Managers #Dependencies #Libraries #vcpkg #Conan
Tools for managing external library dependencies.
#### Conan #Decentralized #BinaryManagement #CrossPlatform
Popular C/C++ package manager.
#### vcpkg #Microsoft #SourceBased #Integration
Microsoft-backed package manager, often integrates well with Visual Studio and CMake.

### Testing Frameworks #UnitTest #IntegrationTest #Catch2 #GoogleTest
Libraries for writing and running automated tests (e.g., GoogleTest, Catch2).

### Static Analysis Tools #CodeQuality #Bugs #ClangTidy #Cppcheck
Tools that analyze source code without executing it to find potential bugs, style issues, and vulnerabilities.

### Debugging Tools #GDB #LLDB #VisualStudioDebugger #Troubleshooting
Debuggers for inspecting program state and diagnosing runtime issues.

## Modern C++ Idioms and Best Practices #Guidelines #Safety #Performance #Readability
Common patterns, guidelines, and conventions for writing effective Modern C++.

### Prefer Standard Library over Manual Implementation #STL #Robustness #Maintainability
Use standard containers, algorithms, and utilities whenever possible.

### Embrace RAII #ResourceManagement #ExceptionSafety #Destructors #SmartPointers
The cornerstone of resource management in C++.

### Use Smart Pointers for Ownership #MemoryManagement #RAII #unique_ptr #shared_ptr
Avoid raw `new` and `delete` where possible.

### Follow the Rule of Zero/Five #ClassDesign #SpecialMembers #CompilerDefaults
Simplify class design by relying on compiler defaults or correctly defining all five special members if managing resources.

### Prefer `const` and `constexpr` #Immutability #Correctness #Optimization #CompileTime
Use `const` wherever possible; use `constexpr` for compile-time evaluation.

### Use `auto` Judiciously #Readability #TypeInference #Boilerplate
Use `auto` to simplify code but ensure type clarity is maintained.

### Prefer Range-Based For Loops #Iteration #Simplicity #Safety
Use range-based for loops for cleaner iteration.

### Utilize `nullptr` #Pointers #Safety #Types
Use `nullptr` instead of `NULL` or `0`.

### Use Strongly-Typed Enums (`enum class`) #Types #Safety #Scoping
Avoid unscoped enums where possible.

### Leverage Move Semantics #Performance #RvalueReferences #ResourceTransfer
Understand and utilize move semantics for efficiency.

### Use `noexcept` Appropriately #Optimization #Contracts #ExceptionGuarantees
Mark functions that cannot throw.

### Write Understandable Generic Code #Templates #Concepts #Constraints #SFINAE
Use concepts (C++20) or techniques like SFINAE (pre-C++20) carefully to constrain templates.

### Prefer Non-Member Non-Friend Functions #Encapsulation #Design
Improves encapsulation by minimizing the scope of functions that need access to class internals.

### Consider Value Semantics #Copying #Immutability #Simplicity
Value types can often lead to simpler reasoning compared to reference semantics.

### Understand Performance Implications #Optimization #Measurement #Profiling
Be aware of the costs of abstractions, but prioritize correctness and clarity first, then optimize based on measurement.
