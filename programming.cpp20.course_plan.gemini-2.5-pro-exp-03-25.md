# I. Introduction and Basics

## Understanding the History and Evolution of C++
"<llm_prompt> Starting with heading level 3 (###), explain the origins of C++, its connection to the C language, and how it has evolved through different ISO standard revisions (C++98, C++03, C++11, C++14, C++17, C++20, C++23). Include key motivations behind major revisions. Provide a concise summary and a reflective prompt about C++'s design philosophy. Link to resources detailing the history of C++. </llm_prompt>"

## Setting up the Development Environment
"<llm_prompt> Starting with heading level 3 (###), guide the learner through setting up a C++ development environment. Cover installing compilers (GCC, Clang, MSVC), choosing IDEs (VS Code, CLion) or text editors (Vim, Emacs), and introduce build systems (Make, CMake). Explain the C++ compilation process (preprocessing, compilation, assembly, linking) with a diagram. Define key terms (compiler, IDE, build system, linker) for a glossary. Include an interactive quiz on environment setup steps. Provide links to compiler/IDE download pages. </llm_prompt>"
### Exploring Compilers
"<llm_prompt> Starting with heading level 4 (####), detail the characteristics, pros, and cons of popular C++ compilers: GCC, Clang, and MSVC. Provide examples of basic compilation commands for each, using inline code formatting like `g++ main.cpp -o main`. </llm_prompt>"
### Choosing IDEs and Editors
"<llm_prompt> Starting with heading level 4 (####), discuss popular IDEs (Visual Studio Code, CLion, Visual Studio) and text editors (Vim, Emacs) for C++ development, highlighting features relevant to C++ (debugging, code completion, integration with build systems). </llm_prompt>"
### Understanding Build Systems
"<llm_prompt> Starting with heading level 4 (####), introduce the concept of build automation and explain the roles of Make, CMake, Ninja, and Meson. Show a minimal `CMakeLists.txt` example in a code block. </llm_prompt>"

## Learning Basic Syntax and Structure
"<llm_prompt> Starting with heading level 3 (###), explain the fundamental syntax rules of C++, the structure of a minimal C++ program, the role of the `main` function as the entry point, and the use of namespaces (e.g., `std`). Provide a simple 'Hello, World!' example using `cout`. Highlight key syntax elements like semicolons and braces. </llm_prompt>"
### Using Comments
"<llm_prompt> Starting with heading level 4 (####), explain the syntax and purpose of single-line (`//`) and multi-line (`/* ... */`) comments in C++ for documentation and code clarity. Provide code examples. </llm_prompt>"
### The `main` Function Explained
"<llm_prompt> Starting with heading level 4 (####), detail the signature and purpose of the `main` function, including its return type (`int`) and optional parameters (`argc`, `argv`) for command-line arguments. Show examples of returning `0` for success. </llm_prompt>"
### Understanding Preprocessor Directives
"<llm_prompt> Starting with heading level 4 (####), explain the role of the preprocessor and common directives like `#include` for including header files and `#define` for creating simple macros. Provide examples like `#include <iostream>`. Cross-reference with the later Preprocessor section and C++20 Modules. </llm_prompt>"

## Working with Variables and Data Types
"<llm_prompt> Starting with heading level 3 (###), explain how variables are used to store data in memory. Cover declaration, initialization, scope, and the concept of data types determining the kind of data a variable can hold and the operations that can be performed on it. Define 'variable', 'data type', 'declaration', 'initialization', and 'scope' for a glossary. </llm_prompt>"
### Exploring Primitive Data Types
"<llm_prompt> Starting with heading level 4 (####), list and describe the fundamental C++ data types (`int`, `float`, `double`, `char`, `bool`, `void`, `wchar_t`), including their typical size ranges (mentioning they can be platform-dependent) and usage. Provide code examples of declaring variables of each type. </llm_prompt>"
### Applying Type Modifiers
"<llm_prompt> Starting with heading level 4 (####), explain how modifiers like `signed`, `unsigned`, `short`, `long`, and `long long` alter the range or size of primitive integer and character types. Provide examples like `unsigned int`. </llm_prompt>"
### Declaring and Initializing Variables
"<llm_prompt> Starting with heading level 4 (####), demonstrate different ways to declare and initialize variables in C++, including copy initialization (`=`), direct initialization (`()`), and uniform initialization (`{}`) introduced in C++11. Explain variable scope (local, global). </llm_prompt>"
### Defining Constants
"<llm_prompt> Starting with heading level 4 (####), explain how to create immutable variables (constants) using `const` and compile-time constants using `constexpr`. Discuss the benefits of using constants for readability and safety. </llm_prompt>"
#### Using `consteval` (C++20)
"<llm_prompt> Starting with heading level 5 (#####), explain the C++20 `consteval` keyword, specifying that a function *must* produce a compile-time constant (immediate function). Provide a use-case example compared to `constexpr`. </llm_prompt>"
#### Using `constinit` (C++20)
"<llm_prompt> Starting with heading level 5 (#####), explain the C++20 `constinit` keyword, used to assert that a variable with static or thread storage duration undergoes static initialization, preventing potential order-of-initialization issues. </llm_prompt>"
### Understanding Literals
"<llm_prompt> Starting with heading level 4 (####), explain what literals are (fixed values in code) and show examples for different types (integer literals like `10`, `0xFF`; floating-point literals like `3.14`, `1.0e-3f`; character literals like `'a'`; string literals like `"hello"`). Mention user-defined literals (C++11). </llm_prompt>"
### Using Type Deduction (`auto`)
"<llm_prompt> Starting with heading level 4 (####), introduce the `auto` keyword (C++11) for automatic type deduction during variable declaration, simplifying code and improving maintainability. Provide examples and mention `decltype`. </llm_prompt>"

## Utilizing Operators
"<llm_prompt> Starting with heading level 3 (###), introduce operators as symbols that perform operations on operands. Categorize and explain the various types of operators in C++. Define 'operand' and 'expression' for a glossary. </llm_prompt>"
### Performing Arithmetic Operations
"<llm_prompt> Starting with heading level 4 (####), explain arithmetic operators (`+`, `-`, `*`, `/`, `%`) with examples, including integer division and the modulo operator. </llm_prompt>"
### Making Comparisons with Relational Operators
"<llm_prompt> Starting with heading level 4 (####), explain relational operators (`==`, `!=`, `>`, `<`, `>=`, `<=`) used for comparing values, resulting in a boolean (`true` or `false`) outcome. Provide examples within `if` statements. </llm_prompt>"
### Using Logical Operators
"<llm_prompt> Starting with heading level 4 (####), explain logical operators (`&&` AND, `||` OR, `!` NOT) used to combine or negate boolean conditions. Show truth tables and examples. </llm_prompt>"
### Manipulating Bits with Bitwise Operators
"<llm_prompt> Starting with heading level 4 (####), explain bitwise operators (`&`, `|`, `^`, `~`, `<<`, `>>`) used for low-level manipulation of binary representations of data. Provide examples like bitmasking or shifting. </llm_prompt>"
### Assigning Values with Assignment Operators
"<llm_prompt> Starting with heading level 4 (####), explain the basic assignment operator (`=`) and compound assignment operators (`+=`, `-=`, `*=`, `/=`, `%=`, etc.) as shorthand. </llm_prompt>"
### Using Increment/Decrement Operators
"<llm_prompt> Starting with heading level 4 (####), explain the pre-increment (`++var`), post-increment (`var++`), pre-decrement (`--var`), and post-decrement (`var--`) operators, highlighting the difference between pre and post versions. </llm_prompt>"
### Applying the Ternary Operator
"<llm_prompt> Starting with heading level 4 (####), explain the conditional (ternary) operator (`condition ? expr_if_true : expr_if_false`) as a concise way to write simple conditional assignments or expressions. </llm_prompt>"
#### Using the Three-Way Comparison Operator (`<=>`) (C++20)
"<llm_prompt> Starting with heading level 5 (#####), introduce the C++20 three-way comparison ('spaceship') operator (`<=>`). Explain how it simplifies comparisons by returning `std::strong_ordering`, `std::weak_ordering`, or `std::partial_ordering` and how it can automatically generate other comparison operators. Provide a simple comparison example. </llm_prompt>"
### Understanding Operator Precedence and Associativity
"<llm_prompt> Starting with heading level 4 (####), explain the rules that determine the order in which operators are evaluated in an expression. Provide a link to a precedence table and give examples demonstrating common pitfalls. </llm_prompt>"

# II. Control Flow

## Using Conditional Statements
"<llm_prompt> Starting with heading level 2 (##), explain how conditional statements allow programs to make decisions and execute different code paths based on specific conditions. Define 'control flow' for a glossary. Provide a transition statement linking variables/operators to decision making. </llm_prompt>"
### Implementing `if` Statements
"<llm_prompt> Starting with heading level 3 (###), explain the basic `if` statement for executing a block of code only if a condition is true. Provide syntax and a simple code example. </llm_prompt>"
### Implementing `if-else` Statements
"<llm_prompt> Starting with heading level 3 (###), explain the `if-else` statement for choosing between two blocks of code based on a condition. Provide syntax and a code example. </llm_prompt>"
### Implementing `if-else if-else` Statements
"<llm_prompt> Starting with heading level 3 (###), explain how to handle multiple conditions sequentially using the `if-else if-else` structure. Provide syntax and a code example (e.g., grading system). </llm_prompt>"
### Implementing `switch` Statements
"<llm_prompt> Starting with heading level 3 (###), explain the `switch` statement for selecting one of many code blocks to execute based on the value of an integer or enum expression. Cover `case`, `break`, and `default`. Discuss potential fall-through behavior. </llm_prompt>"
### Using the Conditional Operator (`?:`)
"<llm_prompt> Starting with heading level 3 (###), revisit the ternary operator (`?:`) in the context of conditional execution flow, showing how it can concisely replace simple `if-else` structures within expressions. </llm_prompt>"

## Employing Looping Constructs
"<llm_prompt> Starting with heading level 2 (##), explain loops as control structures for repeating a block of code multiple times, based on conditions or for a specific number of iterations. Introduce the concept of iteration. </llm_prompt>"
### Using `for` Loops
"<llm_prompt> Starting with heading level 3 (###), explain the traditional `for` loop (initialization; condition; update) for situations where the number of iterations is often known beforehand. Provide syntax and examples (e.g., iterating 0 to 9). </llm_prompt>"
### Using Range-based `for` Loops (C++11)
"<llm_prompt> Starting with heading level 3 (###), introduce the range-based `for` loop (C++11) as a simpler way to iterate over elements in a container (like arrays, vectors) or other ranges. Provide syntax and examples. Mention its compatibility with C++20 Ranges. </llm_prompt>"
### Using `while` Loops
"<llm_prompt> Starting with heading level 3 (###), explain the `while` loop, where a block of code repeats as long as a condition remains true (checked *before* each iteration). Provide syntax and examples (e.g., reading input until a sentinel value). </llm_prompt>"
### Using `do-while` Loops
"<llm_prompt> Starting with heading level 3 (###), explain the `do-while` loop, which is similar to `while` but checks the condition *after* the loop body executes, guaranteeing at least one execution. Provide syntax and examples. </llm_prompt>"
### Controlling Loops with `break`, `continue`, `goto`
"<llm_prompt> Starting with heading level 3 (###), explain loop control statements: `break` (to exit a loop immediately), `continue` (to skip the current iteration and proceed to the next), and `goto` (unconditional jump - explain why it's generally discouraged). Provide examples for `break` and `continue`. </llm_prompt>"

