# I. Introduction to Deno

## Understanding Deno's Architecture and Goals

### Deno vs. Node.js: Key Differences

*   Security: Built-in security features (permissions).
*   TypeScript Support: First-class TypeScript support without transpilation setup.
*   Module Resolution: Import modules via URLs.
*   Standard Library:  Official, reviewed standard library.
*   Modern JavaScript: Embraces modern JavaScript features (ES modules, top-level await).

### Deno's Core Principles

*   Secure by default: Explicit permissions for file system access, network access, and environment variables.
*   Browser compatible: Strive for compatibility with web standards.
*   Single executable:  Deno is a single executable file.
*   Built with Rust and V8:  Leverages Rust for performance and V8 for JavaScript execution.

## Installing and Setting Up Deno

### Downloading and Installing Deno

*   Using the shell installer: `curl -fsSL https://deno.land/x/install/install.sh | sh`
*   Using package managers:  (e.g., `brew install deno` on macOS).
*   Verifying the installation: `deno --version`

### Configuring Deno's Environment

*   `DENO_DIR`:  The directory where Deno caches downloaded modules. Setting this environment variable.
*   Adding Deno to your PATH:  Ensuring the `deno` command is accessible from any directory.

# II. Deno Basics: Running and Managing Code

## Running Deno Scripts

### Executing a Simple JavaScript File

*   Creating a `hello.js` file: `console.log("Hello, Deno!");`
*   Running the script: `deno run hello.js`
*   Understanding the output.

### Running a TypeScript File Directly

*   Creating a `hello.ts` file: `console.log("Hello, Deno TypeScript!");`
*   Running the script: `deno run hello.ts`
*   Deno's built-in TypeScript compiler.

## Permissions and Security

### Understanding Deno's Permission Model

*   Explicitly granting permissions: `--allow-read`, `--allow-write`, `--allow-net`, `--allow-env`, `--allow-run`, `--allow-hrtime`.
*   Running a script without permissions: Observing the security errors.
*   Example: `deno run --allow-net https://example.com/script.ts`

### Controlling File System Access

*   `--allow-read`:  Allow reading files.
*   `--allow-write`:  Allow writing files.
*   Specifying allowed directories: `--allow-read=/path/to/directory`. Example: `deno run --allow-read=/tmp main.ts`

### Controlling Network Access

*   `--allow-net`:  Allow network connections.
*   Specifying allowed hosts: `--allow-net=example.com`.  Example: `deno run --allow-net=deno.land main.ts`

## Modules and Imports

### Importing Modules from URLs

*   Importing from a remote URL: `import { assertEquals } from "https://deno.land/std@0.177.0/testing/asserts.ts";`
*   Understanding version pinning: Using specific version numbers in URLs.

### Importing Local Modules

*   Creating a `utils.ts` file: `export function add(a: number, b: number): number { return a + b; }`
*   Importing from `main.ts`: `import { add } from "./utils.ts";`
*   Understanding relative paths.

### The Deno Standard Library

*   Exploring the standard library: `https://deno.land/std`.
*   Using modules from the standard library:  `import * as log from "https://deno.land/std@0.177.0/log/mod.ts";`
*   Examples: `fs`, `http`, `testing`, `datetime`, `encoding`, `flags`.

# III. Asynchronous Programming and I/O

## Async/Await in Deno

### Understanding Async Functions

*   Defining an async function: `async function fetchData(): Promise<string> { ... }`
*   Using `await` to handle promises: `const result = await fetchData();`

### Performing Asynchronous Operations

*   Reading a file asynchronously: `await Deno.readTextFile("file.txt");`
*   Making an HTTP request asynchronously: `await fetch("https://example.com");`

## Working with Deno's File System API

### Reading Files

*   Reading text files: `Deno.readTextFile("file.txt")`.
*   Reading binary files: `Deno.readFile("file.bin")`.
*   Handling errors: `try { ... } catch (e) { ... }`

### Writing Files

