# I. Kotlin Fundamentals

## Understanding Basic Syntax

### Variables and Data Types

*   Declaring variables using `val` (immutable) and `var` (mutable).
*   Understanding basic data types: `Int`, `Double`, `Boolean`, `String`, `Char`.
*   Type inference in Kotlin.
*   Null safety: nullable types using `?` and safe call operator `?.`.
    *   Example: `var name: String? = "John"`

### Control Flow

*   `if` expressions (can be used as expressions).
    *   Example: `val max = if (a > b) a else b`
*   `when` expressions (Kotlin's enhanced `switch` statement).
    *   Example:
        ```kotlin
        when (x) {
            1 -> print("x == 1")
            2 -> print("x == 2")
            else -> {
                print("x is neither 1 nor 2")
            }
        }
        ```
*   `for` loops: iterating over collections and ranges.
    *   Example: `for (i in 1..10) print(i)`
*   `while` and `do-while` loops.

### Functions

*   Declaring functions using `fun`.
*   Function parameters and return types.
*   Single-expression functions.
    *   Example: `fun square(x: Int): Int = x * x`
*   Default parameter values.
    *   Example: `fun greet(name: String = "World")`
*   Named arguments.
    *   Example: `greet(name = "Kotlin")`

## Working with Collections

### Lists

*   Creating lists using `listOf` (immutable) and `mutableListOf` (mutable).
*   Accessing elements by index.
*   Iterating through lists.

### Sets

*   Creating sets using `setOf` (immutable) and `mutableSetOf` (mutable).
*   Checking for element existence.

### Maps

*   Creating maps using `mapOf` (immutable) and `mutableMapOf` (mutable).
*   Accessing values by key.
*   Iterating through maps.

### Collection Operations

*   Filtering collections using `filter`.
*   Mapping collections using `map`.
*   Reducing collections using `reduce`.
*   Sorting collections using `sorted`.

## Object-Oriented Programming (OOP) in Kotlin

### Classes and Objects

*   Defining classes using `class`.
*   Creating objects from classes.
*   Constructors: primary and secondary.
*   Properties and fields.
*   Initialization blocks (`init`).

### Inheritance

*   Single inheritance using `:`.
*   Open classes and methods using `open`.
*   Overriding methods using `override`.

### Interfaces

*   Defining interfaces using `interface`.
*   Implementing interfaces.
*   Interface properties.

### Data Classes

*   Creating data classes using `data class`.
*   Automatic generation of `equals()`, `hashCode()`, `toString()`, `copy()` functions.

### Sealed Classes

*   Defining sealed classes using `sealed class`.
*   Restricting class hierarchies.

# II. Advanced Kotlin Features

## Functional Programming

### Lambda Expressions

*   Defining lambda expressions.
*   Using lambda expressions as function arguments.
*   Trailing lambda syntax.
    *   Example: `numbers.forEach { println(it) }`

### Higher-Order Functions

*   Functions that take other functions as arguments or return them.
*   Example:
    ```kotlin
    fun operateOnNumbers(a: Int, b: Int, operation: (Int, Int) -> Int): Int {
        return operation(a, b)
    }

    val sum = operateOnNumbers(5, 3) { x, y -> x + y }
    ```

### Inline Functions

*   Using `inline` keyword to reduce overhead of higher-order functions.

### Extension Functions

*   Adding new functions to existing classes without modifying them.
    *   Example:
        ```kotlin
        fun String.addExclamation(): String {
            return this + "!"
        }

        val message = "Hello".addExclamation()
        ```

## Coroutines

### Introduction to Concurrency

*   Understanding asynchronous programming.
*   Benefits of using coroutines.

### Launching Coroutines

*   Using `launch` builder to start a new coroutine.
*   Coroutine scopes: `GlobalScope`, `CoroutineScope`, `viewModelScope` (Android).

### Suspending Functions

*   Defining suspending functions using `suspend`.
*   Using `delay` to pause a coroutine.

### Async and Await

*   Using `async` builder to perform asynchronous operations.
*   Using `await` to retrieve the result of an `async` operation.

### Channels

*   Using channels to communicate between coroutines.
*   Sending and receiving data through channels.

### Flows

*   Understanding Kotlin Flows for asynchronous data streams.
*   Creating flows using `flow` builder.
*   Collecting data from flows using `collect`.
*   Transforming flows using operators like `map`, `filter`, `transform`.

## Interoperability

### Java Interoperability

*   Calling Java code from Kotlin.
*   Calling Kotlin code from Java.
*   Handling nullability differences.

### JavaScript Interoperability

*   Kotlin/JS: compiling Kotlin code to JavaScript.
*   Interacting with JavaScript libraries.

# III. Kotlin Specific Libraries and Frameworks

## Kotlin Standard Library

### Sequence

*   Understanding Sequences for lazy evaluation.
*   Creating Sequences from collections or iterators.
*   Performing operations on Sequences (map, filter, etc.).

### Regex

*   Working with regular expressions in Kotlin using `Regex`.
*   Performing pattern matching and replacement.

## Kotlin and Android Development

### Anko

*   Using Anko library to simplify Android development. (Note: Anko is largely deprecated in favor of Kotlin DSL for Gradle and Kotlin Coroutines for asynchronous tasks.)
*   Anko layouts.
*   Anko intents.

### Kotlin DSL for Gradle

*   Using Kotlin DSL to configure Gradle builds.
*   Defining dependencies and plugins.
*   Customizing build tasks.

### Jetpack Compose

*   Introduction to declarative UI programming with Jetpack Compose.
*   Composables and state management.
*   Layouts and navigation.

## Kotlin Multiplatform

### Introduction to Kotlin Multiplatform

*   Sharing code between different platforms (JVM, JS, Native).
*   Configuring multiplatform projects.

### Platform Specific Implementations

*   Using `expect` and `actual` keywords to define platform-specific code.
*   Sharing common code between platforms.

### Building Multiplatform Applications

*   Creating a simple multiplatform application.
*   Sharing business logic and data models.