# III. Functions

## Defining and Declaring Functions
"<llm_prompt> Starting with heading level 2 (##), introduce functions as named blocks of reusable code that perform specific tasks, promoting modularity and code organization. Explain the difference between function definition (implementation) and declaration (prototype/signature). Define 'modularity', 'reusability', 'declaration', 'definition', 'prototype' for a glossary. Provide a summary of function benefits. </llm_prompt>"
### Understanding the Function Signature
"<llm_prompt> Starting with heading level 3 (###), explain the components of a function signature: the return type, the function name, and the parameter list (types and optional names). </llm_prompt>"
### Writing the Function Body
"<llm_prompt> Starting with heading level 3 (###), explain that the function body, enclosed in curly braces `{}`, contains the actual code statements that the function executes. </llm_prompt>"
### Declaring Functions (Prototypes)
"<llm_prompt> Starting with heading level 3 (###), explain the purpose of function declarations (prototypes), which allow functions to be called before they are defined in the code. Mention their common use in header files and how C++20 Modules change this. Provide an example. </llm_prompt>"

## Calling Functions and Handling Return Values
"<llm_prompt> Starting with heading level 2 (##), explain how to execute a function (calling/invoking it) and how functions can send results back to the caller using return values. </llm_prompt>"
### Calling Functions
"<llm_prompt> Starting with heading level 3 (###), demonstrate the syntax for calling a function, including passing arguments that correspond to the function's parameters. </llm_prompt>"
### Using the `return` Statement
"<llm_prompt> Starting with heading level 3 (###), explain the `return` statement used to exit a function and optionally send a value back to the caller. Mention that `return` is optional for `void` functions. </llm_prompt>"
### Understanding the `void` Return Type
"<llm_prompt> Starting with heading level 3 (###), explain that functions declared with a `void` return type do not return any value. </llm_prompt>"

## Managing Function Parameters and Arguments
"<llm_prompt> Starting with heading level 2 (##), explain how data is passed into functions using parameters (variables in the function definition) and arguments (values passed during the function call). Discuss different methods of passing arguments. </llm_prompt>"
### Passing Arguments by Value
"<llm_prompt> Starting with heading level 3 (###), explain pass-by-value, where the function receives a *copy* of the argument. Detail its implications (changes inside the function don't affect the original argument) and provide code examples. </llm_prompt>"
### Passing Arguments by Reference
"<llm_prompt> Starting with heading level 3 (###), explain pass-by-reference using the `&` symbol, where the function receives an *alias* to the original argument. Detail its implications (changes affect the original, potentially more efficient for large objects) and provide code examples. Cross-reference with the References section. </llm_prompt>"
### Passing Arguments by Pointer

"<llm_prompt> Starting with heading level 3 (###), explain pass-by-pointer using the `*` symbol, where the function receives the *memory address* of the argument. Detail its implications (changes affect the original via dereferencing, C-style approach) and provide code examples. Cross-reference with the Pointers section. </llm_prompt>"
### Using Default Arguments
"<llm_prompt> Starting with heading level 3 (###), explain how to provide default values for function parameters, making them optional when the function is called. Show syntax and examples. </llm_prompt>"
### Using Constant Parameters
"<llm_prompt> Starting with heading level 3 (###), explain the use of `const` with reference or pointer parameters (`const T&`, `const T*`) to prevent the function from modifying the original argument, enhancing safety and clarity. Provide examples. </llm_prompt>"

## Overloading Functions
"<llm_prompt> Starting with heading level 2 (##), explain function overloading, which allows defining multiple functions with the same name but different parameter lists (number or types of parameters). Discuss how the compiler resolves calls to overloaded functions. Provide examples. Define 'function overloading' for a glossary. </llm_prompt>"

## Implementing Recursion
"<llm_prompt> Starting with heading level 2 (##), explain recursion, where a function calls itself to solve a problem. Discuss the importance of a base case to prevent infinite recursion. Provide a classic example like factorial calculation. Define 'recursion' and 'base case' for a glossary. </llm_prompt>"

## Understanding Inline Functions
"<llm_prompt> Starting with heading level 2 (##), explain the `inline` keyword as a hint to the compiler to replace the function call with the function's body, potentially reducing function call overhead for small functions. Mention that it's only a suggestion and modern compilers often make better decisions. </llm_prompt>"

## Using Lambda Expressions (C++11)
"<llm_prompt> Starting with heading level 2 (##), introduce lambda expressions (C++11) as a way to create anonymous, inline function objects (closures). Explain their syntax and common use cases, especially with STL algorithms. Mention C++20 enhancements (template parameters, simplified captures). Define 'lambda expression', 'closure', 'anonymous function' for a glossary. </llm_prompt>"
### Understanding Syntax and Capture Clauses
"<llm_prompt> Starting with heading level 3 (###), break down the lambda expression syntax: `[capture](parameters) <template> -> return_type { body }`. Explain different capture clauses (`[]`, `[&]`, `[=]`, `[this]`, `[var]`, `[=, this]`, etc.) for accessing variables from the enclosing scope. Provide varied examples. </llm_prompt>"

## Using Function Pointers
"<llm_prompt> Starting with heading level 2 (##), explain function pointers as variables that store the memory address of a function. Discuss their syntax for declaration and usage, including passing functions as arguments (callbacks). Provide examples. </llm_prompt>"

## Accessing `main` Function Arguments
"<llm_prompt> Starting with heading level 2 (##), explain how the `main` function can receive command-line arguments passed to the program via its parameters: `int argc` (argument count) and `char* argv[]` (argument vector - array of C-style strings). Provide an example program that prints its command-line arguments. </llm_prompt>"

# IV. Data Structures

## Using Arrays
"<llm_prompt> Starting with heading level 2 (##), introduce arrays as fixed-size, contiguous collections of elements of the same data type, accessed via an index. Define 'array', 'index', 'contiguous memory' for a glossary. Provide a summary highlighting fixed size as a limitation. </llm_prompt>"
### Working with One-Dimensional Arrays
"<llm_prompt> Starting with heading level 3 (###), explain the declaration, initialization, and access (using `[]` operator) of one-dimensional arrays. Mention zero-based indexing. Provide code examples. </llm_prompt>"
### Working with Multi-Dimensional Arrays
"<llm_prompt> Starting with heading level 3 (###), explain multi-dimensional arrays (arrays of arrays), commonly used for matrices or tables. Show declaration, initialization, and access using multiple indices. Mention C++23 `std::mdspan` as a modern alternative view. </llm_prompt>"
### Understanding Arrays and Pointers Relationship
"<llm_prompt> Starting with heading level 3 (###), explain the close relationship between arrays and pointers in C++, including array name decay to a pointer to the first element and how pointer arithmetic can be used to access array elements. Provide examples. </llm_prompt>"
### Using C-style Strings (`char` arrays)
"<llm_prompt> Starting with heading level 3 (###), explain the traditional C approach of representing strings as null-terminated arrays of characters (`char`). Discuss common functions from `<cstring>` (like `strcpy`, `strlen`) and their potential dangers (buffer overflows). Contrast with `std::string`. </llm_prompt>"

## Mastering Pointers
"<llm_prompt> Starting with heading level 2 (##), explain pointers as variables that store memory addresses. Discuss their importance for dynamic memory allocation, efficient data passing, and interfacing with C APIs. Define 'pointer', 'address', 'dereference', 'dynamic memory', 'indirection' for a glossary. Highlight the risks (e.g., dangling pointers, leaks) if not managed carefully. </llm_prompt>"
### Declaring and Initializing Pointers
"<llm_prompt> Starting with heading level 3 (###), show the syntax for declaring pointers using `*`, getting the address of a variable using `&`, and initializing pointers, including the use of `nullptr` (C++11) for null pointers. </llm_prompt>"
### Dereferencing Pointers
"<llm_prompt> Starting with heading level 3 (###), explain the dereference operator (`*`) used to access the value stored at the memory address held by a pointer. Provide code examples demonstrating reading and writing through a pointer. </llm_prompt>"
### Performing Pointer Arithmetic
"<llm_prompt> Starting with heading level 3 (###), explain how arithmetic operations (addition, subtraction, increment, decrement) can be performed on pointers, typically used to navigate elements within an array. Explain how the step size depends on the pointed-to type. </llm_prompt>"
### Revisiting Pointers and Arrays
"<llm_prompt> Starting with heading level 3 (###), reinforce the connection between pointers and arrays, showing how array indexing (`arr[i]`) is equivalent to pointer arithmetic and dereferencing (`*(arr + i)`). Discuss array decay again. </llm_prompt>"
### Understanding Pointers to Pointers
"<llm_prompt> Starting with heading level 3 (###), explain pointers that point to other pointers (e.g., `int**`). Discuss use cases like dynamically allocated multi-dimensional arrays or modifying pointers passed to functions. </llm_prompt>"
### Using `void` Pointers
"<llm_prompt> Starting with heading level 3 (###), explain `void*` pointers as generic pointers that can hold the address of any data type but cannot be dereferenced directly without casting. Mention their use in C interfaces or generic programming contexts. </llm_prompt>"
### Function Pointers Revisited
"<llm_prompt> Starting with heading level 3 (###), cross-reference the earlier Function Pointers topic, showing pointer syntax in this context. </llm_prompt>"
### Introducing Smart Pointers (C++11)
"<llm_prompt> Starting with heading level 3 (###), briefly introduce smart pointers (`std::unique_ptr`, `std::shared_ptr`, `std::weak_ptr`) as modern C++ wrappers that automate memory management for dynamically allocated objects using RAII. State that they will be covered in detail under Memory Management and STL. </llm_prompt>"

## Understanding References
"<llm_prompt> Starting with heading level 2 (##), explain references as aliases or alternative names for existing variables. Contrast them with pointers, emphasizing their non-nullability and non-reassignability after initialization. Define 'reference', 'alias' for a glossary. </llm_prompt>"
### Declaring and Initializing References
"<llm_prompt> Starting with heading level 3 (###), show the syntax for declaring references using `&`. Emphasize that they *must* be initialized upon declaration and cannot be made to refer to a different variable later. </llm_prompt>"
### Comparing References vs. Pointers
"<llm_prompt> Starting with heading level 3 (###), provide a clear comparison table highlighting the key differences between references and pointers regarding syntax (`&` vs `*`), nullability, reassignability, arithmetic operations, and typical use cases. </llm_prompt>"
### Using References as Function Parameters
"<llm_prompt> Starting with heading level 3 (###), reiterate the use of references for pass-by-reference in functions, emphasizing efficiency (avoids copying) and ability to modify arguments. Provide code examples, including using `const&` for read-only access. </llm_prompt>"
### Using References as Return Values
"<llm_prompt> Starting with heading level 3 (###), explain how functions can return references, typically to allow modifying the returned object (e.g., `operator[]`). Warn about the danger of returning references to local variables (dangling references). </llm_prompt>"

