# I. Programming Fundamentals

## Understanding Data Types

### Primitive Data Types

*   Integers (`int`): Whole numbers, e.g., `10`, `-5`.
*   Floating-point numbers (`float`): Numbers with decimal points, e.g., `3.14`, `-2.5`.
*   Booleans (`bool`): True or false values, `True`, `False`.
*   Characters (`char` or `str`): Single characters or sequences of characters (strings), e.g., `'A'`, `"Hello"`.

### Data Type Conversion (Casting)

*   Implicit conversion: Automatic conversion by the compiler (e.g., `int` to `float`).
*   Explicit conversion: Using functions like `int()`, `float()`, `str()` to convert between types. Example: `int("123")`.

## Variables and Operators

### Variable Declaration and Assignment

*   Naming conventions for variables (e.g., descriptive names, snake_case).
*   Assigning values to variables using the assignment operator `=`. Example: `x = 5`.

### Arithmetic Operators

*   Addition `+`, Subtraction `-`, Multiplication `*`, Division `/`, Modulus `%`, Exponentiation `**`, Floor Division `//`.
*   Operator precedence (PEMDAS/BODMAS). Example: `2 + 3 * 4`.

### Comparison Operators

*   Equal to `==`, Not equal to `!=`, Greater than `>`, Less than `<`, Greater than or equal to `>=`, Less than or equal to `<=`.
*   Returning Boolean values (`True` or `False`). Example: `x > y`.

### Logical Operators

*   `and`, `or`, `not`.
*   Truth tables for each operator. Example: `(x > 0) and (y < 10)`.

## Control Flow

### Conditional Statements

*   `if` statement: Executing code based on a condition.
*   `elif` (else if) statement: Checking multiple conditions.
*   `else` statement: Executing code when none of the conditions are true.
*   Example:
    ```python
    if x > 0:
        print("Positive")
    elif x < 0:
        print("Negative")
    else:
        print("Zero")
    ```

### Loops

*   `for` loop: Iterating over a sequence (e.g., a list, string, or range). Example: `for i in range(5): print(i)`.
*   `while` loop: Repeating code while a condition is true. Example: `while x < 10: x += 1`.
*   `break` statement: Exiting a loop prematurely.
*   `continue` statement: Skipping to the next iteration of a loop.

# II. Data Structures

## Lists

### Creating and Accessing Lists

*   Defining lists using square brackets `[]`. Example: `my_list = [1, 2, 3]`.
*   Accessing elements using indexing (starting from 0). Example: `my_list[0]`.
*   Slicing lists. Example: `my_list[1:3]`.

### List Methods

*   `append()`: Adding an element to the end of the list.
*   `insert()`: Inserting an element at a specific index.
*   `remove()`: Removing the first occurrence of an element.
*   `pop()`: Removing an element at a specific index and returning it.
*   `len()`: Getting the length of the list.
*   `sort()`: Sorting the list.

## Dictionaries

### Creating and Accessing Dictionaries

*   Defining dictionaries using curly braces `{}`. Example: `my_dict = {"name": "Alice", "age": 30}`.
*   Accessing values using keys. Example: `my_dict["name"]`.

### Dictionary Methods

