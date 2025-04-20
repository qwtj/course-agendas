# Deno #Runtime #JavaScript #TypeScript
A modern and secure runtime for JavaScript and TypeScript, focusing on web standards, security, and developer experience.

## Core Concepts & Philosophy #Fundamentals #Design
The underlying principles and goals driving Deno's development.
### Secure by Default #Security #Permissions
Code runs in a sandbox; explicit flags are required to grant access to system resources (network, file system, etc.).
### TypeScript Support (First-Class) #TypeScript #Typing
TypeScript is supported out-of-the-box without needing a separate compilation step before running.
### ES Modules (ESM) #Modules #Imports
Uses the standard ES module system directly; no `require()` or `package.json` originally (though compatibility layers exist).
### Web Platform API Compatibility #WebAPI #Standards
Aims to implement standard web APIs (like `fetch`, `Web Crypto`, `Web Streams`) where feasible for server-side use.
### Single Executable #Simplicity #Distribution
Deno ships as a single binary containing the runtime and the built-in toolchain.
### Built-in Tooling #Development #DX
Includes essential development tools (formatter, linter, tester, etc.) within the main executable.

## Runtime Architecture #Internals #Engine
The internal components and structure of the Deno runtime.
### V8 JavaScript Engine #JavaScript #Performance
Utilizes Google's V8 engine, the same engine used by Chrome and Node.js, for executing JavaScript.
### Rust Core #Rust #Performance #Safety
Deno's core is built in Rust, providing memory safety and performance benefits.
### Tokio Runtime (Async I/O) #Async #Concurrency
Uses Tokio, a Rust framework for building asynchronous applications, to handle I/O operations efficiently.
### Event Loop #Concurrency #NonBlocking
Manages asynchronous operations in a non-blocking manner, similar to Node.js and browsers.

## Security Model #Security #Permissions
How Deno restricts code execution to enhance security.
### Explicit Permissions #Sandboxing #SecurityFlags
Requires explicit command-line flags (`--allow-*`) or runtime prompts to grant capabilities.
### --allow-* Flags #Configuration #AccessControl
Specific flags to enable access to different resources.
#### --allow-env #Environment
Allow access to environment variables.
#### --allow-hrtime #Timing
Allow high-resolution time measurement.
#### --allow-net #Network
Allow network access (listening or connecting).
#### --allow-ffi #FFI
Allow loading dynamic libraries via the Foreign Function Interface.
#### --allow-read #FileSystem
Allow file system read access.
#### --allow-run #Subprocess
Allow running subprocesses.
#### --allow-write #FileSystem
Allow file system write access.
#### --allow-sys #SystemInfo
Allow access to system information (OS, CPU, etc.).
### Permission Management API #Programmatic #Runtime
APIs (`Deno.permissions`) allow checking, requesting, and revoking permissions at runtime.

## Standard Library (deno.land/std) #StdLib #Utilities
A set of curated, audited, high-quality modules provided by the Deno team.
### Core Utilities #Helpers #CommonTasks
General-purpose functions and constants.
### Async Helpers #Concurrency #Promises
Utilities for working with asynchronous operations, iterators, and promises.
### Datetime #Time #Date
Functions for parsing, formatting, and manipulating dates and times.
### File System API #IO #Files
APIs for interacting with the file system (reading, writing, watching).
### HTTP Server/Client #Web #Network
Tools for building HTTP servers and making HTTP requests.
### Hashing #Cryptography #Security
Functions for creating various data hashes (MD5, SHA-1, SHA-256, etc.).
### JSON Handling #Data #Serialization
Utilities for parsing and stringifying JSON, including JSONC (JSON with comments).
### Path Manipulation #FileSystem #Utils
Cross-platform utilities for working with file and directory paths.
### Testing Utilities #Testing #Assertions
Assertion library and helpers specifically for use with `deno test`.
### WebSockets #Network #Realtime
APIs for creating WebSocket servers and clients.
### UUID Generation #Identifiers #Utils
Functions for generating universally unique identifiers.

