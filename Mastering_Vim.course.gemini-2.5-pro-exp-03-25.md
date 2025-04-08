# I. Vim Fundamentals: Getting Started

*   **Section Objective**: "Generate a learning objective statement focusing on understanding Vim's core philosophy, basic modes, and essential commands for initial interaction and file operations within the Vim editor."

## Understanding Vim's Philosophy and Modes
"Explain the modal nature of Vim, contrasting it with modeless editors. Describe the primary modes (Normal, Insert, Visual, Command-line) and their fundamental purpose in achieving editing efficiency. Clarify the core Vim philosophy of using composable commands."

### Normal Mode: The Default State
"Describe Vim's Normal mode. Explain its purpose as the central mode for navigation and issuing commands. Provide the command to enter Normal mode (`<Esc>`)."
*   **Key Point**: "Generate a callout emphasizing that most time in Vim is spent in Normal mode, reinforcing its importance for efficient editing."

### Insert Mode: Entering Text
"Explain Vim's Insert mode. Detail how to enter Insert mode using commands like `i` (insert before cursor), `a` (append after cursor), `I` (insert at line start), `A` (append at line end), `o` (open new line below), `O` (open new line above). Describe how to return to Normal mode (`<Esc>`)."

### Visual Mode: Selecting Text
"Describe Vim's Visual mode. Explain its use for selecting text blocks. Detail how to enter Visual mode (`v`), Visual Line mode (`V`), and Visual Block mode (`Ctrl-v`). Explain how commands operate on the visual selection."

### Command-Line Mode: Executing Ex Commands
"Explain Vim's Command-line mode. Describe how it's used for executing Ex commands (commands starting with `:`), searching (`/`, `?`), and filtering (`!`). Detail how to enter Command-line mode (`:`)."

## Basic Navigation
"Explain the fundamental commands for cursor movement within a file in Vim's Normal mode. Focus on character, word, line, and screen-based navigation."

### Character Movement
"List and explain the basic character movement keys in Vim: `h` (left), `j` (down), `k` (up), `l` (right)."
*   **Example**: "Provide an example scenario: 'Navigate to the third character on the fifth line down from the current position using only `h`, `j`, `k`, `l` commands.'"

### Word Movement
"List and explain commands for moving by word in Vim: `w` (forward to start of next word), `b` (backward to start of previous word), `e` (forward to end of word), `ge` (backward to end of word)."

### Line Movement
"List and explain commands for moving within and between lines in Vim: `0` (to start of line), `^` (to first non-blank character), `$` (to end of line), `+` or `<Enter>` (to first non-blank of next line), `-` (to first non-blank of previous line)."

### Screen Movement
"List and explain commands for screen-based navigation in Vim: `H` (to top line of screen), `M` (to middle line), `L` (to bottom line), `Ctrl-f` (page down), `Ctrl-b` (page up), `Ctrl-d` (half page down), `Ctrl-u` (half page up), `zz` (center screen on cursor)."

## Basic Editing
"Explain the fundamental commands for making simple edits to text in Vim's Normal mode, including deletion, changing, and copying/pasting."

### Deleting Text
"List and explain basic deletion commands in Vim: `x` (delete character under cursor), `X` (delete character before cursor), `dw` (delete word), `dd` (delete line), `D` (delete from cursor to end of line)."
*   **Composability Example**: "Explain how Vim commands combine operators and motions, using `d` (delete operator) with motions like `w` (word) or `$` (end of line) to form `dw` or `d$`. Provide an example like deleting three words using `d3w`."

### Changing Text
"List and explain basic change commands in Vim, highlighting how they combine deletion with entering Insert mode: `cw` (change word), `cc` (change line), `C` (change to end of line), `s` (substitute character and enter insert), `S` (substitute line and enter insert)."

