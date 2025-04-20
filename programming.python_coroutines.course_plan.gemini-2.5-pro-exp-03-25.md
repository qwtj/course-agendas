# I. Foundations of Asynchronous Programming and Coroutines

## Understanding Asynchronous Concepts
"<prompt>Explain the core concepts of asynchronous programming, contrasting it with synchronous execution. Define terms like non-blocking I/O, concurrency, and event loops in the context of Python.</prompt>"

## Introduction to Python Coroutines
"<prompt>Define what a coroutine is in Python. Explain its fundamental purpose as a function that can pause and resume its execution, allowing cooperative multitasking.</prompt>"

### Generators as Precursors (`yield`)
"<prompt>Describe how Python generators (`yield`) provided the initial mechanism for coroutine-like behavior. Explain how `yield` can be used both to produce values and pause execution, and how `.send()` allowed data injection, forming the basis for early coroutines.</prompt>"
*   **Example:**
    "<prompt>Provide a simple Python code example demonstrating a generator-based coroutine using `yield` and `.send()` to receive data. Show the necessary 'priming' step (`next()`).</prompt>"

### Evolution to Native Coroutines (`async`/`await`)
"<prompt>Explain the limitations of generator-based coroutines and how the introduction of `async` and `await` keywords in Python 3.5 provided dedicated syntax for defining and managing native coroutines, integrating them tightly with the `asyncio` library.</prompt>"

---
*   **Section Summary:** "<prompt>Summarize the key differences between synchronous and asynchronous programming, the definition of a coroutine, and the evolution from generator-based (`yield`) to native (`async`/`await`) coroutines in Python.</prompt>"
*   **Glossary:** "<prompt>Define the following terms in the context of Python asynchronous programming: Synchronous, Asynchronous, Non-blocking I/O, Concurrency, Coroutine, Generator, Event Loop.</prompt>"
*   **Quiz:** "<prompt>Generate 3 multiple-choice questions to test understanding of the fundamental difference between synchronous/asynchronous execution and the basic concept of a Python coroutine.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to reflect on a scenario where asynchronous programming might be more beneficial than synchronous programming and why.</prompt>"
*   **Further Reading:** "<prompt>Provide 1-2 links to official Python documentation or reputable articles explaining the basics of asynchronous programming and the history of coroutines in Python.</prompt>"
---

# II. Native Coroutines and the `asyncio` Library

*   **Section Transition:** "<prompt>Provide a brief transition statement indicating the shift from foundational concepts to the practical implementation of modern Python coroutines using `async` / `await` and the `asyncio` library.</prompt>"

## Defining Native Coroutines (`async def`)
"<prompt>Explain the syntax for defining a native coroutine function in Python using the `async def` keywords. Emphasize that an `async def` function always returns a coroutine object when called.</prompt>"
*   **Example:**
    "<prompt>Show a basic Python code example of defining a simple coroutine function using `async def` that prints messages.</prompt>"

## Pausing Execution (`await`)
"<prompt>Describe the role of the `await` keyword. Explain that it can only be used inside an `async def` function and is used to pause the execution of the current coroutine until the awaited object (another coroutine, a Task, or a Future) completes.</prompt>"

### Awaitable Objects
"<prompt>Define what constitutes an 'awaitable' object in Python's asynchronous model. List the primary types: coroutine objects (from `async def` functions), `asyncio.Task` objects, and `asyncio.Future` objects. Explain briefly what each represents.</prompt>"

## The `asyncio` Event Loop
"<prompt>Explain the concept and purpose of the `asyncio` event loop. Describe it as the core component that manages and distributes the execution of asynchronous tasks and callbacks, handling I/O events and scheduling coroutine resumption.</prompt>"

## Running Coroutines
"<prompt>Explain the primary ways to run the top-level coroutine function to start the asynchronous process.</prompt>"
*   **Using `asyncio.run()`:**
    "<prompt>Demonstrate the standard and simplest way to run an `async def` function from synchronous code using `asyncio.run()`. Explain that it manages the event loop setup and shutdown.</prompt>"
    ```python
    import asyncio

    async def main():
        print("Hello")
        await asyncio.sleep(1) # Simulate non-blocking I/O
        print("World")

    # Running the main coroutine
    # <prompt>Generate Python code demonstrating how to execute the 'main' async function using asyncio.run().</prompt>
    ```