## Using Structures (`struct`)
"<llm_prompt> Starting with heading level 2 (##), introduce `struct` as a way to group related data items (members), potentially of different types, into a single user-defined type. Mention their use for creating records or composite data. Note the C++20 designated initializer support. Define 'struct', 'member', 'aggregation' for a glossary. </llm_prompt>"
### Defining Structs
"<llm_prompt> Starting with heading level 3 (###), show the syntax for defining a structure using the `struct` keyword and declaring its data members. Provide an example like a `Point` or `Student` struct. </llm_prompt>"
### Accessing Struct Members
"<llm_prompt> Starting with heading level 3 (###), explain how to access the members of a struct variable using the dot operator (`.`) and members of a struct pointed to by a pointer using the arrow operator (`->`). Provide code examples for both. </llm_prompt>"
### Passing Structs to Functions
"<llm_prompt> Starting with heading level 3 (###), demonstrate how to pass struct variables to functions (by value, reference, or pointer) and how functions can return structs. </llm_prompt>"
### Comparing Structs vs. Classes
"<llm_prompt> Starting with heading level 3 (###), explain the primary difference between `struct` and `class` in C++: default member access (`public` for `struct`, `private` for `class`). Discuss the convention of using structs for Plain Old Data (POD) or simple aggregates. </llm_prompt>"

## Understanding Unions
"<llm_prompt> Starting with heading level 2 (##), explain `union` as a special data structure where all members share the same memory location. Discuss its use cases (memory saving, type punning - though often unsafe) and the fact that only one member can hold a value at any time. Warn about the complexities and potential dangers. </llm_prompt>"

## Using Enumerations (`enum`)
"<llm_prompt> Starting with heading level 2 (##), explain enumerations (`enum`) as user-defined types that consist of a set of named integer constants (enumerators), improving code readability and maintainability compared to using raw integers. Mention C++20 `using enum`. Define 'enumeration', 'enumerator' for a glossary. </llm_prompt>"
### Using Unscoped Enumerations (`enum`)
"<llm_prompt> Starting with heading level 3 (###), explain traditional C-style enums, where enumerators are defined in the surrounding scope. Discuss potential issues like name clashes and implicit conversion to `int`. </llm_prompt>"
### Using Scoped Enumerations (`enum class`/`enum struct`) (C++11)
"<llm_prompt> Starting with heading level 3 (###), explain scoped enums (`enum class` or `enum struct`) introduced in C++11. Highlight their advantages: enumerators are scoped within the enum name (preventing clashes), and they do not implicitly convert to integers, providing better type safety. Provide comparative examples. </llm_prompt>"

# V. Object-Oriented Programming (OOP)

## Introducing Classes
"<llm_prompt> Starting with heading level 2 (##), introduce classes as the fundamental building block of OOP in C++, serving as blueprints for creating objects. Explain how they bundle data (attributes/member variables) and functions operating on that data (methods/member functions). Mention default private access. Note C++20 designated initializer applicability. Define 'class', 'object', 'attribute', 'method', 'instance' for a glossary. Provide a summary of OOP principles (Abstraction, Encapsulation, Inheritance, Polymorphism) that classes enable. </llm_prompt>"
### Defining Classes
"<llm_prompt> Starting with heading level 3 (###), show the syntax for defining a class using the `class` keyword, including declaring member variables and member functions within the class definition. Provide a simple example like a `Dog` or `Account` class. </llm_prompt>"
### Using Access Specifiers (`public`, `private`, `protected`)
"<llm_prompt> Starting with heading level 3 (###), explain the `public`, `private`, and `protected` access specifiers, controlling the visibility of class members. Define each specifier's access rules clearly. Explain how they enforce encapsulation. </llm_prompt>"
### Defining Member Functions (Methods)
"<llm_prompt> Starting with heading level 3 (###), explain how to define member functions (methods) either inside or outside the class definition (using the scope resolution operator `::`). Explain their role in operating on the object's data. </llm_prompt>"
### Creating Objects (Instances)
"<llm_prompt> Starting with heading level 3 (###), show how to create objects (instances) of a class. Explain that each object gets its own copy of non-static member variables (representing its state). </llm_prompt>"
### Understanding Constructors
"<llm_prompt> Starting with heading level 3 (###), explain constructors as special member functions automatically called when an object is created, primarily used for initialization. Cover default constructors, parameterized constructors, copy constructors, and move constructors (C++11). Explain constructor overloading. </llm_prompt>"
### Understanding Destructors
"<llm_prompt> Starting with heading level 3 (###), explain destructors as special member functions (with a `~` prefix) automatically called when an object is destroyed. Explain their role in cleanup, especially releasing resources (RAII). </llm_prompt>"
### Using the `this` Pointer
"<llm_prompt> Starting with heading level 3 (###), explain the `this` pointer, which is implicitly available inside non-static member functions and points to the specific object instance on which the function was called. Show examples of its explicit use (e.g., resolving name conflicts, returning `*this`). Mention C++23 explicit `this`. </llm_prompt>"
### Using `static` Members
"<llm_prompt> Starting with heading level 3 (###), explain `static` member variables (shared by all objects of the class) and `static` member functions (callable without an object instance, cannot access non-static members directly). Provide use cases (e.g., counting instances, factory methods). </llm_prompt>"
### Using `friend` Functions and Classes
"<llm_prompt> Starting with heading level 3 (###), explain the `friend` keyword, allowing external functions or classes granted access to the `private` and `protected` members of the class they are friends with. Discuss why `friend` should be used sparingly as it breaks encapsulation. </llm_prompt>"

## Implementing Encapsulation
"<llm_prompt> Starting with heading level 2 (##), define encapsulation as the bundling of data and methods within a class and controlling access to the data using access specifiers (`private`, `protected`). Explain its benefits: data hiding, information hiding, modularity, and reduced complexity. Provide examples using private members and public getter/setter methods. Define 'encapsulation', 'data hiding' for a glossary. </llm_prompt>"

## Implementing Inheritance
"<llm_prompt> Starting with heading level 2 (##), explain inheritance as a mechanism allowing a new class (derived class) to inherit properties (data and methods) from an existing class (base class). Explain the "is-a" relationship it represents and its benefits for code reuse and creating hierarchies. Define 'inheritance', 'base class', 'derived class', 'is-a relationship' for a glossary. </llm_prompt>"
### Defining Base and Derived Classes
"<llm_prompt> Starting with heading level 3 (###), show the syntax for defining a derived class that inherits from a base class using the `:` symbol followed by an access specifier (`public`, `protected`, or `private`) and the base class name. Explain the meaning of `public` inheritance (most common). </llm_prompt>"
### Exploring Types of Inheritance
"<llm_prompt> Starting with heading level 3 (###), briefly describe different inheritance patterns: single, multiple, multilevel, hierarchical, and hybrid inheritance, perhaps with simple diagrams. Mention potential complexities like the Diamond Problem with multiple inheritance. </llm_prompt>"
### Understanding Access Control and Inheritance
"<llm_prompt> Starting with heading level 3 (###), explain how the access specifier used during inheritance (`public`, `protected`, `private`) combines with the access specifiers of the base class members (`public`, `protected`, `private`) to determine the accessibility of inherited members in the derived class. Provide a table summarizing the outcomes. </llm_prompt>"
### Overriding Member Functions
"<llm_prompt> Starting with heading level 3 (###), explain that a derived class can provide its own specific implementation for a member function inherited from the base class (method overriding). Mention the use of the `override` keyword (C++11) for clarity and safety. </llm_prompt>"
### Using Virtual Functions and Polymorphism
"<llm_prompt> Starting with heading level 3 (###), introduce the `virtual` keyword. Explain how declaring a base class function as `virtual` enables dynamic dispatch (runtime polymorphism), allowing derived class methods to be called through a base class pointer or reference. Use a classic Shape hierarchy example. Mention C++20 `virtual` support for `operator<=>`. </llm_prompt>"
### Defining Abstract Classes and Pure Virtual Functions
"<llm_prompt> Starting with heading level 3 (###), explain abstract classes (classes that cannot be instantiated) created by including at least one pure virtual function (`virtual ... = 0;`). Explain their role as interfaces or base classes designed purely for inheritance. </llm_prompt>"
### Understanding Virtual Destructors
"<llm_prompt> Starting with heading level 3 (###), explain the critical importance of declaring destructors `virtual` in base classes if they are intended to be used polymorphically (i.e., deleting derived objects via base pointers). Show the potential memory leak or undefined behavior if this rule is violated. </llm_prompt>"
### Solving The Diamond Problem
"<llm_prompt> Starting with heading level 3 (###), explain the ambiguity that arises in multiple inheritance when a class inherits from two classes sharing a common base class (the "diamond problem"). Introduce `virtual` inheritance as the C++ mechanism to resolve this ambiguity. </llm_prompt>"

## Achieving Polymorphism
"<llm_prompt> Starting with heading level 2 (##), define polymorphism ("many forms") as the ability of objects of different classes to respond to the same message (function call) in different ways. Explain its benefits for flexibility and extensibility. Distinguish between compile-time and run-time polymorphism. Define 'polymorphism', 'static polymorphism', 'dynamic polymorphism' for a glossary. </llm_prompt>"
### Understanding Compile-Time Polymorphism (Static)
"<llm_prompt> Starting with heading level 3 (###), explain that compile-time polymorphism is resolved by the compiler. Give examples: function overloading, operator overloading, and templates (static binding/early binding). Mention how C++20 Concepts refine template polymorphism. </llm_prompt>"
### Understanding Run-Time Polymorphism (Dynamic)
"<llm_prompt> Starting with heading level 3 (###), explain that run-time polymorphism is resolved at execution time, primarily achieved through virtual functions and inheritance (dynamic binding/late binding). Reiterate the Shape example demonstrating dynamic dispatch. </llm_prompt>"

## Overloading Operators
"<llm_prompt> Starting with heading level 2 (##), explain operator overloading as a way to define the behavior of standard C++ operators (like `+`, `<<`, `[]`, C++20 `<=>`) for objects of user-defined classes, making code more intuitive and readable. Provide rationale and examples (e.g., adding complex numbers, printing objects). Define 'operator overloading' for a glossary. </llm_prompt>"
### Understanding Syntax and Rules
"<llm_prompt> Starting with heading level 3 (###), explain the syntax for overloading operators using the `operator` keyword. Discuss whether to implement them as member functions vs. non-member (friend) functions. List operators that *cannot* be overloaded. Mention C++20 `operator<=>`. </llm_prompt>"
### Overloading Common Operators
"<llm_prompt> Starting with heading level 3 (###), provide examples of overloading common operators: arithmetic (`+`, `-`), comparison (`==`, `<`, C++20 `<=>`), stream insertion/extraction (`<<`, `>>`), assignment (`=`), and subscript (`[]`). Include code snippets for each. </llm_prompt>"

# VI. Memory Management

## Contrasting Stack vs. Heap Memory
"<llm_prompt> Starting with heading level 2 (##), explain the two main memory regions used by C++ programs: the stack and the heap (also called free store). Compare their characteristics: allocation/deallocation mechanism (automatic vs. manual/RAII), speed, size limitations, lifetime management, and typical usage. Use a diagram to illustrate. Define 'stack memory', 'heap memory', 'automatic storage duration', 'dynamic storage duration' for a glossary. </llm_prompt>"
### Understanding Stack Allocation
"<llm_prompt> Starting with heading level 3 (###), detail how memory for local variables and function parameters is typically allocated on the stack. Explain its LIFO (Last-In, First-Out) nature and how memory is automatically reclaimed when variables go out of scope. Mention potential stack overflow errors. </llm_prompt>"
### Understanding Heap Allocation (`new`, `delete`)
"<llm_prompt> Starting with heading level 3 (###), explain dynamic memory allocation on the heap using the `new` operator to allocate memory and the `delete` operator to deallocate it. Emphasize that heap memory persists until explicitly deallocated and that manual management is error-prone (leaks, dangling pointers). Mention C++20 handling of `new` for large arrays. </llm_prompt>"
#### Using the `new` Operator
"<llm_prompt> Starting with heading level 4 (####), explain the `new` operator's function: allocates memory on the heap for a single object and calls its constructor. Show syntax. </llm_prompt>"
#### Using the `delete` Operator
"<llm_prompt> Starting with heading level 4 (####), explain the `delete` operator's function: calls the object's destructor and deallocates the memory previously allocated by `new`. Show syntax. Stress the importance of pairing `new` with `delete`. </llm_prompt>"
#### Using the `new[]` Operator
"<llm_prompt> Starting with heading level 4 (####), explain the `new[]` operator for allocating memory for an array of objects on the heap, calling constructors for each element. Show syntax. </llm_prompt>"
#### Using the `delete[]` Operator
"<llm_prompt> Starting with heading level 4 (####), explain the `delete[]` operator for deallocating memory allocated by `new[]`, calling destructors for each element before deallocation. Show syntax. Stress the critical importance of matching `new[]` with `delete[]` (and `new` with `delete`). </llm_prompt>"

