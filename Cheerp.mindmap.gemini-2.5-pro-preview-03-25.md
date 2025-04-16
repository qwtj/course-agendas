# Cheerp #Compiler #WebDevelopment
An LLVM/Clang-based C++ compiler designed to target WebAssembly and JavaScript, enabling C++ code to run efficiently in web browsers and Node.js environments. [6, 7, 5] It focuses on seamless integration with web technologies. [3, 14]

## Introduction and Overview #GettingStarted #CoreIdea
Basic information about Cheerp, its purpose, key features, and licensing.
### What is Cheerp? #Definition #Technology
An enterprise-grade, open-source compiler toolchain based on LLVM/Clang that translates C/C++ code into WebAssembly (Wasm) and JavaScript (JS). [2, 4, 6, 5] Developed by Leaning Technologies. [2, 4]
### Core Philosophy #DesignGoals #Motivation
Aims to make C++ a first-class language for web programming, focusing on integrating C++ codebases into web-native user experiences rather than just porting entire applications. [3] Enables the use of C++ for high-performance web components and modernizing legacy applications. [6, 4, 19]
### Key Features #Highlights #Benefits
Compiles to both Wasm and JS from a single codebase [5, 4], offers seamless, zero-overhead interoperability with JavaScript and DOM APIs [2, 4, 5], allows exporting C++ APIs to JS [2, 4], supports combining Wasm's linear memory with JS garbage-collected objects [2, 7], and includes optimization passes for performance and size. [2, 6]
### Licensing #OpenSource #ApacheLicense
Originally under a custom license, Cheerp 3.0 and later versions are permissively licensed under the Apache 2.0 License with LLVM exceptions, similar to LLVM/Clang. [2, 3, 6] Free for commercial use, with enterprise support available. [6]

## Core Architecture and Concepts #Internals #Design
The underlying structure and mechanisms of the Cheerp compiler.
### LLVM/Clang Based #CompilerFrontend #Backend
Built upon the standard LLVM compiler infrastructure, using Clang as the C++ frontend. [6, 3] Cheerp adds custom backends for Wasm and JS generation and optimization passes. [6, 3]
### Compilation Pipeline #Process #Workflow
Uses LLVM Intermediate Representation (IR) directly as the intermediate format for object files and libraries, allowing for integrated, whole-program optimization before generating final Wasm/JS output without separate post-processing steps (like `wasm-opt`). [3]
### Memory Management #GC #MemoryModel
Offers flexible memory management by allowing combination of different models: [2, 7]
#### Wasm Linear Memory #ManualMemory #Performance
Default for code compiled to Wasm, providing a contiguous block of memory similar to native environments. Heap size can be configured (e.g., `-cheerp-linear-heap-size`). [9, 11]
#### JavaScript Garbage Collection #AutomaticMemory #Interop
Code marked with `[[cheerp::genericjs]]` uses JavaScript's garbage collector; C++ objects become GC-managed JS objects, enabling direct storage of DOM elements or JS strings in C++ objects. [5, 11]

## Compilation Modes and Targets #Targets #OutputFormats
Different output formats and execution environments Cheerp supports. [9]
### WebAssembly + JavaScript (`-target cheerp-wasm`) #Wasm #JS #Default
The default target. Generates both a `.wasm` file (containing code compiled to WebAssembly) and a `.js` file (containing code compiled to JavaScript, plus glue code to load and run the Wasm module). [9, 5] Allows mixing Wasm (default, or `[[client::wasm]]`) and JS (`[[client::genericjs]]`, `[[cheerp::genericjs]]`) compiled code from the same C++ source. [5]
### JavaScript Only (`-target cheerp`) #JS #LegacySupport
Compiles C++ code entirely to JavaScript. This mode is unique to Cheerp and allows direct translation of C++ operations to equivalent JavaScript features where possible. [3, 1, 9] Enables fine-grained interaction with JS objects and APIs. [11] Some C++ constructs relying on direct memory manipulation might have limitations in this mode. [1]
### WASI (`-target cheerp-wasm-wasi`) #WASI #ServerSide #NodeJS
Produces a WebAssembly module conforming to the WebAssembly System Interface (WASI), suitable for running in environments like Node.js or standalone Wasm runtimes. [9]