### Copying and Pasting (Yanking and Putting)
"Explain Vim's terminology for copy (`yank`) and paste (`put`). List and explain basic yanking commands: `yw` (yank word), `yy` (yank line), `Y` (yank line). List and explain basic putting commands: `p` (put after cursor/line), `P` (put before cursor/line)."

## File Operations
"Explain basic file operations performed using Vim's Command-line mode."

### Saving Files
"Explain the command to save the current file in Vim: `:w`. Also explain saving with a new name: `:w new_filename`."

### Quitting Vim
"Explain the commands to quit Vim: `:q` (quit), `:q!` (quit without saving), `:wq` (write and quit), `:x` (write if changed and quit)."

*   **Section Summary**: "Generate a concise summary paragraph covering the key concepts learned in Vim Fundamentals: modal editing, basic navigation commands (`hjkl`, `w`, `b`, `$`, `0`, etc.), basic editing commands (`d`, `c`, `y`, `p`), and essential file operations (`:w`, `:q`, `:wq`)."
*   **Reflective Prompt**: "Generate a reflective question asking the learner to consider which Vim mode they anticipate using most and why, based on their current understanding."
*   **Further Exploration**: "Provide links to Vim's built-in help (`:help user-manual`) and an external beginner's Vim tutorial."

---
* **Transition**: "Generate a brief transition statement indicating that the next section builds upon the fundamentals by introducing more powerful editing techniques and Vim's configuration system."
---

# II. Intermediate Vim: Enhancing Efficiency

*   **Section Objective**: "Generate a learning objective statement focused on expanding Vim proficiency through advanced movement, search/replace techniques, understanding registers and marks, basic configuration, and window/tab management."

## Advanced Navigation and Motions
"Explain more complex and efficient ways to navigate within Vim, including searching, using counts, and jumping between locations."

### Using Counts with Motions and Commands
"Explain how numerical prefixes (counts) can be combined with motions (`j`, `k`, `w`, etc.) and operators (`d`, `c`, `y`) to repeat actions. Provide examples like `5j` (move down 5 lines), `d2w` (delete 2 words), `3p` (paste 3 times)."

### Searching within a File
"Explain how to search forwards (`/pattern`) and backwards (`?pattern`) in Vim. Describe how to navigate between search results using `n` (next) and `N` (previous). Mention search options like case sensitivity (`:set ic`, `:set noic`)."

### Jumping Between Locations
"Explain commands for larger jumps within a file: `gg` (go to first line), `G` (go to last line), `[N]G` (go to line N). Introduce the concept of the jumplist and commands `Ctrl-o` (jump older) and `Ctrl-i` (jump newer)."

## Powerful Editing Techniques
"Introduce more advanced editing capabilities in Vim, focusing on substitution, repeating actions, and using registers."

### Search and Replace
"Explain the `:substitute` command (`:%s/search/replace/flags`). Detail common flags like `g` (global replace on line), `c` (confirm each replacement), `i` (ignore case). Provide examples for replacing text across the entire file (`%s/.../.../g`) or within a visual selection."
*   **Example**: "Generate a practical example prompt: 'Use the `:substitute` command to replace all occurrences of the word "old_function" with "new_function" throughout the entire current file, confirming each change.'"

### Repeating Commands
"Explain the use of the dot command (`.`) to repeat the last change (insert, delete, change). Explain the use of `@:` to repeat the last Ex command."

### Understanding Registers
"Explain the concept of registers in Vim for storing text (yanked, deleted). Describe the default (unnamed) register `""`, named registers (`"a` to `"z`), the black hole register `"_`, the clipboard registers (`"+`, `"*`), and others like the last search pattern register `/`."
*   **Practical Use**: "Provide a prompt demonstrating yanking text into a named register (`"ayw`) and pasting from it (`"ap`)."

## Marks and Positioning
"Explain how to set and use marks in Vim to quickly navigate back to specific locations in a file or across multiple files."

### Setting and Jumping to Marks
"Describe how to set a mark using `m{a-zA-Z}` (e.g., `ma`). Explain how to jump to a mark within the current file using `` `{mark}` `` (exact position) or `' {mark}` (first non-blank on line). Differentiate between lowercase marks (file-specific) and uppercase marks (global, across files)."