## Identifying Memory Leaks
"<llm_prompt> Starting with heading level 2 (##), define memory leaks as situations where heap-allocated memory is no longer needed but is not deallocated, leading to the program consuming progressively more memory. Explain the consequences and how smart pointers largely prevent this issue. Provide a simple code example demonstrating a leak. </llm_prompt>"

## Identifying Dangling Pointers
"<llm_prompt> Starting with heading level 2 (##), define dangling pointers as pointers that refer to memory locations that have already been deallocated or are otherwise invalid (e.g., pointing to a local variable that has gone out of scope). Explain the dangers of dereferencing dangling pointers (undefined behavior). Show an example and explain how smart pointers help prevent this. </llm_prompt>"

## Applying Resource Acquisition Is Initialization (RAII)
"<llm_prompt> Starting with heading level 2 (##), explain the fundamental C++ idiom RAII (Resource Acquisition Is Initialization). Describe how resource lifetimes (memory, files, locks, etc.) are bound to the lifetime of objects with automatic storage duration (stack objects or members). Explain how acquisition happens in the constructor and release in the destructor, ensuring cleanup even during exceptions (stack unwinding). Emphasize its importance for writing robust, exception-safe code. Define 'RAII', 'resource management', 'exception safety' for a glossary. </llm_prompt>"

## Utilizing Smart Pointers (C++11 and later)
"<llm_prompt> Starting with heading level 2 (##), introduce smart pointers (`std::unique_ptr`, `std::shared_ptr`, `std::weak_ptr`) from the `<memory>` header as class templates that wrap raw pointers and manage the lifetime of heap-allocated objects automatically using RAII principles. Highlight their role in preventing memory leaks and dangling pointers in modern C++. Mention C++20 additions (array support for `make_shared`, atomic improvements). </llm_prompt>"
### Using `std::unique_ptr`
"<llm_prompt> Starting with heading level 3 (###), explain `std::unique_ptr` for managing resources with *exclusive ownership*. Detail its characteristics: automatic cleanup, non-copyable (move-only semantics), low overhead. Show creation (using `std::make_unique` from C++14 is preferred) and usage. Provide use-case examples. </llm_prompt>"
### Using `std::shared_ptr`
"<llm_prompt> Starting with heading level 3 (###), explain `std::shared_ptr` for managing resources with *shared ownership* using reference counting. Detail how the resource is deleted only when the last `shared_ptr` pointing to it is destroyed. Show creation (using `std::make_shared` is preferred) and usage. Discuss the overhead of reference counting. Mention C++20 atomic refcount ops and `make_shared` for arrays. </llm_prompt>"
### Using `std::weak_ptr`
"<llm_prompt> Starting with heading level 3 (###), explain `std::weak_ptr` as a non-owning observer of a resource managed by `std::shared_ptr`. Explain its primary use case: breaking potential circular references between `shared_ptr` instances. Show how to create a `weak_ptr` from a `shared_ptr` and how to safely access the resource using `lock()`. </llm_prompt>"
### Using `std::make_unique` and `std::make_shared`
"<llm_prompt> Starting with heading level 3 (###), explain the benefits of using the factory functions `std::make_unique` (C++14) and `std::make_shared` (C++11) over directly using `new` with smart pointers (exception safety, potential performance benefits for `make_shared`). Show syntax examples. Mention C++20 array support for `make_shared`. </llm_prompt>"

# VII. Standard Template Library (STL)

## Introducing the STL
"<llm_prompt> Starting with heading level 2 (##), provide an overview of the C++ Standard Template Library (STL) as a powerful set of generic components (containers, algorithms, iterators, functors). Explain its core philosophy of generic programming and its benefits (reusability, efficiency, standardized components). Briefly introduce C++20 Ranges as a modern way to interact with the STL. Define 'STL', 'generic programming', 'container', 'algorithm', 'iterator' for a glossary. Provide a summary of STL's importance. </llm_prompt>"

## Using STL Containers
"<llm_prompt> Starting with heading level 2 (##), introduce STL containers as class templates that manage collections of objects. Categorize them into sequence containers, associative containers, unordered associative containers, and container adapters. Mention C++20 additions like `contains()` for associative containers and `std::span`. Provide a table summarizing container types and their characteristics (ordering, access time, insertion/deletion). </llm_prompt>"
### Working with Sequence Containers
"<llm_prompt> Starting with heading level 3 (###), describe sequence containers, which maintain the insertion order of elements and allow access based on position. </llm_prompt>"
#### Using `std::vector`
"<llm_prompt> Starting with heading level 4 (####), explain `std::vector` as a dynamic array stored contiguously. Highlight its features: fast random access, efficient push_back/pop_back (amortized constant time), automatic resizing. Provide common operations (`push_back`, `pop_back`, `[]`, `at()`, `size()`, `empty()`). </llm_prompt>"
#### Using `std::deque`
"<llm_prompt> Starting with heading level 4 (####), explain `std::deque` (double-ended queue). Highlight its features: efficient insertion/deletion at both front and back, random access (slower than vector), non-contiguous storage internally. </llm_prompt>"
#### Using `std::list`
"<llm_prompt> Starting with heading level 4 (####), explain `std::list` as a doubly-linked list. Highlight its features: efficient insertion/deletion anywhere (given an iterator), non-contiguous storage, slow sequential/random access. </llm_prompt>"
#### Using `std::forward_list` (C++11)
"<llm_prompt> Starting with heading level 4 (####), explain `std::forward_list` (C++11) as a singly-linked list. Highlight its minimal interface and memory efficiency compared to `std::list`. </llm_prompt>"
#### Using `std::array` (C++11)
"<llm_prompt> Starting with heading level 4 (####), explain `std::array` (C++11) as a fixed-size wrapper around a C-style array. Highlight its features: compile-time size, contiguous storage, provides STL container interface (iterators, etc.), often stack-allocated. </llm_prompt>"
#### Using `std::span` (C++20)
"<llm_prompt> Starting with heading level 4 (####), explain `std::span` (C++20) as a non-owning, bounds-safe view over a contiguous sequence of objects (like `std::vector`, `std::array`, C-style array). Emphasize its role in function parameters to accept any contiguous range without copying or transferring ownership. </llm_prompt>"
### Working with Associative Containers
"<llm_prompt> Starting with heading level 3 (###), describe associative containers, which store elements sorted by keys, allowing efficient searching (logarithmic time complexity). Mention C++20 `contains()` method. </llm_prompt>"
#### Using `std::set`
"<llm_prompt> Starting with heading level 4 (####), explain `std::set` for storing unique elements, sorted according to a comparison criterion (default `std::less`). Provide common operations (`insert`, `erase`, `find`, `count`, C++20 `contains()`). </llm_prompt>"
#### Using `std::multiset`
"<llm_prompt> Starting with heading level 4 (####), explain `std::multiset` similar to `std::set` but allowing duplicate keys. </llm_prompt>"
#### Using `std::map`
"<llm_prompt> Starting with heading level 4 (####), explain `std::map` for storing key-value pairs (`std::pair`) with unique keys, sorted by key. Provide common operations (`insert`, `erase`, `find`, `[]`, `at()`, C++20 `contains()`). </llm_prompt>"
#### Using `std::multimap`
"<llm_prompt> Starting with heading level 4 (####), explain `std::multimap` similar to `std::map` but allowing duplicate keys. Note that `operator[]` is not available. </llm_prompt>"
### Working with Unordered Associative Containers (C++11)
"<llm_prompt> Starting with heading level 3 (###), describe unordered associative containers (C++11), which store elements using hash tables, providing average constant-time complexity for search, insertion, and deletion. Mention C++20 `contains()` method. </llm_prompt>"
#### Using `std::unordered_set`
"<llm_prompt> Starting with heading level 4 (####), explain `std::unordered_set` for storing unique keys using hashing. Contrast its performance characteristics with `std::set`. Mention the need for hashable key types. </llm_prompt>"
#### Using `std::unordered_multiset`
"<llm_prompt> Starting with heading level 4 (####), explain `std::unordered_multiset` similar to `std::unordered_set` but allowing duplicate keys. </llm_prompt>"
#### Using `std::unordered_map`
"<llm_prompt> Starting with heading level 4 (####), explain `std::unordered_map` for storing key-value pairs with unique keys using hashing. Contrast with `std::map`. </llm_prompt>"
#### Using `std::unordered_multimap`
"<llm_prompt> Starting with heading level 4 (####), explain `std::unordered_multimap` similar to `std::unordered_map` but allowing duplicate keys. </llm_prompt>"
### Using Container Adapters
"<llm_prompt> Starting with heading level 3 (###), describe container adapters (`stack`, `queue`, `priority_queue`) which provide a restricted interface on top of an underlying container (like `vector`, `deque`, or `list`). </llm_prompt>"
#### Using `std::stack`
"<llm_prompt> Starting with heading level 4 (####), explain `std::stack` providing LIFO (Last-In, First-Out) semantics. Show common operations (`push`, `pop`, `top`, `empty`, `size`). Mention underlying container options. </llm_prompt>"
#### Using `std::queue`
"<llm_prompt> Starting with heading level 4 (####), explain `std::queue` providing FIFO (First-In, First-Out) semantics. Show common operations (`push`, `pop`, `front`, `back`, `empty`, `size`). Mention underlying container options. </llm_prompt>"
#### Using `std::priority_queue`
"<llm_prompt> Starting with heading level 4 (####), explain `std::priority_queue` where elements are retrieved based on priority (usually the largest element first - max-heap by default). Show common operations (`push`, `pop`, `top`, `empty`, `size`). Explain how to customize the comparison. </llm_prompt>"

## Understanding Iterators
"<llm_prompt> Starting with heading level 2 (##), explain iterators as generalized pointer-like objects that abstract the process of traversing elements within STL containers (and other sequences). Emphasize how they decouple algorithms from containers. Mention C++20 Ranges concepts as a related abstraction. Define 'iterator', 'traversal', 'decoupling' for a glossary. </llm_prompt>"
### Exploring Iterator Categories
"<llm_prompt> Starting with heading level 3 (###), describe the different iterator categories (Input, Output, Forward, Bidirectional, Random Access, Contiguous) based on their capabilities (read/write, movement, multi-pass). Explain how algorithm requirements match container iterator types. Mention C++20 Ranges concepts are related but distinct. </llm_prompt>"
### Performing Iterator Operations
"<llm_prompt> Starting with heading level 3 (
###), demonstrate common iterator operations: dereferencing (`*` to access element), incrementing (`++` to move to next), comparison (`==`, `!=`), and others depending on category (e.g., `--`, `+`, `-`, `[]` for random access). Provide code examples using `begin()` and `end()`. </llm_prompt>"
### Understanding Iterator Invalidation
"<llm_prompt> Starting with heading level 3 (###), explain the critical concept of iterator invalidation: when operations on a container (e.g., insertion into a `vector`, deletion from a `list`) can make existing iterators invalid (point to wrong location or invalid memory). Provide examples for `vector` and `list`. Link to resources detailing invalidation rules. </llm_prompt>"
### Using Range-based `for` Loop with Iterators
"<llm_prompt> Starting with heading level 3 (###), explain how the range-based `for` loop (C++11) simplifies iteration by implicitly using the `begin()` and `end()` methods of a container (or freestanding `begin`/`end` found via ADL) to get iterators. Show its equivalence to explicit iterator loops. </llm_prompt>"

