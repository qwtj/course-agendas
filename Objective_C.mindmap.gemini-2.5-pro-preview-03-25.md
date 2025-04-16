# Objective C #ProgrammingLanguage #Apple #iOS #macOS
Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. It was the primary language for macOS and iOS development before Swift. [14, 26] It is a superset of C, inheriting C's syntax, primitive types, and flow control. [1, 16]

## Introduction and History #Overview #Origins
Brief overview of Objective-C's place in programming history and its relation to C and Smalltalk. [14, 29]
### Origins #Smalltalk #C #BradCox #TomLove
Developed in the early 1980s by Brad Cox and Tom Love, combining C's procedural capabilities with Smalltalk's object-oriented features. [14, 29]
### NeXTSTEP Era #NeXT #SteveJobs
Selected by NeXT for the NeXTSTEP operating system, which heavily influenced its adoption. [14, 29]
### Apple's Adoption #macOS #iOS #Cocoa #CocoaTouch
Became the standard language for Apple development after the acquisition of NeXT, used with Cocoa and Cocoa Touch frameworks. [1, 14, 26]
### Rise of Swift #Transition #Legacy
Introduction of Swift in 2014 as Apple's preferred language, though Objective-C remains relevant for legacy systems and interoperability. [14, 27]

## Core Language Fundamentals #Basics #Syntax #CFeatures
Objective-C builds directly upon C, retaining its core syntax and features. [1, 16]
### Superset of C #Compatibility #CLibrary
Objective-C includes ANSI C, allowing use of C primitive types (int, float, char), structs, functions, pointers, and standard C libraries (stdlib.h, stdio.h). [1, 16, 19]
### Header and Implementation Files #CodeOrganization #Interface #Implementation
Code is typically split into interface files (`.h`) defining the class structure and public API, and implementation files (`.m`, `.mm` for Objective-C++) containing the method code. [14, 23, 24]
### Basic Syntax Elements #Keywords #Operators #ControlFlow
Includes C operators, control flow (if/else, for, while), and adds Objective-C specific keywords (e.g., `@interface`, `@implementation`, `@property`, `self`, `super`). [1, 16]
### Primitive Data Types #Integers #Floats #Booleans
Utilizes C's primitive types plus specific additions like `BOOL`, `NSInteger`, `CGFloat`. [1, 16]
### Objective-C Specific Types #id #SEL #Class
Introduction of generic object type `id`, selector type `SEL` for method names, and `Class` object type. [1, 7]
### Literals #NSString #NSNumber #NSArray #NSDictionary
Syntax for creating immutable instances of common Foundation objects like strings (`@"..."`), numbers (`@123`, `@3.14`), arrays (`@[...]`), and dictionaries (`@{...}`). [1]
### Comments #Documentation
Supports C-style single-line (`//`) and multi-line (`/* ... */`) comments. [24, 28]

## Object-Oriented Programming (OOP) Concepts #OOP #Classes #Objects
How Objective-C implements core OOP principles. [1, 16, 23]
### Classes and Objects #Blueprints #Instances
Classes define blueprints for objects. Objects are runtime instances of classes, encapsulating data (instance variables) and behavior (methods). [1, 16, 23]
#### @interface #Declaration #HeaderFile
Declares the class's public interface, including superclass, protocols, instance variables (less common now), properties, and method signatures. [1, 16, 24]
#### @implementation #Definition #SourceFile
Provides the actual code (implementation) for the methods declared in the interface. [1, 16, 24]
#### Instantiation #alloc #init
Objects are typically created using a two-step process: `alloc` (allocate memory) and `init` (initialize the object). `new` combines these steps. [16, 24]
### Methods #Behavior #Functions
Functions associated with a class. [1, 16]
#### Instance Methods #ObjectMethods
Operate on a specific instance of a class (object). Prefixed with `-`. [16]
#### Class Methods #FactoryMethods #UtilityMethods
Operate on the class itself, not an instance. Often used for factory methods or utility functions. Prefixed with `+`. [16]
### Properties #Data #Accessors #Attributes
Syntactic sugar for declaring instance variables and their accessor methods (getter/setter). [16, 23]
#### @property Declaration #Attributes
Declared in the interface using `@property` with attributes (e.g., `nonatomic`, `atomic`, `strong`, `weak`, `copy`, `readonly`, `readwrite`). [1]
#### Accessor Methods (Getter/Setter) #DotSyntax
Compiler can automatically synthesize getter and setter methods. Properties can be accessed using dot syntax (e.g., `object.property`). [1, 14]
### Encapsulation #DataHiding
Grouping data (properties/ivars) and methods within a class, often hiding implementation details. [1, 16]
### Inheritance #Superclass #Subclass
A class can inherit properties and methods from a single superclass (`NSObject` is the typical root class). Uses `:` in the `@interface` declaration. [4, 8, 16]
### Polymorphism #DynamicTyping #DynamicBinding
Objects of different classes can respond to the same message (method call). Supported via dynamic typing (`id`) and dynamic binding. [10, 16, 29]