## Module System #Modules #Dependencies #ESM
How Deno handles code organization, dependencies, and module resolution.
### ES Modules (ESM) by Default #Standards #Imports
Uses the official JavaScript module standard for importing and exporting code.
### URL Imports #Decentralized #Web
Modules are referenced directly via URLs (local or remote HTTP/HTTPS).
### Import Maps #DependencyManagement #Aliases
Allows aliasing module specifiers, managing versions, and simplifying imports (using `deno.json` or a separate file).
### Caching Mechanism #Performance #Offline
Downloaded remote modules are cached locally for offline use and faster subsequent runs.
### Integrity Checking (Lock Files) #Security #Reproducibility
`deno.lock` file can be generated to ensure sub-resource integrity of remote modules.
### JSR (JavaScript Registry) #Registry #Packages #Publishing
A modern JavaScript/TypeScript registry designed for Deno and ESM, with native TS support.
#### Scoped Packages (@scope/pkg) #Namespacing #Organization
Organizes packages under user or organization scopes.
#### TypeScript Native #Typing #DX
Designed with TypeScript as a first-class citizen, often serving types directly.
#### ESM First #Standards #Modules
Focuses exclusively on the ES Module format.
#### Integrated Tooling (deno publish) #Publishing #Workflow
Built-in support within the Deno CLI for publishing packages to JSR.

## Built-in Tooling #Development #DX #CLI
The suite of development tools included with the Deno executable.
### Code Runner (`deno run`) #Execution #Runtime
Executes JavaScript or TypeScript files.
### Dependency Inspector (`deno info`) #Analysis #Dependencies
Displays information about a module and its dependency tree.
### Code Formatter (`deno fmt`) #Formatting #Style
Formats code according to a predefined style guide (based on `dprint`).
### Linter (`deno lint`) #CodeQuality #StaticAnalysis
Analyzes code for potential errors, bugs, and stylistic issues.
### Task Runner (`deno task`) #Scripts #Automation #Build
Runs user-defined scripts specified in the `deno.json` configuration file.
### Testing Framework (`deno test`) #Testing #Assertions #UnitTesting
Runs tests defined using the `Deno.test` API.
### REPL (`deno repl`) #Interactive #Experimentation
Provides an interactive Read-Eval-Print Loop environment.
### Documentation Generator (`deno doc`) #Documentation #API
Generates documentation for modules based on JSDoc comments.
### Language Server Protocol (LSP) Integration #IDE #EditorSupport
Provides language server capabilities (`deno lsp`) for integration with code editors (like VS Code) for features like autocompletion, diagnostics, and formatting.
### Bundler (`deno bundle` - Deprecated) #Bundling #Deployment
(Note: `deno bundle` is deprecated; use `deno compile` or third-party tools like esbuild). Used to create single-file outputs.
### Compiler (`deno compile`) #Executable #Deployment #Distribution
Compiles a script and its dependencies into a self-contained standalone executable.

## Node.js Compatibility #NodeJS #Interoperability #Migration
Features enabling the use of Node.js modules and tools within Deno.
### `node:` Specifiers #Imports #CompatibilityLayer
Allows importing Node.js built-in modules using the `node:` prefix (e.g., `import fs from "node:fs";`).
### Built-in Node Modules Polyfills #API #Compatibility
Provides Deno-native implementations or shims for many core Node.js APIs.
### NPM Package Support (`npm:` specifiers) #Dependencies #Ecosystem
Allows importing packages directly from the npm registry using `npm:` specifiers (e.g., `import express from "npm:express@4";`).
### `package.json` Support #Configuration #Workflow
Limited support for `package.json` files, primarily for detecting dependencies and running scripts via `deno task`.

