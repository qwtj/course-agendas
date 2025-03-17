# I. Bash Scripting Fundamentals

## Understanding the Bash Shell

### Introduction to the Shell
*   What is a shell?
*   Different types of shells (Bash, Zsh, Fish).
*   Accessing the Bash shell.

### Basic Bash Commands
*   Navigation: `cd`, `pwd`, `ls`
*   File manipulation: `touch`, `mkdir`, `rm`, `cp`, `mv`
*   Viewing files: `cat`, `less`, `head`, `tail`

## Writing Your First Script

### Creating a Bash Script
*   Using a text editor (e.g., `nano`, `vim`, `emacs`).
*   Shebang line: `#!/bin/bash`
*   Making a script executable: `chmod +x script.sh`

### Executing a Bash Script
*   Running with `./script.sh`
*   Running with `bash script.sh`

### Basic Script Structure
*   Comments: `# This is a comment`
*   Simple commands: `echo "Hello, world!"`

# II. Variables and Data Types

## Understanding Variables

### Declaring Variables
*   Variable assignment: `variable_name="value"`
*   Accessing variables: `$variable_name` or `${variable_name}`
*   Variable naming conventions.

### Types of Variables
*   Environment variables: `echo $PATH`, `echo $HOME`
*   Local variables
*   Special variables: `$?`, `$$`, `$!`

## Working with Data

### String Manipulation
*   String concatenation: `result="$string1$string2"`
*   String length: `${#string}`
*   Substring extraction: `${string:position:length}`

### Arithmetic Operations
*   Using `(( ))` for arithmetic: `((result = number1 + number2))`
*   Using `let` command: `let result=number1+number2`
*   Basic operators: `+`, `-`, `*`, `/`, `%`

# III. Control Flow

## Conditional Statements

### `if`, `then`, `else`, `elif`, `fi`
*   Basic `if` statement:
    ```bash
    if [ condition ]; then
        # commands
    fi
    ```
*   `if-else` statement:
    ```bash
    if [ condition ]; then
        # commands
    else
        # commands
    fi
    ```
*   `if-elif-else` statement.

### Conditional Expressions
*   File test operators: `-f`, `-d`, `-e`, `-x`, `-r`, `-w`
*   String comparison: `==`, `!=`, `-z`, `-n`
*   Arithmetic comparison: `-eq`, `-ne`, `-lt`, `-gt`, `-le`, `-ge`
*   Combining conditions with `&&` and `||`

## Looping Structures

### `for` Loops
*   Iterating over a list:
    ```bash
    for item in item1 item2 item3; do
        echo $item
    done
    ```
*   Iterating over a range:
    ```bash
    for i in {1..5}; do
        echo $i
    done
    ```
*   Iterating over files:
    ```bash
    for file in *.txt; do
        echo $file
    done
    ```

### `while` Loops
*   Basic `while` loop:
    ```bash
    while [ condition ]; do
        # commands
    done
    ```

### `until` Loops
*   Basic `until` loop:
    ```bash
    until [ condition ]; do
        # commands
    done
    ```

### `break` and `continue`
*   Using `break` to exit a loop.
*   Using `continue` to skip an iteration.

# IV. Functions

## Defining Functions

### Basic Function Syntax
*   Function declaration:
    ```bash
    function function_name {
        # commands
    }
    ```
*   Alternate syntax:
    ```bash
    function_name () {
        # commands
    }
    ```

### Calling Functions
*   Calling a function: `function_name`

### Function Arguments
*   Accessing arguments: `$1`, `$2`, `$3`, etc.
*   `$#`: Number of arguments.
*   `$*`: All arguments as a single string.
*   `$@`: All arguments as separate strings.

## Returning Values

### Returning a Status Code
*   Using `return` to return a status code (0-255).

### Returning Output
*   Using `echo` or `printf` and capturing the output: `result=$(function_name)`

## Variable Scope

### Local Variables in Functions
*   Declaring local variables with `local variable_name`.

### Global Variables
*   Understanding the difference between local and global scope.

# V. Input and Output

## Reading User Input

### The `read` Command
*   Reading input into a variable: `read variable_name`
*   Prompting the user: `read -p "Enter your name: " name`
*   Reading silently: `read -s password`
*   Setting a timeout: `read -t 5 variable_name`

## Outputting Text

### `echo`
*   Basic usage: `echo "Hello, world!"`
*   Escape sequences: `
`, `	`, `\`, `\"`
*   Options: `-n` (suppress newline), `-e` (enable escape sequences)