## Messaging #DynamicDispatch #MethodInvocation
The mechanism Objective-C uses to call methods, based on Smalltalk. [7, 14, 16]
### Message Syntax #SquareBrackets
Sending a message (calling a method) uses square brackets: `[receiver message]` or `[receiver messageWithArg:arg1]` [7]
### Selectors (SEL) #MethodNames
The name of a method used in messaging (e.g., `doSomething:`). Represented by the `SEL` type. Can be obtained using `@selector(...)`. [2, 7]
### `objc_msgSend` #RuntimeFunction
Method calls are compiled into calls to the `objc_msgSend` runtime function (or variants), which handles dynamic dispatch. [3, 7]
### Messaging `nil` #NilSafety
Sending a message to `nil` is a safe operation in Objective-C; it does nothing and returns `nil` or a zero-equivalent value. [3]
### `self` and `super` #Keywords
`self` refers to the current object instance. `super` is used to call a method implementation in the superclass. [7]

## Memory Management #Ownership #Lifecycles #ARC #MRC
Managing the lifecycle of objects in memory. [12, 13, 17, 18]
### Reference Counting #OwnershipModel
Core concept where objects maintain a count of how many strong references point to them. Deallocated when the count reaches zero. [12, 13]
### Manual Retain-Release (MRC) #ExplicitManagement #Legacy
Developers explicitly manage retain counts using `retain`, `release`, and `autorelease`. Requires careful adherence to ownership rules. [11, 12, 13, 18]
#### Ownership Rules (MRC) #NARC #Conventions
Conventions like NARC (New, Alloc, Retain, Copy) dictate when you "own" an object and are responsible for releasing it. [13]
#### `retain`, `release`, `autorelease` #MRCMethods
Methods used in MRC to increment, decrement, and schedule a later decrement of the retain count. [12, 18]
#### `dealloc` #Cleanup
Method overridden to release owned resources just before an object is destroyed (retain count hits zero). [18]
### Automatic Reference Counting (ARC) #CompilerManagement #Modern
Compiler automatically inserts `retain`, `release`, and `autorelease` calls at compile time based on variable lifetimes and ownership qualifiers. [11, 12, 13, 17]
#### Ownership Qualifiers #strong #weak #unsafe_unretained #autoreleasing
Keywords used in ARC to define reference ownership semantics (`strong` is the default). [12, 18]
#### Weak References #AvoidingRetainCycles
`weak` references do not keep an object alive and automatically become `nil` when the referenced object is deallocated. Used to break retain cycles. [12, 18]
#### Autorelease Pools #DeferredRelease
Mechanism (`@autoreleasepool { ... }`) to manage objects that need to exist temporarily before being released, especially relevant in MRC loops and secondary threads, but also used by ARC. [12, 28]

