# Application Binary Interface (ABI) #Overview #Specification #LowLevel
Defines the low-level interface between compiled application code and the operating system, libraries, and other application modules at the binary level.

## Core Concepts and Purpose #Fundamentals #Definition #Rationale
Introduces the fundamental ideas behind ABIs and why they are necessary.

### What is an ABI? #Definition #Interface
The contract between binary program modules (executables, libraries) dictating how they interact at runtime.

### Why are ABIs Necessary? #Motivation #Compatibility #Interoperability
Enables separate compilation, linking of components developed independently, and compatibility across different compiler versions or even different compilers targeting the same platform.

### Scope of an ABI #Specification #Components
Defines what aspects of the binary interface are covered.

### ABI vs. API #Comparison #Distinction #InterfaceLevels
Clarifying the difference between Application Programming Interface (source level) and Application Binary Interface (binary level).

## Key Components of an ABI Specification #Specification #Standards #Elements
Details the specific elements typically defined within an ABI standard.

### Processor Architecture Instruction Set #CPU #ISA #Hardware
Specifies the basic instruction set assumed.

### Data Type Sizes, Layout, and Alignment #DataRepresentation #Memory #Alignment
How fundamental data types (int, float, pointers) are stored in memory.
#### Primitive Types #Integer #Float #Boolean
#### Aggregate Types #Structs #Unions #Arrays
#### Alignment Rules #Performance #HardwareRequirement

### Calling Conventions #Functions #Stack #Registers
Rules governing how function calls are made, arguments passed, and return values handled.
#### Argument Passing Mechanisms #Registers #Stack #Mixed
#### Return Value Handling #Registers #Memory
#### Stack Management #FramePointer #StackPointer #CalleeSaved #CallerSaved
#### Name Mangling / Decoration #Symbols #Linkage #CPP
#### Exception Handling Propagation #Errors #StackUnwinding #LanguageSpecific

### System Call Interface #OSInteraction #Kernel #Privilege
How applications request services from the operating system kernel.
#### System Call Numbers #Identifiers #KernelAPI
#### Argument Passing to Kernel #Registers #Memory
#### Return Values from Kernel #Status #Errors

### Object File Format #Linking #Compilation #Executable
Structure of compiled code files (e.g., .o, .so, .dll, .exe).
#### Sections (.text, .data, .bss) #Code #Data #MemoryLayout
#### Symbol Table #Functions #Variables #LinkageInfo
#### Relocation Information #Addresses #DynamicLinking
#### Debug Information Formats (DWARF, PDB) #Debugging #Symbols

### Dynamic Linking and Loading #Libraries #Runtime #SharedObjects
Mechanisms for loading and linking shared libraries at runtime.
#### Symbol Resolution #GOT #PLT #RuntimeLinker
#### Library Loading Mechanisms #ld_so #dyld #WindowsLoader
#### Versioning Schemes #SharedLibraries #Compatibility

### Thread-Local Storage (TLS) #Concurrency #Threads #DataIsolation
Specification for managing data specific to each thread.

## Platform-Specific ABIs #Examples #Implementations #Standards
Illustrates how ABIs differ across various operating systems and architectures.

### System V ABI (SysV ABI) #Linux #Unix #Standard
Common ABI for many Unix-like systems on various architectures.
#### x86-64 SysV ABI #AMD64 #Linux #macOS
#### ARM EABI (Embedded Application Binary Interface) #ARM #Embedded #Mobile

### Windows ABI #Microsoft #Windows #x86 #x64 #ARM64
Specific conventions used on Microsoft Windows platforms.
#### Microsoft x64 Calling Convention #Windows #AMD64
#### Windows ARM64 ABI #Windows #ARM

### macOS ABI #Apple #MachO #ObjectiveC #Swift
Specifics for Apple's macOS (and iOS/iPadOS).
#### Mach-O File Format #macOS #iOS
#### Objective-C Runtime ABI #Messaging #Runtime
#### Swift ABI #SwiftLang #Runtime #Stability

