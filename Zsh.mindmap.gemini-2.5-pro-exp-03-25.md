# Zsh #Shell #CLI #Unix #Terminal
Zsh (Z shell) is a powerful Unix shell that acts as an interactive login shell and a command interpreter for shell scripting. It extends the Bourne shell (sh) and incorporates many features from Bash, ksh, and tcsh.

## Introduction and Basics #Overview #Concepts #History
Foundational knowledge about Zsh.

### What is Zsh? #Definition #Shell
An extended Bourne shell with numerous improvements, focusing on interactivity and customization. [3, 9]

### History and Origin #History #Development
Created by Paul Falstad in 1990 at Princeton University. [3, 10]

### Key Characteristics #Features #Benefits
Combines features of Bash, ksh, tcsh. Known for powerful completion, globbing, customization, and scripting. [3, 9]

### Zsh vs. Other Shells #Comparison #Bash #Fish
Comparison with common shells like Bash, Fish, highlighting unique Zsh features.
*   **vs. Bash:** Generally more interactive features, advanced completion, better plugin/theme support, different scripting nuances (e.g., array handling, prompt expansion). [2, 4, 9, 10, 13, 14]
*   **vs. Fish:** Zsh is more POSIX-compatible, while Fish focuses heavily on user-friendliness out-of-the-box (like autosuggestions).

## Installation and Setup #Installation #Setup #GettingStarted
Getting Zsh running on various systems.

### Checking for Existing Installation #Verification
Using `zsh --version` to check if Zsh is installed and its version. [9, 6]

### Installation Methods #Install #PackageManagers
*   **macOS:** Often pre-installed (default since Catalina). Can be installed/updated via Homebrew (`brew install zsh`). [4, 9]
*   **Linux (Debian/Ubuntu):** `sudo apt install zsh` [9]
*   **Linux (Fedora/RHEL):** `sudo dnf install zsh` [26]
*   **Windows:** Via WSL (Windows Subsystem for Linux), Cygwin, or Git Bash. [1]
*   **From Source:** Compiling from the source code.

### Setting Zsh as the Default Shell #Configuration #LoginShell
Using `chsh -s $(which zsh)` (or system-specific methods) to make Zsh the default login shell. [1, 9]

### Initial Configuration (zsh-newuser-install) #FirstRun #SetupWizard
The first-run configuration helper `zsh-newuser-install` guides through basic settings. [26]

## Configuration Files #Configuration #StartupFiles #Dotfiles
Understanding Zsh's startup and configuration files.

### Configuration File Loading Order #Startup #ExecutionOrder
Zsh reads configuration files in a specific order upon startup. [5, 7, 8, 15, 17]
1.  `/etc/zshenv` (Always, system-wide)
2.  `$ZDOTDIR/.zshenv` (Always, user-specific)
3.  `/etc/zprofile` (Login shells, system-wide)
4.  `$ZDOTDIR/.zprofile` (Login shells, user-specific)
5.  `/etc/zshrc` (Interactive shells, system-wide)
6.  `$ZDOTDIR/.zshrc` (Interactive shells, user-specific)
7.  `/etc/zlogin` (Login shells, system-wide)
8.  `$ZDOTDIR/.zlogin` (Login shells, user-specific)
9.  `$ZDOTDIR/.zlogout` (Login shell logout)
10. `/etc/zlogout` (Login shell logout)

### Key Configuration Files and Purpose #Files #Purpose
*   **.zshenv:** Sets environment variables. Loaded first for *all* invocations (interactive, login, scripts). Use with caution. [5, 8, 15]
*   **.zprofile:** Equivalent to Bash's `.bash_profile`. For commands run at login (setting PATH, starting agents). [5, 7, 8]
*   **.zshrc:** Primary file for interactive shell configuration (aliases, functions, options, prompt, keybindings). Loaded for interactive shells. [1, 5, 7, 8]
*   **.zlogin:** Loaded after `.zshrc` for login shells. Less commonly used. [5, 7, 8]
*   **.zlogout:** Commands to run upon logout. [5, 17]
*   **/etc files:** System-wide defaults. [5]