## Foundation Framework #CoreUtilities #DataTypes #Collections
A fundamental framework providing base classes, utility functions, and essential data types. [1, 4, 6, 9, 15, 20]
### Overview #BaseLayer #NSObjects
Provides the essential non-GUI classes and services, forms the base for Cocoa/Cocoa Touch. Uses the "NS" prefix (NeXTSTEP). [4, 6, 20]
### `NSObject` #RootClass
The root class for most Objective-C class hierarchies, providing basic object behavior and an interface to the runtime. [4, 20]
### Basic Data Types #Wrappers #Primitives
Classes wrapping primitive values and basic concepts. [1, 4, 6, 15]
#### `NSString` / `NSMutableString` #Text
Objects representing Unicode character strings. [1, 6, 15]
#### `NSNumber` #Numbers
Wrapper class for C numeric types (int, float, double, BOOL). [1, 4, 15]
#### `NSValue` #GenericWrappers
Generic wrapper for C types, including structs and pointers. [1, 4]
#### `NSData` / `NSMutableData` #ByteBuffers
Objects representing byte buffers. [15]
#### `NSDate` #Time
Objects representing specific points in time. [15]
### Collection Classes #DataStructures #Containers
Classes for managing collections of objects. [1, 6, 15]
#### `NSArray` / `NSMutableArray` #OrderedLists
Ordered, indexed collections of objects. [1, 6, 15]
#### `NSDictionary` / `NSMutableDictionary` #KeyValueStores
Collections of key-value pairs. [1, 6, 15]
#### `NSSet` / `NSMutableSet` #UnorderedLists
Unordered collections of unique objects. [1, 15]
#### Enumeration #Iteration #Loops
Techniques for iterating over collections, including fast enumeration (`for...in`) and block-based enumeration. [1]
### File System and Data Persistence #IO #Storage #Serialization
Classes for interacting with the file system, archiving objects, and managing preferences. [15, 20]
#### `NSFileManager` #FileSystemOperations
#### Archiving and Serialization (`NSCoding`, `NSSecureCoding`, JSON) #SavingData
#### `NSUserDefaults` #Preferences