---
*   **Section Summary:** "<prompt>Summarize the syntax for defining (`async def`) and pausing (`await`) native coroutines, the concept of awaitable objects, the role of the `asyncio` event loop, and the basic method (`asyncio.run()`) for executing a coroutine.</prompt>"
*   **Glossary:** "<prompt>Define the following terms: `async def`, `await`, Awaitable, `asyncio`, Event Loop, `asyncio.run()`.</prompt>"
*   **Quiz:** "<prompt>Generate 3 multiple-choice or fill-in-the-blank questions testing the usage of `async def`, `await`, and `asyncio.run()`.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to consider why the `await` keyword is necessary and what might happen if an awaitable object is called without `await` inside an `async def` function.</prompt>"
*   **Further Reading:** "<prompt>Provide 1-2 links to the Python `asyncio` documentation sections covering coroutines, awaitables, and running asyncio programs.</prompt>"
---

# III. Concurrent Execution with `asyncio`

*   **Section Transition:** "<prompt>Provide a brief transition statement highlighting the move from running single coroutines to executing multiple coroutines concurrently using `asyncio`.</prompt>"

## Understanding `asyncio.Task`
"<prompt>Explain the purpose of an `asyncio.Task`. Describe it as an object that wraps a coroutine, scheduling it for execution on the event loop and allowing management (e.g., checking status, cancellation).</prompt>"

### Creating Tasks (`asyncio.create_task()`)
"<prompt>Demonstrate how to create an `asyncio.Task` from a coroutine object using `asyncio.create_task()`. Explain that this immediately schedules the coroutine to run on the event loop without blocking the current coroutine.</prompt>"
*   **Example:**
    "<prompt>Provide a Python code example within an `async def` function showing how to create multiple tasks using `asyncio.create_task()` from different coroutine calls.</prompt>"

## Running Tasks Concurrently
"<prompt>Explain the common patterns for running multiple tasks concurrently and waiting for their completion.</prompt>"

### Using `asyncio.gather()`
"<prompt>Describe how `asyncio.gather()` is used to run multiple awaitables (coroutines or Tasks) concurrently and wait for all of them to complete. Explain how it aggregates results and handles exceptions.</prompt>"
*   **Example:**
    ```python
    import asyncio
    import time

    async def worker(name, delay):
        print(f"Worker {name}: Starting")
        await asyncio.sleep(delay)
        print(f"Worker {name}: Finished")
        return f"Result from {name}"

    async def main():
        start_time = time.time()
        # <prompt>Generate Python code demonstrating how to run three 'worker' coroutines concurrently using asyncio.gather() and print their results.</prompt>
        # <prompt>Generate Python code to calculate and print the total time taken for the concurrent execution within the 'main' async function.</prompt>

    # <prompt>Generate Python code to run the 'main' async function using asyncio.run().</prompt>
    ```

### Waiting for Tasks Explicitly
"<prompt>Explain how tasks created with `asyncio.create_task()` can be awaited individually or collectively (e.g., by storing them in a list and awaiting them later, potentially using `asyncio.wait()` or `asyncio.as_completed()`). Contrast this with the convenience of `gather()`.</prompt>"

*   **Key Point Callout:** "<prompt>Highlight the crucial difference: `asyncio.create_task()` *schedules* the coroutine but doesn't wait for it, while `await` *pauses* the current coroutine until the awaited task completes. `asyncio.gather()` combines scheduling and waiting.</prompt>"

---
*   **Section Summary:** "<prompt>Summarize the role of `asyncio.Task`, how to create tasks using `asyncio.create_task()`, and how to run multiple tasks concurrently and wait for their completion using `asyncio.gather()`.</prompt>"
*   **Glossary:** "<prompt>Define: `asyncio.Task`, `asyncio.create_task()`, `asyncio.gather()`.</prompt>"
*   **Quiz:** "<prompt>Generate 3 questions testing the understanding of task creation and concurrent execution using `create_task` and `gather`.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to think about a situation where `asyncio.gather()` would be preferable to creating tasks and awaiting them individually, and vice-versa.</prompt>"
*   **Cross-reference:** "<prompt>Add a note referencing back to Section II on Awaitable Objects, reinforcing that Tasks are awaitable.</prompt>"
---

