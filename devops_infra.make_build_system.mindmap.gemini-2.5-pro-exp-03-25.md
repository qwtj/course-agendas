# Make (Build System) #BuildSystem #Automation #Overview
Make is a classic and widely used build automation tool, primarily used in Unix/Linux environments, that automatically determines which pieces of a large program need to be recompiled and issues the necessary commands. It relies on a configuration file called a `Makefile`.

## Introduction and Core Concepts #Basics #Fundamentals #Workflow
Essential ideas behind Make and its operation.
### Purpose of Make #Motivation #ProblemSolving
Automating the build process (compilation, linking, etc.), especially for large projects with many files. [1, 7, 35] Ensuring only necessary parts are rebuilt after changes. [1, 7, 37]
### History and Origin #History #Unix #BellLabs
Created by Stuart Feldman at Bell Labs in April 1976. [8, 30] Inspired by the need to avoid wasted time debugging when source files weren't recompiled after changes. [8, 30] Part of the early Unix toolchain. [8]
### Basic Workflow #Process #Execution
1.  User invokes `make` (optionally with a target). [29]
2.  `make` looks for a `Makefile` (or `makefile`). [2, 29]
3.  `make` determines the goal (target), usually the first target in the file if none is specified. [1, 23, 29]
4.  `make` analyzes the dependency graph for the target. [1, 39]
5.  It checks timestamps of prerequisites vs. targets. [3, 7]
6.  If a prerequisite is newer than its target, or if the target doesn't exist, the rule's recipe is executed. [3, 7]
7.  Recipes (commands) are executed to update targets. [1, 23]
### Dependency Management #Dependencies #Graph #Timestamps
Make's core logic relies on tracking dependencies between files. [7, 39] It uses file modification timestamps to decide if a target needs rebuilding. [7]

## Makefile Syntax and Structure #Makefile #Syntax #Structure
How Makefiles are written and organized.
### File Naming Conventions #Convention #Filename
Typically named `Makefile` or `makefile`. `make` looks for these names by default. [2, 29]
### Basic Rule Structure #Rules #Syntax #Components

```makefile
targets : prerequisites
    recipe
    recipe
```