## Introduction to Vim Configuration (`.vimrc`)
"Introduce the concept of Vim's configuration file (`.vimrc` or `_vimrc`) and how to make basic customizations."

### Locating and Editing `.vimrc`
"Explain where the `.vimrc` file is typically located on different operating systems (Linux/macOS: `~/.vimrc`, Windows: `$HOME/_vimrc`). Show how to edit it using Vim itself (`:e $MYVIMRC`)."

### Basic Settings
"Introduce common Vim settings using the `:set` command. Provide examples like `:set number` (show line numbers), `:set relativenumber` (show relative numbers), `:set ignorecase` (case-insensitive search), `:set smartcase` (override ignorecase if pattern has uppercase), `:set autoindent` (auto-indent new lines), `:set expandtab` (use spaces instead of tabs), `:set shiftwidth=4` (indentation width), `:set tabstop=4` (tab display width)."
*   **Activity**: "Generate a prompt tasking the user to add at least three basic settings (like line numbers, relative numbers, and auto-indent) to their `.vimrc` file and reload Vim or source the file (`:so $MYVIMRC`) to see the effects."

## Managing Windows and Tabs
"Explain how to work with multiple files simultaneously using Vim's window splitting and tab features."

### Splitting Windows
"Explain commands for splitting the Vim window horizontally (`:split` or `:sp [filename]`, `Ctrl-w s`) and vertically (`:vsplit` or `:vsp [filename]`, `Ctrl-w v`). Describe navigation between splits (`Ctrl-w h/j/k/l` or `Ctrl-w <ArrowKey>`). Explain closing splits (`:close` or `:q`, `Ctrl-w c`). Explain resizing splits (`Ctrl-w + - < > =`)."

### Using Tabs
"Explain commands for opening files in new tabs (`:tabnew [filename]`, `:tabe [filename]`). Describe navigation between tabs (`gt` - next tab, `gT` - previous tab, `[N]gt` - go to tab N). Explain closing tabs (`:tabclose` or `:tabc`)."

*   **Section Summary**: "Generate a concise summary paragraph covering the key topics of Intermediate Vim: advanced navigation (counts, search, jumps), powerful editing (`:s`, `.`, registers), marks, basic `.vimrc` configuration (`:set`), and managing multiple files with splits and tabs."
*   **Glossary**: "Generate definitions for the following Vim terms introduced in this section: register, mark, jumplist, `.vimrc`, motion, operator, count, Ex command, split, tab."
*   **Self-Assessment Quiz**: "Generate a short multiple-choice quiz prompt testing understanding of: 1) How to repeat the last change. 2) The command for global search/replace. 3) The difference between `vsplit` and `split`. 4) How to navigate between tabs. 5) The purpose of registers."
*   **Reflective Prompt**: "Generate a reflective question asking the learner how using counts and the dot command might change their editing workflow compared to traditional editors."

---
* **Transition**: "Generate a brief transition statement highlighting that the next section delves into more advanced Vim features, including customization through scripting, plugin management, and integrating Vim with external tools."
---

# III. Advanced Vim: Customization and Integration

*   **Section Objective**: "Generate a learning objective statement focused on achieving advanced Vim mastery through Vimscript basics, plugin management, complex text objects, macros, folding, and integration with external tools and workflows."

## Introduction to Vimscript
"Provide a basic introduction to Vim's scripting language, Vimscript, enabling users to create custom functions, mappings, and automation."

