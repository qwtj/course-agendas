# C Programming Language #Main #Core #Language
An overview of the C programming language, a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system.

## Introduction to C #Level1 #Basics #History
Understanding the origins, characteristics, and applications of the C language.

### History and Evolution #Level2 #Origins #BellLabs #Standards
Learn about the development of C at Bell Labs by Dennis Ritchie between 1972 and 1973. Key milestones include K&R C and the ANSI C/ISO C standards (C89, C99, C11, C18, C23).

### Why Learn C? #Level2 #Relevance #Applications #Foundation
Discusses the importance of C in system programming (OS, drivers), embedded systems, game development, performance-critical applications, and as a foundation for learning other languages (C++, Objective-C, C#, Java).

### Setting Up the Environment #Level2 #Setup #Tools #Workflow
Covers installing a C compiler (like GCC or Clang) and a text editor or IDE (like VS Code, CLion, Code::Blocks, Vim, Emacs) on different operating systems (Windows, macOS, Linux).

#### Compilers (GCC, Clang, MSVC) #Level3 #Compiler #Tools
Explanation of what a compiler does, how it works (lexing, parsing, optimization, code generation), and how to use popular C compilers like GCC (GNU Compiler Collection), Clang (LLVM-based), and MSVC (Microsoft Visual C++).

#### Text Editors vs. IDEs #Level3 #Editor #IDE #Tools
Comparison between simple text editors with syntax highlighting and full-fledged Integrated Development Environments (IDEs) offering code completion, debugging, project management, etc.

#### Build Process Explained #Level3 #Build #Process #Compilation #Linking
Understanding the detailed steps involved in turning C source code into an executable program: preprocessing, compilation (source to assembly), assembly (assembly to object code), and linking (object code + libraries to executable).

#### Using Makefiles/Build Systems #Level3 #Build #Automation #Tools
Introduction to build automation tools like Make, CMake, or Meson to manage compilation and linking for larger projects with multiple source files.

#### Debugging Tools (GDB, LLDB) #Level3 #Debugging #Tools
Learning how to use debuggers like GDB (GNU Debugger) or LLDB to step through code, inspect variables, set breakpoints, and diagnose runtime errors.

## Basic Syntax and Structure #Level1 #Fundamentals #Syntax
Core elements of writing C code.

### Basic Program Structure #Level2 #Structure #MainFunction
Understanding the essential parts of a C program: `#include` directives, the `main` function (entry point), function definitions, and statements.

#### The `main` Function #Level3 #EntryPoint #Function
Role and signature variations of the `main` function (`int main(void)`, `int main(int argc, char *argv[])`). Return values and their significance (EXIT_SUCCESS, EXIT_FAILURE).

#### Header Files (`#include`) #Level3 #Headers #Libraries
Purpose of header files (.h) for declaring functions and variables provided by libraries or other source files. Using angle brackets (`<stdio.h>`) vs. double quotes (`"myheader.h"`).

#### Statements and Semicolons #Level3 #Syntax #Statements
Understanding that C programs are composed of statements, each typically ending with a semicolon (;).

#### Code Comments #Level3 #Syntax #Documentation
Using single-line (`//`, C99 onwards) and multi-line (`/* ... */`) comments for explaining code.

### Variables and Data Types #Level2 #Data #Types #Memory
Storing and manipulating data in C.

#### Fundamental Data Types #Level3 #Types #Primitive
Basic types: `int`, `char`, `float`, `double`. Understanding their size, range, and typical use cases.

#### Type Modifiers #Level3 #Types #Modifiers
Using modifiers like `short`, `long`, `long long`, `signed`, `unsigned` to alter the range and representation of fundamental types.

#### Character Type (`char`) #Level3 #Types #Characters #ASCII
Representing single characters, ASCII encoding, and using `char` for small integers.

#### Floating-Point Types (`float`, `double`, `long double`) #Level3 #Types #FloatingPoint #Precision
Representing real numbers with fractional parts. Understanding precision differences and potential pitfalls (e.g., comparison issues).

#### Void Type (`void`) #Level3 #Types #Void
Special type indicating "no type", used for functions that don't return a value or for generic pointers.

#### Variable Declaration and Initialization #Level3 #Variables #Declaration #Initialization
Syntax for declaring variables (`type name;`) and initializing them at declaration (`type name = value;`). Importance of initialization.

#### Constants #Level3 #Constants #Literals #Define #Const
Defining fixed values using literals (e.g., `10`, `3.14`, `'A'`), `#define` preprocessor directives, and the `const` keyword.

#### Scope and Lifetime of Variables #Level3 #Scope #Lifetime #Memory
Understanding block scope, function scope, file scope (static), and program scope (global). Automatic (stack) vs. static vs. allocated storage duration.

### Operators #Level2 #Operators #Expressions
Performing operations on data.

#### Arithmetic Operators #Level3 #Operators #Math
Basic math operations: `+`, `-`, `*`, `/`, `%` (modulus). Integer division vs. floating-point division. Operator precedence and associativity.

#### Relational Operators #Level3 #Operators #Comparison
Comparing values: `==`, `!=`, `>`, `<`, `>=`, `<=`. Result is boolean (0 for false, non-zero for true).

#### Logical Operators #Level3 #Operators #Boolean #Logic
Combining boolean conditions: `&&` (logical AND), `||` (logical OR), `!` (logical NOT). Short-circuit evaluation.

#### Bitwise Operators #Level3 #Operators #Bits #Manipulation
Operating on individual bits: `&` (AND), `|` (OR), `^` (XOR), `~` (NOT), `<<` (left shift), `>>` (right shift). Use cases in low-level programming.

#### Assignment Operators #Level3 #Operators #Assignment
Assigning values: `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`.

#### Increment and Decrement Operators #Level3 #Operators #Increment #Decrement
Prefix (`++i`, `--i`) vs. Postfix (`i++`, `i--`) increment and decrement.

#### Conditional (Ternary) Operator #Level3 #Operators #Conditional #Ternary
Shorthand for simple if-else: `condition ? value_if_true : value_if_false`.

#### `sizeof` Operator #Level3 #Operators #Sizeof #Memory
Determining the size (in bytes) of a data type or variable at compile time.

#### Operator Precedence and Associativity #Level3 #Operators #Precedence #Associativity
Rules governing the order in which operators are evaluated in complex expressions. Using parentheses `()` to control evaluation order.

### Basic Input/Output #Level2 #IO #Console #Stdio
Interacting with the user via the console.

#### Standard Streams (stdin, stdout, stderr) #Level3 #IO #Streams #Console
Understanding the standard input, standard output, and standard error streams.

#### Formatted Output (`printf`) #Level3 #IO #Output #Printf #Formatting
Using `printf` to display formatted text and variable values to `stdout`. Format specifiers (`%d`, `%f`, `%c`, `%s`, etc.) and escape sequences (`\n`, `\t`).

#### Formatted Input (`scanf`) #Level3 #IO #Input #Scanf #Formatting
Using `scanf` to read formatted input from `stdin`. Format specifiers and the importance of passing variable addresses (`&variable`). Pitfalls and security concerns (buffer overflows).

#### Character Input/Output (`getchar`, `putchar`) #Level3 #IO #Characters #Getchar #Putchar
Reading and writing single characters from/to the standard streams.

## Control Flow #Level1 #ControlFlow #Logic #Execution
Controlling the order in which statements are executed.

### Conditional Statements #Level2 #ControlFlow #Conditionals #Branching
Making decisions in code.

#### `if` Statement #Level3 #ControlFlow #If #Conditional
Executing a block of code only if a condition is true.

#### `if-else` Statement #Level3 #ControlFlow #IfElse #Conditional
Executing one block of code if a condition is true, and another block if it's false.

#### `if-else if-else` Ladder #Level3 #ControlFlow #ElseIf #Conditional #Chaining
Handling multiple conditions sequentially.

#### `switch` Statement #Level3 #ControlFlow #Switch #Conditional #Multiway
Selecting one of many code blocks to execute based on the value of an integer expression. `case`, `break`, and `default` keywords. Fall-through behavior.

### Looping Constructs #Level2 #ControlFlow #Loops #Iteration
Repeating blocks of code.

#### `for` Loop #Level3 #ControlFlow #ForLoop #Iteration #Counter
Executing a block of code a specific number of times. Initialization, condition, and update expressions.

#### `while` Loop #Level3 #ControlFlow #WhileLoop #Iteration #Condition
Executing a block of code as long as a condition remains true. Condition checked before the loop body.

#### `do-while` Loop #Level3 #ControlFlow #DoWhileLoop #Iteration #Condition
Similar to `while`, but the condition is checked *after* the loop body executes at least once.

#### Loop Control Statements #Level3 #ControlFlow #LoopControl #Break #Continue #Goto
Modifying loop execution: `break` (exit loop immediately), `continue` (skip current iteration), `goto` (unconditional jump - generally discouraged).

## Functions #Level1 #Functions #Modularity #CodeReuse
Organizing code into reusable blocks.

### Function Definition and Declaration #Level2 #Functions #Definition #Declaration #Prototype
Defining what a function does and declaring its signature (prototype) before use.

#### Function Definition Syntax #Level3 #Functions #Syntax #Definition
Structure: return type, function name, parameter list, function body.

#### Function Declaration (Prototype) #Level3 #Functions #Syntax #Prototype #ForwardDeclaration
Declaring a function's signature (return type, name, parameter types) typically in a header file or before its first call. Importance for compilation.

#### Return Values (`return` statement) #Level3 #Functions #Return #Output
Returning a value from a function using the `return` keyword. Functions declared `void` do not return a value.

#### Function Parameters and Arguments #Level3 #Functions #Parameters #Arguments #Input
Passing data into functions. Difference between parameters (in definition) and arguments (in call). Pass-by-value mechanism.

### Function Calls #Level2 #Functions #Calling #Execution
Executing a defined function.

#### Calling Syntax #Level3 #Functions #Syntax #Call
Using the function name followed by parentheses `()` containing arguments.

#### Pass-by-Value #Level3 #Functions #Passing #ByValue #Memory
Understanding that function arguments are copies of the original values; modifications inside the function do not affect the original variables.

### Scope Rules Revisited #Level2 #Scope #Functions #Variables
How variable scope interacts with functions.

#### Local Variables #Level3 #Scope #Local #Stack
Variables declared inside a function are local to that function and typically stored on the stack.

#### Global Variables #Level3 #Scope #Global #Static #DataSegment
Variables declared outside any function have global scope. Potential issues with overuse.

#### Static Variables (Local and Global) #Level3 #Scope #Static #Lifetime
Using the `static` keyword to give variables static storage duration (exist for the program's lifetime) and, for global variables, internal linkage (file scope).

### Recursion #Level2 #Functions #Recursion #Algorithms
Functions calling themselves.

#### Concept of Recursion #Level3 #Recursion #BaseCase #RecursiveStep
Understanding how recursive functions solve problems by breaking them down into smaller, self-similar subproblems. Importance of the base case.

#### Examples (Factorial, Fibonacci) #Level3 #Recursion #Examples #Algorithms
Implementing classic recursive algorithms. Understanding the call stack and potential for stack overflow.

## Arrays and Strings #Level1 #DataStructures #Arrays #Strings #Collections
Handling collections of data.

### Arrays #Level2 #Arrays #Collections #Memory
Storing fixed-size sequences of elements of the same type.

#### Declaration and Initialization #Level3 #Arrays #Declaration #Initialization #Syntax
Syntax for declaring arrays (`type name[size];`) and initializing them (`{val1, val2, ...}`).

#### Accessing Array Elements #Level3 #Arrays #Indexing #Access
Using zero-based indexing (`array[index]`) to access individual elements.

#### Multidimensional Arrays #Level3 #Arrays #Multidimensional #Matrix #MemoryLayout
Creating arrays of arrays (e.g., `type name[rows][cols];`). Understanding row-major memory layout.

#### Arrays and Pointers #Level3 #Arrays #Pointers #Decay #Memory
The close relationship between arrays and pointers. Array names often decay into pointers to their first element. Passing arrays to functions.

### Strings (Character Arrays) #Level2 #Strings #Text #Arrays #NullTerminated
Representing sequences of characters in C.

#### C-Style Strings #Level3 #Strings #NullTerminator #Convention
Understanding that strings are null-terminated character arrays (`char str[] = "hello";` includes a hidden `\0`).

#### String Literals #Level3 #Strings #Literals #Memory
How string constants like `"hello"` are stored.

#### String Input/Output #Level3 #Strings #IO #Scanf #Gets #Puts #Fprintf
Functions for reading and writing strings (`scanf` with `%s`, `printf` with `%s`, `fgets`, `puts`). Dangers of `gets`.

#### String Manipulation Functions (`<string.h>`) #Level3 #Strings #Library #Manipulation #StringH
Common string operations provided by the standard library: `strlen`, `strcpy`, `strncpy`, `strcat`, `strncat`, `strcmp`, `strncmp`, `strchr`, `strstr`. Importance of buffer safety (`n` versions).

## Pointers #Level1 #Pointers #Memory #Addresses #Indirection
Working directly with memory addresses.

### Pointer Basics #Level2 #Pointers #Fundamentals #Addresses #Dereferencing
Introduction to pointer concepts.

#### What is a Pointer? #Level3 #Pointers #Address #Variable
A variable that stores the memory address of another variable.

#### Declaring Pointers #Level3 #Pointers #Declaration #Syntax
Syntax: `type *pointer_name;`. The `type` indicates the type of data the pointer points to.

#### Address-of Operator (`&`) #Level3 #Pointers #AddressOf #Operator
Getting the memory address of a variable.

#### Dereference Operator (`*`) #Level3 #Pointers #Dereference #Operator #Indirection
Accessing the value stored at the memory address held by a pointer (indirection).

#### Null Pointers #Level3 #Pointers #Null #NULL #Safety
A special pointer value (`NULL` or `0`) indicating that the pointer does not point to a valid memory location. Importance of checking for `NULL`.

### Pointers and Arrays #Level2 #Pointers #Arrays #Arithmetic #Memory
The relationship and interchangeability between pointers and arrays.

#### Pointer Arithmetic #Level3 #Pointers #Arithmetic #Memory #Scaling
Performing arithmetic operations (`+`, `-`, `++`, `--`) on pointers. Operations are scaled by the size of the data type being pointed to.

#### Pointers and Array Indexing #Level3 #Pointers #Arrays #Indexing #Equivalence
Understanding `array[i]` is equivalent to `*(array + i)`.

#### Passing Arrays to Functions using Pointers #Level3 #Pointers #Arrays #Functions #Passing
How arrays decay to pointers when passed as function arguments. Using pointer notation for array parameters.

### Pointers and Functions #Level2 #Pointers #Functions #PassByReference
Using pointers with functions for more flexibility.

#### Passing Pointers as Arguments (Pass-by-Reference Emulation) #Level3 #Pointers #Functions #PassByReference #Modify
Passing the address of a variable to a function allows the function to modify the original variable.

#### Returning Pointers from Functions #Level3 #Pointers #Functions #Return #Lifetime #Dangling
Returning addresses from functions. Dangers of returning pointers to local variables (dangling pointers). Returning pointers to dynamically allocated memory or static variables.

### Pointers and Strings #Level2 #Pointers #Strings #Manipulation
Using pointers to work efficiently with C-style strings.

#### Character Pointers (`char *`) #Level3 #Pointers #Strings #CharPointer
Using `char *` to point to strings (string literals or character arrays).

#### String Manipulation with Pointers #Level3 #Pointers #Strings #Iteration #Efficiency
Iterating through strings and performing manipulations using pointer arithmetic.

### Function Pointers #Level2 #Pointers #Functions #Callbacks #Advanced
Pointers that store the memory address of functions.

#### Declaring Function Pointers #Level3 #FunctionPointers #Declaration #Syntax
Syntax for declaring pointers to functions with specific return types and parameter lists.

#### Assigning and Calling via Function Pointers #Level3 #FunctionPointers #Usage #Callbacks #Polymorphism
Storing function addresses in pointers and calling functions indirectly. Use cases: callbacks, implementing generic algorithms, simple polymorphism.

### Pointers to Pointers (Double Pointers) #Level2 #Pointers #DoublePointers #Indirection #Advanced
Pointers that store the address of other pointers.

#### Declaration and Usage #Level3 #DoublePointers #Syntax #Indirection
Syntax (`type **ptr_to_ptr;`) and dereferencing (`**ptr_to_ptr`).

#### Use Cases #Level3 #DoublePointers #Applications #ModifyPointers #ArraysOfPointers
Modifying pointers passed to functions, working with arrays of strings (e.g., `char **argv`), dynamic allocation of 2D arrays.

### Potential Pointer Pitfalls #Level2 #Pointers #Errors #Debugging #Safety
Common mistakes and dangers when using pointers.

#### Dangling Pointers #Level3 #Pointers #Errors #Dangling #Lifetime
Pointers that point to memory that has been freed or is no longer valid (e.g., pointing to a local variable after the function returns).

#### Null Pointer Dereference #Level3 #Pointers #Errors #NullDereference #Crash
Attempting to access the value at a `NULL` address, usually leading to a program crash.

#### Memory Leaks #Level3 #Pointers #Errors #MemoryLeaks #DynamicMemory
Forgetting to free dynamically allocated memory when it's no longer needed.

#### Buffer Overflows #Level3 #Pointers #Errors #BufferOverflow #Security
Writing past the allocated bounds of an array or buffer, often via incorrect pointer usage or unsafe string functions. Security implications.

## Memory Management #Level1 #Memory #Heap #Stack #Allocation
Controlling memory allocation and deallocation.

### Stack vs. Heap Memory #Level2 #Memory #Stack #Heap #Allocation
Understanding the two main memory regions used by a C program.

#### Stack Memory #Level3 #Memory #Stack #Automatic #Scope #LIFO
Automatic allocation and deallocation for local variables and function call frames. Fixed size, fast access, Last-In-First-Out (LIFO). Risk of stack overflow.

#### Heap Memory #Level3 #Memory #Heap #Dynamic #Manual #Flexibility
Region for dynamic memory allocation requested by the programmer at runtime. Flexible size, requires manual management (allocation and deallocation). Slower access compared to the stack.

### Dynamic Memory Allocation #Level2 #Memory #Dynamic #Heap #Malloc #Calloc #Realloc #Free
Allocating memory on the heap during program execution.

#### `malloc()` #Level3 #Memory #Malloc #Allocate #Heap
Allocates a specified number of bytes on the heap. Returns a `void*` pointer to the allocated block, or `NULL` on failure. Memory is uninitialized.

#### `calloc()` #Level3 #Memory #Calloc #Allocate #Zeroed #Heap
Allocates memory for an array of elements, initializing all bytes to zero. Returns `void*` or `NULL`.

#### `realloc()` #Level3 #Memory #Realloc #Resize #Heap
Changes the size of a previously allocated memory block. May move the block to a new location. Returns `void*` to the (potentially new) block or `NULL`.

#### `free()` #Level3 #Memory #Free #Deallocate #Heap
Deallocates a block of memory previously allocated with `malloc`, `calloc`, or `realloc`, returning it to the heap. Essential for preventing memory leaks.

#### Best Practices #Level3 #Memory #BestPractices #Safety #Leaks #Fragmentation
Always check return values of allocation functions. Free allocated memory exactly once when no longer needed. Avoid using pointers after `free` (dangling pointers). Be aware of memory fragmentation.

## Structures, Unions, and Enums #Level1 #DataStructures #UserDefined #Struct #Union #Enum
Creating custom data types.

### Structures (`struct`) #Level2 #Structs #DataStructures #Compound #Records
Grouping related variables of potentially different types under a single name.

#### Defining Structures #Level3 #Structs #Definition #Syntax
Using the `struct` keyword to define a new structure type and its members.

#### Declaring Structure Variables #Level3 #Structs #Declaration #Variables
Creating instances (variables) of a defined structure type.

#### Accessing Members (`.` and `->`) #Level3 #Structs #Access #Members #DotOperator #ArrowOperator
Using the dot operator (`.`) for direct access to members of a structure variable and the arrow operator (`->`) for access via a pointer to a structure.

#### Structures and Pointers #Level3 #Structs #Pointers #Memory
Creating pointers to structures (`struct MyStruct *ptr;`). Using `->` for member access.

#### Structures and Functions #Level3 #Structs #Functions #Passing #Returning
Passing structures to functions (by value or by pointer) and returning structures from functions. Passing by pointer is often more efficient for large structures.

#### Nested Structures #Level3 #Structs #Nesting #Composition
Defining structures that contain members which are themselves other structures.

#### Bit-Fields #Level3 #Structs #BitFields #Memory #Optimization
Defining structure members with specific bit widths for memory optimization, often used in low-level programming.

### Unions (`union`) #Level2 #Unions #DataStructures #Memory #Overlay
Allowing different data types to share the same memory location. Only one member can hold a value at any given time.

#### Defining and Using Unions #Level3 #Unions #Definition #Usage #MemorySharing
Syntax for defining unions. Accessing members (only the last written member is valid). Use cases: type punning (carefully!), saving memory when only one representation is needed at a time.

### Enumerations (`enum`) #Level2 #Enums #Constants #Readability #NamedIntegers
Defining a set of named integer constants.

#### Defining Enums #Level3 #Enums #Definition #Syntax
Using the `enum` keyword to create enumeration types. Assigning specific integer values (optional).

#### Using Enums #Level3 #Enums #Usage #Readability #TypeSafety
Using enum constants to improve code readability and maintainability compared to raw integer values or `#define` macros. Limited type safety.

### `typedef` Keyword #Level2 #Typedef #Aliases #Readability #Syntax
Creating aliases (alternative names) for existing data types (including structs, unions, enums, pointers, etc.).

#### Usage and Benefits #Level3 #Typedef #Syntax #Readability #Abstraction
Simplifying complex type declarations and improving code clarity.

## File Input/Output #Level1 #IO #Files #Persistence #Streams
Reading from and writing to files.

### File Concepts #Level2 #Files #Basics #Streams #Buffering
Understanding how C interacts with the operating system's file system.

#### File Pointers (`FILE *`) #Level3 #Files #FilePointer #Stream #Stdio
The `FILE` structure (defined in `<stdio.h>`) and file pointers used to identify and manage open files (streams).

#### Text vs. Binary Files #Level3 #Files #TextMode #BinaryMode #NewlineTranslation
Differences between opening files in text mode (newline translation may occur) and binary mode (raw byte access).

#### Buffering #Level3 #Files #Buffering #Performance #Fflush
How file I/O is often buffered for performance. Functions like `fflush` to force writing of buffered data.

### Opening and Closing Files #Level2 #Files #Open #Close #Fopen #Fclose
Managing the lifecycle of file access.

#### `fopen()` #Level3 #Files #Fopen #Modes #ErrorHandling
Opening a file with specified modes (`"r"`, `"w"`, `"a"`, `"rb"`, `"wb"`, `"ab"`, `"r+"`, etc.). Returns a `FILE*` pointer or `NULL` on error. Importance of error checking.

#### `fclose()` #Level3 #Files #Fclose #Cleanup #ResourceManagement
Closing an open file stream, flushing buffers, and releasing associated resources. Essential to prevent data loss and resource leaks.

### Reading and Writing Files #Level2 #Files #Read #Write #IO #Functions
Performing I/O operations on open files.

#### Character I/O (`fgetc`, `fputc`) #Level3 #Files #CharacterIO #Fgetc #Fputc
Reading/writing single characters from/to a file stream.

#### String I/O (`fgets`, `fputs`) #Level3 #Files #StringIO #Fgets #Fputs
Reading/writing lines (strings) from/to a file stream. `fgets` is safer than `gets`.

#### Formatted I/O (`fscanf`, `fprintf`) #Level3 #Files #FormattedIO #Fprintf #Fscanf
Reading/writing formatted data from/to a file stream, similar to `scanf` and `printf`.

#### Binary I/O (`fread`, `fwrite`) #Level3 #Files #BinaryIO #Fread #Fwrite #RawData
Reading/writing blocks of raw binary data (e.g., structure contents) from/to a file stream. Requires careful handling of size and count parameters.

### File Positioning #Level2 #Files #Positioning #Seek #Tell #RandomAccess
Moving the read/write position within a file.

#### `fseek()` #Level3 #Files #Fseek #SeekOrigin #SEEK_SET #SEEK_CUR #SEEK_END
Setting the file position indicator to a specific location relative to the beginning (`SEEK_SET`), current position (`SEEK_CUR`), or end (`SEEK_END`).

#### `ftell()` #Level3 #Files #Ftell #CurrentPosition
Getting the current value of the file position indicator.

#### `rewind()` #Level3 #Files #Rewind #SeekBeginning
Resetting the file position indicator to the beginning of the file. Equivalent to `fseek(stream, 0L, SEEK_SET)`.

### Error Handling #Level2 #Files #ErrorHandling #Feof #Ferror
Detecting issues during file operations.

#### `feof()` #Level3 #Files #Feof #EndOfFile
Checking if the end-of-file indicator has been set for a stream. Note: Only reliable *after* a read attempt fails due to EOF.

#### `ferror()` #Level3 #Files #Ferror #ReadWriteError
Checking if the error indicator has been set for a stream, indicating a read/write error occurred.

#### `perror()` and `errno` #Level3 #Files #Perror #Errno #SystemErrors
Using `errno` (a global variable storing the last error code) and `perror` (prints a system error message corresponding to `errno`) for more detailed error diagnostics.

## The C Preprocessor #Level1 #Preprocessor #Directives #Macros #CompilationPhase
Instructions processed before actual compilation.

### Preprocessor Directives #Level2 #Preprocessor #Directives #Syntax
Commands starting with `#` that modify the source code before the compiler sees it.

#### `#include` #Level3 #Preprocessor #Include #Headers #CodeInclusion
Including the contents of header files or other source files.

#### `#define` #Level3 #Preprocessor #Define #Macros #Constants
Defining symbolic constants and macros (function-like and object-like).

#### `#undef` #Level3 #Preprocessor #Undef #Macros
Undefining previously defined macros or constants.

#### Conditional Compilation (`#ifdef`, `#ifndef`, `#if`, `#else`, `#elif`, `#endif`) #Level3 #Preprocessor #ConditionalCompilation #Ifdef #Ifndef
Including or excluding blocks of code based on whether macros are defined or conditions are met. Useful for platform-specific code, debugging builds, etc.

#### `#error` and `#warning` #Level3 #Preprocessor #Error #Warning #Diagnostics
Generating compiler errors or warnings during preprocessing.

#### `#pragma` #Level3 #Preprocessor #Pragma #CompilerSpecific
Providing implementation-defined instructions to the compiler (e.g., optimization hints, disabling warnings). Often non-portable.

### Macros #Level2 #Preprocessor #Macros #TextReplacement #Metaprogramming
Using `#define` for more than just constants.

#### Object-like Macros #Level3 #Macros #ObjectLike #Constants
Simple text substitution for constants. ` #define PI 3.14159 `

#### Function-like Macros #Level3 #Macros #FunctionLike #InlineCode #Pitfalls
Macros that take arguments, resembling functions but performing text substitution. Potential pitfalls: multiple evaluations of arguments, operator precedence issues, need for parentheses. ` #define SQUARE(x) ((x)*(x)) `

#### Predefined Macros #Level3 #Macros #Predefined #StandardMacros #Diagnostics
Standard macros provided by the C standard (e.g., `__FILE__`, `__LINE__`, `__DATE__`, `__TIME__`, `__STDC__`). Useful for logging and debugging.

#### Stringification Operator (`#`) #Level3 #Macros #Stringification #Stringize
Turning a macro argument into a string literal within the macro expansion.

#### Token Pasting Operator (`##`) #Level3 #Macros #TokenPasting #Concatenation
Concatenating two tokens (e.g., variable names) during macro expansion.

## Advanced Topics #Level1 #Advanced #BeyondBasics #ComplexConcepts
More complex features and techniques in C.

### Type Qualifiers #Level2 #Types #Qualifiers #Const #Volatile #Restrict #Atomic
Keywords that provide additional information about variables.

#### `const` #Level3 #Qualifiers #Const #Immutability #ReadOnly
Indicating that a variable's value should not be modified after initialization. Used with variables and pointers (pointer-to-const, const-pointer).

#### `volatile` #Level3 #Qualifiers #Volatile #Optimization #Hardware
Indicating that a variable's value can change unexpectedly (e.g., hardware registers, shared memory in concurrent contexts). Prevents certain compiler optimizations.

#### `restrict` (C99) #Level3 #Qualifiers #Restrict #Pointers #Optimization #Aliasing
A hint to the compiler (primarily for pointer parameters) that a particular pointer is the *only* way to access the pointed-to object within a certain scope. Allows for better optimization by addressing pointer aliasing issues.

#### `_Atomic` (C11) #Level3 #Qualifiers #Atomic #Concurrency #Threads #Synchronization
Specifying that operations on a variable should be atomic (indivisible), crucial for safe concurrent access without explicit locks in multithreaded programming.

### Storage Classes #Level2 #Storage #Lifetime #Scope #Linkage
Keywords determining lifetime, scope, and linkage of variables and functions.

#### `auto` #Level3 #Storage #Auto #Local #Stack #Default
Default storage class for local variables (automatic storage duration, block scope). Rarely used explicitly.

#### `register` #Level3 #Storage #Register #Optimization #Hint #Deprecated
A hint to the compiler to store a variable in a CPU register for faster access. Modern compilers often ignore this hint and perform better register allocation automatically. Largely obsolete.

#### `static` #Level3 #Storage #Static #Lifetime #InternalLinkage #FileScope
For local variables: static storage duration (lifetime of program), retains value between function calls. For global variables/functions: internal linkage (visible only within the current source file).

#### `extern` #Level3 #Storage #Extern #Declaration #ExternalLinkage #Global
Declares a variable or function defined elsewhere (typically in another file). Indicates external linkage (visible across multiple files). Used for sharing global variables/functions.

### Incomplete Types #Level2 #Types #Incomplete #ForwardDeclaration #Pointers
Types whose size is not yet known by the compiler at a particular point.

#### Usage with Structs/Unions #Level3 #IncompleteTypes #Structs #Pointers #OpaqueTypes
Declaring pointers to structs or unions before their full definition is known (`struct MyStruct;`). Useful for creating opaque data types and breaking circular dependencies between header files.

### Variable Length Arrays (VLAs) (C99) #Level2 #Arrays #VLA #DynamicSize #Stack #C99
Arrays whose size is determined at runtime rather than compile time. Allocated on the stack.

#### Declaration and Usage #Level3 #VLA #Syntax #RuntimeSize #StackAllocation
Declaring arrays with non-constant size expressions (`int size = n; int arr[size];`).

#### Limitations and Considerations #Level3 #VLA #StackOverflow #OptionalInC11 #Portability
Potential for stack overflow if size is too large. Became optional in C11. May not be supported by all compilers or environments. Often avoided in favor of dynamic allocation on the heap.

### Flexible Array Members (C99) #Level2 #Structs #FlexibleArray #DynamicSize #C99
Declaring an array of unspecified size as the last member of a structure.

#### Definition and Usage #Level3 #FlexibleArray #Syntax #StructHack #DynamicStructs
Syntax (`struct S { int count; char data[]; };`). Used to create structures with variable-sized data appended, allocated dynamically in a single block.

### Multithreading (C11 Standard Library / POSIX Threads) #Level2 #Concurrency #Threads #Parallelism #C11 #POSIX
Executing multiple sequences of instructions concurrently.

#### C11 Threads (`<threads.h>`) #Level3 #Threads #C11 #StandardLibrary #ThrdCreate #Mutex #CondVar
Standard library support for creating and managing threads (`thrd_create`, `thrd_join`), mutexes (`mtx_t`), condition variables (`cnd_t`), and thread-local storage (`tss_t`).

#### POSIX Threads (pthreads) #Level3 #Threads #POSIX #Library #PthreadCreate #Mutex #Semaphore
Widely used threading library (common on Unix-like systems). Provides functions for thread creation, synchronization primitives (mutexes, semaphores, condition variables), etc.

#### Synchronization Primitives #Level3 #Threads #Synchronization #Mutex #Semaphore #ConditionVariable #Atomic
Techniques to coordinate access to shared resources between threads: mutexes (mutual exclusion), semaphores (counting access), condition variables (waiting for conditions), atomic operations.

#### Common Issues (Race Conditions, Deadlocks) #Level3 #Threads #ConcurrencyErrors #RaceCondition #Deadlock
Understanding and avoiding common concurrency problems like race conditions (unpredictable results due to unsynchronized access) and deadlocks (threads waiting indefinitely for each other).

### Internationalization and Localization #Level2 #Internationalization #Localization #Locale #I18n #L10n
Adapting software for different languages, regions, and cultural conventions.

#### Locales (`<locale.h>`) #Level3 #Locale #Setlocale #Formatting #CharacterSets
Using `setlocale` to configure program behavior based on locale settings (e.g., number formatting, currency symbols, date/time formats, character classification, collation).

#### Wide Characters and Multibyte Strings (`<wchar.h>`, `<wctype.h>`) #Level3 #WideChars #Multibyte #Unicode #Encoding
Handling character sets beyond basic ASCII using wide characters (`wchar_t`) and multibyte character encodings (like UTF-8). Functions for conversion and manipulation.

### Signal Handling (`<signal.h>`) #Level2 #Signals #AsynchronousEvents #Interrupts #ErrorHandling
Handling asynchronous events or software interrupts sent to a program.

#### Signal Concepts #Level3 #Signals #Events #Asynchronous #Interrupt
Understanding different signals (e.g., `SIGINT`, `SIGSEGV`, `SIGTERM`) and their causes.

#### `signal()` and `sigaction()` #Level3 #Signals #SignalHandler #CatchingSignals
Registering signal handler functions to perform specific actions when a signal is received. `sigaction` provides more control than `signal`.

## C Standard Library #Level1 #Library #StdLib #Functions #APIs
Overview of the functions, types, and macros provided by the standard library headers.

### Input/Output (`<stdio.h>`) #Level2 #Library #Stdio #IO #Files #Console
File and console I/O operations (already covered in detail). `printf`, `scanf`, `fopen`, `fclose`, `fgets`, `fputs`, `fread`, `fwrite`, etc.

### String Manipulation (`<string.h>`) #Level2 #Library #StringH #Strings #Manipulation
Functions for working with null-terminated strings (already covered). `strcpy`, `strlen`, `strcmp`, `strcat`, `strchr`, `strstr`, `memcpy`, `memmove`, `memset`.

### Memory Allocation (`<stdlib.h>`) #Level2 #Library #Stdlib #Memory #Allocation
Dynamic memory management functions (already covered). `malloc`, `calloc`, `realloc`, `free`.

### General Utilities (`<stdlib.h>`) #Level2 #Library #Stdlib #Utilities #Conversion #Random #Environment
Various utility functions: string conversions (`atoi`, `atof`, `strtol`, `strtod`), random number generation (`rand`, `srand`), program termination (`exit`, `abort`), environment interaction (`getenv`, `system`).

### Mathematics (`<math.h>`) #Level2 #Library #MathH #Mathematics #FloatingPoint
Common mathematical functions: trigonometric (`sin`, `cos`, `tan`), exponential/logarithmic (`exp`, `log`, `log10`), power/root (`pow`, `sqrt`), rounding (`ceil`, `floor`, `round`), etc. Requires linking with the math library (`-lm` flag in GCC/Clang).

### Character Handling (`<ctype.h>`) #Level2 #Library #CtypeH #Characters #Classification #Conversion
Functions for classifying characters (`isdigit`, `isalpha`, `isspace`, `isupper`, `islower`) and converting character case (`toupper`, `tolower`).

### Time and Date (`<time.h>`) #Level2 #Library #TimeH #Time #Date #Clocks
Functions for getting current time/date (`time`, `localtime`, `gmtime`), formatting time (`strftime`), measuring processor time (`clock`).

### Assertions (`<assert.h>`) #Level2 #Library #AssertH #Debugging #Assertions #Contracts
The `assert` macro for checking program invariants during development. Disabled if `NDEBUG` macro is defined.

### Variable Arguments (`<stdarg.h>`) #Level2 #Library #StdargH #Variadic #Functions #Ellipsis
Macros for implementing functions that accept a variable number of arguments (like `printf`). `va_list`, `va_start`, `va_arg`, `va_end`.

### Non-local Jumps (`<setjmp.h>`) #Level2 #Library #SetjmpH #NonLocalJump #ErrorHandling #Advanced
Functions (`setjmp`, `longjmp`) for saving and restoring program state to perform non-local jumps, sometimes used for advanced error handling mechanisms. Use with caution.

### Other Headers #Level2 #Library #MiscHeaders #Limits #Float #Errno
Brief mention of other useful headers like `<limits.h>` (integer type limits), `<float.h>` (floating-point type limits), `<errno.h>` (error codes).

## Software Development Practices #Level1 #Development #BestPractices #Tools #Methodology
Writing robust, maintainable, and efficient C code.

### Coding Style and Conventions #Level2 #Style #Readability #Consistency #Maintainability
Importance of consistent formatting, naming conventions (e.g., snake_case), commenting, and code organization for readability and maintainability. Common style guides (e.g., Linux kernel style, Google C++ style adapted for C).

### Defensive Programming #Level2 #Robustness #ErrorHandling #Validation #Assertions
Writing code that anticipates and handles potential errors gracefully. Input validation, checking return values, using assertions.

### Debugging Techniques #Level2 #Debugging #Troubleshooting #Tools #Strategies
Methods for finding and fixing bugs: using a debugger (GDB, LLDB), `printf` debugging, code reviews, static analysis.

### Testing #Level2 #Testing #UnitTesting #IntegrationTesting #QualityAssurance
Writing tests to verify code correctness. Unit testing frameworks (e.g., Check, CUnit), integration testing, regression testing.

### Version Control Systems (Git) #Level2 #VersionControl #Git #Collaboration #History
Using tools like Git to track changes, collaborate with others, and manage different versions of the codebase. Basic Git commands (`clone`, `add`, `commit`, `push`, `pull`, `branch`, `merge`).

### Build Systems (Make, CMake) #Level2 #Build #Automation #Make #CMake #Dependencies
Automating the compilation and linking process for projects of any size. Managing dependencies and build configurations.

### Static Analysis Tools #Level2 #Tools #StaticAnalysis #CodeQuality #BugDetection
Using tools (e.g., Cppcheck, Clang Static Analyzer, PVS-Studio) that analyze source code without executing it to find potential bugs, style issues, and vulnerabilities.

### Performance Analysis and Optimization #Level2 #Performance #Optimization #Profiling #Benchmarking
Identifying performance bottlenecks using profilers (e.g., gprof, Valgrind/Callgrind, perf) and applying optimization techniques (algorithmic improvements, compiler optimizations, careful memory access).

### Security Considerations #Level2 #Security #Vulnerabilities #SafeCoding #BestPractices
Writing secure C code by avoiding common pitfalls like buffer overflows, format string vulnerabilities, integer overflows, use-after-free errors. Using safer library functions (`strncpy`, `snprintf`, `fgets`).

## Interfacing with Other Languages #Level1 #Interoperability #FFI #Integration
Calling C code from other languages and vice versa.

### Foreign Function Interface (FFI) Concepts #Level2 #FFI #Interoperability #Bindings
General principles of how different programming languages can call functions written in C. ABI (Application Binary Interface) compatibility.

### Calling C from Python #Level3 #FFI #Python #Ctypes #CFFI #Cython
Using Python libraries like `ctypes`, `CFFI`, or tools like Cython to load and call functions in C shared libraries (.so, .dll).

### Calling C from Java (JNI) #Level3 #FFI #Java #JNI #NativeMethods
Using the Java Native Interface (JNI) to call C functions from Java code.

### Calling C from C++ #Level3 #FFI #CPP #ExternC #Compatibility
Directly calling C functions from C++ code. Using `extern "C"` linkage specification to prevent C++ name mangling.

### Calling Other Languages from C #Level2 #FFI #Embed #Extend
Embedding interpreters (like Python, Lua) within C applications or calling functions in libraries written in other languages (requires specific mechanisms provided by those languages/libraries).

## Common C Idioms and Patterns #Level1 #Idioms #Patterns #BestPractices #Techniques
Recurring solutions and ways of writing C code effectively.

### Opaque Pointers #Level2 #Idioms #OpaquePointer #Abstraction #Encapsulation
Hiding implementation details of a data structure by exposing only pointers to incomplete types in header files.

### Callback Functions #Level2 #Idioms #Callbacks #FunctionPointers #Extensibility
Using function pointers to allow customization of behavior in libraries or frameworks.

### Error Handling Strategies #Level2 #Idioms #ErrorHandling #ReturnCodes #Errno #Setjmp
Common patterns for signaling and handling errors (return codes, `errno`, `goto` for cleanup, `setjmp`/`longjmp`).

### Resource Acquisition Is Initialization (RAII) - Emulation #Level2 #Idioms #RAII #ResourceManagement #Cleanup #Goto
Emulating RAII principles (common in C++) using techniques like `goto` cleanup labels or custom cleanup functions to ensure resources (memory, files) are released properly, especially in the presence of errors.

### Generic Programming (using `void*` and Macros) #Level2 #Idioms #Generics #VoidPointer #Macros #TypeCasting
Simulating generic data structures and algorithms using `void*` pointers (requiring explicit type casting) or preprocessor macros (compile-time code generation).

