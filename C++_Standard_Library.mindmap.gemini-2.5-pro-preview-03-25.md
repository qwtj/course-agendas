```markdown
# C++ Standard Library #CPP #STL #Core

The C++ Standard Library provides a collection of classes and functions written in the core language. It offers fundamental data structures, algorithms, input/output facilities, utilities, and more, essential for C++ programming.

## Language Support #CoreLanguage #Fundamentals #Types

Features that are tightly integrated with the C++ language itself.

### Fundamental Types Integration #Builtin #Types #Limits
Defines properties of fundamental types.
Includes headers like `<limits>`, `<cstddef>`, `<cstdint>`.

#### Numeric Limits #Ranges #Properties `<limits>`
Provides `std::numeric_limits` to query properties of arithmetic types (min, max, digits, etc.).

#### Standard Integer Types #FixedSize #Integers `<cstdint>`
Defines fixed-size integer types like `int32_t`, `uint64_t`.

#### Null Pointers #Nullptr #Types `<cstddef>`
Defines `std::nullptr_t` and `std::byte`.

### Dynamic Memory Management #Memory #Allocation #NewDelete
Operators `new` and `delete` and related library support.
Includes header `<new>`.

#### Allocation/Deallocation Functions #Operators #Heap
Global `operator new`, `operator delete`, array versions, placement new.

#### Error Handling #BadAlloc #Exceptions `<new>`
`std::bad_alloc` exception type.

### Type Identification #RTTI #TypeInfo `<typeinfo>`
Runtime Type Information (RTTI) support.

#### `typeid` Operator #RuntimeType #Query
Operator `typeid` for querying the dynamic type of an object.

#### `std::type_info` Class #TypeComparison #Metadata
Class representing type information obtained via `typeid`.

### Exception Handling #Errors #ControlFlow `<exception>`
Standard exception classes and handling utilities.

#### `std::exception` Base Class #BaseException #Hierarchy
The base class for all standard library exceptions.

#### Standard Exception Types #CommonErrors #LibraryErrors
Includes `std::logic_error`, `std::runtime_error`, `std::bad_cast`, `std::bad_alloc`, etc.

#### Exception Pointers #Propagation #Capture `<exception>`
`std::exception_ptr`, `std::current_exception`, `std::rethrow_exception`.

#### Termination Handling #Abort #Unexpected `<exception>`
`std::terminate`, `std::set_terminate`.

### Initializer Lists #Initialization #SyntaxSugar `<initializer_list>`
Support for brace-initialization using `std::initializer_list`.

### Three-Way Comparison #Spaceship #Ordering `<compare>`
Support for the three-way comparison operator (`<=>`).
Defines ordering categories like `std::strong_ordering`, `std::weak_ordering`, `std::partial_ordering`.

### Coroutines Support #Async #Generators `<coroutine>`
Basic types and functions for C++20 coroutines.
`std::coroutine_handle`, `std::suspend_always`, `std::suspend_never`.

## Utilities Library #Helpers #Tools #GeneralPurpose

General-purpose classes and functions used throughout the library and in user code.

### Utility Components #Pairs #Tuples `<utility>` `<tuple>`
Includes `std::pair`, `std::tuple`, `std::forward`, `std::move`, `std::swap`.

#### `std::pair` #KeyValuePair #Tuple2 `<utility>`
Holds a pair of objects.

#### `std::tuple` #Heterogeneous #Collection `<tuple>`
Holds a fixed-size collection of heterogeneous values.

#### Move Semantics & Forwarding #Rvalues #Performance `<utility>`
`std::move`, `std::forward`.

### Optional, Variant, Any #ValueSemantics #SumTypes `<optional>` `<variant>` `<any>`
Types for representing optional values, type-safe unions, and type-erased wrappers.

#### `std::optional` #Maybe #Nullable `<optional>`
Represents an optional value (either contains a value or is empty).

#### `std::variant` #TaggedUnion #TypeSafe `<variant>`
Represents a type-safe union.

#### `std::any` #TypeErasure #Wrapper `<any>`
Holds a value of any copy-constructible type.

### Function Objects #Functors #Callables `<functional>`
Classes and functions related to function objects and invocation.

#### `std::function` #TypeErasure #CallableWrapper
A polymorphic function wrapper.

#### Binders and Adapters #PartialApplication #Composition
`std::bind`, `std::mem_fn`, `std::ref`, `std::cref`.

#### Searchers #StringSearch #Algorithms `<functional>`
Objects for specifying string search algorithms (e.g., Boyer-Moore).

### Time Utilities #Clock #Duration `<chrono>`
Classes for representing time points, durations, and clocks.

#### Durations #TimeSpan #Units
`std::chrono::duration` template.

#### Time Points #Instant #Epoch
`std::chrono::time_point` template.

#### Clocks #TimeSource #Monotonic
`std::chrono::system_clock`, `std::chrono::steady_clock`, `std::chrono::high_resolution_clock`.

### Memory Management Utilities #SmartPointers #Allocators `<memory>`
Smart pointers, allocators, and low-level memory operations.

#### Smart Pointers #RAII #Ownership
`std::unique_ptr`, `std::shared_ptr`, `std::weak_ptr`.

#### Allocators #MemoryModel #Customization
`std::allocator`, `std::pmr::polymorphic_allocator`.

#### Uninitialized Memory Algorithms #LowLevel #Performance
`std::uninitialized_copy`, `std::uninitialized_fill`, etc.

### Type Traits #Metaprogramming #CompileTime `<type_traits>`
Compile-time tools for querying and transforming types.

#### Type Properties #Queries #Characteristics
`is_integral`, `is_class`, `is_base_of`, etc.

#### Type Transformations #Modifiers #Relationships
`add_const`, `remove_reference`, `common_type`, etc.

### Compile-Time Rational Arithmetic #Ratio #CompileTimeMath `<ratio>`
Represents compile-time rational numbers (`std::ratio`).

### Bit Manipulation #Bitwise #Operations `<bit>`
Low-level bit manipulation utilities (C++20).
`std::popcount`, `std::has_single_bit`, `std::endian`.

## Strings Library #Text #Sequences #Manipulation

Components for handling sequences of characters.

### `std::basic_string` #CharacterSequence #Mutable `<string>`
Template class for mutable strings.

#### `std::string` #CharString #UTF8 (common)
Specialization for `char`.

#### `std::wstring` #WCharString #WideChar
Specialization for `wchar_t`.

#### String Operations #Manipulation #Search #Comparison
Member functions for searching, modification, comparison, concatenation, etc.

### `std::basic_string_view` #NonOwning #Immutable `<string_view>`
Template class for non-owning, immutable views of character sequences (C++17).

#### `std::string_view` #CharView #Efficiency
Specialization for `char`.

#### `std::wstring_view` #WCharView #Efficiency
Specialization for `wchar_t`.

#### Benefits #Performance #Safety
Avoids copying, provides safe access to string data.

### Null-terminated Sequence Utilities #CString #Compatibility `<cstring>` `<cwchar>`
Functions for manipulating C-style null-terminated strings.
Wraps `<string.h>` and `<wchar.h>`.

### Character Traits #Abstraction #Customization `<string>`
`std::char_traits` template defining character properties and operations. Allows strings to work with custom character types.

### String Conversions #Parsing #Formatting `<charconv>` `<string>`
Functions for converting strings to/from numeric types.
`std::stoi`, `std::stof`, `std::to_string` (in `<string>`).
`std::from_chars`, `std::to_chars` (in `<charconv>`, C++17).

## Containers Library #DataStructures #Collections #Storage

Classes managing collections of objects.

### Sequence Containers #Ordered #Linear
Containers where elements are arranged sequentially.

#### `std::vector` #DynamicArray #Contiguous `<vector>`
Dynamically resizing array with contiguous storage.

#### `std::deque` #DoubleEndedQueue #NonContiguous `<deque>`
Double-ended queue, efficient insertion/deletion at both ends.

#### `std::list` #DoublyLinkedList #NonContiguous `<list>`
Doubly-linked list, efficient insertion/deletion anywhere.

#### `std::forward_list` #SinglyLinkedList #Efficiency `<forward_list>`
Singly-linked list (C++11).

#### `std::array` #FixedSize #Contiguous `<array>`
Fixed-size array with static storage duration (C++11).

### Associative Containers #Ordered #Keys #Sorted
Containers that store elements sorted by keys for fast retrieval. Typically implemented using balanced binary trees.

#### `std::set` #UniqueKeys #Sorted `<set>`
Collection of unique sorted keys.

#### `std::map` #KeyValuePairs #Sorted `<map>`
Collection of unique sorted key-value pairs.

#### `std::multiset` #DuplicateKeys #Sorted `<set>`
Collection of sorted keys, allowing duplicates.

#### `std::multimap` #DuplicateKeys #Sorted `<map>`
Collection of sorted key-value pairs, allowing duplicate keys.

### Unordered Associative Containers #Hashed #Keys #Unsorted
Containers that store elements using hash tables for fast average-case retrieval. Elements are not sorted. (C++11)

#### `std::unordered_set` #UniqueKeys #Hashed `<unordered_set>`
Collection of unique keys using hashing.

#### `std::unordered_map` #KeyValuePairs #Hashed `<unordered_map>`
Collection of unique key-value pairs using hashing.

#### `std::unordered_multiset` #DuplicateKeys #Hashed `<unordered_set>`
Collection of keys using hashing, allowing duplicates.

#### `std::unordered_multimap` #DuplicateKeys #Hashed `<unordered_map>`
Collection of key-value pairs using hashing, allowing duplicate keys.

### Container Adaptors #InterfaceWrapper #Specialized
Provide restricted interfaces to underlying sequence containers.

#### `std::stack` #LIFO #Adaptor `<stack>`
Last-In, First-Out stack adaptor (default: `std::deque`).

#### `std::queue` #FIFO #Adaptor `<queue>`
First-In, First-Out queue adaptor (default: `std::deque`).

#### `std::priority_queue` #Heap #OrderedAdaptor `<queue>`
Queue where the highest priority element is always first (default: `std::vector`, `std::less`).

### Spans #NonOwning #ContiguousView `<span>`
Non-owning view over a contiguous sequence of objects (C++20). Provides bounds-checked access.

## Iterators Library #Traversal #Abstraction #Pointers `<iterator>`

Objects used to traverse and access elements in ranges (like containers). They generalize pointers.

### Iterator Concepts and Categories #Traits #Capabilities
Classifying iterators based on their capabilities (Input, Output, Forward, Bidirectional, Random Access, Contiguous).

### Iterator Primitives #Helpers #Adapters
Base classes (`std::iterator`), traits (`std::iterator_traits`), helper functions (`std::advance`, `std::distance`, `std::next`, `std::prev`).

### Stream Iterators #IOIntegration #Adapters
Iterators for reading from (`std::istream_iterator`) or writing to (`std::ostream_iterator`) stream buffers.

### Iterator Adaptors #Reverse #Insertion #Movement
Adapters that modify the behavior of other iterators.
`std::reverse_iterator`, `std::move_iterator`, `std::back_insert_iterator`, `std::front_insert_iterator`, `std::insert_iterator`.

## Ranges Library #Composition #Pipelines #Algorithms `<ranges>`

A C++20 addition providing a new way to work with sequences of elements, emphasizing composability and lazy evaluation.

### Range Concepts #Views #Actions
Core concepts defining ranges, views, and actions.

### Views #LazyEvaluation #Adapters
Non-owning, lazy transformations or selections of range elements (e.g., `views::filter`, `views::transform`, `views::take`).

### Range Adaptors #PipelineBuilding #Composition
Objects that create views from ranges (e.g., `| views::filter(...)`).

### Range Factories #Generation #Creation
Functions generating ranges (e.g., `views::iota`, `views::single`).

### Range Algorithms #IteratorLess #Convenience
Versions of standard algorithms that operate directly on ranges instead of iterator pairs.

## Algorithms Library #Processing #Operations #Generic `<algorithm>` `<numeric>`

Generic algorithms that operate on ranges defined by iterators (or ranges in C++20).

### Non-modifying Sequence Operations #Query #Search
Algorithms that inspect elements without changing them.
`for_each`, `find`, `count`, `search`, `equal`, `mismatch`.

### Modifying Sequence Operations #Transformation #Mutation
Algorithms that potentially change the elements in a range.
`copy`, `move`, `transform`, `replace`, `fill`, `remove`, `unique`, `reverse`, `rotate`, `shuffle`.

### Partitioning Operations #Grouping #Reordering
Algorithms that reorder elements based on a predicate.
`partition`, `stable_partition`, `partition_copy`.

### Sorting Operations #Ordering #Comparison
Algorithms for sorting ranges.
`sort`, `stable_sort`, `partial_sort`, `is_sorted`.

### Binary Search Operations #SortedRange #Lookup
Algorithms operating on sorted ranges.
`lower_bound`, `upper_bound`, `equal_range`, `binary_search`.

### Set Operations (on sorted ranges) #Merge #Difference
Algorithms performing set operations on sorted ranges.
`merge`, `includes`, `set_union`, `set_intersection`, `set_difference`, `set_symmetric_difference`.

### Heap Operations #PriorityQueue #DataStructure
Algorithms for manipulating heaps.
`make_heap`, `push_heap`, `pop_heap`, `sort_heap`.

### Minimum/Maximum Operations #Comparison #Extrema
Finding min/max elements.
`min`, `max`, `minmax`, `min_element`, `max_element`, `minmax_element`.

### Comparison Operations #Lexicographical #Permutation
`lexicographical_compare`, `is_permutation`.

### Numeric Operations #Math #Accumulation `<numeric>`
Algorithms for numeric processing.
`iota`, `accumulate`, `inner_product`, `partial_sum`, `adjacent_difference`.

## Numerics Library #Math #Computation #Randomness

Components for mathematical computations and number handling.

### Complex Numbers #Imaginary #Arithmetic `<complex>`
`std::complex` template class for complex number arithmetic.

### Random Number Generation #Probability #Simulation `<random>`
Engines, distributions, and utilities for generating pseudo-random numbers (C++11).

#### Engines #Generators #State
`mt19937`, `ranlux48`, `default_random_engine`.

#### Distributions #Mapping #ProbabilityDensity
`uniform_int_distribution`, `normal_distribution`, `bernoulli_distribution`.

### Mathematical Functions #CommonMath #Trigonometry `<cmath>` `<numeric>`
Common mathematical functions (wraps `<math.h>`) and numeric algorithms like GCD, LCM (C++17).

#### Basic Operations #Power #Roots `<cmath>`
`pow`, `sqrt`, `cbrt`, `hypot`.

#### Exponential and Logarithmic #ExpLog #Growth `<cmath>`
`exp`, `log`, `log10`.

#### Trigonometric Functions #SinCosTan #Angles `<cmath>`
`sin`, `cos`, `tan`, `asin`, `acos`, `atan`, `atan2`.

#### Hyperbolic Functions #SinhCoshTanh #Hyperbolics `<cmath>`
`sinh`, `cosh`, `tanh`.

#### Error and Gamma Functions #SpecialFunctions #Statistics `<cmath>`
`erf`, `tgamma`.

#### C++17 Additions #SpecialMath #GCD_LCM `<cmath>` `<numeric>`
Special mathematical functions (`assoc_laguerre`, `beta`, `legendre`, etc.), `gcd`, `lcm`.

#### C++20 Mathematical Constants #Pi #Euler `<numbers>`
Standard mathematical constants like `std::numbers::pi`, `std::numbers::e`.

### Compile-Time Rational Arithmetic (`<ratio>`) #See Utilities #CompileTime

(Also listed under Utilities, relevant here too).

## Input/Output Library #Streams #Files #Formatting `<iostream>` `<fstream>` `<sstream>` `<iomanip>` `<ios>` `<istream>` `<ostream>`

Components for handling input from and output to external devices (console, files, strings). Based on the `iostreams` concept.

### Iostream Base Classes #CoreIO #State `<ios>` `<streambuf>`
Base classes defining stream properties, state flags, and buffering.
`std::ios_base`, `std::basic_ios`, `std::basic_streambuf`.

### Standard Stream Objects #ConsoleIO #Global `<iostream>`
Globally defined stream objects for console I/O: `std::cin`, `std::cout`, `std::cerr`, `std::clog` (and wide versions).

### Stream Buffers #Buffering #LowLevelIO `<streambuf>`
Low-level interface for stream buffering and transport.

### Input Streams #Reading #Extraction `<istream>`
`std::basic_istream` template and formatted/unformatted input functions (operator `>>`, `get`, `getline`, `read`).

### Output Streams #Writing #Insertion `<ostream>`
`std::basic_ostream` template and formatted/unformatted output functions (operator `<<`, `put`, `write`).

### File Streams #Persistence #Files `<fstream>`
Streams for reading from and writing to files.
`std::basic_ifstream`, `std::basic_ofstream`, `std::basic_fstream`.

### String Streams #InMemoryIO #Parsing `<sstream>`
Streams for reading from and writing to in-memory strings.
`std::basic_istringstream`, `std::basic_ostringstream`, `std::basic_stringstream`.

### IO Manipulators #Formatting #StateControl `<iomanip>` `<ios>`
Functions that modify the state of streams (e.g., precision, width, base).
`std::setw`, `std::setprecision`, `std::fixed`, `std::hex`, `std::endl`, `std::flush`.

### Formatting Utilities (C++20) #PrintfLike #TypeSafe `<format>`
Modern, type-safe formatting library similar to Python's f-strings or C#'s string interpolation.
`std::format`, `std::format_to`.

## Localization Library #Internationalization #Culture #Formatting `<locale>` `<codecvt>`

Components for adapting programs to cultural conventions (number formatting, date/time, collation, messages).

### Locales #CultureRepresentation #Facets `<locale>`
`std::locale` objects encapsulate cultural conventions via facets.

### Facets #SpecificConvention #Extensibility
Classes representing specific localization aspects (e.g., numeric formatting, collation, time formatting).
`std::num_get`, `std::num_put`, `std::time_get`, `std::time_put`, `std::collate`, `std::ctype`.

### Character Classification and Conversion #Case #Analysis `<locale>`
`std::ctype` facet for character classification and case conversion.

### String Collation #Sorting #Comparison `<locale>`
`std::collate` facet for culture-specific string comparison.

### Code Conversion Utilities #Encoding #Unicode `<codecvt>`
Facets for converting between different character encodings (deprecated in C++17, but still present).

## Regular Expressions Library #PatternMatching #TextSearch `<regex>`

Components for matching character sequences against patterns (C++11).

### `std::basic_regex` #Pattern #Compilation
Class representing a compiled regular expression pattern.

### Match Results #CaptureGroups #Submatches
`std::match_results` (usually `std::smatch`, `std::cmatch`) storing the results of a match.

### Regex Algorithms #Matching #Searching #Replacing
Functions performing regex operations.
`std::regex_match`, `std::regex_search`, `std::regex_replace`.

### Regex Iterators #FindingAll #Traversal
Iterators for finding all occurrences of a pattern (`std::regex_iterator`, `std::regex_token_iterator`).

### Regex Exceptions #Errors #Parsing
`std::regex_error` exception class.

### Syntax Options #Grammars #ECMAScript #POSIX
Flags to specify the regular expression grammar (e.g., ECMAScript, basic POSIX, extended POSIX).

## Atomics Library #Concurrency #LockFree #Synchronization `<atomic>`

Components for atomic operations suitable for multi-threaded programming without locks (C++11).

### `std::atomic` Template #AtomicTypes #Wrapper
Template class providing atomic versions of fundamental types (`atomic<int>`, `atomic<bool>`, `atomic<T*>`).

### `std::atomic_flag` #SimpleLock #BooleanAtomic
A simple atomic boolean flag, guaranteed lock-free.

### Atomic Operations #LoadStore #Exchange #CAS
Functions for atomic load, store, exchange, compare-and-swap.

### Memory Ordering #Consistency #Fences
Specifying memory synchronization order (`memory_order_relaxed`, `memory_order_acquire`, `memory_order_release`, `memory_order_seq_cst`).
`std::atomic_thread_fence`.

## Thread Support Library #Concurrency #Parallelism #Synchronization `<thread>` `<mutex>` `<future>` `<condition_variable>`

Components for creating and managing threads, protecting shared data, and coordinating concurrent operations (C++11).

### Threads #ExecutionAgents #Management `<thread>`
`std::thread` class for launching and managing threads.
`std::this_thread` namespace for accessing current thread properties (`get_id`, `sleep_for`, `yield`).

### Mutexes #MutualExclusion #Locking `<mutex>` `<shared_mutex>`
Classes for protecting shared data via locking.
`std::mutex`, `std::recursive_mutex`, `std::timed_mutex`, `std::shared_mutex` (Reader-Writer Lock, C++17).

### Locks #RAII #ScopedLocking `<mutex>`
RAII wrappers for managing mutex ownership.
`std::lock_guard`, `std::unique_lock`, `std::scoped_lock` (C++17), `std::shared_lock` (C++14).

### Condition Variables #Synchronization #Waiting `<condition_variable>`
Mechanisms for threads to wait for conditions to become true.
`std::condition_variable`, `std::condition_variable_any`.

### Futures and Promises #AsyncResults #Communication `<future>`
Mechanisms for retrieving results from asynchronous operations.
`std::future`, `std::shared_future`, `std::promise`, `std::packaged_task`.

### Asynchronous Function Invocation #HighLevelAsync #TaskBased `<future>`
`std::async` function template for launching asynchronous tasks.

## Filesystem Library #Paths #Directories #IO `<filesystem>`

Utilities for manipulating files and directories (C++17). Standardizes features previously available in libraries like Boost.Filesystem.

### Paths #Representation #Manipulation
`std::filesystem::path` class for representing and manipulating filesystem paths in a portable way.

### Directory Operations #Iteration #Management
Functions for creating, removing, and iterating over directories (`std::filesystem::create_directory`, `std::filesystem::remove`, `std::filesystem::directory_iterator`).

### File Operations #Query #Copy #Delete
Functions for querying file status, copying, renaming, deleting files (`std::filesystem::status`, `std::filesystem::copy`, `std::filesystem::rename`, `std::filesystem::remove`).

### Filesystem Errors #Exceptions #Reporting
`std::filesystem::filesystem_error` exception class.
```
