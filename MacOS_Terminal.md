# I. Introduction to the Terminal

## Understanding the Terminal Environment

### Defining the Terminal
*   Explain what a terminal is: a text-based interface for interacting with the operating system.
*   Differentiate the terminal from a graphical user interface (GUI).

### Basic Terminal Commands
*   `pwd`: Print working directory (shows current location in the file system).
*   `ls`: List files and directories (shows contents of the current directory).  Example: `ls -l` for a detailed listing.
*   `cd`: Change directory (navigates the file system). Example: `cd Documents`, `cd ..` (move up one directory).

### Terminal Prompt
*   Understanding the structure: `username@computername current_directory$`.
*   Understanding how the prompt indicates user privileges (e.g., `$` for regular user, `#` for root).

## Navigating the File System

### Absolute vs. Relative Paths
*   Absolute paths: starting from the root directory (`/`).  Example: `/Users/username/Documents`.
*   Relative paths: starting from the current directory.  Example: `Documents/MyFile.txt`.

### Using `cd` Effectively
*   Moving up one level: `cd ..`.
*   Moving directly to the home directory: `cd ~`.
*   Using tab completion to speed up navigation.

### Creating and Deleting Directories
*   `mkdir`: Create a directory.  Example: `mkdir NewDirectory`.
*   `rmdir`: Remove an empty directory.  Example: `rmdir NewDirectory`.

# II. File Manipulation

## Working with Files

### Creating Files
*   `touch`: Create an empty file.  Example: `touch myfile.txt`.
*   `> filename`: Redirect output to a file, creating it if it doesn't exist. Example: `echo "Hello" > myfile.txt`

### Viewing File Content
*   `cat`: Concatenate and display file content.  Example: `cat myfile.txt`.
*   `less`: View file content page by page (more feature-rich than `cat`).  Use spacebar to advance, `q` to quit.
*   `head`: Display the beginning of a file.  Example: `head -n 10 myfile.txt` (first 10 lines).
*   `tail`: Display the end of a file. Example: `tail -n 10 myfile.txt` (last 10 lines).

### Copying, Moving, and Renaming Files
*   `cp`: Copy files or directories.  Example: `cp myfile.txt newfile.txt`, `cp -r mydirectory newdirectory`.
*   `mv`: Move or rename files or directories.  Example: `mv myfile.txt newfile.txt`, `mv myfile.txt Documents/`.
*   `rm`: Remove files or directories (use with caution!). Example: `rm myfile.txt`, `rm -r mydirectory`.

## File Permissions

### Understanding File Permissions
*   Read (r), Write (w), Execute (x).
*   Permissions for User, Group, and Others.

### Changing File Permissions
*   `chmod`: Change file permissions.  Example: `chmod +x myfile.sh` (add execute permission), `chmod 755 myfile.sh` (set specific permissions).

### Using `chown` and `chgrp`
*   `chown`: Change file owner. Requires sudo. Example: `sudo chown newuser myfile.txt`.
*   `chgrp`: Change file group.  Example: `chgrp newgroup myfile.txt`.

# III. Working with Text

## Text Editors in the Terminal

### `nano`
*   Basic usage: `nano filename`.
*   Basic commands: Ctrl+O (save), Ctrl+X (exit).

### `vim` (Advanced)
*   Modes: Normal, Insert, Visual.
*   Basic commands: `i` (enter insert mode), Esc (enter normal mode), `:w` (save), `:q` (quit), `:wq` (save and quit).

## Text Manipulation Commands

### `grep`
*   Search for patterns in files.  Example: `grep "pattern" myfile.txt`.
*   Options: `-i` (ignore case), `-v` (invert match), `-r` (recursive search).

### `sed`
*   Stream editor for text transformation. Example: `sed 's/old/new/g' myfile.txt` (replace all occurrences of "old" with "new").
*   In-place editing: `sed -i 's/old/new/g' myfile.txt` (modifies the file directly).

### `awk`
*   Powerful text processing tool.  Example: `awk '{print $1}' myfile.txt` (print the first column).

### Piping and Redirection
*   Piping (`|`): Send the output of one command to another. Example: `cat myfile.txt | grep "pattern"`.
*   Redirection (`>`, `>>`): Redirect output to a file. Example: `ls > filelist.txt` (overwrite), `ls >> filelist.txt` (append).