## Protocols and Categories #Extensibility #CodeReuse #Interfaces
Mechanisms for extending class functionality and defining shared interfaces. [1, 8, 14, 25]
### Protocols (`@protocol`) #AbstractInterfaces #Contracts
Define a list of required or optional methods that a class can promise to implement (similar to Java interfaces). Allows for polymorphism without inheritance. [14, 21]
#### Formal vs. Informal Protocols #Adoption
Formal protocols are declared with `@protocol`. Informal protocols are often implemented using categories on `NSObject`.
#### Adopting Protocols #Conformance
Classes indicate they conform to a protocol in their `@interface` declaration using angle brackets `<... >`.
### Categories #ClassExtensions #MethodGrouping
Allow adding methods to existing classes (even ones you don't have the source for) without subclassing. Useful for organizing code or adding convenience methods. [1, 8, 14]
#### Adding Methods #ExtendingClasses
Define a category in a `.h` and `.m` file with the syntax `@interface ClassName (CategoryName)`.
#### Limitations (No Instance Variables) #Restrictions
Categories cannot add new instance variables directly (though associated objects offer a workaround).
### Class Extensions #PrivateDeclarations
A special unnamed category (`@interface ClassName ()`) typically defined in the `.m` file. Used to declare private properties or methods for internal class use. [14, 25]

## Blocks #Closures #AnonymousFunctions #GCD
Objective-C's implementation of closures, allowing inline function code that captures surrounding state. [22, 28]
### Syntax #CaretSymbol
Declared using the `^` symbol (e.g., `returnType (^blockName)(parameters)`).
### Capturing Variables #Scope #__block
Blocks capture variables from their enclosing scope. Use the `__block` modifier to allow modification of captured variables within the block.
### Usage #APIs #Concurrency #Callbacks
Widely used in modern Apple APIs, especially for completion handlers, enumeration, sorting, and concurrency (GCD).

## Concurrency #Parallelism #Threads #Queues
Tools for managing multiple tasks simultaneously. [15]
### Grand Central Dispatch (GCD) #Queues #Tasks
Low-level C-based API for managing tasks concurrently via dispatch queues (serial or concurrent). [15]
#### Dispatch Queues (Serial, Concurrent, Main, Global) #ExecutionContexts
#### `dispatch_async`, `dispatch_sync` #SubmittingWork
### `NSOperation` & `NSOperationQueue` #ObjectOrientedConcurrency
Higher-level, object-oriented abstraction over GCD. Allows for dependencies between operations, cancellation, and more complex workflows. [15]
#### `NSOperation` Subclasses (`NSBlockOperation`, Custom) #WorkUnits
#### `NSOperationQueue` #ManagingOperations

## Objective-C Runtime #DynamicFeatures #Introspection #Reflection
The underlying system that enables Objective-C's dynamic nature. [1, 2, 3, 5, 7, 10, 21]
### Dynamic Typing #id #RuntimeChecks
Determining an object's class and capabilities at runtime rather than compile time. [1, 10]
### Dynamic Binding #MessageForwarding #RuntimeResolution
Determining the specific method implementation to call at runtime (via `objc_msgSend`). Enables features like message forwarding. [3, 5, 10]
### Introspection #RuntimeQueries #Reflection
Ability to examine the properties of objects and classes at runtime (e.g., `isKindOfClass:`, `respondsToSelector:`, `class_getName`). [3, 5, 10]
### Reflection #RuntimeModification
Ability to modify program structure at runtime, such as adding methods or classes (`class_addMethod`). [3, 10]
### Method Swizzling #ImplementationSwapping
Changing the implementation of an existing method at runtime, often used for debugging or extending functionality. [5, 10]
### Associated Objects #AddingStateCategories
Attaching arbitrary data to existing objects at runtime, often used to simulate adding instance variables via categories.

## Error Handling #Exceptions #NSError
Mechanisms for reporting and handling errors. [19]
### `NSError` #StandardErrorObject
The standard Cocoa pattern for error reporting, passing an `NSError` object pointer by reference.
### Exceptions (`@try`, `@catch`, `@finally`, `@throw`) #ExceptionalConditions
Used primarily for programmer errors or truly exceptional conditions, not for expected failure scenarios (unlike Java/C++). `NSError` is preferred for recoverable errors.
### Assertions (`NSAssert`) #DebuggingChecks
Macros used during development to check for logical inconsistencies.

## Interoperability #Bridging #OtherLanguages
Working with code written in other languages. [8, 10]
### C #DirectIntegration
Seamless integration as Objective-C is a superset of C. Direct use of C code, libraries, and data structures. [8, 19]
### C++ (Objective-C++) #MixingCode
A variant language allowing C++ code to be mixed with Objective-C. Files typically use the `.mm` extension. [14]
### Swift #BridgingHeader #GeneratedInterface
Modern interoperability mechanisms allow calling Objective-C code from Swift and vice-versa. Requires bridging headers or relies on compiler-generated interfaces. [10]

## Tooling and Development #Xcode #Compiler #Debugger
The ecosystem supporting Objective-C development. [27]
### Xcode IDE #DevelopmentEnvironment
Apple's integrated development environment for macOS and iOS development. [27]
### Clang Compiler #LLVM
The compiler front-end (part of LLVM) used to compile Objective-C code. [14]
### LLDB Debugger #DebuggingTool
The debugger used within Xcode for Objective-C.
### Interface Builder #UIDesign
Visual tool within Xcode for designing user interfaces (often linked to Objective-C code via outlets and actions).

## Common Design Patterns #BestPractices #Architecture
Established solutions to common programming problems in Objective-C/Cocoa.
### Model-View-Controller (MVC) #AppArchitecture
Fundamental architectural pattern separating data, presentation, and control logic.
### Delegate Pattern #Callbacks #Customization
An object delegates responsibility for certain actions or decisions to another helper object (its delegate).
### Target-Action #UIControlEvents
Mechanism used by UI controls (like buttons) to notify a target object when an event occurs by calling a specified action method.
### Singleton Pattern #SharedInstance
Ensuring a class has only one instance and providing a global point of access to it.
### Key-Value Coding (KVC) #StringIdentifiers #IndirectAccess
Accessing object properties indirectly using string identifiers (`valueForKey:`, `setValue:forKey:`). [1, 3]
### Key-Value Observing (KVO) #Notifications #StateChanges
Observing changes to the properties of an object (`addObserver:forKeyPath:options:context:`). [1, 3]

## Advanced Topics #EdgeCases #DeepDive
More complex or specialized aspects of the language and runtime. [21]
### Non-Fragile Instance Variables #RuntimeLayout
Modern Objective-C runtime feature allowing changes to class layout (adding ivars) without requiring recompilation of subclasses. [14]
### Tagged Pointers #Optimization
Optimization technique where some small objects (like `NSNumber` or `NSDate`) can have their value stored directly within the pointer itself, avoiding heap allocation.
### Zeroing Weak References #ARCSafety
Feature enabled by ARC where weak references are automatically set to `nil` when the object they point to is deallocated.
