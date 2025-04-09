# I. Introduction and Setup

*   **Learning Objective:** Understand Zsh's purpose, advantages, and perform initial installation and configuration.

## Understanding Zsh
"<prompt>Explain what Zsh (Z Shell) is, its origins, and list its key advantages compared to other shells like Bash (e.g., improved tab completion, globbing, customization). Describe common use cases for Zsh. Highlight key differences relevant to a new user switching from Bash."

## Installation
"<prompt>Provide concise, step-by-step instructions for installing Zsh on the latest versions of macOS (using Homebrew), Linux (Debian/Ubuntu using `apt`, Fedora/RHEL using `dnf`/`yum`), and Windows (using Windows Subsystem for Linux - WSL). Include commands for verifying the installation (`zsh --version`)."

## Initial Configuration & Setup
"<prompt>Guide the user through the first-time setup of Zsh. Explain the purpose of the `zsh-newuser-install` function that runs on first launch. Detail the command to change the default login shell to Zsh (`chsh -s $(which zsh)`) and explain potential implications or requirements (e.g., logout/login)."

*   **Reflective Prompt:** "<prompt>After installing Zsh and setting it as your default shell, what are your initial impressions compared to your previous shell? Note any immediate differences you observe."

# II. Core Concepts and Basic Usage

*   **Learning Objective:** Master fundamental Zsh interaction, including command execution, history, powerful completion, and advanced filename matching.

## Basic Shell Interaction
"<prompt>Describe how to execute commands in Zsh. Explain navigating the command history using arrow keys, `Ctrl+R` (reverse search), and the `history` command. Detail basic filesystem navigation commands (`cd`, `ls`, `pwd`) and any Zsh-specific enhancements (e.g., `cd -`)."

## Enhanced Tab Completion
"<prompt>Explain Zsh's context-aware tab completion system. Provide examples demonstrating completion for: command names, command options/flags (including descriptions), file/directory paths, environment variables, and git commands (if git plugin context is assumed later). Briefly mention how to enable and configure basic completion settings if not default."

### Using Completion Effectively
*   "<prompt>Generate examples showcasing Zsh's menu completion (cycling through options with Tab) and ambiguity resolution. Include an example of completing options for a common command like `tar` or `ls`."

## Globbing (Filename Expansion)
"<prompt>Explain the concept of globbing in Zsh, contrasting it with basic wildcards (`*`, `?`). Introduce extended globbing patterns (e.g., `#`, `^`, `~`) and recursive globbing (`**`). Provide practical examples for matching specific file types, excluding patterns, and using glob qualifiers (e.g., `*(.)` for regular files, `*(/)` for directories, `*(om)` for ordered by modification time)."

*   **Glossary:** "<prompt>Define the following Zsh terms: `globbing`, `wildcard`, `glob qualifier`, `command history`, `tab completion`."
*   **Interactive Quiz:** "<prompt>Create a short multiple-choice quiz (3-5 questions) testing understanding of basic command execution, history navigation, and simple tab completion/globbing examples in Zsh."

# III. Customization and Configuration

*   **Learning Objective:** Learn how to personalize the Zsh environment using configuration files, aliases, functions, prompt customization, and shell options.

## Configuration Files Overview
"<prompt>Identify the primary Zsh startup/configuration files: `.zshenv`, `.zprofile`, `.zshrc`, `.zlogin`, `.zlogout`. Explain the purpose and loading order of each file, emphasizing the typical use cases for `.zshenv` (environment variables) and `.zshrc` (interactive settings, aliases, functions)."

## Aliases and Functions
"<prompt>Explain how to define command aliases using the `alias` keyword in `.zshrc` for frequently used commands. Provide 3 useful examples (e.g., `alias ll='ls -lah'`). Then, introduce Zsh functions as a way to create more complex, reusable commands. Provide a simple function example (e.g., a function to create a directory and `cd` into it)."