# IV. Advanced `asyncio` Features

*   **Section Transition:** "<prompt>Provide a brief transition statement introducing more advanced asynchronous patterns and features available in Python's `asyncio` ecosystem.</prompt>"

## Asynchronous Iterators and Generators
"<prompt>Explain the concepts of asynchronous iteration and asynchronous generators. Describe the protocols (`__aiter__`, `__anext__`) and syntax (`async for`, `async def` with `yield`).</prompt>"
*   **`async for` Loop:**
    "<prompt>Demonstrate how to use an `async for` loop to iterate over an asynchronous iterable (an object defining `__aiter__` and `__anext__`).</prompt>"
*   **Asynchronous Generators:**
    "<prompt>Provide a Python code example of an asynchronous generator function using `async def` and `yield`. Show how to consume it using `async for`.</prompt>"

## Asynchronous Context Managers (`async with`)
"<prompt>Explain the purpose of asynchronous context managers for managing resources in asynchronous code (e.g., network connections, locks). Describe the protocol (`__aenter__`, `__aexit__`) and the `async with` statement.</prompt>"
*   **Example:**
    "<prompt>Provide a Python code example defining a simple asynchronous context manager class and demonstrate its use with `async with` inside an `async def` function.</prompt>"

## Synchronization Primitives
"<prompt>Introduce `asyncio`'s synchronization primitives designed for coordinating coroutines, analogous to those in `threading` but non-blocking.</prompt>"
*   **`asyncio.Lock`:**
    "<prompt>Explain the use of `asyncio.Lock` to ensure exclusive access to a shared resource among multiple coroutines.</prompt>"
    *   **Example:** "<prompt>Show a brief Python code example using `asyncio.Lock` within an `async with` statement to protect a critical section in a coroutine accessed by multiple tasks.</prompt>"
*   **`asyncio.Event`:**
    "<prompt>Describe `asyncio.Event` for signaling between coroutines.</prompt>"
*   **`asyncio.Queue`:**
    "<prompt>Explain `asyncio.Queue` for implementing producer-consumer patterns between coroutines.</prompt>"

## Working with Subprocesses and Streams
"<prompt>Briefly introduce `asyncio`'s capabilities for running subprocesses (`asyncio.create_subprocess_exec`) and handling network streams (`asyncio.open_connection`) asynchronously.</prompt>"
*   **Note:** "<prompt>Mention that detailed usage of subprocesses and streams often involves more complex handling and might be covered in more specialized topics, but that `asyncio` provides the tools.</prompt>"

---
*   **Section Summary:** "<prompt>Summarize the advanced `asyncio` features covered: asynchronous iterators/generators (`async for`, `async def`/`yield`), asynchronous context managers (`async with`), and synchronization primitives (`Lock`, `Event`, `Queue`).</prompt>"
*   **Glossary:** "<prompt>Define: Asynchronous Iterator, Asynchronous Generator, `async for`, Asynchronous Context Manager, `async with`, `__aiter__`, `__anext__`, `__aenter__`, `__aexit__`, `asyncio.Lock`, `asyncio.Event`, `asyncio.Queue`.</prompt>"
*   **Quiz:** "<prompt>Generate 3-4 questions testing the syntax and use cases for `async for`, `async with`, and `asyncio.Lock`.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to compare the purpose of `asyncio.Lock` with `threading.Lock` and explain why a non-blocking lock is essential in `asyncio`.</prompt>"
*   **Further Reading:** "<prompt>Provide links to `asyncio` documentation sections on async iterators/generators, context managers, and synchronization primitives.</prompt>"
---

# V. Error Handling, Debugging, and Best Practices

*   **Section Transition:** "<prompt>Provide a brief transition statement focusing on the practical aspects of managing errors, debugging asynchronous code, and applying best practices when working with Python coroutines and `asyncio`.</prompt>"

## Exception Handling in Coroutines
"<prompt>Explain how standard Python `try...except` blocks work within `async def` functions to catch exceptions that occur during their execution, including during `await` calls.</prompt>"