## Applying STL Algorithms
"<llm_prompt> Starting with heading level 2 (##), introduce the STL algorithms found in `<algorithm>` and `<numeric>` as generic functions operating on sequences defined by iterator pairs (or C++20 Ranges). Highlight their efficiency and correctness guarantees. Emphasize using algorithms over manual loops where possible. Provide a link to an algorithm reference. </llm_prompt>"
### Using Non-modifying Sequence Operations
"<llm_prompt> Starting with heading level 3 (###), explain algorithms that query or examine elements without changing the sequence. Provide examples and usage for common ones like `std::find`, `std::count_if`, `std::equal`, `std::for_each`, `std::search`. Mention C++20 `std::ranges` versions. </llm_prompt>"
### Using Modifying Sequence Operations
"<llm_prompt> Starting with heading level 3 (###), explain algorithms that modify elements or their order. Provide examples and usage for common ones like `std::copy`, `std::move` (C++11), `std::transform`, `std::replace`, `std::remove`/`erase` idiom, `std::reverse`, `std::fill`. Mention C++20 `std::ranges` versions. </llm_prompt>"
### Performing Sorting and Related Operations
"<llm_prompt> Starting with heading level 3 (###), explain algorithms related to ordering and searching within ordered sequences. Provide examples and usage for `std::sort`, `std::stable_sort`, `std::partial_sort`, `std::binary_search`, `std::lower_bound`, `std::upper_bound`, `std::merge`. Discuss providing custom comparators. Mention C++20 `std::ranges` versions. </llm_prompt>"
### Using Numeric Algorithms
"<llm_prompt> Starting with heading level 3 (###), explain algorithms from `<numeric>` for common numerical tasks. Provide examples and usage for `std::accumulate`, `std::inner_product`, `std::partial_sum`, `std::iota`. Mention C++20 additions like `std::midpoint`, `std::lerp`. </llm_prompt>"
### Understanding Algorithm Complexity
"<llm_prompt> Starting with heading level 3 (###), emphasize the importance of knowing the computational complexity (Big O notation) guarantees provided by STL algorithms for performance-sensitive code. Encourage looking up complexity in documentation. </llm_prompt>"
### Exploring the Ranges Library (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce the C++20 Ranges library (`<ranges>`) as a powerful alternative to iterator pairs for working with algorithms. Explain the concepts of ranges and views. Demonstrate algorithm composition using the pipe operator (`|`) with views (e.g., `filter` and `transform`). Show examples of range-based algorithms (`std::ranges::sort`, `std::ranges::find`). </llm_prompt>"

## Using Function Objects (Functors) and Lambdas
"<llm_prompt> Starting with heading level 2 (##), explain function objects (functors) as objects that overload `operator()` allowing them to be called like functions. Discuss their use with STL algorithms for customization (e.g., predicates, comparison functions). Show how C++11 lambda expressions provide a concise syntax for creating functors inline. Mention C++20 enhancements to lambdas. Define 'functor', 'predicate' for a glossary. </llm_prompt>"
### Using Predefined Functors
"<llm_prompt> Starting with heading level 3 (###), introduce the predefined functors available in `<functional>` for common arithmetic (`std::plus`), comparison (`std::less`), and logical (`std::logical_not`) operations. Show examples of their use with algorithms. Mention C++20 `std::bind_front`. </llm_prompt>"
### Using `std::function` (C++11)
"<llm_prompt> Starting with heading level 3 (###), explain `std::function` (C++11) from `<functional>` as a type-erased, polymorphic wrapper capable of storing any callable entity (regular function, lambda, functor, function pointer) with a specific signature. Discuss its use cases and overhead. </llm_prompt>"

## Utilizing STL Utilities
"<llm_prompt> Starting with heading level 2 (##), introduce various utility components provided by the standard library that support common programming tasks. </llm_prompt>"
### Using `std::pair`
"<llm_prompt> Starting with heading level 3 (###), explain `std::pair` from `<utility>` as a simple struct template holding two heterogeneous elements (`first`, `second`). Show its common use (e.g., return values, map elements). </llm_prompt>"
### Using `std::tuple` (C++11)
"<llm_prompt> Starting with heading level 3 (###), explain `std::tuple` (C++11) from `<tuple>` as a template holding a fixed-size collection of heterogeneous elements. Show how to create tuples (`std::make_tuple`) and access elements (`std::get`). </llm_prompt>"
### Using the `<chrono>` Library (C++11)
"<llm_prompt> Starting with heading level 3 (###), introduce the `<chrono>` library (C++11) for handling time and durations in a type-safe way. Explain `std::chrono::duration`, `std::chrono::time_point`, and different clocks (`system_clock`, `steady_clock`). Show basic timing examples. Mention the extensive C++20 additions for calendar and time zone support. </llm_prompt>"
### Exploring the `<memory>` Header
"<llm_prompt> Starting with heading level 3 (###), reiterate that the `<memory>` header contains smart pointers (`unique_ptr`, `shared_ptr`, `weak_ptr`), allocators, and other memory utilities like `std::addressof`, C++20 `std::construct_at`. Cross-reference with Memory Management section. </llm_prompt>"
### Exploring the `<utility>` Header
"<llm_prompt> Starting with heading level 3 (###), reiterate that the `<utility>` header contains `std::pair`, move semantics utilities (`std::move`, `std::forward`), `std::swap`, and other helpers like C++20 integer comparison functions (`std::cmp_equal`, etc.). </llm_prompt>"
### Using the `<bit>` Library (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce the `<bit>` library (C++20) providing portable tools for bit manipulation. Explain functions like `std::popcount`, `std::has_single_bit`, `std::bit_cast`, rotation functions (`rotl`, `rotr`), and endian checking. </llm_prompt>"

# VIII. Input/Output (I/O)

## Understanding I/O Streams
"<llm_prompt> Starting with heading level 2 (##), introduce the C++ I/O streams library (`<iostream>`, `<fstream>`, `<sstream>`) as an abstraction for handling input and output operations in a uniform way, regardless of the source/destination (console, files, strings). Explain the concepts of streams, buffering, and formatting. Define 'stream', 'buffering', 'iostream' for a glossary. </llm_prompt>"
### Exploring the Stream Classes Hierarchy
"<llm_prompt> Starting with heading level 3 (###), briefly outline the inheritance hierarchy of stream classes (e.g., `ios_base` -> `ios` -> `istream`/`ostream` -> `iostream`). Explain the basic role of each base class (`ios_base` for formatting/state, `ios` for error state, `istream` for input, `ostream` for output). </llm_prompt>"
### Using Standard Streams (`cin`, `cout`, `cerr`, `clog`)
"<llm_prompt> Starting with heading level 3 (###), explain the predefined global stream objects from `<iostream>`: `std::cin` (standard input, usually keyboard), `std::cout` (standard output, usually console), `std::cerr` (unbuffered standard error), and `std::clog` (buffered standard error). Provide simple input/output examples. </llm_prompt>"
### Using Stream Operators (`<<`, `>>`)
"<llm_prompt> Starting with heading level 3 (###), explain the insertion operator (`<<`) used with output streams (`ostream`) and the extraction operator (`>>`) used with input streams (`istream`). Explain how they are overloaded for fundamental types and can be overloaded for user-defined types. Mention potential issues with `>>` (whitespace skipping, error states). </llm_prompt>"
### Performing Formatted I/O
"<llm_prompt> Starting with heading level 3 (###), explain how to control the format of input and output using stream manipulators (e.g., `std::endl`, `std::setw`, `std::setprecision`, `std::fixed`, `std::scientific`, `std::boolalpha`) from `<iomanip>` and stream flags (set via methods like `setf`, `unsetf`). Provide examples. Mention that C++20 `<format>` is often preferred for output formatting. </llm_prompt>"
### Performing Unformatted I/O
"<llm_prompt> Starting with heading level 3 (###), explain methods for reading and writing raw data or single characters/lines without interpretation or formatting. Cover `istream::get()`, `istream::getline()`, `istream::read()`, `ostream::put()`, `ostream::write()`. Discuss their use cases (e.g., binary I/O, precise line reading). </llm_prompt>"
### Checking Stream State Flags
"<llm_prompt> Starting with heading level 3 (###), explain how to check the status of a stream after an I/O operation using state flags (`goodbit`, `badbit`, `failbit`, `eofbit`) and member functions (`good()`, `bad()`, `fail()`, `eof()`). Show how to handle potential input errors. </llm_prompt>"

## Performing File I/O
"<llm_prompt> Starting with heading level 2 (##), explain how to use C++ streams to read data from and write data to files using the `<fstream>` library, enabling data persistence. </llm_prompt>"
### Using File Stream Classes (`ifstream`, `ofstream`, `fstream`)
"<llm_prompt> Starting with heading level 3 (###), introduce the file stream classes: `std::ifstream` (input from file), `std::ofstream` (output to file), and `std::fstream` (input/output). Explain how they inherit from `istream`, `ostream`, or `iostream`. </llm_prompt>"
### Opening and Closing Files
"<llm_prompt> Starting with heading level 3 (###), demonstrate how to open files by passing the filename (and optional mode) to the file stream constructor or using the `open()` member function. Explain that files are closed automatically when the stream object goes out of scope (RAII) but `close()` can be called explicitly. Show how to check if a file was opened successfully. </llm_prompt>"
### Understanding File Modes
"<llm_prompt> Starting with heading level 3 (###), explain the different file open modes (constants within `ios_base`, like `ios::in`, `ios::out`, `ios::app`, `ios::binary`, `ios::trunc`, `ios::ate`) and how they can be combined using the bitwise OR operator (`|`). </llm_prompt>"
### Reading and Writing Files
"<llm_prompt> Starting with heading level 3 (###), show examples of reading from (`ifstream`) and writing to (`ofstream`) files using the same stream operators (`<<`, `>>`) and member functions (`getline`, `read`, `write`) used with console streams. Provide examples for both text and binary files. </llm_prompt>"
### Positioning within Files
"<llm_prompt> Starting with heading level 3 (###), explain how to perform random access within files using the seek (`seekg` for input, `seekp` for output) and tell (`tellg` for input, `tellp` for output) functions to move the file pointer and query its position. </llm_prompt>"

## Using String Streams
"<llm_prompt> Starting with heading level 2 (##), explain string streams (`<sstream>`) as streams that perform I/O operations on in-memory `std::string` objects instead of files or the console. Discuss their utility for string formatting, parsing, and type conversions. Mention that C++20 `<format>` and `<charconv>` often provide better alternatives for these tasks. </llm_prompt>"
### Using String Stream Classes (`istringstream`, `ostringstream`, `stringstream`)
"<llm_prompt> Starting with heading level 3 (###), introduce the string stream classes: `std::istringstream` (reads from a string), `std::ostringstream` (writes to a string), and `std::stringstream` (reads from and writes to a string). </llm_prompt>"
### Understanding Usage Scenarios
"<llm_prompt> Starting with heading level 3 (###), provide code examples demonstrating common uses of string streams: converting numbers to strings, converting strings to numbers, parsing data from a formatted string, building complex strings piece by piece. </llm_prompt>"