## Prompt Customization (`PS1`)
"<prompt>Describe how to customize the Zsh command prompt by setting the `PS1` (and optionally `RPS1` for the right prompt) variable in `.zshrc`. Explain common prompt escape sequences (e.g., `%n` for username, `%m` for hostname, `%~` for current directory, `%*` for time). Show a basic custom prompt configuration. Link to resources or examples of advanced prompt themes (like those used in Oh My Zsh)."

## Shell Options (`setopt`, `unsetopt`)
"<prompt>Introduce the `setopt` and `unsetopt` built-in commands for managing Zsh shell options. List and explain 5-7 common and useful options (e.g., `autocd`, `correct`, `histignorespace`, `extendedglob`, `notify`, `sharehistory`). Show how to enable/disable them in `.zshrc`."

*   **Key Point Callout:** "<prompt>Highlight the central role of the `.zshrc` file for most user-specific interactive Zsh customizations."
*   **Reflective Prompt:** "<prompt>Experiment with adding a custom alias and changing your prompt (`PS1`). How does this customization impact your workflow or shell experience?"
*   **Cross-reference:** "<prompt>Refer back to Section II's Globbing topic when discussing the `extendedglob` option."

# IV. Frameworks and Plugin Management

*   **Learning Objective:** Understand the role of Zsh frameworks and plugin managers and learn how to use them to extend Zsh functionality easily.

## Introduction to Frameworks
"<prompt>Explain what Zsh frameworks (e.g., Oh My Zsh, Prezto) are and the problems they solve (managing configuration, themes, plugins). Discuss the pros (ease of use, large community, pre-built features) and cons (potential performance overhead, abstraction layer) of using a framework."

## Using Oh My Zsh (Popular Example)
"<prompt>Provide concise instructions for installing Oh My Zsh. Explain its basic structure (themes, plugins). Demonstrate how to change the theme by setting `ZSH_THEME` in `.zshrc`. Show how to enable bundled plugins by adding them to the `plugins=(...)` array in `.zshrc` (e.g., `git`, `history-substring-search`, `docker`)."

## Plugin Management Alternatives
"<prompt>Briefly introduce the concept of standalone Zsh plugin managers (e.g., Antigen, Zinit, Antibody/Antidote, Zplug) as alternatives to full frameworks. Explain their purpose: managing Zsh plugins without the full overhead or structure of Oh My Zsh. Provide a link to the GitHub repository for one popular plugin manager."

*   **Further Exploration:** "<prompt>Provide links to the official documentation/repositories for Oh My Zsh, Prezto, and one popular standalone plugin manager (e.g., Zinit or Antidote)."
*   **Interactive Quiz:** "<prompt>Create a short quiz (3 questions) about the purpose of Zsh frameworks, how to enable a plugin in Oh My Zsh, and the potential benefit of using a standalone plugin manager."

*   **Section Transition:** "<prompt>Having explored basic usage and customization, including frameworks, we now move to leveraging Zsh's capabilities for automation through scripting."

# V. Zsh Scripting Fundamentals

*   **Learning Objective:** Write basic to intermediate Zsh scripts utilizing variables, control structures, arrays, and best practices.

## Scripting Basics
"<prompt>Explain the fundamentals of creating a Zsh script. Cover the shebang (`#!/usr/bin/env zsh` or `#!/bin/zsh`), making scripts executable (`chmod +x script.zsh`), defining and using variables (scalar), command substitution (`$(...)`), and basic input/output (`echo`, `read`)."

## Control Structures
"<prompt>Demonstrate the syntax for essential control structures in Zsh scripts: `if`/`elif`/`else` statements (using `[[ ... ]]` for tests) and `for` / `while` loops. Provide a simple example for each structure (e.g., checking if a file exists, iterating over command arguments)."

```zsh
# Example if/else
if [[ -f "$1" ]]; then
  echo "File $1 exists."
else
  echo "File $1 not found."
fi

# Example for loop
for arg in "$@"; do
  echo "Argument: $arg"
done
```

