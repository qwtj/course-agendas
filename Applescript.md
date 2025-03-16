# I. Introduction to AppleScript

## Understanding AppleScript Fundamentals

### History and Purpose of AppleScript
*   Originally designed to automate tasks in macOS.
*   Human-readable scripting language.

### AppleScript's Place in the macOS Ecosystem
*   Interacting with applications through scripting dictionaries.
*   Extending functionality beyond built-in features.

## Setting Up the Development Environment

### Script Editor Application
*   Location: `/Applications/Utilities/Script Editor.app`.
*   Features: syntax highlighting, debugging, script saving.

### Script Menu
*   Enabling the Script Menu in Script Editor Preferences.
*   Running scripts directly from the menu bar.

# II. Core Language Concepts

## Syntax and Data Types

### Basic Syntax Rules
*   Commands and keywords: `tell`, `set`, `get`, `if`, `then`, `else`.
*   Statements and expressions.

### Data Types
*   `integer`, `real`, `string`, `boolean`, `date`, `list`, `record`.
*   Example: `set myNumber to 10` , `set myText to "Hello"`

### Operators
*   Arithmetic operators: `+`, `-`, `*`, `/`, `div`, `mod`, `^`.
*   Comparison operators: `=`, `≠`, `>`, `<`, `≥`, `≤`.
*   Logical operators: `and`, `or`, `not`.

## Variables and Properties

### Declaring and Assigning Variables
*   Using `set` to assign values to variables.
*   Example: `set myVariable to "AppleScript"`

### Working with Properties
*   Understanding application properties (e.g., window bounds, document name).
*   Accessing properties using `get` and `set`. Example: `get name of window 1`

## Control Flow

### Conditional Statements: If-Then-Else
*   Syntax: `if condition then`, `else if condition then`, `else`.
*   Example:
    ```applescript
    if x > 5 then
      display dialog "x is greater than 5"
    else
      display dialog "x is not greater than 5"
    end if
    ```

### Loops: Repeat

*   `repeat`: Executes a block of code repeatedly.
*   `repeat with`: Iterates through a range of numbers or items in a list.
*   `repeat until`: Loops until a condition is met.
    ```applescript
    repeat 5 times
        display dialog "Hello"
    end repeat
    ```

# III. Interacting with Applications

## The `tell` Block

### Understanding the `tell` Block
*   Directing commands to specific applications.
*   Syntax: `tell application "ApplicationName" ... end tell`

### Targeting Applications
*   Using the application name (e.g., "Finder", "Safari").
*   Example: `tell application "Finder"`

## Working with Scripting Dictionaries

### Exploring Scripting Dictionaries
*   Opening a scripting dictionary: File > Open Dictionary in Script Editor.
*   Understanding classes, properties, and commands.

### Basic Application Commands

*   Example: Getting the name of the frontmost application.
    ```applescript
    tell application "System Events"
      set frontApp to name of first application process whose frontmost is true
    end tell
    display dialog frontApp
    ```

## Example Applications and Tasks

### Finder Automation
*   Creating folders, moving files, and renaming items.
*   Example:
    ```applescript
    tell application "Finder"
      make new folder at desktop with properties {name:"My New Folder"}
    end tell
    ```

### Safari Automation
*   Opening URLs, getting the current URL, and manipulating tabs.
*   Example:
    ```applescript
    tell application "Safari"
      make new document
      set URL of document 1 to "https://www.example.com"
    end tell
    ```

### System Events
*   Simulating keystrokes and mouse clicks.
*   Example:
    ```applescript
    tell application "System Events"
      keystroke "a" using command down
    end tell
    ```

# IV. Advanced Concepts

## Handlers and Subroutines

### Defining Handlers
*   Creating reusable blocks of code.
*   Syntax: `on handlerName(parameter1, parameter2) ... end handlerName`

### Calling Handlers
*   Executing handlers from other parts of the script.
*   Example:
    ```applescript
    on greet(name)
      display dialog "Hello, " & name & "!"
    end greet

    greet("Alice")
    ```

## Working with Lists and Records

### Manipulating Lists
*   Adding, removing, and accessing items in a list.
*   Example:
    ```applescript
    set myList to {1, 2, 3, 4, 5}
    set end of myList to 6
    display dialog item 3 of myList
    ```

### Working with Records
*   Creating and accessing records (key-value pairs).
*   Example:
    ```applescript
    set myRecord to {name:"Bob", age:30}
    display dialog name of myRecord
    ```

## Error Handling

### Using `try` and `on error` Blocks
*   Handling potential errors gracefully.
*   Example:
    ```applescript
    try
      -- Code that might cause an error
      set x to 10 / 0
    on error errorMessage
      display dialog "An error occurred: " & errorMessage
    end try
    ```

# V. Practical Projects

## Creating a Simple Application Launcher
*   Script to launch specified applications with a keyboard shortcut.

## Automating File Backups
*   Script to copy files from one location to another on a schedule.

## Building a Text Manipulation Tool
*   Script to perform text transformations (e.g., case conversion, find and replace).

# VI. Resources and Further Learning

## Official AppleScript Documentation

### Accessing Apple's Documentation
*   Developer resources available on Apple's developer website.

## Online Communities and Forums

### Apple Support Communities
*   Dedicated AppleScript section for questions and discussions.

### Stack Overflow
*   Searching for and asking AppleScript-related questions.
