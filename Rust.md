# I. Introduction to Rust

## Understanding Rust's Core Principles

### Memory Safety without Garbage Collection
*   Ownership
*   Borrowing
*   Lifetimes

### Concurrency without Data Races
*   The `Send` and `Sync` traits
*   Mutexes, channels, and atomic operations

### Zero-Cost Abstractions
*   Generics
*   Traits
*   Inline functions

## Setting Up Your Rust Environment

### Installing Rust
*   Using `rustup`
    ```bash
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
    ```

### Understanding Cargo
*   Creating a new project: `cargo new <project_name>`
*   Building a project: `cargo build`
*   Running a project: `cargo run`
*   Testing a project: `cargo test`
*   Managing dependencies: `Cargo.toml` file

# II. Basic Rust Syntax and Concepts

## Variables and Data Types

### Declaring Variables
*   `let` keyword for immutable variables
*   `mut` keyword for mutable variables

### Basic Data Types
*   Integers: `i8`, `i16`, `i32`, `i64`, `i128`, `u8`, `u16`, `u32`, `u64`, `u128`, `isize`, `usize`
*   Floating-point numbers: `f32`, `f64`
*   Booleans: `bool`
*   Characters: `char`
*   Tuples: `(i32, bool, char)`
*   Arrays: `[i32; 5]`
*   Slices: `&[i32]`

## Control Flow

### Conditional Statements
*   `if`, `else if`, `else`
*   Example:
    ```rust
    let x = 5;
    if x > 0 {
        println!("Positive");
    } else if x == 0 {
        println!("Zero");
    } else {
        println!("Negative");
    }
    ```

### Loops
*   `loop`, `while`, `for`
*   Example:
    ```rust
    for i in 0..5 {
        println!("{}", i);
    }
    ```

## Functions

### Defining Functions
*   Using the `fn` keyword
*   Specifying argument types and return types
*   Example:
    ```rust
    fn add(x: i32, y: i32) -> i32 {
        x + y
    }
    ```

### Function Parameters and Return Values
*   Passing arguments by value and by reference
*   Returning multiple values using tuples

# III. Ownership, Borrowing, and Lifetimes

## Understanding Ownership

### Ownership Rules
*   Each value has a single owner.
*   When the owner goes out of scope, the value is dropped.
*   Example: Demonstrating ownership transfer

### Moves and Clones
*   Moving ownership vs. cloning data
*   Using the `clone()` method
*   Implementing the `Copy` trait

## Borrowing

### Borrowing Rules
*   You can have one mutable reference or multiple immutable references.
*   References must always be valid.
*   Example: Demonstrating mutable and immutable borrows

### Mutable and Immutable References
*   `&` for immutable references
*   `&mut` for mutable references

## Lifetimes

### Understanding Lifetimes
*   Ensuring references are always valid
*   Lifetime annotations: `'a`, `'b`, etc.

### Lifetime Annotations in Functions
*   Specifying lifetime dependencies between function arguments and return values
*   Example:
    ```rust
    fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
        if x.len() > y.len() {
            x
        } else {
            y
        }
    }
    ```

### Lifetime Elision Rules
*   Understanding when lifetime annotations can be omitted

# IV. Data Structures

## Structs

### Defining Structs
*   Using the `struct` keyword
*   Field declarations and initialization
*   Example:
    ```rust
    struct Rectangle {
        width: u32,
        height: u32,
    }
    ```

### Implementing Methods on Structs
*   Using the `impl` keyword
*   The `self` parameter
*   Example:
    ```rust
    impl Rectangle {
        fn area(&self) -> u32 {
            self.width * self.height
        }
    }
    ```

## Enums

### Defining Enums
*   Using the `enum` keyword
*   Defining variants with or without associated data
*   Example:
    ```rust
    enum Message {
        Quit,
        Move { x: i32, y: i32 },
        Write(String),
        ChangeColor(i32, i32, i32),
    }
    ```

### Matching on Enums
*   Using the `match` expression
*   Handling different enum variants
*   The `_` wildcard pattern