### `ZDOTDIR` Environment Variable #Configuration #Directory
Specifies an alternative directory for user configuration files (instead of `~`). [5, 7]

## Core Features #Features #Interactivity #Productivity
Highlighting Zsh's built-in powerful features.

### Command Line Completion (compsys) #Completion #TabCompletion #Productivity
Highly advanced and programmable completion system. [3, 22, 26]
*   **Initialization:** `autoload -U compinit && compinit` (usually in `.zshrc`).
*   **Configuration:** Using `zstyle` to customize completer behavior (e.g., menu selection, grouping, colors). [22]
*   **Contextual Completion:** Completes commands, arguments, options, variables, hostnames, etc.
*   **Menu Selection:** Cycle through possible completions using Tab. [16]
*   **Ambiguous Completion:** Handles ambiguities intelligently.
*   **Custom Completion Functions:** Writing scripts to define completion for specific commands. [22]

### Extended Globbing #Globbing #FileMatching #Patterns
Powerful file matching beyond standard wildcards. Requires `setopt extended_glob`. [3, 9, 23, 24]
*   **Recursive Globbing:** `**/` (e.g., `ls **/*.txt`). [14, 23]
*   **Qualifiers:** Modifying glob behavior (e.g., `*(.)` for regular files, `*(/)` for directories, `*(om)` order by modification time). [23]
*   **Exclusion:** Using `^` (e.g., `ls ^*.log`). [24]
*   **Numeric Ranges:** `<->` (e.g., `ls file<1-10>.txt`).
*   **Approximate Matching:** `(#a)`

### History Management #History #CommandHistory #Recall
Enhanced command history features. [3, 1, 9]
*   **Shared History:** `setopt share_history`. History is shared across concurrent sessions. [3]
*   **Extended History:** `setopt extended_history`. Saves timestamps and duration.
*   **Incremental History Search:** Ctrl+R (like Bash) but often enhanced by plugins.
*   **History Substring Search:** Type part of a command and use Up/Down arrows (often enabled by default or frameworks). [1]
*   **Options:** `inc_append_history`, `hist_ignore_dups`, `hist_find_no_dups`, etc.

### Spelling Correction #Spelling #Correction #Typo
Automatic or interactive correction of typos in commands or filenames. [3, 9, 10]
*   Enable with `setopt correct` or `setopt correct_all`.

### Path Expansion #PathExpansion #Navigation #Shortcuts
Shorthands for navigating directories. [9, 10, 14]
*   **Automatic `cd`:** Typing a directory name changes to it (if `setopt auto_cd` is set). [9, 14, 26]
*   **Recursive Path Expansion:** `/u/lo/b` -> `/usr/local/bin`. [9]
*   **Named Directories:** Using `hash -d name=/path/to/directory` and then `cd ~name`.
*   **`cd` Path Replacement:** `cd old new` to replace `old` with `new` in the current path. [14]

### Zsh Line Editor (ZLE) #ZLE #Editing #Keybindings
The built-in command line editor. [27]
*   **Keymaps:** Emacs mode (default), Vi mode. [26]
*   **Widgets:** Built-in functions bound to key sequences (e.g., `backward-word`, `accept-line`).
*   **Custom Keybindings:** Using `bindkey` command in `.zshrc` to define custom shortcuts. [13, 27]

### Shell Options (`setopt`, `unsetopt`) #Options #Settings #Behavior
Fine-tuning shell behavior using `setopt` and `unsetopt`. [1, 8, 14, 23]
*   Examples: `setopt auto_cd`, `setopt correct`, `setopt glob_dots`, `setopt extended_glob`, `setopt numeric_glob_sort`, `setopt share_history`.

### Aliases #Aliases #Shortcuts #Commands
Creating shortcuts for longer commands. [1]
*   Syntax: `alias ll='ls -alF'`

## Scripting in Zsh #Scripting #Automation #Programming
Using Zsh for writing shell scripts.