## Utilizing the `<filesystem>` Library (C++17)
"<llm_prompt> Starting with heading level 2 (##), introduce the `<filesystem>` library (C++17) for portable interaction with the operating system's file system. Explain its advantages over older platform-specific methods. Cover common operations like path manipulation (`std::filesystem::path`), checking file/directory status (`exists`, `is_directory`), creating directories (`create_directory`), and iterating over directory entries (`directory_iterator`). Provide code examples. </llm_prompt>"

## Utilizing the `<format>` Library (C++20)
"<llm_prompt> Starting with heading level 2 (##), introduce the `<format>` library (C++20) as a modern, type-safe, and extensible alternative to iostream manipulators and C-style `printf`/`sprintf` for text formatting. Explain the `std::format` function and its Python-like format specifiers. Highlight its advantages (type safety, separation of formatting and I/O, performance). Provide examples comparing it to older methods. Mention C++23 `std::print`. </llm_prompt>"

# IX. Exception Handling

## Understanding Basic Concepts
"<llm_prompt> Starting with heading level 2 (##), introduce exception handling as the C++ mechanism for responding to runtime errors or exceptional situations in a structured way, separating error handling code from normal program logic. Explain the `try`, `catch`, `throw` mechanism. Define 'exception', 'exception handling' for a glossary. Provide a summary explaining why it's preferred over error codes in many cases. </llm_prompt>"
### Throwing Exceptions (`throw`)
"<llm_prompt> Starting with heading level 3 (###), explain the `throw` keyword used to signal that an exception has occurred. Show how to throw objects (usually instances of exception classes derived from `std::exception`). </llm_prompt>"
### Catching Exceptions (`try`, `catch`)
"<llm_prompt> Starting with heading level 3 (###), explain `try` blocks, which enclose code that might throw an exception, and `catch` blocks, which follow a `try` block and handle specific types of exceptions. Explain how the type in the `catch` clause determines which exceptions are caught (including catching by value, reference, or const reference). Show multiple `catch` blocks. </llm_prompt>"
### Using The `catch(...)` Block
"<llm_prompt> Starting with heading level 3 (###), explain the catch-all block `catch(...)` which can catch exceptions of any type. Discuss its use cases (e.g., resource cleanup before re-throwing, preventing program termination) and why catching specific types is generally preferred. </llm_prompt>"
### Understanding Exception Specifications (`noexcept`)
"<llm_prompt> Starting with heading level 3 (###), explain the `noexcept` specifier (C++11) used to declare that a function guarantees not to throw any exceptions. Discuss its benefits (compiler optimizations, clearer interface contracts) and the consequences if a `noexcept` function *does* throw (`std::terminate` is called). Briefly mention the deprecated dynamic exception specifications (`throw(...)`). </llm_prompt>"
### Using `std::source_location` (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce `std::source_location` (C++20) from `<source_location>` as a utility to capture source code information (file, line, function) at the call site. Explain how it can be used within exception objects or logging frameworks to provide better diagnostic information without relying on macros like `__FILE__` and `__LINE__`. </llm_prompt>"

## Using Standard Exceptions
"<llm_prompt> Starting with heading level 2 (##), introduce the standard exception hierarchy defined in `<stdexcept>` and `<exception>`, providing a common set of exception types for library and user code. </llm_prompt>"
### Understanding the `std::exception` Class
"<llm_prompt> Starting with heading level 3 (###), explain `std::exception` as the base class for all standard exceptions. Highlight its virtual `what()` member function, which returns a C-style string describing the exception. </llm_prompt>"
### Exploring Common Standard Exception Classes
"<llm_prompt> Starting with heading level 3 (###), list and briefly describe common exception classes derived from `std::exception`, such as `std::logic_error` (e.g., `std::invalid_argument`, `std::out_of_range`) representing programming errors, and `std::runtime_error` (e.g., `std::overflow_error`) representing errors detectable only at runtime. Also mention `std::bad_alloc` (thrown by `new`) and `std::bad_cast` (thrown by `dynamic_cast`). </llm_prompt>"

## Understanding Stack Unwinding
"<llm_prompt> Starting with heading level 2 (##), explain stack unwinding as the process that occurs when an exception is thrown but not caught in the current scope. Describe how the program exits nested scopes sequentially, calling destructors for all local objects with automatic storage duration created within those scopes, until a suitable `catch` block is found. Emphasize how this interacts crucially with RAII for resource cleanup. </llm_prompt>"

## Adhering to Exception Safety Guarantees
"<llm_prompt> Starting with heading level 2 (##), discuss the concept of exception safety: designing functions and classes to maintain a valid state and prevent resource leaks even if exceptions occur. Define the different levels of guarantee: Basic Guarantee (invariants maintained, no leaks), Strong Guarantee (transactional: operation either succeeds completely or state is rolled back), and No-throw Guarantee (`noexcept`). Explain how RAII helps achieve the Basic Guarantee. </llm_prompt>"

## Managing Resources with Exceptions
"<llm_prompt> Starting with heading level 2 (##), reiterate the importance of RAII (using destructors, smart pointers, lock guards, etc.) for ensuring that resources (memory, files, locks) are automatically released during stack unwinding when exceptions are thrown. Contrast this with manual cleanup approaches which are prone to errors in the presence of exceptions. </llm_prompt>"

# X. Advanced Topics

## Mastering Templates
"<llm_prompt> Starting with heading level 2 (##), introduce templates as a cornerstone of C++ generic programming, allowing the creation of functions and classes that can operate on arbitrary types determined at compile time. Explain how they enable code reuse and type safety without runtime overhead. Mention C++20 Concepts as a major enhancement. Define 'template', 'instantiation', 'generic programming' for a glossary. Provide a summary of template benefits. </llm_prompt>"
### Creating Function Templates
"<llm_prompt> Starting with heading level 3 (###), show the syntax for defining function templates using `template <typename T>` or `template <class T>`. Provide examples like a generic `max()` or `swap()` function. Explain how the compiler deduces template arguments from the function call. </llm_prompt>"
### Creating Class Templates
"<llm_prompt> Starting with heading level 3 (###), show the syntax for defining class templates. Provide examples like a generic `Stack` or `Pair` class. Explain how users specify template arguments when creating objects of the class template (e.g., `Stack<int>`). </llm_prompt>"
### Specializing Templates
"<llm_prompt> Starting with heading level 3 (###), explain template specialization (full and partial) as a way to provide alternative implementations of a template for specific types or characteristics, allowing optimization or different behavior when needed. Provide an example. </llm_prompt>"
### Understanding Template Argument Deduction
"<llm_prompt> Starting with heading level 3 (###), explain the rules the compiler uses to automatically deduce template arguments for function templates based on the types of the arguments passed. Mention Class Template Argument Deduction (CTAD) introduced in C++17/20. </llm_prompt>"
### Using Variadic Templates (C++11)
"<llm_prompt> Starting with heading level 3 (###), explain variadic templates (C++11) using `template <typename... Args>` which allow templates (functions or classes) to accept an arbitrary number of template arguments (a parameter pack). Show how to work with parameter packs using `sizeof...` and techniques like recursive expansion or fold expressions (C++17). Provide examples like a generic `printf` or `tuple`. </llm_prompt>"
### Exploring Template Metaprogramming (TMP)
"<llm_prompt> Starting with heading level 3 (###), introduce Template Metaprogramming (TMP) as the technique of performing computations at compile time using templates. Explain basic techniques involving recursion and specialization. Mention type traits (`<type_traits>`) as a common application. Note that `constexpr` functions are often a simpler alternative for compile-time computation. </llm_prompt>"
### Applying Concepts (C++20)
"<llm_prompt> Starting with heading level 3 (###), explain C++20 Concepts (`<concepts>`) as named sets of constraints on template parameters. Show how to define and use concepts using the `concept` keyword and `requires` clauses (or shorthand syntax). Explain their benefits: vastly improved compiler error messages, clearer template interface specification, and enabling overloading based on constraints. Provide examples. </llm_prompt>"

## Utilizing Move Semantics and Rvalue References (C++11)
"<llm_prompt> Starting with heading level 2 (##), explain move semantics (C++11) as an optimization technique that allows efficient transfer of resources (like dynamically allocated memory) from one object to another, avoiding expensive copies, especially for temporary objects. Introduce rvalue references (`&&`) as the key language feature enabling this. Define 'move semantics', 'lvalue', 'rvalue', 'rvalue reference' for a glossary. </llm_prompt>"
### Distinguishing Lvalues and Rvalues
"<llm_prompt> Starting with heading level 3 (###), clearly define lvalues (typically objects with names or identifiable locations in memory) and rvalues (typically temporary, unnamed values resulting from expressions). Provide examples of each. Explain why this distinction is crucial for move semantics. </llm_prompt>"
### Using Rvalue References (`&&`)
"<llm_prompt> Starting with heading level 3 (###), explain rvalue references (`T&&`) as references that can bind to rvalues. Show how they are used in function overloading to provide separate implementations for lvalue and rvalue arguments. </llm_prompt>"
### Implementing Move Constructor and Move Assignment Operator
"<llm_prompt> Starting with heading level 3 (###), explain the move constructor (`ClassName(ClassName&& other)`) and move assignment operator (`operator=(ClassName&& other)`) as special member functions designed to "steal" resources from the rvalue argument (`other`), leaving it in a valid (destructible) but potentially empty state. Show example implementations for a class managing a resource. Mention implicit `noexcept` conditions (C++20). </llm_prompt>"
### Using `std::move`
"<llm_prompt> Starting with heading level 3 (###), explain `std::move` from `<utility>` as a function (essentially a cast) that unconditionally converts its argument into an rvalue reference. Emphasize that `std::move` itself doesn't *move* anything but signals the *intent* that the object can be moved from. Show common usage when passing objects to move constructors/assignment operators or returning local objects that have move constructors. </llm_prompt>"
### Implementing Perfect Forwarding (`std::forward`)
"<llm_prompt> Starting with heading level 3 (###), explain perfect forwarding as a technique used primarily within template functions that take *forwarding references* (also known as universal references, `T&&` where `T` is a deduced template type) to pass arguments to another function while preserving their original value category (lvalue or rvalue). Introduce `std::forward<T>` from `<utility>` as the tool to achieve this. Show a typical example like a factory function. </llm_prompt>"

