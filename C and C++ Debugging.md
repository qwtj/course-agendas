# I. Foundations of C and C++

## Understanding Basic Syntax and Data Types

### C Syntax Overview
*   Basic program structure: `#include`, `main()` function.
*   Variables: declaration, initialization, assignment.
*   Data types: `int`, `float`, `double`, `char`, `bool`.
*   Operators: arithmetic, relational, logical, assignment.

### C++ Syntax Extensions
*   Introduction to classes and objects.
*   `std::cout` and `std::cin` for input/output.
*   Namespace usage: `using namespace std;`.

### Hands-on: Simple Programs
*   Write a C program that calculates the area of a rectangle.
*   Write a C++ program that prints "Hello, World!" using `std::cout`.
*   Write a C++ program that takes user input and performs a simple calculation.

## Control Flow and Functions

### Conditional Statements
*   `if`, `else if`, `else` statements.
*   Nested `if` statements.
*   `switch` statement.

### Loops
*   `for` loop.
*   `while` loop.
*   `do-while` loop.
*   `break` and `continue` statements.

### Functions
*   Function declaration and definition.
*   Function parameters and return values.
*   Function prototypes.
*   Call by value vs. call by reference.

### Hands-on: Control Flow Exercises
*   Write a C program to determine if a number is prime.
*   Write a C++ program to calculate the factorial of a number using a `for` loop.
*   Write a C++ function to swap two integers and call it from `main()`.

## Pointers and Memory Management (C)

### Understanding Pointers
*   Pointer declaration and initialization.
*   Address-of operator `&` and dereference operator `*`.
*   Pointer arithmetic.

### Dynamic Memory Allocation
*   `malloc()`, `calloc()`, `realloc()`, `free()`.
*   Memory leaks and dangling pointers.

### Pointers and Arrays
*   Pointers to array elements.
*   Array names as pointers.

### Hands-on: Memory Management in C
*   Write a C program to dynamically allocate an array of integers.
*   Write a C program to reverse a string using dynamic memory allocation.

# II. C++ Object-Oriented Programming (OOP)

## Classes and Objects

### Class Definition
*   `class` keyword.
*   Member variables (attributes) and member functions (methods).
*   Access specifiers: `public`, `private`, `protected`.

### Object Creation and Usage
*   Creating objects of a class.
*   Accessing member variables and functions.
*   `this` pointer.

### Constructors and Destructors
*   Default constructor, parameterized constructor, copy constructor.
*   Destructors and resource cleanup.

### Hands-on: Class Implementation
*   Create a `Rectangle` class with `length` and `width` attributes and methods to calculate area and perimeter.
*   Create a `Student` class with attributes like `name`, `id`, and `grades`, and implement constructors to initialize them.

## Inheritance and Polymorphism

### Inheritance
*   Base class and derived class.
*   `public`, `private`, and `protected` inheritance.
*   Virtual functions and abstract classes.

### Polymorphism
*   Function overloading.
*   Operator overloading.
*   Virtual functions and dynamic binding.

### Hands-on: Inheritance and Polymorphism
*   Create a base class `Shape` with a virtual `area()` method. Derive `Circle` and `Rectangle` classes from `Shape` and implement their respective `area()` methods.
*   Overload the `+` operator for a `Vector` class to perform vector addition.

## Templates and Standard Template Library (STL)

### Function Templates
*   Generic functions that work with different data types.

### Class Templates
*   Generic classes that work with different data types.

### Introduction to STL
*   Containers: `vector`, `list`, `deque`, `map`, `set`.
*   Iterators: `begin()`, `end()`.
*   Algorithms: `sort()`, `find()`.

### Hands-on: STL Usage
*   Create a `vector` of integers and sort it using `std::sort()`.
*   Use a `map` to store student names and their corresponding grades.
*   Implement a simple stack class using a `vector` as the underlying data structure.

# III. Debugging Techniques and Tools

## Debugging Fundamentals

### Understanding Bugs
*   Syntax errors, runtime errors, logic errors.
*   Common bug sources in C and C++.

### Debugging Strategies
*   Reading compiler errors and warnings.
*   Using print statements for debugging.
*   Testing and test-driven development.

### Using a Debugger (GDB)

### Basic GDB Commands
*   `break`: Set breakpoints.
*   `run`: Start program execution.
*   `next`: Step to the next line.
*   `step`: Step into a function.
*   `print`: Print the value of a variable.
*   `continue`: Continue execution.
*   `backtrace`: Display the call stack.

### Debugging with GDB Examples
*   Debugging a simple C program with `gdb`.
*   Debugging a C++ program with classes and objects using `gdb`.

## Memory Debugging Tools

### Valgrind (Linux)
*   Detecting memory leaks with `valgrind --leak-check=full`.
*   Identifying invalid memory accesses with `valgrind`.

### AddressSanitizer (ASan)
*   Using ASan to detect memory errors.
*   Compiling with `-fsanitize=address`.

### Hands-on: Memory Debugging
*   Introduce a memory leak in a C program and detect it using Valgrind.
*   Cause a buffer overflow in a C++ program and detect it using AddressSanitizer.

## IDE Debugging (VS Code, CLion)

### Setting Breakpoints and Stepping Through Code

### Inspecting Variables and Memory

### Using Watch Expressions

### Hands-on: IDE Debugging
*   Debug a C++ program with Visual Studio Code, setting breakpoints and inspecting variables.
*   Debug a C program with CLion, using watch expressions to track the values of variables.

# IV. Advanced Debugging Topics

## Multi-Threading Debugging

### Challenges of Multi-Threaded Debugging
*   Race conditions, deadlocks, livelocks.
*   Non-deterministic behavior.

### Debugging Tools for Multi-Threading
*   Thread-aware debuggers (GDB).
*   ThreadSanitizer (TSan).

### Debugging Techniques
*   Setting breakpoints in multiple threads.
*   Examining thread stacks.
*   Using mutexes and locks correctly.

### Hands-on: Multi-Threaded Debugging
*   Create a multi-threaded C++ program with a race condition and debug it using GDB.
*   Use ThreadSanitizer to detect data races in a multi-threaded C program.

## Debugging Optimized Code

### Challenges of Debugging Optimized Code
*   Code reordering, inlining, register allocation.
*   Variable values may be unavailable or incorrect.

### Debugging Strategies
*   Disabling optimizations for debugging (`-O0`).
*   Using debug information (`-g`).
*   Understanding compiler optimizations.

### Hands-on: Debugging Optimized Code
*   Debug a C++ program compiled with optimizations (`-O2`) and compare the debugging experience with unoptimized code.
*   Examine the assembly code generated by the compiler to understand the optimizations performed.

## Post-Mortem Debugging (Core Dumps)

### Understanding Core Dumps
*   What is a core dump?
*   Generating core dumps.

### Analyzing Core Dumps with GDB
*   Loading a core dump into GDB (`gdb <executable> <core_dump>`).
*   Examining the call stack and variable values at the time of the crash.

### Hands-on: Core Dump Analysis
*   Create a C program that crashes and generates a core dump.
*   Analyze the core dump using GDB to identify the cause of the crash.