### Basic Syntax #Syntax #Fundamentals
Shebang (`#!/bin/zsh` or `#!/usr/bin/env zsh`), comments (`#`), command execution. [20, 23]

### Variables and Parameters #Variables #Parameters #DataTypes
Defining and using variables. [23]
*   **Scalar Variables:** `myvar="value"`
*   **Array Variables:** `myarray=("apple" "banana" "cherry")`. Zsh arrays are 1-indexed by default. [3, 23]
*   **Associative Arrays (Hashes):** `typeset -A myhash; myhash=(key1 value1 key2 value2)` [24]
*   **Parameter Expansion:** Advanced substitutions (`${var#prefix}`, `${var%suffix}`, `${var/pattern/replacement}`). [24]
*   **Variable Attributes:** Using `typeset` (or `declare`, `local`) for type declaration (integer, float, readonly, unique array). [23]

### Control Structures #ControlFlow #Logic
Conditional statements and loops.
*   **If/Else:** `if [[ condition ]]; then ... elif [[ condition ]]; then ... else ... fi`
*   **Case:** `case $var in pattern1) ... ;; pattern2) ... ;; *) ... ;; esac`
*   **For Loops:** `for i in item1 item2; do ... done`, `for (( i=1; i<=5; i++ )); do ... done` (C-style)
*   **While/Until Loops:** `while [[ condition ]]; do ... done`

### Functions #Functions #Modularity #Reuse
Defining reusable blocks of code. [6]
*   Syntax: `my_function() { ... }` or `function my_function { ... }`
*   **Autoloading Functions:** Placing functions in files within `$fpath` directories and using `autoload function_name`. [6]

### Input/Output and Redirection #IO #Redirection #Pipelines
Handling input and output streams. [6]
*   Standard Redirection: `>`, `<`, `>>`, `2>`, `&>`
*   Pipelines: `command1 | command2`. Zsh runs the last command in a pipeline in the current shell by default (unlike Bash). [14]
*   Process Substitution: `<(command)`, `>(command)`
*   Here Documents/Strings: `<<EOF`, `<<<"string"`

### Arithmetic Evaluation #Math #Arithmetic #Calculation
Performing mathematical operations. [6]
*   Using `(( ... ))` or `let`. Example: `(( result = 5 * 10 ))` [23]
*   Supports floating-point arithmetic (requires `zmodload zsh/mathfunc` for advanced functions). [3]

### Scripting Differences from Bash #Comparison #Bash #Portability
Key differences to be aware of when migrating scripts.
*   **Array Indexing:** Zsh arrays are 1-based by default, Bash is 0-based.
*   **Variable Expansion:** Quoting behavior can differ. `$array` in Zsh expands to all elements, while Bash requires `${array[@]}`. [24]
*   **Globbing:** Zsh globbing is more powerful but default behavior for no matches differs (error in Zsh, literal string in Bash). [14]
*   **Pipelines:** Right-hand side runs in parent shell in Zsh, subshell in Bash. [14]
*   **`local` vs `typeset`:** `typeset` is more traditional in Zsh, though `local` is often available.
*   **`emulate` Command:** `emulate zsh` or `emulate sh` can force specific behaviors for compatibility. [23]

## Customization and Extensibility #Customization #Themes #Plugins #Frameworks
Tailoring Zsh's appearance and functionality.

### Prompt Customization #Prompt #PS1 #Themes
Modifying the command prompt (`PS1`, `RPS1`). [1, 3, 13, 14]
*   **Prompt Escape Sequences:** `%n` (username), `%m` (hostname), `%~` (current directory), `%#` ('%' or '#'), color codes (`%F{color}`, `%K{color}`).
*   **Right Prompt (`RPS1`):** Information displayed on the right side. [3]
*   **Prompt Themes:** Frameworks often provide pre-made themes. [1]

### Themes #Themes #Appearance #OhMyZsh
Pre-packaged prompt styles and configurations. [1, 3, 9]
*   Often managed via frameworks like Oh My Zsh or Prezto.
*   Popular themes: Powerlevel10k (p10k), Agnoster. [9, 19]

