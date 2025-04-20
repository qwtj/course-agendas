# Vim #Editor #Modal #CLI #TextManipulation
A highly configurable, ubiquitous text editor built to enable efficient text editing. It's an improved version of the vi editor distributed with most UNIX systems.

## Introduction & Philosophy #Basics #History #CoreIdeas
Understanding what Vim is, its origins, and the core principles behind its design.

### What is Vim? #Definition #Overview
Vim (Vi IMproved) is a modal text editor known for its efficiency and extensibility.

### History of Vi and Vim #Origins #Evolution #BramMoolenaar
From Bill Joy's vi editor to Bram Moolenaar's Vim, including its development goals.

### The Vim Philosophy #Efficiency #ModalEditing #KeyboardCentric
Emphasis on keyboard shortcuts, minimizing hand movement, and different modes for different tasks.

### Vim vs. Other Editors #Comparison #IDE #Emacs #VSCode
Understanding Vim's place in the landscape of text editors and IDEs.

## Getting Started #Installation #FirstSteps #Tutorial
Initial setup and basic interactions with the Vim editor.

### Installation #Setup #Platforms #Linux #macOS #Windows
How to install Vim on different operating systems.

### Launching Vim #CLI #Terminal #GUI
Starting Vim from the command line (`vim`, `gvim`, `nvim`).

### The `vimtutor` Command #Learning #Tutorial #HandsOn
Using the built-in interactive tutorial to learn the basics.

### Basic File Operations #Opening #Saving #Closing
Essential commands: `:e <file>`, `:w`, `:q`, `:wq`, `:q!`.

## Core Concepts: Modes #ModalEditing #Workflow #States
Understanding Vim's defining feature: its different operating modes.

### Normal Mode #DefaultMode #Navigation #Commands
The default mode for navigation and executing commands. This is where you spend most of your time.

### Insert Mode #TextEntry #Editing
Mode for typing text like in a conventional editor. Entered via `i`, `a`, `o`, `I`, `A`, `O`. Exited via `<Esc>`.

### Visual Mode #Selection #TextObjects #Highlighting
Mode for selecting blocks of text (`v`, `V`, `Ctrl-v`). Commands operate on the selection.

### Command-Line Mode #ExCommands #Configuration #Saving
Mode for entering Ex commands (starting with `:`), search patterns (`/`, `?`), and filter commands (`!`). Activated by `:`, `/`, `?`.

### Replace Mode #Overwriting #CharacterReplace
Mode entered via `R` to overwrite existing text character by character.

### Select Mode #Selection #Compatibility
Similar to Visual mode but behaves more like selection in conventional editors (less commonly used).

### Ex Mode #BatchProcessing #Scripting
Entered via `Q`, used for executing multiple Ex commands sequentially (rarely used interactively).

## Navigation & Movement #Efficiency #Keystrokes #Motion
Moving the cursor efficiently without using the mouse.

### Basic Movement #hjkl #ArrowKeys
Fundamental character-by-character and line-by-line movement.

### Word Movement #Word #WORD #Navigation
Moving by words (`w`, `b`, `e`) and WORDs (`W`, `B`, `E`).

### Line Movement #LineStart #LineEnd #LineNumber
Moving to the start (`0`, `^`), end (`$`), or specific lines (`G`, `:<N>`, `gg`).

### Screen Movement #Scrolling #ScreenView
Moving within the visible screen area (`H`, `M`, `L`, `Ctrl-u`, `Ctrl-d`, `Ctrl-f`, `Ctrl-b`, `zz`, `zt`, `zb`).

### Paragraph and Section Movement #Paragraphs #Sections #Blocks
Moving between paragraphs (`{`, `}`) and code blocks (depends on filetype/plugins).

### Jump List & Change List #NavigationHistory #UndoHistory
Moving back and forth between previous cursor positions (`Ctrl-o`, `Ctrl-i`) and edit locations (`g;`, `g,`).