## Vectors

### Creating and Modifying Vectors
*   Using `Vec<T>`
*   Adding elements: `push()`
*   Removing elements: `pop()`
*   Accessing elements using indexing

### Iterating Over Vectors
*   Using `for` loops
*   Using iterators

## Hash Maps

### Creating and Using Hash Maps
*   Using `HashMap<K, V>`
*   Inserting key-value pairs: `insert()`
*   Retrieving values: `get()`
*   Iterating over key-value pairs

# V. Error Handling

## Recoverable Errors

### The `Result<T, E>` Type
*   Representing success or failure
*   The `Ok(T)` and `Err(E)` variants

### Handling `Result` Values
*   Using `match` expressions
*   Using the `unwrap()` and `expect()` methods
*   Propagating errors using the `?` operator

## Unrecoverable Errors

### The `panic!` Macro
*   Causing a program to crash
*   Using `panic!` for truly exceptional situations

### Backtraces
*   Generating backtraces to help debug panics

# VI. Concurrency

## Threads

### Creating Threads
*   Using the `thread::spawn()` function
*   Moving data into threads using `move` closures
*   Example:
    ```rust
    use std::thread;

    fn main() {
        let handle = thread::spawn(|| {
            println!("Hello from a thread!");
        });

        handle.join().unwrap();
    }
    ```

### Joining Threads
*   Waiting for threads to complete using `join()`

## Message Passing

### Channels
*   Using `mpsc::channel()` for single-producer, single-consumer channels
*   Sending messages: `tx.send()`
*   Receiving messages: `rx.recv()`
*   Example:
    ```rust
    use std::sync::mpsc;
    use std::thread;

    fn main() {
        let (tx, rx) = mpsc::channel();

        thread::spawn(move || {
            tx.send("Hello!").unwrap();
        });

        println!("Received: {}", rx.recv().unwrap());
    }
    ```

## Shared State

### Mutexes
*   Protecting shared data using `Mutex<T>`
*   Acquiring locks: `lock()`
*   Example:
    ```rust
    use std::sync::Mutex;
    use std::thread;
    use std::sync::Arc;

    fn main() {
        let counter = Arc::new(Mutex::new(0));
        let mut handles = vec![];

        for _ in 0..10 {
            let counter = Arc::clone(&counter);
            let handle = thread::spawn(move || {
                let mut num = counter.lock().unwrap();
                *num += 1;
            });
            handles.push(handle);
        }

        for handle in handles {
            handle.join().unwrap();
        }

        println!("Result: {}", *counter.lock().unwrap());
    }
    ```

### Atomic Operations
*   Using atomic types like `AtomicU32` for simple operations
*   Example: `fetch_add()`, `fetch_sub()`, `compare_and_swap()`

# VII. Traits and Generics

## Traits

### Defining Traits
*   Using the `trait` keyword
*   Defining methods with or without default implementations
*   Example:
    ```rust
    trait Summary {
        fn summarize(&self) -> String;
    }
    ```

### Implementing Traits
*   Using the `impl` keyword
*   Implementing trait methods for specific types

### Trait Bounds
*   Constraining generic types using traits
*   Example: `fn notify<T: Summary>(item: &T)`

## Generics

### Generic Functions
*   Using type parameters in function signatures
*   Example: `fn largest<T: PartialOrd + Copy>(list: &[T]) -> T`

### Generic Structs
*   Using type parameters in struct definitions
*   Example: `struct Point<T> { x: T, y: T }`

# VIII. Testing

## Writing Unit Tests

### The `#[test]` Attribute
*   Marking functions as test cases
*   Example:
    ```rust
    #[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
    ```

### Assertions
*   Using `assert_eq!`, `assert_ne!`, `assert!` for testing conditions

### Organizing Tests

### Modules for tests
*   Using the `#[cfg(test)]` attribute to define test modules
*   Example:
    ```rust
    #[cfg(test)]
    mod tests {
        use super::*;

        #[test]
        fn it_adds_two() {
            assert_eq!(add(2, 2), 4);
        }
    }
    ```