## Web Frameworks & Ecosystem #WebDev #ServerSide
Libraries and frameworks commonly used for building web applications with Deno.
### Fresh Framework #WebFramework #IslandsArchitecture #Preact
A modern, edge-focused web framework built by the Deno team.
#### Just-in-Time (JIT) Rendering #Performance #SSR
Renders pages on demand server-side, shipping minimal JavaScript to the client.
#### Islands Architecture #Performance #Hydration
Allows embedding interactive components ("islands") within static server-rendered pages.
#### Zero Build Step #Simplicity #DX
Requires no build step during development for faster iteration.
#### File-based Routing #Convention #Organization
Routes are defined by the file structure within the `routes/` directory.
### Oak Framework #Middleware #WebFramework #InspiredByKoa
A popular middleware framework for Deno's HTTP server, inspired by Koa.js.
### Hono #WebFramework #Fast #Edge
A fast, lightweight, multi-runtime web framework that works well with Deno and edge environments.
### Integration with other JS/TS Libraries #Ecosystem #Compatibility
Leveraging the broader JavaScript/TypeScript ecosystem via ESM, JSR, and npm compatibility.

## Deno Deploy #Deployment #Serverless #EdgeComputing
A distributed system for running JavaScript, TypeScript, and Wasm at the edge, close to users.
### Global Edge Network #Performance #CDN
Deploys code to multiple data centers worldwide for low latency.
### Serverless Functions #Scalability #Cloud
Executes code in response to requests without managing servers.
### Git Integration #CI_CD #Workflow
Automatically deploys code pushed to linked GitHub repositories.
### Simple Deployment #DX #Hosting
Designed for easy setup and deployment directly from the CLI or via Git.
### WebSockets & Streaming Support #Realtime #Network
Native support for persistent WebSocket connections and HTTP streams.
### KV Database (Deno KV) #Database #Persistence #Edge
A globally distributed key-value database integrated with Deno Deploy and the local runtime.

## Advanced Features #Capabilities #Extensibility
More specialized features of the Deno runtime.
### WebAssembly (Wasm) Support #Wasm #Performance #Interoperability
Allows importing and running WebAssembly modules alongside JavaScript/TypeScript.
### Foreign Function Interface (FFI) #NativeCode #Bindings #Performance
Enables calling native code written in languages like Rust, C, C++, Zig directly from Deno (requires `--allow-ffi`).
### WebGPU API #Graphics #Computation #Hardware
Experimental support for the modern API for GPU programming on the web and beyond.
### Deno KV (Key-Value Database) #Database #Persistence #BuiltIn
A built-in, zero-configuration, transactional key-value database available locally and on Deno Deploy.
#### Atomic Operations #Consistency #Transactions
Supports atomic transactions for operating on multiple key-value pairs reliably.
#### Queues #Async #BackgroundTasks
Built-in queueing system leveraging Deno KV for background job processing.

## Development Workflow & Best Practices #Workflow #Patterns #Guidance
Common practices and approaches for developing applications with Deno.
### Project Structure #Organization #Maintainability
Conventions for organizing code, tests, and configuration files.
### Dependency Management (Import Maps, JSR) #Dependencies #Versioning
Strategies for managing dependencies using import maps or JSR packages.
### Testing Strategies #Testing #QualityAssurance
Approaches to unit, integration, and end-to-end testing using `deno test`.
### Configuration (`deno.json`/`deno.jsonc`) #Project #Settings
Using the configuration file to define tasks, linter/formatter settings, import maps, compiler options, etc.
### IDE Integration (VS Code) #Editor #DX
Leveraging the Deno LSP via extensions for an enhanced development experience.
### Debugging Techniques #Troubleshooting #Development
Using browser DevTools or editor debuggers with Deno.

## Future & Roadmap #Evolution #NextSteps
Potential directions and areas of focus for Deno's development.
### Performance Optimizations #Speed #Efficiency
Continuous efforts to improve startup time, runtime speed, and memory usage.
### Broader Web API Compatibility #Standards #BrowserAPI
Expanding the set of supported Web APIs relevant to server-side and CLI applications.
### Enhanced Node.js Compatibility #Migration #Interoperability
Improving the fidelity and coverage of the Node.js compatibility layer and npm support.
### Tooling Improvements #DX #CLI
Refining existing tools and potentially adding new ones based on community needs.
### Ecosystem Growth (JSR) #Libraries #Packages
Fostering the growth of the JSR registry and the availability of high-quality Deno-native or compatible modules.