### Basic Syntax and Variables
"Explain fundamental Vimscript syntax, including comments (`"`), variable assignment (`let g:myvar = value`), variable scopes (`g:`, `b:`, `w:`, `t:`, `s:`, `l:`), basic data types (String, Number, List, Dictionary), and conditional statements (`if/else/endif`)."
*   **Example**: "Provide a simple Vimscript example for the `.vimrc` file that sets a global variable and uses it in a simple echo command: `let g:greeting = 'Hello' | echo g:greeting . ' Vim!'`"

### Custom Mappings
"Explain how to create custom key mappings in different modes using commands like `map`, `nmap` (Normal), `imap` (Insert), `vmap` (Visual), `noremap` (non-recursive mapping). Explain the use of `<leader>` for custom mapping prefixes. Emphasize using `noremap` variants to avoid recursive mapping issues."
*   **Activity**: "Generate a prompt guiding the user to create a simple non-recursive Normal mode mapping in their `.vimrc`, for example, mapping `<leader>w` to `:w<CR>` (save file)."

### Simple Functions
"Introduce how to define basic custom functions in Vimscript using `function FunctionName(...) ... endfunction`. Show how to call functions using `:call FunctionName()`. Provide a simple function example, e.g., a function to trim trailing whitespace."

## Plugin Management
"Explain the role of plugins in extending Vim's functionality and introduce common methods for managing them."

### Understanding Vim Packages (Native)
"Explain Vim's built-in package management system (available since Vim 8). Describe the structure of the `~/.vim/pack/` directory and how to install plugins manually by placing them in `pack/*/start/` (loaded automatically) or `pack/*/opt/` (loaded on demand using `:packadd`)."

### Using Plugin Managers
"Introduce popular Vim plugin managers like `vim-plug`, `Vundle`, or `Pathogen`. Explain their benefits (easier installation, updates, removal). Provide a brief example configuration for one manager (e.g., `vim-plug`) showing how to list plugins in `.vimrc` and use commands like `:PlugInstall`, `:PlugUpdate`."
*   **Activity**: "Generate a prompt guiding the user to choose a plugin manager (or use native packages), install it, and add/install a popular utility plugin like `nerdtree` or `vim-surround`."

## Advanced Text Objects and Motions
"Explain Vim's powerful concept of text objects and introduce more advanced motions for precise text manipulation."

### Understanding Text Objects
"Define text objects as structured blocks of text (words, sentences, paragraphs, blocks). Explain the syntax using operators (`d`, `c`, `y`) combined with `i` (inner) or `a` (around) and an object specifier (`w`, `s`, `p`, `b` or `()`, `B` or `{}`)."
*   **Examples**: "Provide prompts demonstrating operations on text objects: 'Delete the text *inside* the current parentheses (`dib`)', 'Change the text *around* the current paragraph (`cap`)', 'Yank the text *inside* the double quotes (`yi\"`)'."

### Advanced Motions
"Introduce lesser-known but useful motions like `f{char}` (find char forward), `F{char}` (find char backward), `t{char}` (to char forward), `T{char}` (to char backward), `;` (repeat last f/t/F/T), `,` (repeat last f/t/F/T backward), `%` (jump to matching bracket/paren/brace)."

## Macros: Recording and Replaying Actions
"Explain how to record sequences of commands into registers (macros) and replay them for automating repetitive tasks."

### Recording Macros
"Explain the process of recording a macro: `q{register}` to start recording into a register (e.g., `qa`), perform the sequence of actions, and `q` again to stop recording."

### Playing Macros
"Explain how to play back a recorded macro: `@{register}` (e.g., `@a`). Explain how to repeat the last played macro: `@@`. Explain how to apply a macro multiple times using a count: `[N]@{register}`."
*   **Activity**: "Generate a prompt for a practical macro task: 'Record a macro that goes to the start of the line, inserts "// ", and moves down one line. Then apply this macro to the next 5 lines.'"

## Code Folding
"Explain how to use Vim's code folding feature to hide and show blocks of text, improving navigation in large files."