# IV. System Management

## Process Management

### Viewing Processes
*   `ps`: List running processes. `ps aux` for a detailed list.
*   `top`: Display real-time process information.
*   `htop`: An interactive process viewer (requires installation).

### Controlling Processes
*   `kill`: Terminate a process. Example: `kill PID` (where PID is the process ID).
*   `killall`: Terminate processes by name. Example: `killall processname`.
*   Backgrounding processes: `command &`.
*   Bringing processes to the foreground: `fg`.
*   Stopping processes: Ctrl+Z.
*   Continuing stopped processes in the background: `bg`.

## Package Management (Example: Homebrew on macOS)

### Installing Homebrew
*   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Basic Homebrew Commands
*   `brew install package_name`: Install a package. Example: `brew install wget`.
*   `brew update`: Update Homebrew's package list.
*   `brew upgrade`: Upgrade installed packages.
*   `brew uninstall package_name`: Uninstall a package. Example: `brew uninstall wget`.
*   `brew search package_name`: Search for a package. Example: `brew search wget`.

## System Information

### Obtaining System Information
*   `uname`: Print system information.  Example: `uname -a` (all information).
*   `df`: Display disk space usage.  Example: `df -h` (human-readable format).
*   `du`: Display directory space usage. Example: `du -sh directoryname` (summary, human-readable format).
*   `free`: Display memory usage. Example: `free -m` (megabytes).
*   `system_profiler` : Detailed hardware and software report. Example `system_profiler SPHardwareDataType`.

# V. Shell Scripting Basics

## Introduction to Shell Scripting

### What is a Shell Script?
*   A text file containing a series of commands.

### Shebang (`#!`)
*   Specifying the interpreter: `#!/bin/bash`.

### Basic Script Structure
```bash
#!/bin/bash
# This is a comment
echo "Hello, world!"
```

### Executing a Script
*   Making the script executable: `chmod +x myscript.sh`.
*   Running the script: `./myscript.sh`.

## Variables and Input

### Defining Variables
*   `variable_name="value"`.
*   Accessing variables: `$variable_name`. Example: `echo "The value is: $variable_name"`.

### Reading User Input
*   `read`: Read input from the user. Example: `read -p "Enter your name: " name`.

## Conditional Statements

### `if`, `then`, `else`, `fi`
```bash
if [ condition ]; then
  # Commands to execute if the condition is true
else
  # Commands to execute if the condition is false
fi
```

### Common Conditions
*   String comparison: `==`, `!=`.
*   Numeric comparison: `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`.
*   File existence: `-f`, `-d`.

## Loops

### `for` Loops
```bash
for item in list; do
  # Commands to execute for each item
done
```

### `while` Loops
```bash
while [ condition ]; do
  # Commands to execute while the condition is true
done
```

# VI. Advanced Terminal Usage

## SSH and Remote Connections

### Understanding SSH
*   Secure Shell: a protocol for secure remote login and command execution.

### Connecting to a Remote Server
*   `ssh username@hostname`.

### SSH Keys
*   Generating SSH keys: `ssh-keygen`.
*   Copying SSH keys to the server: `ssh-copy-id username@hostname`.

## Terminal Multiplexers (tmux)

### Introduction to `tmux`
*   What is a terminal multiplexer?
*   Why use `tmux`? Persistent sessions, window management, etc.

### Basic `tmux` Commands
*   Starting a new session: `tmux new -s session_name`.
*   Detaching from a session: Ctrl+b, d.
*   Attaching to a session: `tmux attach -t session_name`.
*   Creating new windows: Ctrl+b, c.
*   Switching between windows: Ctrl+b, n (next), Ctrl+b, p (previous).
*   Splitting windows: Ctrl+b, % (vertical), Ctrl+b, " (horizontal).
*   Navigating panes: Ctrl+b, arrow keys.

## Customizing Your Terminal

### Shell Configuration Files
*   `.bashrc`, `.zshrc` (depending on the shell).

### Aliases
*   Creating aliases: `alias la='ls -la'`. Add to your shell configuration file for persistence.

### Prompt Customization
*   Modifying the `PS1` variable. Example: `PS1=" @\h \w $ "`.

### Installing Themes
*   Exploring terminal themes.