*   Writing text files: `Deno.writeTextFile("file.txt", "Hello, Deno!");`
*   Writing binary files: `Deno.writeFile("file.bin", new Uint8Array([72, 101, 108, 108, 111]));`

### Creating and Deleting Files and Directories

*   Creating directories: `Deno.mkdir("new_directory");`
*   Creating files: `Deno.create("new_file.txt");`
*   Deleting files and directories: `Deno.remove("file.txt");`, `Deno.remove("directory", { recursive: true });`

# IV. Networking and HTTP

## Creating HTTP Servers

### Using the `Deno.serve` API

*   Basic HTTP server:
    ```typescript
    Deno.serve({ port: 8000 }, (req) => {
      return new Response("Hello, Deno!");
    });
    ```
*   Understanding request and response objects.

### Handling HTTP Requests

*   Accessing request headers: `req.headers`.
*   Reading request body: `req.body`, `req.text()`, `req.json()`.
*   Responding with different content types: `new Response("...", { headers: { "Content-Type": "application/json" } })`.

## Making HTTP Requests (Fetch API)

### Performing GET Requests

*   Basic GET request: `const response = await fetch("https://example.com");`
*   Reading the response body: `await response.text()`, `await response.json()`.
*   Checking the response status: `response.status`.

### Performing POST Requests

*   Sending JSON data:
    ```typescript
    const response = await fetch("https://example.com/api", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ key: "value" }),
    });
    ```
*   Handling different content types.

# V. Testing and Debugging

## Writing Unit Tests

### Using the Deno Testing API

*   Creating a test file: `my_module_test.ts`
*   Defining tests with `Deno.test`:
    ```typescript
    import { assertEquals } from "https://deno.land/std@0.177.0/testing/asserts.ts";

    Deno.test("My Test", () => {
      assertEquals(1 + 1, 2);
    });
    ```
*   Running tests: `deno test`

### Using Assertions

*   `assertEquals(actual, expected)`: Asserts that two values are equal.
*   `assertNotEquals(actual, expected)`: Asserts that two values are not equal.
*   `assertThrows(() => { ... })`: Asserts that a function throws an error.
*   Other assertion functions in `deno.land/std/testing/asserts.ts`.

## Debugging Deno Applications

### Using the Deno Inspector

*   Running Deno with the `--inspect` or `--inspect-brk` flag: `deno run --inspect-brk script.ts`
*   Connecting to the inspector using Chrome DevTools or VS Code.
*   Setting breakpoints and stepping through code.

### Logging and Error Handling

*   Using `console.log` for debugging output.
*   Implementing error handling with `try...catch` blocks.
*   Custom error classes.

# VI. Advanced Topics

## Deno Deploy

### Understanding Deno Deploy

*   Deploying Deno applications to Deno Deploy.
*   Serverless execution environment.

### Deploying a Simple Application

*   Creating a `main.ts` file.
*   Deploying the application using the Deno Deploy dashboard or CLI.

## Web Frameworks

### Overview of Deno Web Frameworks

*   Aleph.js: React-based framework.
*   Oak: Koa-inspired middleware framework.
*   Fresh: Next-gen web framework using Preact.

### Using Oak Framework

*   Setting up an Oak application:
    ```typescript
    import { Application, Router } from "https://deno.land/x/oak@v11.1.0/mod.ts";

    const app = new Application();
    const router = new Router();

    router.get("/", (context) => {
      context.response.body = "Hello Oak!";
    });

    app.use(router.routes());
    app.use(router.allowedMethods());

    await app.listen({ port: 8000 });
    ```

## Interacting with the Operating System

### Running External Commands

*   Using `Deno.run`: Executing external commands.
*   Example: `const process = Deno.run({ cmd: ["ls", "-l"] });`
*   Capturing standard output and standard error.

### Accessing Environment Variables

*   Using `Deno.env.get`:  Retrieving environment variables.
*   Example: `const apiKey = Deno.env.get("API_KEY");`

### Working with Processes

*   Spawning child processes.
*   Communicating with child processes.