## C++ Language Support #Cpp #Compatibility
Details on C++ standards and features supported by Cheerp.
### Supported C++ Standards #Cpp11 #Cpp14 #Cpp17 #Cpp20
Supports modern C++ standards, up to C++20. [2] Compiles virtually any C/C++ code. [6]
### Cheerp-Specific Attributes and Namespaces #Extensions #Interop
Provides attributes and namespaces for controlling compilation targets and enabling interoperability.
#### `[[cheerp::genericjs]]` / `[[client::genericjs]]` #Attribute #TargetJS
Attribute to compile a class or function to JavaScript instead of the default WebAssembly. [5, 11]
#### `[[cheerp::jsexport]]` #Attribute #ExportAPI
Marks C++ functions or classes to be exported and callable directly from external JavaScript with zero overhead. [2, 4, 3] Requires careful interface design. [3]
#### `client` Namespace #Namespace #BrowserAPI
Provides C++ bindings to access browser APIs (DOM, Console, WebGL, WebAudio etc.) directly from `genericjs`-compiled C++ code with zero overhead. [5, 7]
#### `[[cheerp::wasm]]` / `[[client::wasm]]` #Attribute #TargetWasm
Explicitly marks code to be compiled to WebAssembly (this is often the default). [5]
### Limitations and Quirks #Constraints #Compatibility
Compiling C++ to JavaScript (`-target cheerp` or `[[cheerp::genericjs]]`) involves translating C++ memory operations to work with discrete JavaScript values/objects, which might impose limitations compared to Wasm's linear memory (e.g., certain pointer arithmetic or unsafe casts might not work). [1, 11] Async loading is currently enforced, which can make library integration less direct compared to synchronous loading options in alternatives like Emscripten. [1]

## Toolchain and Build System Integration #Development #Workflow
Tools and processes for building Cheerp projects.
### Compiler Invocation #CLI #Options
Uses a `clang`/`clang++` interface with Cheerp-specific targets (e.g., `-target cheerp-wasm`). [9] Provides various flags for configuration (heap size, output paths, optimization). [9, 2]
### Build System Support #Build #Automation
Integrates with common C++ build systems.
#### CMake Integration #CMake #ToolchainFile
Provides CMake toolchain files (`$CHEERP/share/cmake/Modules/`) to easily configure CMake projects for compilation with Cheerp using the `-DCMAKE_TOOLCHAIN_FILE` flag. [12, 1]
#### Make/Autoconf #Make #Autoconf
Can be integrated into Makefiles or Autoconf projects by setting compiler variables (`CC`, `CXX`). [22]
### Debugging #Troubleshooting #DevTools
Tools and techniques for debugging Cheerp applications.
#### Source Maps #Mapping #DebuggingJS #DebuggingWasm
Generates source maps for debugging C++ code directly within browser developer tools for both JS and Wasm outputs. [2]
#### Memory Profiling #Profiling #MemoryLeaks
Includes a custom in-browser memory profiling tool. [2]
#### AddressSanitizer Support #ASan #MemorySafety
Recent versions have added support for AddressSanitizer (ASan) for the WebAssembly target to detect memory errors. [4]

## Interoperability #Bridging #Integration
Mechanisms for interaction between compiled C++ and the JavaScript/Web environment.
### C++ to JavaScript Communication #CallingJS #DOMAccess
Allows direct, zero-overhead calls to JavaScript functions and browser/DOM APIs from C++ code compiled to JavaScript (`[[cheerp::genericjs]]`) via the `client` namespace. [2, 5, 7] Can store JS objects (like DOM Elements) directly in C++ variables. [11]
### JavaScript to C++ Communication #CallingCpp #Exporting
C++ functions and classes marked with `[[cheerp::jsexport]]` can be directly called from external JavaScript code with minimal overhead. [2, 4, 3]
### Data Exchange #Marshalling #Types
Handles passing data between Wasm/JS and C++. `genericjs` allows direct manipulation of JS types like strings, while Wasm requires marshalling data through linear memory. [11, 16] Cheerp facilitates combining both approaches. [2]

## Performance and Optimization #Speed #Efficiency #Size
Achieving optimal performance and minimizing code size.
### Execution Speed #Runtime #WasmPerformance #JSPerformance
Aims for fastest and leanest output through LLVM optimizations plus custom Cheerp passes. [2, 6] WebAssembly target provides near-native performance. [16] JavaScript target performance is also optimized. [3] Benchmarks show comparable execution speed to Emscripten. [3]
### Code Size Optimization #BundleSize #Minification
Often achieves smaller output sizes compared to alternatives like Emscripten due to LLVM-level whole program optimization and custom passes, reducing bandwidth usage. [3, 1]
### Optimization Flags #CompilerFlags #LLVM
Leverages standard LLVM optimization flags (`-O1`, `-O2`, `-O3`, `-Os`). [2]
### Specific Optimizations #PreExecuter #CompilerPasses
Includes advanced optimization techniques like the Cheerp PreExecuter. [11, 22] Option to generate non-trapping Wasm code (`-cheerp-avoid-wasm-traps`) for potential performance gains at the cost of some runtime checks. [9]