## Arrays and Associative Arrays (Hashes)
"<prompt>Explain how to declare, initialize, access, and iterate over indexed arrays in Zsh (e.g., `my_array=(one two three)`, `${my_array[1]}`, `${#my_array[@]}`). Introduce associative arrays (hashes) for key-value storage (e.g., `typeset -A my_hash`, `my_hash[key]=value`, `${my_hash[key]}`). Provide usage examples for both."

## Scripting Best Practices
"<prompt>Outline essential best practices for writing robust Zsh scripts. Emphasize: using `set -e` (exit on error), `set -u` (error on unset variables), proper quoting (especially `"$var"`), using `local` for variables within functions, and adding comments."

*   **Glossary:** "<prompt>Define the following Zsh scripting terms: `shebang`, `command substitution`, `control structure`, `indexed array`, `associative array`, `quoting`."
*   **Practical Task:** "<prompt>Provide a small scripting challenge: Write a Zsh script that takes a directory path as an argument and prints the names of all files (not directories) within that directory."

*   **Section Summary:** "<prompt>Summarize the key elements covered in Zsh scripting: creating executable scripts, using variables and command substitution, controlling script flow with loops and conditionals, managing data with arrays/hashes, and adhering to best practices for robustness."

# VI. Advanced Topics and Techniques

*   **Learning Objective:** Explore advanced Zsh features including custom completions, performance tuning, Zsh modules, and sophisticated error handling/debugging.

## Advanced Completion Functions
"<prompt>Introduce the concept of writing custom completion functions in Zsh to enhance tab completion for specific commands or scripts. Explain the role of files in `$fpath` and the naming convention (e.g., `_mycommand`). Briefly describe helper functions like `_arguments`, `_files`, `_describe` and provide a conceptual example structure or link to a tutorial."

## Performance Optimization (`zprof`)
"<prompt>Discuss common causes of slow Zsh startup (e.g., complex prompts, too many plugins, inefficient configuration). Introduce the `zprof` module for profiling Zsh startup time (`zmodload zsh/zprof` followed by `zprof`). Explain how to interpret the output to identify bottlenecks in `.zshrc` or functions. Suggest optimization strategies like lazy loading plugins or simplifying prompt logic."

## Zsh Modules (`zmodload`)
"<prompt>Explain the concept of Zsh modules, which provide built-in extensions without external commands. Introduce `zmodload` to load modules. Provide examples using functions from 2-3 useful modules like `zsh/datetime` (for `strftime`), `zsh/mathfunc` (for floating-point math), or `zsh/zpty` (for pseudo-terminals)."

## Advanced Error Handling and Debugging
"<prompt>Describe advanced techniques for error handling in Zsh scripts beyond `set -e`. Introduce `trap` statements to catch signals (e.g., `EXIT`, `ERR`, `INT`). Explain debugging methods: using `set -x` or `zsh -x script.zsh` for execution tracing, and `typeset -ft <function_name>` to view function definitions and trace status."

### Debugging Complex Scenarios
*   "<prompt>Provide tips for debugging complex Zsh issues, such as differentiating between configuration file problems (`.zshrc`, `.zshenv`, etc.), plugin conflicts, and scripting errors. Suggest isolating issues by temporarily disabling customizations or plugins."

*   **Key Point Callout:** "<prompt>Emphasize that optimizing Zsh performance often involves profiling startup (`zprof`) and critically evaluating the necessity and loading strategy of plugins and custom functions."
*   **Further Exploration:** "<prompt>Provide links to the Zsh documentation section on completion functions, the `zshmodules(1)` man page, and a guide on advanced Zsh debugging techniques."
*   **Reflective Prompt:** "<prompt>Consider your current Zsh setup. Based on the optimization section, are there areas (like plugin loading or prompt complexity) you might investigate to improve performance? What advanced feature (custom completions, modules) seems most potentially useful for your workflow?"

*   **Final Summary:** "<prompt>Provide a brief overall summary of the Zsh learning agenda, reiterating the progression from basic setup and usage to advanced customization, scripting, and optimization techniques. Encourage continued exploration of Zsh's extensive features."
