# I. Python Fundamentals

## Understanding Data Types

### Numeric Types

*   Integers (`int`): Whole numbers (e.g., `10`, `-5`).
*   Floating-Point Numbers (`float`): Numbers with decimal points (e.g., `3.14`, `-2.5`).
*   Complex Numbers (`complex`): Numbers with a real and imaginary part (e.g., `1 + 2j`).

### Text Type

*   Strings (`str`): Sequences of characters (e.g., `"Hello"`, `"Python"`).

### Boolean Type

*   Booleans (`bool`): `True` or `False` values.

### Sequence Types

*   Lists (`list`): Ordered, mutable sequences of items (e.g., `[1, 2, 3]`, `["a", "b", "c"]`).
*   Tuples (`tuple`): Ordered, immutable sequences of items (e.g., `(1, 2, 3)`, `("a", "b", "c")`).
*   Ranges (`range`): Sequences of numbers (e.g., `range(5)`).

### Mapping Type

*   Dictionaries (`dict`): Unordered collections of key-value pairs (e.g., `{"name": "Alice", "age": 30}`).

### Set Types

*   Sets (`set`): Unordered collections of unique items (e.g., `{1, 2, 3}`).
*   Frozen Sets (`frozenset`): Immutable sets.

## Working with Variables

### Variable Assignment

*   Assigning values to variables using the `=` operator (e.g., `x = 10`).
*   Variable naming conventions (e.g., using descriptive names, avoiding reserved keywords).

### Variable Scope

*   Understanding local and global variables.

## Operators

### Arithmetic Operators

*   `+`, `-`, `*`, `/`, `//` (floor division), `%` (modulo), `**` (exponentiation).

### Comparison Operators

*   `==`, `!=`, `>`, `<`, `>=`, `<=`.

### Logical Operators

*   `and`, `or`, `not`.

### Assignment Operators

*   `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `//=` , `**=`, `&=`, `|=`, `^=`, `>>=`, `<<=`.

### Identity Operators

*   `is`, `is not`.

### Membership Operators

*   `in`, `not in`.

## Input and Output

### `print()` function

*   Displaying output to the console.
*   Using `sep` and `end` arguments for formatting.

### `input()` function

*   Reading input from the user.
*   Converting input to appropriate data types.

# II. Control Flow

## Conditional Statements

### `if` statement

*   Executing code based on a condition.

### `elif` statement

*   Checking multiple conditions.

### `else` statement

*   Executing code if no condition is met.

### Nested `if` statements

*   Using `if` statements within other `if` statements.

## Loops

### `for` loop

*   Iterating over a sequence (e.g., list, tuple, string).
*   Using `range()` function to generate a sequence of numbers.

### `while` loop

*   Executing code as long as a condition is true.

### `break` statement

*   Exiting a loop prematurely.

### `continue` statement

*   Skipping the current iteration of a loop.

### `else` clause in loops

*   Executing code after a loop completes normally (without `break`).

# III. Functions

## Defining Functions

### `def` keyword

*   Creating a function definition.

### Function parameters

*   Passing arguments to functions.
*   Default parameter values.
*   Keyword arguments.
*   `*args` and `**kwargs` for variable-length arguments.

## Function Return Values

### `return` statement

*   Returning a value from a function.
*   Returning multiple values (as a tuple).
*   Functions without a return statement implicitly return `None`.

## Function Scope

### Local variables

*   Variables defined within a function.

### Global variables

*   Variables defined outside of any function.

### `global` keyword

*   Modifying global variables from within a function.

## Lambda Functions

### Anonymous functions

*   Creating small, unnamed functions using the `lambda` keyword.
*   Using lambda functions with `map()`, `filter()`, and `sorted()`.

# IV. Data Structures

## Lists

### Creating Lists

*   Using square brackets `[]`.
*   Using the `list()` constructor.

### List Operations

*   Accessing elements by index.
*   Slicing lists.
*   Adding elements: `append()`, `insert()`, `extend()`.
*   Removing elements: `remove()`, `pop()`, `del`.
*   List comprehension.

## Tuples

### Creating Tuples

*   Using parentheses `()`.
*   Using the `tuple()` constructor.

### Tuple Operations

*   Accessing elements by index.
*   Slicing tuples.
*   Tuple packing and unpacking.

## Dictionaries

### Creating Dictionaries

*   Using curly braces `{}`.
*   Using the `dict()` constructor.

### Dictionary Operations

*   Accessing values by key.
*   Adding or updating key-value pairs.
*   Removing key-value pairs: `del`, `pop()`, `popitem()`.
*   Dictionary methods: `keys()`, `values()`, `items()`.

## Sets

### Creating Sets

*   Using curly braces `{}`.
*   Using the `set()` constructor.

### Set Operations

*   Adding elements: `add()`.
*   Removing elements: `remove()`, `discard()`, `pop()`.
*   Set operations: union (`|`), intersection (`&`), difference (`-`), symmetric difference (`^`).

# V. Modules and Packages

## Importing Modules

### `import` statement