## Use Cases and Applications #Examples #RealWorld
Scenarios where Cheerp is effectively applied.
### Porting C++ Codebases #LegacyCode #Migration
Migrating existing C++ applications, libraries, or business logic to the web platform, preserving the original codebase with minimal changes. [6, 7, 19] Particularly useful for modernizing complex legacy systems like MFC applications. [19, 4]
### High-Performance Web Components #Graphics #Computation #Gaming
Developing performance-critical parts of web applications, such as game engines, simulations, scientific computing, audio/video processing, using C++ compiled to Wasm. [6, 7]
### Web Applications and UI #WebApps #FrontEnd
Building entire web applications or significant parts of the UI in C++, leveraging direct DOM manipulation features. [6]
### Node.js Modules #Backend #ServerSide
Creating performant server-side modules for Node.js using the WASI target or generic JS output. [5]
### Integrating C++ Libraries #Libraries #Reuse
Embedding existing C++ libraries into JavaScript/TypeScript web applications. [7]

## Community and Ecosystem #Resources #Support
Availability of documentation, support, and community engagement.
### Official Documentation #Guides #APIReference
Provides comprehensive documentation, tutorials, API references, and guides. [2, 7, 22]
### Tutorials and Examples #Learning #CodeSamples
Offers tutorials like "Hello Wasm", Pong game examples, and guides on specific features like DOM manipulation or threading. [7, 11, 22]
### Community Support #Help #Discussion #Discord
Active community support is available via channels like Discord and GitHub issues. [7, 6]
### Open Source Project #GitHub #Contribution
Cheerp is open-source (Apache 2.0 with LLVM exceptions) with its source code available on GitHub. Contributions are welcome. [6, 7] The `cheerp-meta` repository tracks issues and npm packages. [6]

## Comparison with Alternatives #Emscripten #WebAssemblyCompilers
Positioning Cheerp relative to other C/C++ to web compilers.
### Cheerp vs. Emscripten #Comparison #Tradeoffs
Both are LLVM/Clang-based C++ to Wasm/JS compilers. [3]
**Philosophy:** Emscripten primarily focuses on porting entire C++ applications to run in the browser (often via Wasm). [3] Cheerp focuses more on integrating C++ code seamlessly into web-native applications, allowing C++ to act as a component alongside HTML/JS. [3, 14]
**Features:** Cheerp uniquely offers a performant direct-to-JavaScript compilation target with an object memory model [3, 11], enabling easier JS/DOM interop [2]. Emscripten's JS output (`asm.js`) is older and superseded by Wasm, primarily using a linear memory model even when targeting JS. [1, 11] Cheerp uses LLVM IR directly and integrates optimization passes differently. [3]
**Performance/Size:** Benchmarks suggest Cheerp often produces smaller code size and comparable runtime performance to Emscripten. [3, 14, 8]
**Interop:** Cheerp emphasizes zero-overhead JS interop (`[[cheerp::jsexport]]`, `client` namespace). [3, 4] Emscripten also supports JS interop (e.g., Embind), but the approach differs. [18]
**Loading:** Cheerp currently enforces async loading, while Emscripten offers synchronous loading options, potentially simplifying library usage. [1]

## Advanced Topics and Future Directions #Expert #Roadmap
More complex features and the project's evolution.
### Advanced Interoperability #ComplexScenarios #DataHandling
Techniques for handling complex data types and asynchronous patterns between C++ and JavaScript/Wasm. [7]
### Multi-threading Support #Concurrency #WebWorkers
Supports threading via Web Workers for parallel computation in Wasm. [7, 22] (Note: Subject to WebAssembly threading standard support in browsers).
### Integration with Web Frameworks #React #Angular #Vue
Using Cheerp-compiled Wasm/JS modules as components within modern JavaScript frameworks like React, Angular, Vue, etc. [19]
### Cheerp Ecosystem #CheerpJ #CheerpX #WebVM
Leaning Technologies also develops related tools like CheerpJ (Java to JS/Wasm), CheerpX (x86 virtualization in the browser), and WebVM. [1, 4]
