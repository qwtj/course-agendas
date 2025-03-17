# I. Introduction to Vim

## Understanding Vim's History and Philosophy

### The Origins of Vi and Vim
*   Briefly explore the history of the `vi` editor and its evolution into `Vim`.
*   Understand the rationale behind Vim's modal editing approach.

### Vim's Philosophy: Efficiency and Customization
*   Learn about the principles of efficient text editing and keyboard-centric workflows.
*   Explore Vim's focus on extensibility and customization through plugins and configuration.

## Installing and Launching Vim

### Installing Vim on Different Operating Systems
*   Instructions for installing Vim on Linux (e.g., `apt-get install vim`, `yum install vim`).
*   Instructions for installing Vim on macOS (e.g., using Homebrew: `brew install vim`).
*   Instructions for installing Vim on Windows (e.g., using Chocolatey: `choco install vim`).

### Launching Vim and Opening Files
*   Opening Vim from the command line with and without a file: `vim`, `vim filename`.
*   Understanding the Vim interface and basic screen layout.

# II. Basic Vim Navigation and Editing

## Vim's Modes of Operation

### Normal Mode
*   Understanding the purpose of Normal mode: commands and navigation.
*   Key bindings for movement: `h` (left), `j` (down), `k` (up), `l` (right).
*   Word-wise movement: `w` (next word), `b` (previous word), `e` (end of word).

### Insert Mode
*   Switching to Insert mode: `i` (insert before cursor), `a` (append after cursor), `o` (open a new line below), `O` (open a new line above).
*   Typing and inserting text.
*   Returning to Normal mode: `<Esc>` key.

### Visual Mode
*   Activating Visual mode: `v` (character-wise), `V` (line-wise), `Ctrl-v` (block-wise).
*   Selecting text using movement keys (`h`, `j`, `k`, `l`, `w`, `b`, `e`).
*   Performing actions on selected text (e.g., deleting, yanking, changing).

### Command-Line Mode
*   Activating Command-Line mode: `:` (colon).
*   Executing commands: saving (`:w`), quitting (`:q`), searching (`:/pattern`), replacing (`:%s/old/new/g`).

## Basic Editing Commands

### Inserting and Appending Text
*   `i` (insert before cursor), `a` (append after cursor), `I` (insert at beginning of line), `A` (append to end of line).

### Deleting Text
*   `x` (delete character under cursor), `X` (delete character before cursor), `dd` (delete line), `dw` (delete word).
*   Combining deletion with movement: `d2w` (delete two words).

### Changing Text
*   `c` (change), `cw` (change word), `cc` (change line).
*   Combining change with movement: `c$` (change to end of line).

### Undoing and Redoing Changes
*   `u` (undo), `Ctrl-r` (redo).

### Copying and Pasting Text
*   `yy` (yank/copy line), `yw` (yank word).
*   `p` (paste after cursor), `P` (paste before cursor).

# III. Intermediate Vim Techniques

## Searching and Replacing

### Basic Searching
*   Searching forward: `/pattern`.
*   Searching backward: `?pattern`.
*   Navigating search results: `n` (next), `N` (previous).

### Replacing Text
*   Replacing a single occurrence: `:s/old/new`.
*   Replacing all occurrences on a line: `:s/old/new/g`.
*   Replacing all occurrences in the file: `:%s/old/new/g`.
*   Confirming each replacement: `:%s/old/new/gc`.

## Working with Multiple Files and Buffers

### Opening and Switching Buffers
*   Opening a new file: `:e filename`.
*   Listing open buffers: `:buffers` or `:ls`.
*   Switching between buffers: `:b number` or `:b filename`.

### Splitting the Window

*   Splitting the window horizontally: `:split` or `:sp filename`.
*   Splitting the window vertically: `:vsplit` or `:vs filename`.
*   Moving between windows: `Ctrl-w Ctrl-w`.
*   Closing a window: `:close` or `:q`.

## Macros

### Recording a Macro
*   Starting a macro recording: `q[register]` (e.g., `qa` records to register `a`).
*   Performing the actions to be recorded.
*   Stopping the recording: `q`.

### Playing Back a Macro
*   Executing a macro once: `@[register]` (e.g., `@a` executes macro `a`).
*   Executing a macro multiple times: `[number]@[register]` (e.g., `5@a` executes macro `a` five times).

# IV. Advanced Vim Customization and Plugins

## Vim Configuration (`.vimrc`)

### Understanding the `.vimrc` File
*   Location of `.vimrc` (or `_vimrc` on Windows).
*   Purpose: storing Vim settings and customizations.

### Basic Configuration Options
*   Setting line numbers: `set number`.
*   Enabling syntax highlighting: `syntax on`.
*   Setting indentation: `set tabstop=4`, `set shiftwidth=4`, `set expandtab`.
*   Customizing the color scheme: `colorscheme [name]`.

## Vim Plugins

### Plugin Management
*   Using a plugin manager (e.g., Pathogen, Vundle, Vim-Plug).
*   Installing a plugin using Vim-Plug example:
    ```vim
    call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    call plug#end()
    ```
    *   Installing plugins: `:PlugInstall`.

### Popular Plugins

*   NERDTree: file system explorer.
*   CtrlP: fuzzy file finder.
*   Syntastic: syntax checker.
*   vim-airline: status bar.

## Custom Mappings

### Creating Custom Key Bindings
*   Using the `map` command.
*   Examples:
    *   Mapping `<F5>` to save the current file: `map <F5> :w<CR>`.
    *   Mapping `<leader>w` to close the current window: `map <leader>w :close<CR>`.  (Note: `<leader>` is typically `\`).

###  Using `<leader>`

* Understanding the purpose of `<leader>` as a prefix for custom mappings.
* Customizing the `<leader>` key: `let mapleader = ","`.