### Folding Methods
"Describe different folding methods (`:set foldmethod=...`): `manual`, `indent`, `syntax`, `marker`. Explain the basic commands for manipulating folds: `za` (toggle fold under cursor), `zA` (toggle fold recursively), `zc` (close fold), `zC` (close all folds recursively), `zo` (open fold), `zO` (open all folds recursively), `zm` (fold more), `zM` (close all folds), `zr` (reduce folding), `zR` (open all folds)."

## Integrating with External Tools
"Explain how to run external shell commands from within Vim and filter text through external programs."

### Running Shell Commands
"Explain the `:!` command to execute shell commands directly (e.g., `:!ls -l`). Explain how to read the output of a command into the buffer (`:r !command`) and write buffer content to a command (`:w !command`)."

### Filtering Text
"Explain how to filter lines through an external command using `!{motion}` in Normal mode (e.g., `!ip sort` to sort the current paragraph) or `:[range]!command` in Command-line mode (e.g., `:%!python -m json.tool` to format the whole file as JSON)."
*   **Cross-reference**: "Add a note prompting the user to recall the use of Command-line mode from Section I for Ex commands."

*   **Section Summary**: "Generate a concise summary paragraph covering the advanced Vim topics: Vimscript basics (variables, mappings, functions), plugin management (native, managers), text objects, macros, code folding, and shell integration (`:!`, filtering)."
*   **Glossary**: "Generate definitions for the following Vim terms: Vimscript, mapping, leader key, plugin, text object, macro, folding, filter."
*   **Reflective Prompt**: "Generate a reflective question asking the learner to identify one specific repetitive task in their current workflow that could be automated using a Vim macro or a simple Vimscript function."
*   **Further Exploration**: "Provide links to Learn Vimscript the Hard Way, documentation for a chosen plugin manager, and Vim's help sections on text objects (`:help text-objects`) and macros (`:help recording`)."

---
* **Transition**: "Generate a brief transition statement emphasizing that the final section focuses on optimizing the Vim experience, advanced troubleshooting, and exploring niche or highly specialized techniques."
---

# IV. Mastering Vim: Optimization and Advanced Techniques

*   **Section Objective**: "Generate a learning objective statement focused on refining the Vim environment and workflow through performance optimization, advanced configuration, debugging techniques, complex integrations, and exploring expert-level features."

## Performance Optimization
"Explain techniques to analyze and improve Vim's startup time and runtime performance, particularly relevant with extensive configurations and plugins."

### Profiling Startup Time
"Explain how to profile Vim's startup sequence using `vim --startuptime vim_startup.log`. Guide the user on analyzing the log file to identify slow plugins or configuration steps."

### Optimizing `.vimrc`
"Discuss strategies for optimizing the `.vimrc` file, such as autoloading functions (`autoload/` directory), using `vim-plug`'s `on` or `for` options (or equivalent) for lazy-loading plugins, and avoiding computationally expensive operations during startup."

### Benchmarking
"Introduce simple benchmarking techniques within Vimscript (e.g., using `reltime()`) to measure the performance of specific functions or mappings."

## Advanced Configuration Techniques
"Explore more sophisticated configuration options beyond basic `:set` commands."

### Autocommands (`autocmd`)
"Explain Vim's event-driven mechanism using `autocmd`. Show how to trigger actions based on events like opening files (`BufRead`, `BufNewFile`), saving files (`BufWritePre`), changing filetypes (`FileType`), or entering/leaving Vim (`VimEnter`, `VimLeave`). Use `augroup` to organize autocommands."
*   **Example**: "Provide a prompt to create an autocommand that automatically sets `shiftwidth=2` and `expandtab` for all JavaScript files (`FileType javascript`)."

### Filetype Plugins
"Explain how to create filetype-specific configurations by placing Vimscript files in `~/.vim/ftplugin/{filetype}.vim` (e.g., `python.vim`). Differentiate this from general `autocmd FileType` settings."

### Customizing the Status Line
"Introduce methods for customizing Vim's status line using `:set statusline`. Show simple examples and mention plugins like `lightline.vim` or `vim-airline` for advanced customization."

