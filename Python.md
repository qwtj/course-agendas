# I. Python Fundamentals

## Understanding Data Types

### Numeric Types
*   Integers (`int`): Whole numbers, e.g., `10`, `-5`.
*   Floating-point numbers (`float`): Numbers with decimal points, e.g., `3.14`, `-0.001`.
*   Complex numbers (`complex`): Numbers with a real and imaginary part, e.g., `2 + 3j`.

### Text Type
*   Strings (`str`): Sequences of characters, e.g., `"Hello"`, `"Python"`.

### Boolean Type
*   Booleans (`bool`): Represent truth values, `True` or `False`.

### Sequence Types
*   Lists (`list`): Ordered, mutable collections of items, e.g., `[1, 2, "apple"]`.
*   Tuples (`tuple`): Ordered, immutable collections of items, e.g., `(1, 2, "apple")`.
*   Ranges (`range`): Sequences of numbers, e.g., `range(5)` (0 to 4).

### Mapping Type
*   Dictionaries (`dict`): Key-value pairs, e.g., `{"name": "Alice", "age": 30}`.

### Set Types
*   Sets (`set`): Unordered collections of unique items, e.g., `{1, 2, 3}`.
*   Frozen sets (`frozenset`): Immutable sets.

## Variables and Operators

### Variable Assignment
*   Assigning values to variables using the `=` operator, e.g., `x = 10`.
*   Variable naming conventions.

### Arithmetic Operators
*   Addition (`+`), Subtraction (`-`), Multiplication (`*`), Division (`/`).
*   Floor division (`//`), Modulus (`%`), Exponentiation (`**`).

### Comparison Operators
*   Equal to (`==`), Not equal to (`!=`).
*   Greater than (`>`), Less than (`<`), Greater than or equal to (`>=`), Less than or equal to (`<=`).

### Logical Operators
*   `and`, `or`, `not`.

### Assignment Operators
*   `+=`, `-=`, `*=`, `/=`, `%=`, `//=`, `**=`.

### Identity Operators
*   `is`, `is not` (compare object identity, not equality).

### Membership Operators
*   `in`, `not in` (check if a value is present in a sequence).

## Control Flow

### Conditional Statements
*   `if` statement: `if condition:`.
*   `elif` statement: `elif condition:`.
*   `else` statement: `else:`.
```python
x = 5
if x > 0:
    print("Positive")
elif x == 0:
    print("Zero")
else:
    print("Negative")
```

### Loops
*   `for` loop: iterating over a sequence.
```python
for i in range(5):
    print(i)
```
*   `while` loop: executing a block of code as long as a condition is true.
```python
i = 0
while i < 5:
    print(i)
    i += 1
```
*   `break` statement: exiting a loop.
*   `continue` statement: skipping to the next iteration.

## Functions

### Defining Functions
*   Using the `def` keyword: `def function_name(parameters):`.
*   Function arguments and parameters.
*   Return values using the `return` statement.

### Calling Functions
*   Executing a function by its name: `function_name(arguments)`.

### Function Scope
*   Local and global variables.

### Lambda Functions (Anonymous Functions)
*   Creating small, unnamed functions using the `lambda` keyword: `lambda arguments: expression`.

# II. Data Structures and Algorithms

## Lists

### List Operations
*   Accessing elements: `list[index]`.
*   Slicing: `list[start:end:step]`.
*   Adding elements: `append()`, `insert()`, `extend()`.
*   Removing elements: `remove()`, `pop()`, `del list[index]`.
*   List comprehension: creating new lists based on existing lists.
```python
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers] # [1, 4, 9, 16, 25]
```

### List Methods
*   `sort()`: sorting the list in place.
*   `reverse()`: reversing the list in place.
*   `index()`: finding the index of an element.
*   `count()`: counting the occurrences of an element.

## Dictionaries