## Implementing Concurrency and Multithreading (C++11 and later)
"<llm_prompt> Starting with heading level 2 (##), introduce C++'s native support for concurrency (starting C++11) allowing programs to perform multiple tasks seemingly simultaneously (multithreading) or manage asynchronous operations. Cover the key headers (`<thread>`, `<mutex>`, `<atomic>`, `<future>`, `<condition_variable>`) and C++20 additions (Coroutines, `<semaphore>`, `<latch>`, `<barrier>`). Define 'concurrency', 'parallelism', 'thread', 'race condition', 'deadlock', 'synchronization' for a glossary. Provide a summary of challenges in concurrent programming. </llm_prompt>"
### Working with the `<thread>` Library
"<llm_prompt> Starting with heading level 3 (###), explain how to create and manage threads using `std::thread`. Show how to pass functions and arguments to a thread's constructor. Explain the importance of joining (`join()`) or detaching (`detach()`) threads. Introduce C++20 `std::jthread` as a safer alternative that automatically joins (RAII). </llm_prompt>"
### Using Mutexes and Locking (`<mutex>`)
"<llm_prompt> Starting with heading level 3 (###), explain the need for mutexes (`std::mutex`, `std::recursive_mutex`, `std::timed_mutex`) to protect shared data from race conditions by ensuring mutual exclusion. Introduce RAII lock wrappers `std::lock_guard` (simple scope-based lock) and `std::unique_lock` (more flexible locking strategies, used with condition variables). Explain the danger of deadlocks and basic prevention strategies. </llm_prompt>"
### Using Condition Variables (`<condition_variable>`)
"<llm_prompt> Starting with heading level 3 (###), explain condition variables (`std::condition_variable`, `std::condition_variable_any`) used for inter-thread communication where one thread waits for a condition to be met (signaled by another thread). Show typical usage patterns (e.g., producer-consumer) involving a mutex, a condition variable, and a shared predicate. Mention C++20 `notify_all_at_thread_exit`. </llm_prompt>"
### Using Semaphores and Latches (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce C++20 synchronization primitives: `std::counting_semaphore` / `std::binary_semaphore` for controlling access to a limited number of resources, `std::latch` for synchronizing a group of threads until a counter reaches zero, and `std::barrier` for coordinating phases of execution among threads. </llm_prompt>"
### Using Atomics (`<atomic>`)
"<llm_prompt> Starting with heading level 3 (###), explain `std::atomic` types (`std::atomic<int>`, `std::atomic<bool>`, etc.) and operations that provide guaranteed atomicity for low-level lock-free operations, avoiding the need for mutexes in certain scenarios. Briefly introduce memory ordering (`std::memory_order`). Mention C++20 additions: `std::atomic_ref` (atomic operations on non-atomic objects), `wait`/`notify` operations, floating-point and `shared_ptr` atomics. </llm_prompt>"
### Using Futures and Promises (`<future>`)
"<llm_prompt> Starting with heading level 3 (###), explain the `<future>` library for managing asynchronous tasks. Cover `std::async` for launching functions asynchronously, `std::future` for retrieving the result (or exception) from an asynchronous operation, `std::promise` for setting a value/exception to be retrieved via a future, and `std::packaged_task` for wrapping a callable to be invoked later, storing the result in a future. </llm_prompt>"
### Using Coroutines (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce C++20 Coroutines as a language feature for writing asynchronous code in a more sequential style using `co_await`, `co_yield`, and `co_return`. Explain that they are stackless and require library support (promise types) to function. Provide a conceptual example (e.g., an asynchronous generator or task). Mention their complexity. </llm_prompt>"
### Understanding the C++ Memory Model
"<llm_prompt> Starting with heading level 3 (###), briefly explain the C++ memory model, which defines the guarantees regarding the visibility and ordering of memory operations across different threads, particularly crucial for understanding low-level atomics and lock-free programming. Mention different `std::memory_order` options (`relaxed`, `acquire`, `release`, `acq_rel`, `seq_cst`). </llm_prompt>"

## Organizing Code with Namespaces
"<llm_prompt> Starting with heading level 2 (##), explain namespaces as a mechanism to prevent naming conflicts in larger projects by grouping related identifiers (classes, functions, variables) under a specific name. Define 'namespace', 'name collision', 'scope resolution operator' for a glossary. </llm_prompt>"
### Defining Namespaces
"<llm_prompt> Starting with heading level 3 (###), show the syntax for creating namespaces using the `namespace` keyword. Show nested namespaces. </llm_prompt>"
### Using Namespaces
"<llm_prompt> Starting with heading level 3 (###), demonstrate the three ways to access members of a namespace: using the scope resolution operator (`::`), using `using` declarations (`using my_namespace::my_function;`), and using `using` directives (`using namespace my_namespace;`). Discuss the pros and cons of each, strongly discouraging `using` directives in header files. Mention C++20 `using enum`. </llm_prompt>"
### Using Unnamed (Anonymous) Namespaces
"<llm_prompt> Starting with heading level 3 (###), explain unnamed namespaces (`namespace { ... }`) and how they provide internal linkage for the identifiers declared within them, making them local to the current translation unit (file). Explain why they are preferred over the `static` keyword for this purpose in C++. </llm_prompt>"

## Performing Type Casting
"<llm_prompt> Starting with heading level 2 (##), explain the need for explicit type casting to convert values between different types. Introduce the C++-style cast operators (`static_cast`, `dynamic_cast`, `const_cast`, `reinterpret_cast`) as safer and more explicit alternatives to C-style casts. Define 'type casting', 'explicit conversion' for a glossary. </llm_prompt>"
### Using `static_cast`
"<llm_prompt> Starting with heading level 3 (###), explain `static_cast` for relatively safe, compile-time checked conversions between related types (e.g., numeric conversions, pointer conversions up/down an inheritance hierarchy *without* runtime checks, `void*` conversions). Provide examples. </llm_prompt>"
### Using `dynamic_cast`
"<llm_prompt> Starting with heading level 3 (###), explain `dynamic_cast` for safely converting pointers or references within a polymorphic class hierarchy (classes with virtual functions). Explain that it performs a runtime check (requires RTTI) and returns `nullptr` (for pointers) or throws `std::bad_cast` (for references) if the cast is invalid. Provide examples of safe downcasting. </llm_prompt>"
### Using `const_cast`
"<llm_prompt> Starting with heading level 3 (###), explain `const_cast` used *only* to add or remove `const` or `volatile` qualifiers. Emphasize its limited legitimate uses (e.g., calling a legacy non-const function with a const object) and the danger: modifying an object that was originally `const` via a `const_cast` results in undefined behavior. </llm_prompt>"
### Using `reinterpret_cast`
"<llm_prompt> Starting with heading level 3 (###), explain `reinterpret_cast` as the most dangerous cast, performing low-level reinterpretation of bit patterns between unrelated types (e.g., pointer-to-integer, unrelated pointer types). Stress that it is highly non-portable and usually indicates a design flaw. Provide cautionary examples. </llm_prompt>"
### Understanding C-style Casts
"<llm_prompt> Starting with heading level 3 (###), explain the C-style cast syntax (`(new_type)expression`) and the function-style cast syntax (`new_type(expression)`). Explain why they are discouraged in C++: they are less explicit (can act like any of the C++ casts), harder to search for, and offer less compile-time checking. </llm_prompt>"

## Utilizing Run-Time Type Information (RTTI)
"<llm_prompt> Starting with heading level 2 (##), explain RTTI (Run-Time Type Information) as the mechanism allowing the type of an object to be determined at runtime. Mention it's primarily used by `dynamic_cast` and `typeid`. Discuss potential overhead and that it can often be avoided with better polymorphic design. Define 'RTTI' for a glossary. </llm_prompt>"
### Using the `typeid` Operator
"<llm_prompt> Starting with heading level 3 (###), explain the `typeid` operator, which returns a `std::type_info` object representing the type of an expression. Show how to use it for type comparison (especially on polymorphic objects via pointers/references). Requires `<typeinfo>`. </llm_prompt>"
### Understanding the `std::type_info` Class
"<llm_prompt> Starting with heading level 3 (###), briefly describe the `std::type_info` class returned by `typeid`. Mention its `name()` member function (returns an implementation-defined name string) and its comparison operators. </llm_prompt>"

## Understanding the Preprocessor
"<llm_prompt> Starting with heading level 2 (##), explain the C++ preprocessor as a text-processing phase that runs before the actual compilation, handling directives starting with `#`. Cover its main uses: including headers, defining macros, and conditional compilation. Mention that C++20 Modules offer alternatives for header inclusion and some macro uses. Define 'preprocessor', 'directive', 'macro' for a glossary. </llm_prompt>"
### Using `#include`
"<llm_prompt> Starting with heading level 3 (###), explain the `#include` directive for inserting the content of header files. Explain the difference between `#include <file>` (standard/system headers) and `#include "file"` (user headers). Cross-reference C
++20 Modules (`import`) as the modern alternative. </llm_prompt>"
### Using `#define` and `#undef`
"<llm_prompt> Starting with heading level 3 (###), explain the `#define` directive for creating symbolic constants (object-like macros) and function-like macros. Warn about the pitfalls of macros (lack of type safety, scope issues, textual substitution oddities). Suggest alternatives (`const`, `constexpr`, `enum`, inline functions, templates). Show `#undef`. </llm_prompt>"
### Using Conditional Compilation
"<llm_prompt> Starting with heading level 3 (###), explain conditional compilation directives (`#if`, `#ifdef`, `#ifndef`, `#else`, `#elif`, `#endif`) used to include or exclude code blocks based on compile-time conditions. Discuss common uses: platform-specific code, debugging code, feature toggles, header guards. </llm_prompt>"
### Implementing Header Guards
"<llm_prompt> Starting with heading level 3 (###), explain the traditional header guard idiom (`#ifndef GUARD_H ... #define GUARD_H ... #endif`) or the non-standard but common `#pragma once` directive, used to prevent problems caused by multiple inclusions of the same header file in a single translation unit. State that C++20 Modules make these obsolete. </llm_prompt>"
### Using Predefined Macros
"<llm_prompt> Starting with heading level 3 (###), list and explain common predefined macros provided by the compiler, such as `__FILE__`, `__LINE__`, `__DATE__`, `__TIME__`, `__cplusplus` (useful for checking standard version). Mention C++20 `__VA_OPT__`. </llm_prompt>"
### Introducing Modules (C++20)
"<llm_prompt> Starting with heading level 3 (###), introduce C++20 Modules as a modern alternative to the textual inclusion model of header files. Explain their benefits: improved build times (compiling interfaces separately), stronger encapsulation (no macro leakage, explicit exports), clearer dependencies. Show basic syntax using `export module`, `import`, and module partitions. Mention current build system/compiler support requirements. </llm_prompt>"

# XI. Performance Optimization and Analysis

## Identifying Performance Bottlenecks
"<llm_prompt> Starting with heading level 2 (##), discuss the importance of performance optimization in relevant C++ applications. Emphasize the principle 'measure, don't guess'. Introduce profiling as the primary technique for identifying bottlenecks. Define 'profiling', 'bottleneck' for a glossary. </llm_prompt>"
### Using Profiling Tools
"<llm_prompt> Starting with heading level 3 (###), introduce common profiling tools and techniques. Cover CPU profilers (e.g., Linux `perf`, Valgrind's Callgrind, Intel VTune, Visual Studio Profiler) for identifying time-consuming functions, and memory profilers (e.g., Valgrind's Massif, Memcheck) for tracking memory usage and detecting leaks. Provide basic usage examples or links to tutorials. </llm_prompt>"
### Benchmarking Code Sections
"<llm_prompt> Starting with heading level 3 (###), explain micro-benchmarking for measuring the performance of specific code snippets or functions accurately. Introduce libraries like Google Benchmark or Catch2's benchmarking features. Discuss pitfalls like compiler optimizations affecting benchmarks and the importance of statistical significance. </llm_prompt>"