*   `get()`: Retrieving a value for a given key (returns `None` if the key doesn't exist).
*   `keys()`: Getting a list of all keys in the dictionary.
*   `values()`: Getting a list of all values in the dictionary.
*   `items()`: Getting a list of key-value pairs as tuples.
*   `update()`: Adding or updating key-value pairs from another dictionary.

## Tuples

### Creating and Accessing Tuples

*   Defining tuples using parentheses `()`. Example: `my_tuple = (1, 2, 3)`.
*   Tuples are immutable (cannot be changed after creation).
*   Accessing elements using indexing. Example: `my_tuple[0]`.

### Tuple Operations

*   Tuple concatenation: `(1, 2) + (3, 4)`.
*   Tuple slicing.
*   Unpacking tuples. Example: `x, y, z = my_tuple`.

## Sets

### Creating and Accessing Sets

*   Defining sets using curly braces `{}` or the `set()` constructor. Example: `my_set = {1, 2, 3}` or `my_set = set([1, 2, 3])`.
*   Sets contain only unique elements.

### Set Operations

*   `add()`: Adding an element to the set.
*   `remove()`: Removing an element from the set.
*   `union()`: Combining two sets.
*   `intersection()`: Finding common elements between two sets.
*   `difference()`: Finding elements that are in one set but not the other.

# III. Functions and Modules

## Defining Functions

### Function Syntax

*   Using the `def` keyword to define a function.
*   Function name, parameters (arguments), and docstring (optional).
*   `return` statement to return a value.
    ```python
    def add(x, y):
        """This function adds two numbers."""
        return x + y
    ```

### Function Arguments

*   Positional arguments: Arguments passed in the order they are defined.
*   Keyword arguments: Arguments passed with the parameter name. Example: `add(y=3, x=2)`.
*   Default arguments: Arguments with default values. Example: `def greet(name="World"): print("Hello, " + name)`.
*   Variable-length arguments (`*args` and `**kwargs`).

## Scope and Lifetime of Variables

### Local Scope

*   Variables defined inside a function are local to that function.

### Global Scope

*   Variables defined outside any function are global.
*   Using the `global` keyword to modify a global variable from within a function.

## Modules and Packages

### Importing Modules

*   Using the `import` statement to import modules. Example: `import math`.
*   Importing specific functions from a module: `from math import sqrt`.
*   Using aliases: `import math as m`.

### Creating Modules

*   Creating a Python file with functions and variables.
*   Importing your own module.

### Packages

*   Organizing modules into directories (packages).
*   Using the `__init__.py` file to mark a directory as a package.

# IV. Object-Oriented Programming (OOP)

## Classes and Objects

### Defining Classes

*   Using the `class` keyword to define a class.
*   Class attributes (variables) and methods (functions).
    ```python
    class Dog:
        def __init__(self, name, breed):
            self.name = name
            self.breed = breed

        def bark(self):
            print("Woof!")
    ```

### Creating Objects

*   Instantiating a class to create an object. Example: `my_dog = Dog("Buddy", "Golden Retriever")`.
*   Accessing object attributes: `my_dog.name`.
*   Calling object methods: `my_dog.bark()`.

## Inheritance

### Single Inheritance

*   Creating a new class (child class) that inherits from an existing class (parent class).
*   Overriding methods from the parent class.
    ```python
    class Bulldog(Dog):
        def bark(self):
            print("Woof woof!")
    ```

### Multiple Inheritance

*   A class inheriting from multiple parent classes.

## Polymorphism

### Method Overriding

*   Overriding methods in child classes to provide specific implementations.

### Duck Typing

*   Focusing on the behavior of an object rather than its type. "If it walks like a duck and quacks like a duck, then it must be a duck."

## Encapsulation

### Private Attributes

*   Using name mangling (prefixing attributes with `__`) to make attributes private (though not strictly enforced in Python).

### Getters and Setters

*   Creating methods to access and modify private attributes.
    ```python
    class Person:
        def __init__(self, name):
            self.__name = name

        def get_name(self):
            return self.__name

        def set_name(self, name):
            self.__name = name
    ```

# V. File Handling

## Reading Files

### Opening Files

*   Using the `open()` function to open a file. Example: `file = open("my_file.txt", "r")`.
*   File modes: `"r"` (read), `"w"` (write), `"a"` (append), `"b"` (binary), `"+"` (read and write).

### Reading File Content

*   `read()`: Reading the entire file content.
*   `readline()`: Reading a single line from the file.
*   `readlines()`: Reading all lines into a list.

### Closing Files

*   Using the `close()` method to close a file.
*   Using the `with` statement for automatic file closing.
    ```python
    with open("my_file.txt", "r") as file:
        content = file.read()
        print(content) # The file is automatically closed after exiting the 'with' block
    ```

## Writing Files

### Writing to Files

*   Using the `write()` method to write to a file.
*   `writelines()`: Writing a list of strings to a file.

### Appending to Files

*   Opening a file in append mode (`"a"`).

# VI. Error Handling

## Try-Except Blocks

### Handling Exceptions

*   Using `try-except` blocks to catch and handle exceptions.
    ```python
    try:
        result = 10 / 0
    except ZeroDivisionError:
        print("Cannot divide by zero!")
    ```

### Specific Exception Types

*   `ZeroDivisionError`, `TypeError`, `ValueError`, `FileNotFoundError`, `IndexError`.

### Else and Finally Clauses

*   `else` clause: Executed if no exception occurs in the `try` block.
*   `finally` clause: Always executed, regardless of whether an exception occurs or not.

## Raising Exceptions

### Using the `raise` Keyword

*   Raising custom exceptions. Example: `raise ValueError("Invalid input")`.
*   Reraising exceptions.

# VII. Working with Libraries

## NumPy

### Arrays

*   Creating NumPy arrays.
*   Array indexing and slicing.
*   Array operations (element-wise operations, matrix operations).

### NumPy Functions

*   Mathematical functions (e.g., `sin()`, `cos()`, `exp()`, `log()`).
*   Statistical functions (e.g., `mean()`, `median()`, `std()`).
*   Random number generation.

## Pandas

### DataFrames

*   Creating DataFrames from lists, dictionaries, and CSV files.
*   DataFrame indexing and selection.
*   DataFrame operations (filtering, sorting, grouping).

### Series

*   Understanding Pandas Series objects.

### Data Cleaning

*   Handling missing values.
*   Data transformation.

## Matplotlib

### Plotting Basics

*   Creating line plots, scatter plots, bar charts, and histograms.
*   Adding labels, titles, and legends to plots.

### Customizing Plots

*   Changing colors, markers, and line styles.
*   Creating subplots.

# VIII. Regular Expressions

## Basic Syntax

### Characters and Metacharacters

*   `.` (any character), `*` (zero or more), `+` (one or more), `?` (zero or one), `[]` (character set), `^` (beginning of line), `$` (end of line), `\d` (digit), `\w` (word character), `\s` (whitespace).

### Quantifiers

*   Specifying the number of occurrences.

## Using the `re` Module

### Searching and Matching

*   `re.search()`: Searching for a pattern in a string.
*   `re.match()`: Matching a pattern at the beginning of a string.
*   `re.findall()`: Finding all occurrences of a pattern.

### Substituting Text

*   `re.sub()`: Replacing occurrences of a pattern with another string.

### Splitting Strings

*   `re.split()`: Splitting a string based on a pattern.

# IX. Testing

## Unit Testing

### Introduction to Unit Testing

*   The importance of testing.
*   Writing test cases.
*   Test-Driven Development (TDD).

### Using the `unittest` Module

*   Creating test classes and test methods.
*   Assertions (e.g., `assertEqual()`, `assertTrue()`, `assertRaises()`).

## Integration Testing

### Testing interactions between components

*   Mocking external dependencies.
*   Verifying data flow between modules

# X. Deploying Python Applications

## Virtual Environments

### Creating and Activating Virtual Environments

*   Using `venv` or `virtualenv`.
*   Isolating project dependencies.

## Package Management

### Using `pip`

*   Installing packages.
*   Creating `requirements.txt` files.

## Deployment Platforms

### Choosing a platform (e.g., Heroku, AWS, Docker)

*   Configuring the application for deployment
*   Basic deployment steps for the chosen platform