*   **Targets:** Output files or names of actions (e.g., `clean`). [1, 23]
*   **Prerequisites:** Input files or other targets required before the recipe runs (dependencies). [1, 23]
*   **Recipe:** Shell commands executed to create/update the target(s). **Must** be indented with a tab character, not spaces. [1, 2, 23]
### Comments #Syntax #Comments
Lines beginning with `#` are comments. [35]
### Line Continuation #Syntax #Formatting
Long lines can be split using a backslash (`\`) followed immediately by a newline. [23]
### Including Other Makefiles #Includes #Organization #Modularity
The `include` directive allows splitting Makefiles into multiple parts. [4, 23, 16]
Supports searching for included Makefiles in specified directories (`-I` option or `include` paths). [16, 19]

## Rules #Rules #Targets #Prerequisites #Recipes
The core building blocks of a Makefile.
### Explicit Rules #ExplicitRules #Definition
Rules explicitly defined with target, prerequisites, and recipe. [23]
### Target Types #Targets #Files #Actions
*   **File Targets:** Represent files to be generated (e.g., object files, executables). [1, 3]
*   **Phony Targets:** Targets that don't represent actual files but rather actions (e.g., `all`, `clean`, `install`). Declared using `.PHONY`. [2, 35, 16, 19] Prevents conflicts with files of the same name and ensures the recipe always runs.
### Prerequisite Types #Prerequisites #Dependencies
*   **Normal Prerequisites:** Files/targets that must exist and be up-to-date before the recipe runs. Target is rebuilt if any normal prerequisite is newer. [23]
*   **Order-Only Prerequisites:** Files/targets that must exist before the recipe runs, but their timestamps don't trigger a rebuild of the target if they change. Separated by `|`. [19]
### Recipes (Commands) #Recipes #Commands #Shell
Sequence of shell commands executed to build the target. [1, 23] Each command line is typically executed in a separate sub-shell unless lines are joined or the `.ONESHELL:` special target is used. [33]
### Implicit Rules (Suffix/Pattern Rules) #ImplicitRules #PatternRules #SuffixRules #Automation
Rules that define general ways to create files based on file extensions (suffixes) or patterns. Reduces redundancy in Makefiles. [23, 35]
#### Old-Fashioned Suffix Rules #SuffixRules #Obsolete
Defines transformations based on file extensions (e.g., `.c.o` to compile C source to object files). Largely superseded by pattern rules. [35, 16]
#### Pattern Rules #PatternRules #Modern #Wildcards
More flexible rules using the `%` wildcard (e.g., `%.o : %.c`). [32, 35]
#### Static Pattern Rules #StaticPatternRules #Specific
Apply a pattern rule to a specific, explicit list of targets. [16, 19]
### Double-Colon Rules #DoubleColonRules #Advanced
Rules defined with `::` instead of `:`. Allows multiple independent rules for the same target, each with its own prerequisites and recipe. Used less commonly.

## Variables (Macros) #Variables #Macros #Configuration
Mechanisms for storing and reusing text strings. [3, 29, 35]
### Defining Variables #Definition #Assignment
*   `VARIABLE = value` (Recursively expanded - value is expanded each time the variable is used). [2, 33]
*   `VARIABLE := value` (Simply expanded - value is expanded once at definition). [2, 33, 19] Preferred in most cases to avoid unexpected behavior and improve performance.
*   `VARIABLE ?= value` (Conditional assignment - only sets if the variable is not already defined). [19, 33]
*   `VARIABLE += value` (Appends value to the existing variable content). [19, 33]
*   `define ... endef` (Multi-line variable definition). [16, 33]
*   `override` directive (Allows overriding variables set on the command line).
### Referencing Variables #Usage #Expansion
Use `$(VARIABLE)` or `${VARIABLE}` to substitute the variable's value. [3, 33]
### Automatic Variables #AutomaticVariables #Builtin #Shortcuts
Special variables set automatically within rules, providing access to target/prerequisite names. [16, 33]
*   `$@`: The target file name. [3, 33]
*   `$<`: The name of the first prerequisite. [33]
*   `$^`: The names of all prerequisites, with duplicates removed. [33]
*   `$+`: The names of all prerequisites, including duplicates, in order. [33]
*   `$?`: The names of all prerequisites newer than the target. [16]
*   `$*`: The stem of an implicit rule match. [16]
*   `$(@D)`, `$(<D)`, etc.: Directory part of the respective variable. [16]
*   `$(@F)`, `$(<F)`, etc.: File part of the respective variable. [16]
### Target-Specific Variables #TargetVariables #Scope
Variables defined specifically for a particular target and its prerequisites. [33]
### Environment Variables #Environment #Integration
Make inherits variables from the environment. [1, 16] Environment variables can be overridden by Makefile definitions unless `-e` or `override` is used. [19] Can `export` Makefile variables to the environment of sub-makes or recipe commands. [1, 19]

## Functions #Functions #Builtin #TextManipulation #ControlFlow
Built-in capabilities for text processing, file handling, and conditional execution within the Makefile. [33]
### String Manipulation Functions #StringFunctions #Text
*   `$(subst from,to,text)`: Substitute text.
*   `$(patsubst pattern,replacement,text)`: Pattern substitution.
*   `$(strip string)`: Remove whitespace.
*   `$(findstring find,in)`: Find string.
*   `$(filter pattern...,text)`: Filter words matching patterns.
*   `$(filter-out pattern...,text)`: Filter out words matching patterns.
*   `$(sort list)`: Sort words lexicographically.
*   ...and others.
### Filename Functions #FileFunctions #PathManipulation
*   `$(dir names...)`: Extract directory part.
*   `$(notdir names...)`: Extract non-directory part.
*   `$(suffix names...)`: Extract suffixes.
*   `$(basename names...)`: Extract basenames.
*   `$(addsuffix suffix,names...)`: Add suffix.
*   `$(addprefix prefix,names...)`: Add prefix.
*   `$(wildcard pattern)`: Find files matching pattern. [33]
*   `$(realpath names...)`: Get canonical pathnames.
*   `$(abspath names...)`: Get absolute pathnames.
### Conditional Functions #ConditionalFunctions #Logic
*   `$(if condition,then-part[,else-part])`: Simple conditional.
*   `$(or condition1[,condition2...])`: Logical OR.
*   `$(and condition1[,condition2...])`: Logical AND.
### Control Functions #ControlFunctions #ExecutionFlow
*   `$(foreach var,list,text)`: Loop over a list. [33]
*   `$(call var,param...)`: Call a custom function (defined as a variable). [19]
*   `$(error text...)`: Cause a fatal error. [5, 22]
*   `$(warning text...)`: Print a warning message. [5, 22]
*   `$(info text...)`: Print an informational message. [5, 22]
*   `$(shell command)`: Execute a shell command and return its output. [32]
*   `$(guile code)`: Execute Guile script (GNU Make 4.0+). [36]
*   `$(eval expression)`: Evaluate argument as Makefile syntax. [33]

## Directives #Directives #Control #Configuration
Instructions for Make itself during parsing.
### Conditional Processing #Conditionals #ControlFlow #ifeq #ifdef
*   `ifeq`, `ifneq`: Test equality of strings. [33]
*   `ifdef`, `ifndef`: Test if a variable is defined. [33]
*   `else`, `endif`: Structure conditional blocks. [33]
### Include Directive #Include #Modularity
`include filename...`: Read another Makefile. [23, 33] Supports `-include` or `sinclude` to ignore errors if the file doesn't exist. [18]
### Variable Overriding and Exporting #Variables #Scope #Environment
*   `override variable = value`: Define a variable that cannot be overridden from the command line or environment (unless `-e` is used). [33]
*   `export variable`: Export a variable to sub-makes. [1, 19, 33]
*   `unexport variable`: Prevent a variable from being exported. [19, 33]
*   `.EXPORT_ALL_VARIABLES`: Export all variables by default. [1]
### Search Path Specification #VPATH #SearchPath
*   `VPATH = directories`: Specifies a search path for prerequisites not found in the current directory (colon/space separated). [16, 19]
*   `vpath pattern directories`: A more refined way to specify search paths based on filename patterns. [16, 33]

## Command Execution and Options #Execution #Commands #Options #Shell
How Make runs recipes and command-line controls.
### Shell Interaction #Shell #Commands #Recipes
Recipes are sequences of shell commands. [1, 23] Make typically uses `/bin/sh` by default, but this can be changed with the `SHELL` variable. [10, 33]
### Command Echoing and Silencing #Output #Verbose #Quiet
By default, Make prints each command before executing it. [33] Use `@` at the beginning of a command line to suppress printing. [33] Use `make -s` or `--silent` to silence all commands.
### Error Handling #Errors #Control
By default, Make stops if any command returns a non-zero exit status. [33] Use `-` at the beginning of a command line to ignore errors for that command. [33] Use `make -k` or `--keep-going` to continue as much as possible after errors occur in unrelated branches of the dependency graph.
### Parallel Execution #Parallelism #Performance #Jobs
`make -j [N]` or `make --jobs[=N]`: Execute multiple recipes in parallel to speed up builds on multi-core systems. If N is omitted, Make tries to run as many jobs as possible. [33] Requires careful dependency specification to avoid race conditions.
### Dry Run #Debugging #Testing
`make -n` or `make --just-print`: Print the commands that would be executed, but don't actually run them (except for commands prefixed with `+` or involving `$(MAKE)`). [5, 10, 14, 22]
### Specifying Targets #Goals #ExecutionControl
`make [target...]`: Build the specified target(s). If no target is given, builds the default goal (usually the first target in the Makefile). [1, 29]

## Advanced Features and Techniques #Advanced #Techniques #Patterns
More complex capabilities of Make.
### Automatic Dependency Generation #Dependencies #Automation #Headers
Techniques to automatically generate prerequisites, especially for C/C++ header files. [18] Often involves compiler flags like `-MMD` or `-MD` (GCC/Clang) to generate `.d` dependency files, which are then included. [2, 18]
### Recursive Make #RecursiveMake #Subdirectories #LargeProjects
Invoking `make` from within a Makefile to build components in subdirectories. [1, 7, 11, 16] Variables can be passed using `export` or command-line assignments (`make -C subdir VAR=value`). [1] Often criticized for complexity and potential inefficiencies compared to a single top-level Makefile managing the whole build.
### Archives (.a files) #Libraries #Archives #StaticLibs
Make has built-in rules and features for managing static library archives. [23, 33] The automatic variable `$%` refers to the archive member name. [16]
### Implicit Rule Chains #ImplicitRules #Chains
Make can chain implicit rules together (e.g., build `foo.o` from `foo.y` via `foo.c` using Yacc then CC). [23]
### Order-Only Prerequisites #Dependencies #Ordering
Ensures certain prerequisites are built before a target, but changes in them don't trigger the target's rebuild. [19]

## Debugging Makefiles #Debugging #Troubleshooting #Errors
Techniques for finding and fixing problems in Makefiles. [5, 14, 27]
### Print Statements #Debugging #Output #Tracing
Using `$(warning ...)`, `$(error ...)`, `$(info ...)` to print variable values or messages during parsing. [5, 14, 22]
Using `echo` within recipes to show runtime values.
### `make -p` / `--print-data-base` #Debugging #Database #Variables #Rules
Prints Make's internal database, showing all rules, variables (implicit and explicit), and their values after parsing. [5, 14] Very verbose but comprehensive.
### `make -d` / `--debug` #Debugging #Execution #Tracing
Provides detailed debugging output about Make's decision-making process (checking dependencies, choosing rules, etc.). [5, 14, 22] Various levels of detail available (e.g., `-d`, `-dg`). [5, 14]
### `make -n` / `--just-print` #Debugging #DryRun
Shows commands that would be executed without running them. Useful for checking logic. [5, 10, 14, 22]
### `make SHELL="/bin/bash -vx"` #Debugging #Shell #Tracing
Runs recipe commands using a debugging shell to trace shell execution. [10]
### External Debuggers (remake) #Debugging #Tools #Advanced
Tools like `remake` provide a gdb-like debugging experience for Makefiles, allowing stepping, variable inspection, etc. [10, 27]

## Common Patterns and Best Practices #BestPractices #Patterns #Style
Effective ways to structure and write Makefiles. [4, 11]
### Structuring Large Projects #Organization #LargeProjects #Modularity
Using includes, recursive Make (with caution), or a single top-level Makefile managing sources across directories. [4, 11] Namespacing targets (e.g., `docker/build`). [4]
### Standard Targets #Convention #StandardTargets
Common phony targets like `all` (default build), `clean` (remove generated files), `install` (install the software), `test` (run tests). [2, 4, 11]
### Variable Usage #BestPractices #Variables
Use variables extensively for compilers (`CC`, `CXX`), flags (`CFLAGS`, `CXXFLAGS`, `LDFLAGS`, `LIBS`), directories, etc., for configurability and maintainability. [3, 29, 32] Prefer simply expanded variables (`:=`). [2] Define sane defaults. [4]
### Portability #Portability #CrossPlatform
Avoiding shell-specific commands in recipes. Using variables for commands and paths. Being mindful of differences between Make variants (GNU vs. BSD vs. NMake).
### Automatic Dependency Generation #BestPractices #Dependencies
Implement robust automatic header dependency generation. [18, 38]
### Avoiding Complex Shell Logic in Recipes #BestPractices #Simplicity
Keep recipes focused on invoking tools. Move complex shell logic into separate scripts called by the recipe. [4]
### Using `.PHONY` #BestPractices #PhonyTargets
Explicitly declare all non-file targets as `.PHONY`. [3, 35]

## Make Variants and Alternatives #Variants #Alternatives #BuildTools
Different implementations of Make and other build systems.
### Make Variants #Variants #Implementations
*   **GNU Make:** The most common and feature-rich version on Linux and macOS. [1, 31] Provides many extensions. [16, 19, 33]
*   **BSD Make:** Used in BSD systems (FreeBSD, OpenBSD, NetBSD). Has some different features and syntax, particularly around conditionals and loops. [30]
*   **Microsoft NMake:** Part of Visual Studio tools. Different syntax and features. [30]
*   **Sun DevPro Make / dmake:** Variants from Sun Microsystems, now less common. [8, 30]
### Alternatives to Make #Alternatives #BuildSystems #Modern
*   **CMake:** A meta-build system generator; generates native build files (e.g., Makefiles, Ninja files, Visual Studio projects). Widely used for C/C++ cross-platform projects. [1, 7]
*   **Ninja:** A small build system focused on speed, often used as a backend for meta-build systems like CMake or Meson. [1]
*   **Meson:** A modern, fast build system generator, often compared to CMake. [34]
*   **Bazel:** Google's build system, focused on large scale, reproducibility, and multi-language projects. [1, 34]
*   **SCons:** Python-based build tool. [1]
*   **Gradle:** Popular for Java/JVM projects (Android), uses Groovy or Kotlin DSLs. [1, 34]
*   **Apache Ant / Maven:** Primarily Java-focused build tools. [1, 34]
*   **Language-Specific Tools:** Cargo (Rust), Cabal (Haskell), Dub (D), Go build tools, etc. [1, 34]
*   **IDE Build Systems:** Integrated systems within IDEs like Visual Studio, Xcode. [1]
Note: Some search results interpreted "Make" as the automation platform Make.com (formerly Integromat) and listed alternatives like Zapier, IFTTT, n8n, Workato. [6, 12, 13, 15, 20] These are workflow automation tools, not software build systems, and are not relevant to `Make (Build System)`. Similarly, results about makeup techniques are irrelevant. [9, 21, 24, 26]

## Integration with Other Tools #Integration #Tooling #Ecosystem
How Make works with the broader development environment.
### Compilers and Linkers #Compilers #Linkers #GCC #Clang
Make is most commonly used to orchestrate compilers (GCC, Clang, etc.) and linkers. [1]
### Version Control Systems (VCS) #VCS #Git #SVN
Makefiles are typically stored in version control alongside source code. Can include targets to interact with VCS (e.g., `make tag`, `make publish`).
### Continuous Integration / Continuous Deployment (CI/CD) #CI_CD #Jenkins #GitLabCI
Make is often invoked within CI/CD pipelines to build, test, and deploy software automatically.
### Code Generators #CodeGeneration #Yacc #Lex #Protobuf
Make can manage dependencies involving code generation tools (e.g., running Yacc/Bison before compiling generated C code).
### Configuration Systems #Configuration #Autotools #CMake
Make is often used as the underlying build tool invoked by configuration scripts generated by Autotools (`configure` script generating a Makefile). [28] CMake can generate Makefiles as one of its possible outputs. [7]