### Dictionary Operations
*   Accessing values: `dict[key]`.
*   Adding/updating key-value pairs: `dict[key] = value`.
*   Removing key-value pairs: `del dict[key]`, `pop()`.

### Dictionary Methods
*   `keys()`: returning a view of the keys.
*   `values()`: returning a view of the values.
*   `items()`: returning a view of key-value pairs.
*   `get()`: retrieving a value given a key, with a default value if the key is not found.
*   `update()`: merging another dictionary into the current dictionary.

## Sets

### Set Operations
*   Adding elements: `add()`.
*   Removing elements: `remove()`, `discard()`.
*   Set operations: `union()`, `intersection()`, `difference()`, `symmetric_difference()`.

## Tuples

### Tuple Operations
*   Accessing elements: `tuple[index]`.
*   Tuple packing and unpacking.

### Immutability
*   Understanding the immutable nature of tuples.

## Basic Algorithms

### Searching
*   Linear Search: Iterate through the list and check if element is present.
*   Binary Search: Efficient search in sorted list.

### Sorting
*   Bubble Sort: Repeatedly compares adjacent elements and swaps them.
*   Insertion Sort: Build sorted list one element at a time.
*   Selection Sort: Finds the minimum element and places it at beginning.

# III. Object-Oriented Programming (OOP)

## Classes and Objects

### Defining Classes
*   Using the `class` keyword: `class ClassName:`.
*   Class attributes (variables) and methods (functions).

### Creating Objects
*   Instantiating a class: `object = ClassName()`.

### Constructors (`__init__`)
*   Initializing object attributes: `def __init__(self, parameters):`.

### Instance Methods
*   Methods that operate on specific instances of the class.

### Class Methods and Static Methods
*   Using `@classmethod` and `@staticmethod` decorators.

## Inheritance

### Creating Subclasses
*   Inheriting attributes and methods from a parent class: `class Subclass(ParentClass):`.

### Method Overriding
*   Redefining methods in the subclass.

### Super() Function
*   Calling the parent class's methods from the subclass.

## Encapsulation

### Access Modifiers
*   Public, private, and protected attributes (using name mangling: `__attribute`).

### Getters and Setters
*   Accessing and modifying private attributes using methods.

## Polymorphism

### Method Overloading
* Implicit through dynamic typing; Python doesn't support classic overloading in the same way as languages like Java.

### Method Overriding
* Achieving polymorphism via inheritance and method overriding (discussed previously).

### Duck Typing
* Concept that type checking is less important than ensuring the object has the methods needed. If it walks like a duck and quacks like a duck, then it's a duck.

# IV. Modules and Packages

## Modules

### Importing Modules
*   Using the `import` statement: `import module_name`.
*   Importing specific names from a module: `from module_name import name1, name2`.
*   Renaming imported modules: `import module_name as alias`.

### Creating Modules
*   Writing Python code in separate `.py` files.

### Module Search Path
*   Understanding how Python finds modules.

## Packages

### Creating Packages
*   Organizing modules into directories with an `__init__.py` file.

### Importing Packages and Submodules
*   Using dot notation to access modules within a package: `from package_name import module_name`.

## Standard Library Modules

### `os` Module
*   Interacting with the operating system: file system operations, environment variables.

### `sys` Module
*   Accessing system-specific parameters and functions.

### `math` Module
*   Mathematical functions and constants.

### `datetime` Module
*   Working with dates and times.

### `random` Module
*   Generating random numbers.

### `json` Module
*   Encoding and decoding JSON data.

# V. File Handling and Input/Output

## Reading Files

