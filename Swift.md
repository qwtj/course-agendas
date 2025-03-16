# I. Swift Fundamentals

## Understanding Basic Syntax

### Variables and Constants
*   Declaring variables using `var` and constants using `let`.
*   Type inference and explicit type annotations (e.g., `var name: String = "John"`).

### Data Types
*   Integers (`Int`, `Int8`, `Int16`, `Int32`, `Int64`, `UInt`, etc.)
*   Floating-point numbers (`Float`, `Double`)
*   Booleans (`Bool`)
*   Strings (`String`)
*   Characters (`Character`)
*   Optionals (`Int?`, `String?`) and unwrapping optionals (`if let`, `guard let`, forced unwrapping `!`)

### Operators
*   Arithmetic operators (`+`, `-`, `*`, `/`, `%`)
*   Comparison operators (`==`, `!=`, `>`, `<`, `>=`, `<=`)
*   Logical operators (`&&`, `||`, `!`)
*   Assignment operators (`=`, `+=`, `-=`, `*=`, `/=`)
*   Range operators (`...`, `..<`)

### Control Flow
*   `if`, `else if`, `else` statements
*   `for-in` loops (iterating over ranges, arrays, dictionaries)
*   `while` and `repeat-while` loops
*   `switch` statements and pattern matching

## Functions

### Function Declaration and Parameters
*   Defining functions using the `func` keyword.
*   Parameters and return types (e.g., `func greet(name: String) -> String`).
*   External parameter names and argument labels.
*   Variadic parameters.
*   In-out parameters.

### Function Types
*   Using functions as variables.
*   Passing functions as parameters to other functions.
*   Returning functions from other functions.

### Closures
*   Defining and using closures.
*   Closure syntax (e.g., `{ (parameters) -> return type in statements }`).
*   Trailing closures.
*   Capturing values in closures.
*   `@escaping` closures.

# II. Object-Oriented Programming in Swift

## Structures and Classes

### Defining Structures and Classes
*   Using the `struct` and `class` keywords.
*   Properties (stored and computed).
*   Methods (instance and type methods).
*   Initializers (designated and convenience).
*   Deinitializers.

### Value Types vs. Reference Types
*   Understanding the difference between value types (structures, enums) and reference types (classes).
*   Copying and mutability.
*   Using `mutating` methods in structures.

### Inheritance
*   Defining subclasses using `:`.
*   Overriding methods and properties using `override`.
*   Preventing overriding with `final`.
*   Calling superclass methods using `super`.

## Protocols and Extensions

### Defining Protocols
*   Using the `protocol` keyword.
*   Protocol requirements (properties and methods).
*   Protocol inheritance.
*   Optional protocol requirements (`@objc optional`).

### Protocol Conformance
*   Adopting protocols in classes, structures, and enums.
*   Using protocol extensions to provide default implementations.

### Extensions
*   Adding new functionality to existing types.
*   Adding protocol conformance to existing types.
*   Computed properties in extensions.

# III. Collections and Data Structures

## Arrays

### Creating and Initializing Arrays
*   Using array literals (`[1, 2, 3]`).
*   Using the `Array` type (e.g., `Array<Int>`).
*   Initializing arrays with a default value.

### Accessing and Modifying Arrays
*   Accessing elements using indices.
*   Adding and removing elements (`append`, `insert`, `remove`).
*   Iterating over arrays using `for-in` loops.

### Array Operations
*   `map`, `filter`, `reduce`, `sort`.

## Dictionaries

### Creating and Initializing Dictionaries
*   Using dictionary literals (`["key": "value"]`).
*   Using the `Dictionary` type (e.g., `Dictionary<String, Int>`).

### Accessing and Modifying Dictionaries
*   Accessing values using keys.
*   Adding and removing key-value pairs.
*   Iterating over dictionaries.

## Sets

### Creating and Initializing Sets
*   Using the `Set` type (e.g., `Set<String>`).

### Set Operations
*   `insert`, `remove`, `contains`.
*   `union`, `intersection`, `subtracting`, `symmetricDifference`.

# IV. Error Handling and Concurrency

## Error Handling

### Defining Custom Errors
*   Creating enums that conform to the `Error` protocol.

### Throwing Errors
*   Using the `throw` keyword.

### Handling Errors
*   `do-catch` blocks.
*   `try?` and `try!` (optional chaining).
*   `defer` statements.

## Concurrency

### Threads and Processes
*   Understanding the difference between threads and processes.

### Grand Central Dispatch (GCD)
*   Dispatch queues (`DispatchQueue.main`, `DispatchQueue.global`).
*   Asynchronous execution (`async`).
*   Performing tasks on background threads.
*   Synchronization using `DispatchSemaphore` and `DispatchWorkItem`.

### Async/Await
*   Using `async` functions and `await` expressions.
*   Creating asynchronous tasks.
*   Handling errors in asynchronous code.

# V. Swift Standard Library and Frameworks

## Optionals
* Understanding the underlying implementations of optionals in Swift.

### Working with `Optional` Type
* Chaining Optionals to avoid nested if-let unwrapping, leveraging the `?` operator.

### Implementing Custom Optional Types
* Creating custom generic types that exhibit optional behavior.

## Core Foundation Bridging
* Understanding Automatic Bridging between Swift and Objective-C types.

### Working with `NSString`, `NSArray`, and `NSDictionary`
* Interoperability and conversions between Swift's `String`, `Array`, `Dictionary` and their Core Foundation counterparts.

### Memory Management Considerations
* Retain/Release semantics during bridging.

## Working with Foundation Framework

### String Manipulation
*  Using the Swift `String` APIs alongside the Foundation Framework classes like `NSString` for complex manipulations

### Date and Time
* `Date` and `Calendar` struct for date and time manipulations.
* `DateFormatter` and its format specifiers for formatting dates and times.

### URLSession for networking
* Making network requests, parsing JSON data.