### Itanium ABI #IA64 #CPP #Standard
Influential ABI, particularly for C++ features like name mangling and exception handling.

### WebAssembly (Wasm) ABI #Web #VM #Portable
Interface definitions for code running in a WebAssembly environment.

## ABI Stability and Versioning #Compatibility #Maintenance #Lifecycle
Managing changes and ensuring compatibility over time.

### Importance of ABI Stability #SoftwareUpdates #Libraries #Ecosystem
Why stable ABIs are crucial for operating systems and library ecosystems.

### Challenges in Maintaining Stability #CompilerChanges #LanguageFeatures #Optimization
Difficulties faced when evolving software while preserving ABI compatibility.

### Versioning Strategies #Symbols #Libraries #SONAME
Techniques used to manage multiple ABI versions (e.g., symbol versioning).

### Consequences of ABI Breakage #RuntimeErrors #Crashes #Incompatibility
What happens when incompatible binary modules are linked together.

## ABI and Programming Languages #LanguageSpecific #Compilation #Runtime
How different programming languages interact with and define ABIs.

### C ABI #Baseline #Standard #Portability
Often serves as the lowest common denominator for interoperability.

### C++ ABI #NameMangling #Exceptions #Classes #VTable
Complexities introduced by C++ features (virtual functions, exceptions, templates).
#### Itanium C++ ABI Influence #Standard #CrossPlatform

### Swift ABI Stability #SwiftLang #Apple #ModernLanguage
Specific efforts and challenges in stabilizing the Swift ABI.

### Other Languages (Rust, Go, Java/JVM, .NET/CLR) #FFI #Interop
How other languages manage their internal ABIs and Foreign Function Interfaces (FFI) for C ABI interop.

## Tools and Utilities for ABI Analysis #Development #Debugging #Compliance
Software used to inspect, compare, and verify ABI compliance.

### ABI Compliance Checkers #Verification #Compatibility #Tools (e.g., abi-compliance-checker)
Tools designed to check if a new library version maintains ABI compatibility.

### ABI Dumpers / Extractors #Inspection #Analysis #Tools (e.g., abi-dumper)
Utilities to extract ABI information from binaries.

### Object File Inspection Tools #Analysis #Debugging #Utilities (e.g., readelf, objdump, dumpbin)
Standard tools for examining the contents of object files and executables.

### Debuggers (GDB, LLDB, WinDbg) #RuntimeAnalysis #Debugging
Using debuggers to understand ABI-level interactions at runtime.

## Security Implications of ABIs #Security #Vulnerabilities #Exploits
How ABI design and implementation can affect system security.

### Buffer Overflows #Stack #CallingConvention #Exploits
Exploiting calling conventions and stack layout.

### Format String Vulnerabilities #Printf #Stack #MemoryDisclosure
Leaking information or corrupting memory via ABI interactions.

### Return-Oriented Programming (ROP) #Exploitation #ControlFlow #Gadgets
Chaining small code snippets (gadgets) using ABI conventions.

### Control-Flow Integrity (CFI) #Mitigation #SecurityHardening
Techniques to prevent hijacking control flow, often enforced at the ABI level.

### Sandboxing and ABI Filtering #Security #Isolation #Syscalls
Restricting the system call interface available to processes.

## Advanced Topics and Future Directions #Research #Evolution #Challenges

### Cross-Compiler ABI Compatibility #Toolchains #Interoperability
Challenges in ensuring ABIs are consistent across different compilers (GCC, Clang, MSVC, etc.).

### Fat Binaries / Universal Binaries #MultiArch #Packaging
Including code for multiple ABIs (e.g., different architectures) in a single file.

### ABI Evolution in Modern Languages #Swift #Rust #Future
How newer languages approach ABI design and stability.

### Formal Methods for ABI Specification/Verification #Rigour #Correctness #Research
Using mathematical techniques to define and verify ABIs.