## Advanced Error Handling and Debugging
"Explain how to debug Vimscript and troubleshoot issues with configuration or plugins."

### Debugging Vimscript
"Explain how to use Vim's built-in debugging capabilities: setting breakpoints (`:breakadd`), stepping through code (`:debug`, `cont`, `step`, `next`, `finish`), inspecting variables (`:echo myvar`), and using verbose logging (`:set verbose=N`). Mention the `decho` command (debug echo) available in newer Vim/Neovim versions."

### Troubleshooting Plugins
"Provide strategies for identifying problematic plugins, such as disabling plugins one by one (or using binary search by commenting them out in `.vimrc`), checking plugin documentation for known issues, and searching online issue trackers."
*   **Key Point**: "Generate a callout emphasizing the importance of reading plugin documentation and checking for updates when encountering issues."

## Complex Integrations and Workflows
"Discuss integrating Vim more deeply into development workflows."

### Version Control Integration
"Introduce plugins like `vim-fugitive` for seamless Git integration directly within Vim (staging, committing, blaming, diffing, etc.)."

### Language Server Protocol (LSP)
"Explain the concept of LSP for enabling features like autocompletion, go-to-definition, linting, and formatting. Mention common Vim LSP client plugins (e.g., `coc.nvim`, `vim-lsp`, or native LSP in Neovim) and how to configure them for specific languages."
*   **Activity**: "Generate a prompt guiding the user to set up an LSP client and configure it for a language they frequently use, enabling features like autocompletion."

### Using Vim as `$EDITOR`/`$VISUAL`
"Explain how to configure the system's environment variables (`EDITOR`, `VISUAL`) so that other command-line tools (like `git commit`) use Vim for editing."

## Improving Techniques and Advanced Features
"Explore less common but powerful Vim features for specific tasks."

### The Quickfix List
"Explain the Quickfix list (`:copen`, `:cclose`, `:cnext`, `:cprev`) for navigating errors, search results (`:vimgrep`), or locations from external tools (like build errors). Differentiate it from the location list (`:lopen`, etc.)."

### Sessions
"Explain Vim sessions (`:mksession [filename]`, `:source [filename]`) for saving and restoring the state of Vim, including open files, window layout, mappings, and variables."

### Diffing Files
"Explain how to use Vim's diff mode (`vim -d file1 file2` or `:diffsplit file2`). Describe commands for navigating changes (`]c`, `[c`) and applying changes (`dp` - diffput, `do` - diffobtain)."

*   **Section Summary**: "Generate a concise summary paragraph covering Vim mastery topics: performance profiling and optimization, advanced configuration (`autocmd`, `ftplugin`), Vimscript debugging, complex integrations (Git, LSP), and advanced features like the Quickfix list, sessions, and diff mode."
*   **Glossary**: "Generate definitions for the following Vim terms: profiling, lazy-loading, autocommand, `ftplugin`, status line, LSP (Language Server Protocol), Quickfix list, session, diff mode."
*   **Self-Assessment Quiz**: "Generate a short quiz prompt covering: 1) The command to profile Vim startup. 2) The purpose of `autocmd`. 3) A common plugin for Git integration. 4) The difference between Quickfix and Location lists. 5) How to start Vim in diff mode."
*   **Reflective Prompt**: "Generate a final reflective question asking the learner to identify the top three Vim techniques or features they've learned that they believe will have the most significant impact on their editing efficiency and workflow, and why."
*   **Further Exploration**: "Provide links to Vim's help on profiling (`:help startuptime`), autocommands (`:help autocmd`), debugging (`:help debug`), LSP resources (e.g., `lspconfig` for Neovim, `coc.nvim` docs), and the `vim-fugitive` repository."
*   **Cross-reference**: "Add a note referring back to Section II's `.vimrc` discussion when covering advanced configuration, and Section I's Command-line mode when discussing Quickfix commands."