## Applying Optimization Techniques
"<llm_prompt> Starting with heading level 2 (##), discuss common C++ optimization strategies, emphasizing algorithm choice and data structure selection as primary factors. </llm_prompt>"
### Optimizing Algorithms and Data Structures
"<llm_prompt> Starting with heading level 3 (###), reiterate the importance of choosing efficient algorithms (considering Big O complexity) and appropriate data structures (e.g., `vector` vs. `list`, `map` vs. `unordered_map`) based on access patterns and operation frequencies. Provide examples where changing these yields significant gains. </llm_prompt>"
### Reducing Memory Allocation Overhead
"<llm_prompt> Starting with heading level 3 (###), discuss the cost of dynamic memory allocation (`new`/`delete`). Suggest techniques to reduce overhead, such as using stack allocation where possible, reserving capacity in containers (`vector::reserve`), using custom allocators or memory pools for frequent small allocations. </llm_prompt>"
### Leveraging Move Semantics
"<llm_prompt> Starting with heading level 3 (###), cross-reference the Move Semantics section, emphasizing its role in avoiding unnecessary copies of heavy resources, thereby improving performance. </llm_prompt>"
### Utilizing Compiler Optimizations
"<llm_prompt> Starting with heading level 3 (###), explain how modern C++ compilers perform significant optimizations. Discuss common optimization flags (`-O1`, `-O2`, `-O3`, `-Os`, `-Ofast` for GCC/Clang; `/O1`, `/O2`, `/Ox` for MSVC) and their trade-offs (compile time, code size, debugging). Mention Profile-Guided Optimization (PGO). </llm_prompt>"
### Improving Cache Locality
"<llm_prompt> Starting with heading level 3 (###), introduce the concept of CPU caches and memory locality (spatial and temporal). Explain how data structures that store elements contiguously (like `std::vector`, `std::array`) generally lead to better cache performance than node-based structures (`std::list`, `std::map`). Discuss techniques like data layout optimization. </llm_prompt>"

# XII. Advanced Error Handling and Debugging

## Implementing Robust Error Management
"<llm_prompt> Starting with heading level 2 (##), discuss strategies beyond basic exception handling for robust error management in complex applications. </llm_prompt>"
### Combining Error Codes and Exceptions
"<llm_prompt> Starting with heading level 3 (###), discuss scenarios where using error codes might be preferable to or combined with exceptions (e.g., performance-critical paths where exception overhead is unacceptable, interfacing with C APIs). Introduce C++23 `std::expected` as a modern approach for returning either a value or an error. </llm_prompt>"
### Designing Custom Exception Hierarchies
"<llm_prompt> Starting with heading level 3 (###), explain the benefits of designing custom exception classes derived from `std::exception` or its descendants, allowing for more specific error reporting and handling within an application or library. </llm_prompt>"
### Logging and Diagnostics
"<llm_prompt> Starting with heading level 3 (###), discuss the importance of logging for recording program events, errors, and diagnostic information. Mention common logging libraries (e.g., spdlog, Glog) and best practices (log levels, structured logging). Integrate `std::source_location` (C++20) for richer log messages. </llm_prompt>"
### Using Assertions
"<llm_prompt> Starting with heading level 3 (###), explain the use of assertions (`assert` macro from `<cassert>`) for checking invariants and preconditions during development and debugging. Explain that assertions are typically disabled in release builds. Discuss alternatives like static assertions (`static_assert` from C++11). </llm_prompt>"

## Debugging Complex Scenarios
"<llm_prompt> Starting with heading level 2 (##), cover advanced debugging techniques and tools for tackling difficult bugs in C++ applications. </llm_prompt>"
### Mastering Debugger Features
"<llm_prompt> Starting with heading level 3 (###), go beyond basic stepping and breakpoints. Introduce advanced debugger features like conditional breakpoints, watchpoints (data breakpoints), examining memory, viewing the call stack, inspecting thread states, and remote debugging. Use GDB/LLDB command examples or IDE feature descriptions. </llm_prompt>"
### Debugging Memory Errors
"<llm_prompt> Starting with heading level 3 (###), discuss tools and techniques specifically for memory-related bugs. Mention AddressSanitizer (ASan), MemorySanitizer (MSan), UndefinedBehaviorSanitizer (UBSan) - compiler-based tools available in GCC/Clang. Reiterate the use of Valgrind's Memcheck. </llm_prompt>"
### Debugging Concurrency Issues
"<llm_prompt> Starting with heading level 3 (###), discuss the challenges of debugging race conditions, deadlocks, and other concurrency bugs. Introduce ThreadSanitizer (TSan) available in GCC/Clang. Discuss debugger support for inspecting threads, mutexes, and techniques like "printf debugging" (with caution regarding atomicity and buffering). </llm_prompt>"
### Post-mortem Debugging
"<llm_prompt> Starting with heading level 3 (###), explain how to analyze program state after a crash using core dumps (Linux/Unix) or crash dumps (Windows) and a debugger (like GDB or WinDbg) to identify the cause of failure. </llm_prompt>"

# XIII. C++ Standards and Evolution

## Reviewing C++98 / C++03
"<llm_prompt> Starting with heading level 2 (##), summarize the key features and limitations of the first ISO C++ standard (C++98) and its minor revision (C++03). Mention the establishment of the core language and the initial STL. Characterize it as the foundation. </llm_prompt>"

## Exploring C++11 ("Modern C++" Begins)
"<llm_prompt> Starting with heading level 2 (##), highlight the major features introduced in C++11 that revolutionized the language (`auto`, lambdas, move semantics/rvalue references, `nullptr`, range-based for, smart pointers, `constexpr`, variadic templates, concurrency library). Emphasize its impact on writing safer, more expressive, and more efficient code. Provide links to C++11 feature summaries. </llm_prompt>"

## Exploring C++14
"<llm_prompt> Starting with heading level 2 (##), summarize the key additions in C++14, positioning it as a refinement of C++11. Highlight features like generic lambdas, relaxed `constexpr`, `auto` return type deduction, `std::make_unique`. </llm_prompt>"

## Exploring C++17
"<llm_prompt> Starting with heading level 2 (##), highlight the major features introduced in C++17, such as `<filesystem>`, parallel STL algorithms, `std::optional`, `std::variant`, `std::any`, `std::string_view`, structured bindings, `if constexpr`, inline variables, CTAD. Characterize it as adding significant library features and language conveniences. </llm_prompt>"

## Exploring C++20
"<llm_prompt> Starting with heading level 2 (##), highlight the transformative features of C++20, especially the "Big Four": Concepts, Modules, Coroutines, and Ranges. Also mention the spaceship operator (`<=>`), `<format>`, `<bit>`, `<chrono>` calendar/time zone support, `std::span`, `std::jthread`, atomic improvements (`atomic_ref`), `consteval`, `constinit`. Characterize it as a very large and impactful revision. </llm_prompt>"

## Exploring C++23
"<llm_prompt> Starting with heading level 2 (##), summarize the key features expected or included in C++23, positioning it as a refinement release after C++20. Mention features like `std::expected`, `std::print`, `std::mdspan`, `import std;`, Deducing `this`. </llm_prompt>"

## Looking at Future Standards (C++26 and beyond)
"<llm_prompt> Starting with heading level 2 (##), briefly discuss the ongoing C++ standardization process (WG21). Mention some major features currently under development or proposed for future standards (e.g., Executors, Reflection, Pattern Matching, Contracts, Linear Algebra library). Provide links to the WG21 website or status reports. </llm_prompt>"

# XIV. Tools and Ecosystem

## Understanding Compilers
"<llm_prompt> Starting with heading level 2 (##), provide a deeper dive into major C++ compilers (GCC, Clang, MSVC, Intel). Discuss common compiler flags for standard selection (`-std=c++20`), warning levels (`-Wall`, `-Wextra`), optimization (`-O2`, `/O2`), debugging symbols (`-g`, `/Zi`). Mention cross-compilation concepts. Provide links to compiler documentation. </llm_prompt>"

## Utilizing Build Systems
"<llm_prompt> Starting with heading level 2 (##), emphasize the necessity of build systems for managing the compilation/linking process in projects beyond a single file. Discuss handling dependencies and configuring build targets. Reiterate the importance of build system support for C++20 Modules. </llm_prompt>"
### Using Make and Makefiles
"<llm_prompt> Starting with heading level 3 (###), provide a brief overview of Make and its rule-based syntax in Makefiles. Acknowledge its prevalence but also its limitations, especially with modern C++ features like Modules. </llm_prompt>"
### Using CMake
"<llm_prompt> Starting with heading level 3 (###), explain CMake as a popular, cross-platform meta-build system. Show a slightly more complex `CMakeLists.txt` example including finding packages and defining libraries/executables. Discuss its generator model (e.g., generating Makefiles or Ninja files). Mention its evolving support for C++20 Modules. </llm_prompt>"
### Exploring Other Build Systems
"<llm_prompt> Starting with heading level 3 (###), briefly mention other notable build systems like Ninja (build executor focused on speed, often used with CMake/Meson), Meson (focus on usability, speed, good C++20 Module support), Bazel (Google's system for large monorepos), Build2. </llm_prompt>"

## Using Debuggers
"<llm_prompt> Starting with heading level 2 (##), cross-reference the Advanced Debugging section. Briefly reiterate the role of debuggers (GDB, LLDB, Visual Studio Debugger) and common tasks (breakpoints, stepping, inspection). </llm_prompt>"

## Using Profilers
"<llm_prompt> Starting with heading level 2 (##), cross-reference the Performance Optimization section. Briefly reiterate the role of profilers (Valgrind, Perf, VTune, Instruments) in identifying performance bottlenecks. </llm_prompt>"

## Employing Static Analysis Tools
"<llm_prompt> Starting with heading level 2 (##), explain static analysis tools (linters) that check code for potential bugs, style violations, and anti-patterns without executing it. Mention popular tools like Clang-Tidy, Cppcheck, PVS-Studio, SonarQube. Explain how they can enforce coding standards and catch errors early. Mention their role in checking C++20 Concepts usage. </llm_prompt>"

## Managing Dependencies with Package Managers
"<llm_prompt> Starting with heading level 2 (##), discuss the challenge of managing external library dependencies in C++. Introduce C++ package managers like Conan and vcpkg that automate the process of finding, downloading, building, and integrating libraries into a project via build system integration. Discuss their role in handling library versions and configurations. </llm_prompt>"

## Using Version Control Systems
"<llm_prompt> Starting with heading level 2 (##), explain the necessity of Version Control Systems (VCS) for tracking code changes, collaboration, and managing project history. Strongly recommend Git as the de facto standard and mention basic commands/concepts (`commit`, `push`, `pull`, `branch`, `merge`). Provide links to Git tutorials. </llm_prompt>"

## Utilizing Testing Frameworks
"<llm_prompt> Starting with heading level 2 (##), emphasize the importance of automated testing (unit testing, integration testing). Introduce popular C++ testing frameworks like Google Test (gtest), Catch2, and Doctest. Show a simple test case example using one of the frameworks. Explain how tests improve code quality and maintainability. </llm_prompt>"

## Following the C++ Core Guidelines
"<llm_prompt> Starting with heading level 2 (##), introduce the C++ Core Guidelines, initiated by Bjarne Stroustrup and Herb Sutter, as a comprehensive set of best practices and recommendations for writing modern, safe, and efficient C++. Encourage referring to the guidelines for style, resource management, concurrency, etc. Mention the Guidelines Support Library (GSL). Provide a link to the official guidelines. </llm_prompt>"

## Exploring Common Libraries
"<llm_prompt> Starting with heading level 2 (##), provide a brief overview of influential and widely used third-party C++ libraries beyond the STL, such as Boost (large collection of general-purpose libraries, often a precursor to standard features), Qt (cross-platform GUI and application framework), networking libraries (Asio, Poco), numerical/scientific libraries (Eigen, Armadillo), graphics libraries (OpenGL wrappers, SFML), and utility libraries (Folly, Abseil). Provide links to their websites. </llm_prompt>"