### `printf`
*   Formatted output: `printf "Name: %s, Age: %d
" "John" 30`
*   Format specifiers: `%s` (string), `%d` (integer), `%f` (float)

## Working with Files

### Redirecting Output
*   Redirecting to a file: `command > file` (overwrite), `command >> file` (append)
*   Redirecting standard error: `command 2> file`
*   Redirecting both standard output and standard error: `command &> file`

### Piping Output
*   Connecting commands with `|`: `command1 | command2 | command3`
*   Example: `ls -l | grep ".txt"`

# VI. Regular Expressions and Text Processing

## Introduction to Regular Expressions

### Basic Syntax
*   Characters and metacharacters.
*   Anchors: `^`, `$`
*   Character classes: `[abc]`, `[^abc]`, `[a-z]`, `[0-9]`
*   Quantifiers: `*`, `+`, `?`, `{n}`, `{n,}`, `{n,m}`
*   Grouping: `( )`
*   Alternation: `|`

### `grep`
*   Searching for patterns: `grep "pattern" file`
*   Options: `-i` (ignore case), `-v` (invert match), `-n` (line numbers), `-r` (recursive)

## Text Processing Tools

### `sed`
*   Stream editor for text manipulation.
*   Substitution: `sed 's/old/new/g' file`
*   Deleting lines: `sed '/pattern/d' file`
*   Inserting lines: `sed 'i	ext' file`, `sed 'a	ext' file`

### `awk`
*   Pattern scanning and processing language.
*   Basic usage: `awk '{print $1}' file` (print the first field)
*   Field separators: `-F` option.
*   Conditional processing: `awk '$1 > 10 {print $2}' file`
*   Using variables: `awk 'BEGIN { sum = 0 } { sum += $1 } END { print sum }' file`

# VII. Process Management

## Understanding Processes

### What is a Process?
*   Process ID (PID).
*   Parent and child processes.

### Viewing Processes
*   `ps` command: `ps aux`, `ps -ef`, `ps -l`
*   `top` command: interactive process viewer.
*   `htop` command: Enhanced interactive process viewer.

## Controlling Processes

### Running Processes in the Background
*   Adding `&` to a command: `command &`
*   `jobs` command: Listing background processes.
*   `fg` command: Bringing a background process to the foreground.
*   `bg` command: Sending a stopped process to the background.

### Killing Processes
*   `kill` command: Sending signals to processes.
*   Common signals: `SIGTERM` (15), `SIGKILL` (9), `SIGHUP` (1)
*   `kill -9 PID` (forcefully kill a process).
*   `pkill` and `killall` commands.

### Process Scheduling
*   `nice` command: Changing process priority.
*   `renice` command: Changing priority of a running process.

# VIII. Advanced Bash Scripting

## Arrays

### Declaring Arrays
*   Indexed arrays: `array=("item1" "item2" "item3")`
*   Associative arrays: `declare -A array` , `array=([key1]="value1" [key2]="value2")`

### Accessing Array Elements
*   Indexed arrays: `${array[0]}`, `${array[@]}`, `${array[*]}`
*   Associative arrays: `${array[key1]}`

### Array Operations
*   Adding elements: `array+=("item4")`
*   Deleting elements: `unset array[0]`
*   Array length: `${#array[@]}` or `${#array[*]}`

## Signal Handling

### Trapping Signals
*   Using the `trap` command: `trap 'command' SIGNAL`
*   Common signals: `SIGINT`, `SIGTERM`, `SIGHUP`, `SIGEXIT`
*   Example: `trap 'echo "Exiting..."; exit 1' SIGINT SIGTERM`

## Debugging Bash Scripts

### Using `set` Options
*   `set -x`: Trace command execution.
*   `set -e`: Exit immediately if a command exits with a non-zero status.
*   `set -u`: Treat unset variables as an error.
*   `set -v`: Print shell input lines as they are read.

### Debugging Tools
*   `bashdb`: Bash debugger.

# IX. Practical Scripting Projects

## Automating System Administration Tasks

### Log Rotation Script
*   Rotating log files based on size or time.

### Backup Script
*   Creating backups of important files and directories.

### System Monitoring Script
*   Monitoring system resources (CPU, memory, disk space).

## Creating Utility Scripts

### Bulk File Renamer
*   Renaming multiple files based on a pattern.

### Webpage Downloader
*   Downloading webpages using `curl` or `wget`.

### Text Converter
*   Converting text files between different formats.