### Exceptions in `asyncio.gather()`
"<prompt>Describe how `asyncio.gather()` handles exceptions in the awaited tasks. Explain the default behavior (first exception cancels pending tasks and is propagated) and the `return_exceptions=True` argument.</prompt>"
*   **Example:** "<prompt>Provide a Python code example demonstrating how `asyncio.gather(..., return_exceptions=True)` allows collecting results or exceptions from all tasks without stopping at the first error.</prompt>"

### Task Cancellation (`asyncio.CancelledError`)
"<prompt>Explain the concept of task cancellation in `asyncio`. Describe how `task.cancel()` works, how it raises `asyncio.CancelledError` within the target task, and the importance of handling this exception gracefully (e.g., for cleanup) using `try...finally` or `except asyncio.CancelledError`.</prompt>"
*   **Example:** "<prompt>Show a Python coroutine example that includes a `try...finally` block to ensure cleanup code runs even if the task is cancelled.</prompt>"

## Debugging Asynchronous Code
"<prompt>Discuss common challenges encountered when debugging asynchronous applications (e.g., non-linear execution flow, hidden exceptions in tasks).</prompt>"
*   **Techniques:**
    *   **Logging:** "<prompt>Emphasize the importance of comprehensive logging within coroutines to trace execution flow.</prompt>"
    *   **`asyncio` Debug Mode:** "<prompt>Introduce `asyncio`'s debug mode (e.g., via `python -m asyncio -X dev` or environment variable) and explain its benefits, such as logging slow callbacks and unawaited coroutines.</prompt>"
    *   **Debugging Tools:** "<prompt>Mention the availability of debuggers (like `pdb` or IDE debuggers) that support stepping through `async`/`await` code, although debugging concurrency can still be complex.</prompt>"

## Performance Considerations and Best Practices
"<prompt>Discuss key factors influencing the performance of `asyncio` applications and common best practices.</prompt>"

### Avoiding Blocking Calls
"<prompt>Stress the critical importance of *not* using blocking I/O operations (e.g., standard `requests.get()`, `time.sleep()`) directly within coroutines, as they block the entire event loop. Recommend using asynchronous libraries (e.g., `aiohttp`, `httpx`, `asyncio.sleep()`).</prompt>"
*   **Key Point Callout:** "<prompt>Highlight that a single blocking call in an `async def` function can halt progress for *all* concurrent tasks managed by the same event loop thread.</prompt>"

### CPU-Bound vs. I/O-Bound Workloads
"<prompt>Reiterate that `asyncio` excels at I/O-bound concurrency due to its cooperative multitasking nature and the GIL. Explain that for CPU-bound tasks, `multiprocessing` or `concurrent.futures.ProcessPoolExecutor` are generally required for true parallelism in Python.</prompt>"
*   **Running Blocking Code:** "<prompt>Briefly introduce `loop.run_in_executor()` as a way to run blocking code in a separate thread or process pool without blocking the main `asyncio` event loop.</prompt>"

### Profiling Asynchronous Applications
"<prompt>Mention tools and techniques for profiling `asyncio` applications to identify performance bottlenecks, such as `asyncstats` or standard Python profilers used carefully.</prompt>"

---
*   **Section Summary:** "<prompt>Summarize best practices for handling exceptions (including task cancellation) in `asyncio`, techniques for debugging asynchronous code, and key performance considerations like avoiding blocking calls and choosing the right concurrency model (asyncio vs. multiprocessing).</prompt>"
*   **Glossary:** "<prompt>Define: `asyncio.CancelledError`, `task.cancel()`, asyncio Debug Mode, Blocking Call, I/O-Bound, CPU-Bound, `loop.run_in_executor()`.</prompt>"
*   **Quiz:** "<prompt>Generate 3-4 questions covering exception handling with `gather`, `CancelledError`, and the impact of blocking calls.</prompt>"
*   **Reflective Prompt:** "<prompt>Ask the learner to describe how they would approach debugging an `asyncio` application where tasks seem to hang or never complete.</prompt>"
*   **Further Reading:** "<prompt>Provide links to articles or documentation discussing `asyncio` error handling patterns, debugging techniques, and performance optimization strategies.</prompt>"
*   **Cross-reference:** "<prompt>Add a note referencing back to Section I regarding the definition of non-blocking I/O and its importance here.</prompt>"
---