### Marks #Bookmarks #FilePositions #GlobalMarks
Setting named (`m<a-zA-Z>`) and unnamed marks (`''`, `` ` ``) to quickly jump to specific locations (`'<mark>`, `` `<mark> ``).

## Basic Editing #Manipulation #Insert #Delete #Change
Fundamental operations for modifying text content.

### Inserting Text #InsertMode #Append #NewLine
Using `i`, `a`, `o`, `I`, `A`, `O` to enter Insert mode at different positions.

### Deleting Text #Deletion #Cut #Operators
Using the `d` operator with motions (e.g., `dw`, `dd`, `d$`) or in Visual mode.

### Changing Text #Modification #Replace #Operators
Using the `c` operator (delete then insert) with motions (e.g., `cw`, `cc`, `c$`).

### Yanking (Copying) and Pasting #Clipboard #Registers #CopyPaste
Using the `y` operator (e.g., `yw`, `yy`, `y$`) and `p`/`P` for pasting. Understanding registers (`"`).

### Undo and Redo #History #Revert #Mistakes
Using `u` to undo changes and `Ctrl-r` to redo.

### Repeating Actions #Efficiency #DotCommand
Using the `.` command to repeat the last change.

## Advanced Editing Techniques #PowerFeatures #Productivity #Workflow
More sophisticated methods for text manipulation and workflow enhancement.

### Visual Mode In-Depth #BlockSelection #Columnar #Operators
Using `v` (character-wise), `V` (line-wise), and `Ctrl-v` (block-wise) selections effectively with operators.

### Text Objects #StructuredEditing #Code #Syntax
Operating on structured units like words (`iw`, `aw`), sentences (`is`, `as`), paragraphs (`ip`, `ap`), blocks (`i{`, `a{`, `i(`, `a(` etc.).

### Searching and Replacing #Find #Substitute #Regex
Using `/` and `?` for searching, `n`/`N` to navigate matches, and the `:substitute` (`:s`) command with patterns and flags. Regular expressions (`regex`).

### Global Command #BatchEditing #PatternMatching
Using the `:global` (`:g`) command to execute other commands on lines matching a pattern.

### Macros #Automation #RepetitiveTasks #Recording
Recording sequences of commands into registers (`q<reg>`) and replaying them (`@<reg>`, `@@`).

### Registers In-Depth #Clipboard #NamedRegisters #SpecialRegisters
Understanding different types of registers (unnamed `""`, numbered `0-9`, small delete `"-`, named `a-z`, read-only `.`:%, `#`, expression `=`, selection `*`, `+`, black hole `_`).

### Folding #CodeFolding #Outline #Visibility
Hiding sections of text based on indentation, syntax, or markers to get a better overview (`za`, `zO`, `zc`, `zR`, `zM`).

### Spell Checking #Correction #Language #Dictionaries
Using Vim's built-in spell checker (`:set spell`, `]s`, `[s`, `z=`, `zg`, `zw`).

## Buffers, Windows, and Tabs #FileManagement #Workspace #Multitasking
Managing multiple files and views within a single Vim session.

### Buffers #InMemory #Files #HiddenBuffers
Understanding that buffers hold file contents in memory. Listing (`:ls`, `:buffers`), switching (`:b <N>`, `:b <name>`), deleting (`:bd`).

### Windows (Splits) #SplitView #MultipleViews #Layout
Splitting the Vim screen horizontally (`:sp`, `Ctrl-w s`) or vertically (`:vsp`, `Ctrl-w v`) to view multiple buffers or different parts of the same buffer. Navigating (`Ctrl-w h/j/k/l` or `Ctrl-w <arrow>`), resizing, closing (`:q`, `:close`, `Ctrl-w c`).

### Tabs #Workspaces #FileGroups #TabPages
Using tab pages to manage distinct layouts or sets of files (`:tabnew`, `:tabe <file>`, `gt`, `gT`, `:tabn`, `:tabp`).

### Argument List #FileList #BatchProcessing
Working with a list of files passed on the command line or via `:args` (`:args`, `:next`, `:prev`, `:first`, `:last`, `:argdo`).

## Configuration & Customization #Personalization #Settings #vimrc
Tailoring Vim's behavior and appearance to individual preferences.

### The `vimrc` File #ConfigurationFile #Startup #Settings
The primary configuration file (`~/.vimrc` or `~/_vimrc` or `~/.config/nvim/init.vim`). Basic syntax.

### Setting Options #Behavior #Appearance #Tuning
Using the `:set` command to change Vim's behavior (e.g., `number`, `relativenumber`, `wrap`, `tabstop`, `expandtab`, `ignorecase`, `smartcase`). `:help options`.

### Key Mapping #Shortcuts #CustomCommands #Remapping
Creating custom keyboard shortcuts using `:map`, `:nmap`, `:imap`, `:vmap`, etc. Understanding `noremap`. Leader key (`<leader>`).

### Abbreviations #TextExpansion #Snippets
Defining short abbreviations that expand into longer text strings (`:iab`, `:ab`).

### Status Line Customization #Information #Context #Powerline
Configuring the status line to display useful information about the current state (file name, mode, position, git branch, etc.).

### Color Schemes #SyntaxHighlighting #Themes #Appearance
Changing the visual appearance using `:colorscheme` and installing new color schemes.

### Filetype Specific Settings #Syntax #Indentation #Plugins
Applying settings, mappings, and plugins based on the type of file being edited (e.g., Python, Markdown, C++). Autocommands (`autocmd`).

## Extending Vim: Plugins #Extensibility #Features #Community
Adding new features and functionality through plugins.

### What are Plugins? #Scripts #Addons #Functionality
Understanding how plugins enhance Vim's capabilities.

### Plugin Managers #Installation #Management #Vundle #Pathogen #vim-plug #Packer
Tools to easily install, update, and manage Vim plugins (e.g., vim-plug, Vundle, Pathogen, dein.vim, Packer.nvim for Neovim).

### Finding Plugins #VimAwesome #GitHub #Scripts
Resources for discovering useful plugins.

### Common Plugin Categories #Completion #Linting #Git #FuzzyFinding #UI
Examples: Autocompletion (YouCompleteMe, coc.nvim), Linting/Formatting (ALE, Neomake), Git integration (fugitive.vim), File Navigation (NERDTree, CtrlP, fzf.vim), UI Enhancements (airline, lightline).

### Native Package Loading #BuiltIn #Vim8 #Neovim
Using Vim 8+ and Neovim's built-in package loading feature (`packpath`).

## Vim Script (VimL) #Scripting #Automation #CustomFunctions
Writing custom functions and plugins using Vim's built-in scripting language.

### Introduction to Vim Script #LanguageBasics #Variables #Functions
Fundamentals of VimL syntax, data types, variables (global, buffer, window, tab, script), and control structures.

### Writing Custom Functions #UserFunctions #Automation
Defining reusable blocks of Vim script code.

### Autocommands #EventHandling #Automation #Triggers
Executing commands automatically based on events (e.g., `BufRead`, `BufWrite`, `FileType`).

### Creating Simple Plugins #PluginStructure #Distribution
Basic structure of a Vim plugin for personal use or sharing.

### Debugging Vim Script #Troubleshooting #Echo #Verbose
Techniques for finding and fixing errors in Vim scripts.

## Integration with External Tools #Shell #Compiler #Git #Workflow
Using Vim effectively alongside other command-line tools and development workflows.

### Running Shell Commands #Filtering #ExternalCommands #Bang
Executing external commands (`:! <command>`), reading output (`:r !<command>`), filtering text (`!{motion}<command>`).

### Compiler Integration & Quickfix List #Build #Errors #Navigation
Setting `makeprg`, running `:make`, and navigating errors/warnings using the quickfix list (`:cw`, `:cn`, `:cp`, `:cc`). Location list (`:lw`, `ln`, etc.).

### Version Control Integration (Git) #Git #diff #Blame #Fugitive
Using plugins like `vim-fugitive` for seamless Git operations within Vim or using built-in diff capabilities (`vimdiff`, `:diffthis`).

### Using Vim as `$EDITOR` / `$VISUAL` #EnvironmentVariables #DefaultEditor
Configuring the shell to use Vim for editing commit messages, etc.

## The Vim Ecosystem #Derivatives #GUIs #Community
Related projects, graphical interfaces, and the community around Vim.

### Neovim #Fork #Modernization #Lua #LSP
A significant fork of Vim focused on extensibility, usability, background jobs, and Lua scripting. Language Server Protocol (LSP) integration.

### GUI Vim Clients #gVim #MacVim #CrossPlatform
Graphical frontends for Vim (gVim, MacVim) offering menus, toolbars, and better system integration.

### Vim Emulation in Other Editors/IDEs #Plugins #Keybindings #VSCodeVim #IdeaVim
Extensions that bring Vim keybindings and modal editing to other popular environments like VS Code, JetBrains IDEs, Sublime Text, Atom.

### Vim Community #Forums #MailingLists #Reddit #ViStackExchange
Where to find help, share tips, and discuss Vim (e.g., vim.org, r/vim, Vi & Vim Stack Exchange).

## Learning Resources & Advanced Topics #Mastery #FurtherStudy #Reference
Continuing the journey to master Vim.

### `:help` System #Documentation #BuiltIn #Reference
Leveraging Vim's extensive built-in help system (`:help <topic>`, `:helpgrep`).

### Online Tutorials and Guides #Websites #Blogs #Videos
Recommended external resources for learning.

### Books on Vim #Literature #InDepthStudy
Classic and modern books dedicated to Vim mastery.

### Practical Vim Tips & Tricks #EfficiencyHacks #WorkflowOptimization
Specific techniques for improving editing speed and efficiency.

### Contributing to Vim/Neovim #OpenSource #Development #Community
Getting involved in the development of Vim or Neovim.