*   Importing entire modules.
*   Importing specific functions or classes from a module: `from module import name`.
*   Aliasing modules: `import module as alias`.

## Standard Library Modules

### `math` module

*   Mathematical functions (e.g., `sqrt()`, `sin()`, `cos()`).

### `random` module

*   Generating random numbers (e.g., `random()`, `randint()`, `choice()`).

### `datetime` module

*   Working with dates and times (e.g., `datetime`, `date`, `time`).

### `os` module

*   Interacting with the operating system (e.g., `os.path`, `os.makedirs`).

## Creating Modules

### Defining functions and classes in a `.py` file.
### Using modules in other programs.

## Packages

### Creating packages
### Using packages

# VI. Object-Oriented Programming (OOP)

## Classes and Objects

### Defining Classes

*   Using the `class` keyword.

### Creating Objects

*   Instantiating classes.

### Attributes

*   Defining instance variables.
*   Accessing attributes using the dot notation (`object.attribute`).

### Methods

*   Defining methods within a class.
*   The `self` parameter.

## Inheritance

### Creating subclasses

*   Inheriting attributes and methods from a parent class.

### Method overriding

*   Redefining methods in a subclass.

### `super()` function

*   Calling methods from the parent class.

## Encapsulation

### Hiding internal data

*   Using naming conventions (e.g., `_attribute`, `__attribute`).

### Properties

*   Using `property()` to control attribute access.
*   Using decorators `@property`, `@attribute.setter`, `@attribute.deleter`.

## Polymorphism

### Duck typing

*   Focusing on behavior rather than type.

### Abstract base classes

*   Defining abstract methods using `abc` module.

# VII. File Handling

## Opening Files

### `open()` function

*   Specifying the file path and mode (e.g., `"r"` for read, `"w"` for write, `"a"` for append).

## Reading Files

### `read()` method

*   Reading the entire file content.

### `readline()` method

*   Reading a single line from the file.

### `readlines()` method

*   Reading all lines into a list.

### Iterating over a file object.

## Writing Files

### `write()` method

*   Writing a string to the file.

### `writelines()` method

*   Writing a list of strings to the file.

## Closing Files

### `close()` method
### Using `with` statement for automatic file closing.

## File Modes
*   `r` - Read
*   `w` - Write
*   `a` - Append
*   `x` - Create
*   `b` - Binary
*   `t` - Text
*   `+` - Update (read and write)

# VIII. Exception Handling

## `try` and `except` Blocks

### Handling specific exceptions.

### `else` clause

*   Executing code if no exception occurs.

### `finally` clause

*   Executing code regardless of whether an exception occurs.

## Raising Exceptions

### `raise` statement

*   Creating and raising custom exceptions.

## Custom Exceptions

### Defining custom exception classes

# IX. Regular Expressions

## Importing the `re` module.

## Basic Patterns

### Matching characters
### Character classes
### Quantifiers

## Special Characters

### Anchors (`^`, `$`)
### Word boundaries (``)

## Regular Expression Functions

### `search()`
### `match()`
### `findall()`
### `finditer()`
### `sub()`
### `split()`

## Compiling Regular Expressions

### `re.compile()`

# X. Working with APIs

## Understanding APIs

### RESTful APIs
### JSON format

## Making HTTP Requests

### Using the `requests` library

### `GET` requests
### `POST` requests
### `PUT` requests
### `DELETE` requests

## Handling API Responses

### Response status codes
### Parsing JSON data

## Authentication

### API keys
### OAuth

# XI. Data Analysis with Pandas

## Introduction to Pandas

### Series
### DataFrames

## Data Input and Output

### Reading data from CSV files
### Writing data to CSV files

## Data Selection and Filtering

### Selecting columns
### Filtering rows
### Using `loc` and `iloc`

## Data Manipulation

### Adding new columns
### Renaming columns
### Dropping columns
### Applying functions to columns

## Data Aggregation and Grouping

### Grouping data using `groupby()`
### Applying aggregation functions (e.g., `sum()`, `mean()`, `count()`)

## Handling Missing Data

### Identifying missing data
### Filling missing data
### Dropping rows with missing data

# XII. Data Visualization with Matplotlib

## Introduction to Matplotlib

### Pyplot module

## Creating Basic Plots

### Line plots
### Scatter plots
### Bar charts
### Histograms

## Customizing Plots

### Adding titles and labels
### Changing colors and markers
### Adding legends
### Setting axis limits

## Subplots

### Creating multiple plots in a single figure
### Using `subplots()`

## Different Plot Types

### Pie charts
### Box plots
### Violin plots

# XIII. Web Development with Flask

## Introduction to Flask

### Setting up a Flask environment

## Basic Flask App

### Defining routes
### Handling requests
### Returning responses

## Templates

### Using Jinja2 templates
### Passing data to templates

## Forms

### Creating forms using Flask-WTF
### Handling form submissions

## Databases

### Integrating with databases using SQLAlchemy

## RESTful APIs with Flask

### Building RESTful APIs using Flask-RESTful