### Plugins #Plugins #Extensibility #Features
Adding features and integrations via plugins. [2, 9]
*   Examples: `zsh-syntax-highlighting`, `zsh-autosuggestions`, Git integration plugins. [1, 2, 19]
*   Managed via plugin managers or frameworks.

### Frameworks and Plugin Managers #Frameworks #PluginManagers #OhMyZsh #Prezto
Tools to simplify managing Zsh configurations, themes, and plugins. [1, 2, 11, 19, 18]
*   **Oh My Zsh:** Most popular, large community, many bundled plugins/themes. [1, 2, 3, 5, 9, 11, 18, 19]
*   **Prezto:** Configuration framework focusing on speed and modularity. [1, 11, 18, 19]
*   **Antigen:** Plugin manager inspired by vundle (for Vim). [1, 11, 18, 19, 21]
*   **Zplug:** Next-generation plugin manager, feature-rich. [1, 11, 18]
*   **Zinit (formerly Zgenom/Zgen):** Lightweight and fast plugin manager. [1, 11, 18]
*   **Antidote:** Fast, simple plugin manager. [21]
*   **Manual Management:** Cloning plugins and sourcing them directly in `.zshrc`.

## Advanced Topics #Advanced #Internals #Modules
Deeper dives into Zsh capabilities.

### Loadable Modules (`zmodload`) #Modules #Extensibility #Builtins
Extending built-in functionality by loading modules. [3, 10, 22]
*   Examples: `zsh/net/tcp` (TCP sockets), `zsh/mathfunc` (math functions), `zsh/zprof` (profiling), `zsh/complist` (completion list styling).

### Hooks #Hooks #ExecutionControl #Customization
Functions executed at specific points in the shell lifecycle. [14]
*   `precmd`: Executed before each prompt.
*   `preexec`: Executed before each command execution.
*   `chpwd`: Executed when the directory changes.

### Zsh Profiling (`zprof`) #Profiling #Performance #Debugging
Analyzing the startup time and performance of Zsh configuration.
*   Usage: `zmodload zsh/zprof` at the start of `.zshrc`, then run `zprof` after startup.

### Co-processes #Concurrency #Background #Advanced
Running external commands concurrently with the shell.

### Socket Programming #Networking #Sockets #Advanced
Using modules like `zsh/net/tcp` for network interactions directly from the shell. [3, 10]

## Troubleshooting and Help #Troubleshooting #Debugging #Help
Getting assistance and solving problems.

### Common Issues #Problems #Errors #FAQ
*   Slow startup times (often due to complex configs or too many plugins).
*   Configuration file loading order conflicts (e.g., PATH being overridden). [8, 15]
*   Plugin/Theme conflicts.
*   Compatibility issues with Bash scripts.

### Debugging Techniques #Debugging #Tracing
*   Using `set -x` or `setopt xtrace` to trace command execution.
*   Using `zprof` for performance analysis.
*   Checking configuration files (`.zshrc`, `.zshenv`, etc.) incrementally.
*   Disabling plugins/themes one by one.

### Getting Help #Help #Documentation #Manuals
*   **Man Pages:** `man zsh`, `man zshall`, `man zshcompsys`, `man zshzle`, `man zshbuiltins`, etc. [7]
*   **`--help` Option:** For builtins and some external commands. [6]
*   **Online Documentation:** Zsh official website, user guides. [23, 25]
*   **Community:** Forums, Stack Overflow, Reddit (r/zsh). [21]

## Community and Resources #Community #Resources #Learning
Where to find more information and connect with other users.

### Official Zsh Website #Website #Official
Source code, documentation, news.

### Oh My Zsh Community #OhMyZsh #Community #Framework
GitHub repository, issue tracker, extensive plugin/theme collection. [3, 18]

### Awesome Zsh Plugins #Plugins #List #Resources
Curated list of Zsh plugins, themes, and frameworks on GitHub. [11, 18, 21]

### Books and Tutorials #Learning #Books #Guides
Various online tutorials, articles, and books dedicated to Zsh. [1, 12, 20, 25, 26]