### Opening Files
*   Using the `open()` function: `file = open(filename, mode)`.
*   File modes: `'r'` (read), `'w'` (write), `'a'` (append), `'b'` (binary`, 'x' (exclusive creation), `+' (updating)

### Reading Data
*   `read()`: reading the entire file content.
*   `readline()`: reading one line at a time.
*   `readlines()`: reading all lines into a list.

### Closing Files
*   Using the `close()` method: `file.close()`.
*   Using the `with` statement (automatic closing): `with open(filename, mode) as file:`.

## Writing Files

### Opening Files in Write Mode
*   Using the `'w'` mode.

### Writing Data
*   `write()`: writing a string to the file.
*   `writelines()`: writing a list of strings to the file.

## Appending to Files

### Opening Files in Append Mode
*   Using the `'a'` mode.

## Working with Different File Types

### Text Files
*   Reading and writing text data.

### Binary Files
*   Reading and writing binary data (e.g., images, audio).

## Error Handling
### Using Try-Except blocks to gracefully handle file-related exceptions such as:
* `FileNotFoundError`
* `IOError`
* `PermissionError`
# VI. Error Handling and Debugging

## Exceptions

### Understanding Exceptions
*   Errors that occur during program execution.

### Handling Exceptions
*   Using `try`, `except`, `finally` blocks.
```python
try:
    # Code that might raise an exception
    result = 10 / 0
except ZeroDivisionError:
    # Code to handle the exception
    print("Cannot divide by zero")
finally:
    # Code that always executes
    print("Finally block")
```

### Raising Exceptions
*   Using the `raise` statement: `raise ValueError("Invalid value")`.

### Custom Exceptions
*   Creating custom exception classes by inheriting from the `Exception` class.

## Debugging

### Debugging Techniques
*   Using `print` statements to inspect variables.
*   Using a debugger (e.g., `pdb`).

### Debugging Tools
*   IDEs with debugging support (e.g., VS Code, PyCharm).
*   `pdb` (Python Debugger).

### Common Errors
*   `SyntaxError`, `TypeError`, `NameError`, `IndexError`, `KeyError`, `ValueError`.

# VII. Regular Expressions

## Regular Expression Syntax

### Basic Patterns
*   Literal characters: `a`, `b`, `1`, `2`.
*   Character classes: `[abc]`, `[a-z]`, `[0-9]`.
*   Anchors: `^` (beginning of line), `$` (end of line).
*   Wildcard: `.` (any character except newline).

### Quantifiers
*   `*`: zero or more occurrences.
*   `+`: one or more occurrences.
*   `?`: zero or one occurrence.
*   `{n}`: exactly n occurrences.
*   `{n,}`: n or more occurrences.
*   `{n,m}`: between n and m occurrences.

### Special Characters
*   Escaping special characters: `\.`, `\*`, `\+`.
*   Predefined character classes: `\d` (digits), `\w` (alphanumeric characters), `\s` (whitespace).

### Groups and Capturing
*   Using parentheses to create groups: `(pattern)`.
*   Backreferences: `\1`, `\2`, etc.

## `re` Module

### Searching for Patterns
*   `re.search()`: finding the first match in a string.
*   `re.match()`: matching the pattern at the beginning of the string.
*   `re.findall()`: finding all matches in a string.
*   `re.finditer()`: returning an iterator of match objects.

### Modifying Strings
*   `re.sub()`: replacing occurrences of a pattern.
*   `re.split()`: splitting a string based on a pattern.

### Compiling Regular Expressions
*   Using `re.compile()` to precompile patterns for performance.

# VIII. Working with Databases

## SQLite

### Connecting to SQLite Databases
*   Using the `sqlite3` module: `import sqlite3`.
```python
import sqlite3
conn = sqlite3.connect('mydatabase.db')
```

### Creating Tables
*   Using SQL `CREATE TABLE` statements.
```python
cursor = conn.cursor()
cursor.execute('''
    CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT,
        age INTEGER
    )
''')
conn.commit()
```

### Inserting Data
*   Using SQL `INSERT INTO` statements.
```python
cursor.execute("INSERT INTO users (name, age) VALUES ('Alice', 30)")
conn.commit()
```

### Querying Data
*   Using SQL `SELECT` statements.
```python
cursor.execute("SELECT * FROM users")
rows = cursor.fetchall()
for row in rows:
    print(row)
```

### Updating Data
*   Using SQL `UPDATE` statements.
```python
cursor.execute("UPDATE users SET age = 31 WHERE name = 'Alice'")
conn.commit()
```

### Deleting Data
*   Using SQL `DELETE` statements.
```python
cursor.execute("DELETE FROM users WHERE name = 'Alice'")
conn.commit()
```
### Closing connections

```python
conn.close()
```
# IX. Web Scraping with Beautiful Soup and Requests

## `requests` Library

### Making HTTP Requests
*   `GET` requests: `requests.get(url)`.
*   `POST` requests: `requests.post(url, data=payload)`.

### Handling Responses
*   Response status codes: `response.status_code`.
*   Response content: `response.text`, `response.content`, `response.json()`.
*   Response headers: `response.headers`.

### Request Headers and Parameters
*   Setting custom headers.
*   Passing parameters in the URL.

## `BeautifulSoup` Library

### Parsing HTML and XML
*   Creating a `BeautifulSoup` object: `soup = BeautifulSoup(html_content, 'html.parser')`.

### Navigating the Parse Tree
*   Finding elements by tag name: `soup.find('tag_name')`, `soup.find_all('tag_name')`.
*   Finding elements by attributes: `soup.find(attrs={'attribute_name': 'value'})`.
*   Navigating through parents, siblings, and children.

### Extracting Data
*   Getting text content: `element.text`.
*   Getting attribute values: `element['attribute_name']`.

### Example Scraping Workflow
1.  Send an HTTP request to a website using `requests`.
2.  Parse the HTML content using `BeautifulSoup`.
3.  Find the desired elements.
4.  Extract the data.
5.  Store or process the data.
```python
import requests
from bs4 import BeautifulSoup

url = 'https://www.example.com'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')
title = soup.find('h1').text
print(title)
```

# X. Introduction to Data Analysis with Pandas

## Pandas Data Structures

### Series
*   One-dimensional labeled array.
```python
import pandas as pd
s = pd.Series([1, 3, 5, 7, 9])
print(s)
```
### DataFrames
*   Two-dimensional labeled data structure with columns of potentially different types.
```python
data = {'Name': ['Alice', 'Bob', 'Charlie'],
        'Age': [25, 30, 28],
        'City': ['New York', 'London', 'Paris']}
df = pd.DataFrame(data)
print(df)
```

## Data Input and Output

### Reading Data from Files
*   `pd.read_csv()`: reading CSV files.
*   `pd.read_excel()`: reading Excel files.
*   `pd.read_json()`: reading JSON files.

### Writing Data to Files
*   `df.to_csv()`: writing to CSV files.
*   `df.to_excel()`: writing to Excel files.
*   `df.to_json()`: writing to JSON files.

## Data Manipulation

### Selecting Data
*   Selecting columns: `df['column_name']`.
*   Selecting rows: `df[start:end]`.
*   Selecting rows and columns: `df.loc[row_labels, column_labels]`, `df.iloc[row_indices, column_indices]`.

### Filtering Data
*   Using boolean indexing: `df[df['column_name'] > value]`.

### Adding and Removing Columns
*   Adding a new column: `df['new_column'] = values`.
*   Removing a column: `del df['column_name']`, `df.drop('column_name', axis=1)`.

### Sorting Data
*   `df.sort_values(by='column_name')`.

### Grouping Data
*   `df.groupby('column_name')`.
### Missing Data
*   Handing with missing Data.

## Data Analysis and Visualization

### Descriptive Statistics
*   `df.describe()`: generating descriptive statistics.
*   `df.mean()`, `df.median()`, `df.std()`, `df.count()`.

### Data Visualization
*   Basic plotting with `matplotlib`: `import matplotlib.pyplot as plt`.
*   Creating histograms, scatter plots, bar charts, etc.
*   Integration with Pandas: `df.plot()`.
