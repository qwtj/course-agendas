# I. Introduction to Vim and Basic Concepts

*   **Learning Objective:** Understand Vim's philosophy, modes, and basic commands for file navigation and editing.

## Understanding Vim's Philosophy and Modes
"<prompt>Explain the core philosophy behind Vim, focusing on its modal nature (Normal, Insert, Visual, Command-line), keyboard-centric design, and efficiency goals for text editing compared to non-modal editors.</prompt>"

## Basic Navigation and File Operations
"<prompt>Describe the essential Vim commands for opening files (`vim filename`), saving files (`:w`), quitting (`:q`, `:q!`, `:wq`), and navigating within a file using `h`, `j`, `k`, `l` keys.</prompt>"

### Moving Within a File
"<prompt>Detail fundamental movement commands in Vim's Normal mode beyond basic `h`, `j`, `k`, `l`. Include word movements (`w`, `b`, `e`), line beginnings/ends (`0`, `^`, `$`), and file beginnings/ends (`gg`, `G`).</prompt>"

*   **Example Commands:**
    "<prompt>Provide examples of using `w` to move forward by a word, `b` to move backward by a word, `gg` to go to the start of the file, and `G` to go to the end of the file.</prompt>"

## Entering and Exiting Insert Mode
"<prompt>Explain the primary commands for entering Insert mode from Normal mode (`i`, `a`, `o`, `O`) and how to return to Normal mode (using the `Esc` key).</prompt>"

### Simple Text Insertion
"<prompt>Illustrate how to insert text before the cursor (`i`), after the cursor (`a`), on a new line below (`o`), and on a new line above (`O`).</prompt>"

*   **Interactive Quiz:**
    "<prompt>Create a multiple-choice quiz question: Which Vim command is used to save the current file and exit the editor?</prompt>"

*   **Glossary:**
    *   **Modal Editor:** "<prompt>Define 'Modal Editor' in the context of Vim, contrasting it with modeless editors.</prompt>"
    *   **Normal Mode:** "<prompt>Define Vim's 'Normal Mode' and its primary purpose.</prompt>"
    *   **Insert Mode:** "<prompt>Define Vim's 'Insert Mode' and how it differs from Normal Mode.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner to reflect: How does Vim's modal editing feel compared to other text editors you have used? What potential benefits or challenges do you foresee?</prompt>"

*   **Summary:** This section introduced Vim's core concepts, including its modal nature and basic commands for navigation, file handling, and text insertion.

*   **Transition:** Now that you understand the basics, let's move on to more powerful editing techniques.

# II. Intermediate Editing Techniques

*   **Learning Objective:** Master commands for efficient text manipulation, including deletion, copying, pasting, and searching.

## Deleting Text
"<prompt>Explain Vim commands for deleting characters (`x`, `X`), words (`dw`), lines (`dd`), and text based on motion (e.g., `d$`, `d^`, `dG`).</prompt>"

### Using Counts with Deletion
"<prompt>Describe how to combine numbers (counts) with deletion commands in Vim, for example, `5dd` to delete 5 lines or `d3w` to delete 3 words.</prompt>"

## Copying (Yanking) and Pasting
"<prompt>Detail the Vim commands for copying (yanking) text (`y`, `yw`, `yy`) and pasting (`p`, `P`). Explain how yanking works with motions (e.g., `y$`).</prompt>"

### Registers
"<prompt>Introduce the concept of Vim registers for storing yanked or deleted text. Explain the default register and how to use named registers (e.g., `"ayy` to yank into register 'a', `"ap` to paste from register 'a').</prompt>"
*   **Cross-reference:** See Section VI for advanced register usage.

## Searching and Replacing
"<prompt>Explain how to perform searches in Vim using `/` (forward search) and `?` (backward search), navigate between matches (`n`, `N`), and perform basic substitutions using the `:s` command (e.g., `:s/old/new/g`).</prompt>"

### Search Options
"<prompt>Describe common search options like case sensitivity (`:set ic`, `:set noic`) and highlighting (`:set hlsearch`, `:set nohlsearch`).</prompt>"

## Visual Mode
"<prompt>Introduce Vim's Visual modes (character-wise `v`, line-wise `V`, block-wise `Ctrl-v`) for selecting text and applying commands (like `d`, `y`, `c`) to the selection.</prompt>"

### Operating on Visual Selections
"<prompt>Provide examples of selecting text using Visual mode and then deleting (`d`), yanking (`y`), or changing (`c`) the selected block.</prompt>"

*   **Key Point Highlight:** **Vim's power comes from combining operators (`d`, `y`, `c`, etc.) with motions (`w`, `$`, `G`, `/pattern`, etc.) and counts.**

*   **Interactive Quiz:**
    "<prompt>Create a fill-in-the-blank quiz question: The command to yank the current line into Vim's default register is \_\_\_.</prompt>"

*   **Glossary:**
    *   **Yank:** "<prompt>Define 'Yank' as Vim's term for copying text.</prompt>"
    *   **Register:** "<prompt>Define 'Register' in Vim as a temporary storage location for text.</prompt>"
    *   **Substitution:** "<prompt>Define the basic 'Substitution' command `:s` in Vim.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner to reflect: Practice combining operators, counts, and motions. Which combinations do you find most useful for your common editing tasks?</prompt>"

*   **Summary:** This section covered essential editing commands for deleting, yanking, pasting, searching, replacing, and visually selecting text, enabling more efficient modifications.

*   **Transition:** With editing commands covered, we'll now explore how to customize Vim to better suit your workflow.

# III. Configuring Vim (`.vimrc`)

*   **Learning Objective:** Learn how to customize Vim's behavior and appearance using the `.vimrc` configuration file.

## Introduction to `.vimrc`
"<prompt>Explain the purpose and location of the Vim configuration file (`.vimrc` on Unix-like systems, `_vimrc` on Windows) and how Vim reads it on startup.</prompt>"

## Basic Settings
"<prompt>Describe common Vim settings that can be configured in `.vimrc` using the `:set` command. Include examples like setting line numbers (`set number`), syntax highlighting (`syntax on`), indentation (`set autoindent`, `set smartindent`, `set tabstop=4`, `set shiftwidth=4`, `set expandtab`), and search options (`set incsearch`, `set hlsearch`).</prompt>"

### Example `.vimrc` Snippet
"<prompt>Provide a basic example snippet for a `.vimrc` file showing how to set multiple options like line numbers, syntax highlighting, and indentation settings.</prompt>"

```vim
" Example .vimrc settings
syntax on
set number
set relativenumber " Show relative line numbers
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab  " Use spaces instead of tabs
set incsearch
set hlsearch
set ignorecase " Case-insensitive searching
set smartcase  " Case-sensitive if search pattern contains uppercase
```


## Key Mapping
"<prompt>Explain how to create custom keyboard shortcuts (mappings) in Vim using commands like `map`, `nmap` (Normal mode), `imap` (Insert mode), and `vmap` (Visual mode) in the `.vimrc` file.</prompt>"

### Simple Mapping Example
"<prompt>Provide an example of mapping a function key (e.g., F5) to save the current file in Normal mode using `nmap <F5> :w<CR>`.</prompt>"
*   **Note:** `<CR>` simulates pressing the Enter key.

### Leader Key
"<prompt>Introduce the concept of the 'leader' key (often mapped to `\` or `,`) for creating custom command namespaces. Show how to define the leader key (`let mapleader = ","`) and use it in mappings (`nmap <leader>w :w<CR>`).</prompt>"

*   **Interactive Quiz:**
    "<prompt>Create a true/false quiz question: Settings placed in the `.vimrc` file are temporary and only last for the current Vim session.</prompt>"

*   **Glossary:**
    *   **`.vimrc`:** "<prompt>Define `.vimrc` as the primary user configuration file for Vim.</prompt>"
    *   **`:set`:** "<prompt>Define the `:set` command in Vim used to configure options.</prompt>"
    *   **Mapping:** "<prompt>Define 'Mapping' in Vim as the process of assigning a custom command sequence to a key or key combination.</prompt>"
    *   **Leader Key:** "<prompt>Define the 'Leader Key' concept in Vim customization.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner: What are 2-3 settings or mappings you would immediately add to your `.vimrc` to improve your editing experience based on your workflow?</prompt>"

*   **Further Exploration Link:**
    "<prompt>Provide a link to a comprehensive Vim documentation page or tutorial about `.vimrc` configuration options.</prompt>"

*   **Summary:** This section demonstrated how to personalize Vim using the `.vimrc` file, covering basic settings and custom key mappings.

*   **Transition:** Customization is powerful, but Vim's extensibility truly shines with plugins. Let's explore how to manage them.

# IV. Vim Plugins and Extensions

*   **Learning Objective:** Understand how to extend Vim's functionality using plugins and manage them effectively with a plugin manager.

## Introduction to Vim Plugins
"<prompt>Explain what Vim plugins are, their purpose in extending Vim's capabilities, and the different types of plugins available (e.g., syntax highlighting, file explorers, Git integration, autocompletion).</prompt>"

## Plugin Managers
"<prompt>Describe the need for Vim plugin managers (like vim-plug, Vundle, Pathogen, Dein.vim) to simplify installing, updating, and removing plugins. Focus on one popular manager, like vim-plug.</prompt>"

### Installing and Using vim-plug
"<prompt>Provide step-by-step instructions on how to install the vim-plug plugin manager and configure it within the `.vimrc` file. Show the basic syntax for adding plugins (e.g., `Plug 'preservim/nerdtree'`) and the commands to install/update plugins (`:PlugInstall`, `:PlugUpdate`).</prompt>"


```vim
" Example .vimrc section for vim-plug
call plug#begin('~/.vim/plugged') " Directory where plugins will be installed

Plug 'preservim/nerdtree'   " File explorer
Plug 'tpope/vim-fugitive'  " Git wrapper
Plug 'vim-airline/vim-airline' " Status line enhancement
" Add other plugins here...

call plug#end()
```


## Essential Plugin Categories
"<prompt>Highlight key categories of Vim plugins and provide popular examples for each.</prompt>"

### File Navigation
"<prompt>Describe plugins like NERDTree or vim-dirvish that provide a file system explorer within Vim.</prompt>"
*   **Example Usage:** "<prompt>Show the basic command to toggle NERDTree (e.g., `:NERDTreeToggle`).</prompt>"

### Code Completion and Linting
"<prompt>Introduce plugins for autocompletion (e.g., YouCompleteMe, coc.nvim) and linting/syntax checking (e.g., ALE, Syntastic, coc.nvim).</prompt>"
*   **Cross-reference:** Configuration for completion/linting often involves external tools.

### Version Control Integration
"<prompt>Explain plugins like vim-fugitive that allow interaction with Git repositories directly from Vim.</prompt>"
*   **Example Usage:** "<prompt>Show a common vim-fugitive command like `:Gstatus` to view Git status.</prompt>"

### Status Line Enhancements
"<prompt>Describe plugins like vim-airline or lightline.vim that improve the appearance and information displayed in Vim's status line.</prompt>"

*   **Interactive Quiz:**
    "<prompt>Create a multiple-choice quiz question: Which command is typically used with the vim-plug manager to install plugins listed in the `.vimrc`?</prompt>"

*   **Glossary:**
    *   **Plugin:** "<prompt>Define 'Plugin' in the context of Vim as an external script or set of scripts that adds functionality.</prompt>"
    *   **Plugin Manager:** "<prompt>Define 'Plugin Manager' for Vim and its role in handling plugins.</prompt>"
    *   **vim-plug:** "<prompt>Define 'vim-plug' as a specific example of a Vim plugin manager.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner: Explore vimawesome.com or similar resources. Identify one plugin that could significantly enhance your specific programming or writing workflow and explain why.</prompt>"

*   **Further Exploration Link:**
    "<prompt>Provide a link to the GitHub repository or documentation for vim-plug.</prompt>"

*   **Summary:** This section introduced Vim plugins as a way to extend functionality and demonstrated how to use a plugin manager like vim-plug for installation and management.

*   **Transition:** Having covered core editing, configuration, and plugins, we will now delve into more advanced Vim features.

# V. Advanced Vim Features and Techniques

*   **Learning Objective:** Explore powerful Vim features like macros, marks, advanced text objects, and window/tab management for complex editing tasks.

## Macros
"<prompt>Explain Vim macros for recording and replaying sequences of commands. Detail how to start recording (`q` followed by a register key, e.g., `qa`), stop recording (`q`), and replay a macro (`@` followed by the register key, e.g., `@a`). Also mention replaying the last macro (`@@`).</prompt>"

### Practical Macro Example
"<prompt>Provide a practical scenario for using a Vim macro, such as formatting a list of items by adding quotes and commas, and show the steps to record and replay the macro.</prompt>"

## Marks
"<prompt>Describe Vim marks for setting bookmarks within files. Explain lowercase marks (`m` followed by a letter, e.g., `ma`) for buffer-local marks and uppercase marks (`m` followed by a capital letter, e.g., `mA`) for global marks (across files). Show how to jump to marks (`'` or `` ` `` followed by the mark letter).</prompt>"

### Using Marks for Navigation
"<prompt>Illustrate how marks can be used to quickly jump between specific locations in a large file or even between different files.</prompt>"

## Advanced Text Objects
"<prompt>Expand on Vim's text objects beyond simple words (`iw`, `aw`). Introduce text objects for sentences (`is`, `as`), paragraphs (`ip`, `ap`), quotes (`i'`, `a'`, `i"`, `a"`), parentheses (`i)`, `a)`), braces (`i{`, `a{`), and tags (`it`, `at`). Explain how these are used with operators (e.g., `dap` to delete around a paragraph, `ci"` to change inside double quotes).</prompt>"
*   **Key Point Highlight:** **Text objects (`iw`, `ap`, `i)`, etc.) combined with operators (`d`, `c`, `y`, `v`) form the core of Vim's efficient, precise editing.**

## Window and Tab Management
"<prompt>Explain Vim's features for managing multiple files using windows (splits) and tabs. Cover commands for splitting windows (`:sp`, `:vsp`), navigating between windows (`Ctrl-w` followed by `h/j/k/l` or arrow keys), closing windows (`:q` or `:close`), opening files in new tabs (`:tabnew [filename]`), navigating tabs (`gt`, `gT`), and closing tabs (`:tabclose`).</prompt>"

### Resizing Windows
"<prompt>Show commands for resizing split windows in Vim, such as `Ctrl-w +`, `Ctrl-w -`, `Ctrl-w >`, `Ctrl-w <`.</prompt>"

*   **Interactive Quiz:**
    "<prompt>Create a matching quiz question: Match the Vim command (`qa`, `'a`, `dap`, `:sp`) with its action (split window, delete paragraph, jump to mark 'a', start recording macro 'a').</prompt>"

*   **Glossary:**
    *   **Macro:** "<prompt>Define 'Macro' in Vim as a recorded sequence of keystrokes.</prompt>"
    *   **Mark:** "<prompt>Define 'Mark' in Vim as a bookmark for a specific location.</prompt>"
    *   **Text Object:** "<prompt>Define 'Text Object' in Vim (e.g., `iw`, `ap`) as a way to operate on structured blocks of text.</prompt>"
    *   **Window (Split):** "<prompt>Define 'Window' or 'Split' in Vim as a way to view multiple buffers simultaneously.</prompt>"
    *   **Tab:** "<prompt>Define 'Tab' in Vim as a way to manage multiple editing sessions or layouts.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner: Think about a repetitive editing task you perform regularly. How could you potentially automate it using a Vim macro?</prompt>"

*   **Summary:** This section explored advanced Vim capabilities including macros for automation, marks for navigation, powerful text objects for precise editing, and window/tab management for handling multiple files.

*   **Transition:** We have covered a wide range of Vim features. The final section focuses on optimizing your Vim usage and integrating it with other tools.

# VI. Optimization, Integration, and Advanced Usage

*   **Learning Objective:** Learn techniques to optimize Vim performance, integrate it with external tools, handle complex scenarios, and continue improving Vim skills.

## Performance Optimization
"<prompt>Discuss potential performance bottlenecks in Vim, often related to complex configurations or slow plugins. Introduce techniques for profiling Vim startup time (`vim --startuptime startup.log`) and identifying slow plugins or settings.</prompt>"

### Lazy Loading Plugins
"<prompt>Explain the concept of lazy loading plugins (supported by managers like vim-plug) to improve startup time by only loading plugins when they are actually needed, based on file types or specific commands.</prompt>"
*   **Example (vim-plug):**
    "<prompt>Show the vim-plug syntax for lazy-loading a plugin, for example, `Plug 'scrooloose/nerdcommenter', { 'on': 'NERDCommenterToggle' }` or `Plug 'pangloss/vim-javascript', { 'for': 'javascript' }`.</prompt>"

## Complex Integrations
"<prompt>Describe how Vim can be integrated with external command-line tools and build systems.</prompt>"

### Running Shell Commands
"<prompt>Explain how to execute external shell commands from within Vim using `:!command` (e.g., `:!ls -l`), read command output into the buffer (`:r !command`), and filter text through external commands (`!` operator with motion or visual selection, e.g., `:%!sort`).</prompt>"

### Build System Integration
"<prompt>Introduce Vim's `:make` command and the quickfix list for integrating with build tools (like Make, Gradle, etc.) specified by the `makeprg` option. Explain how to navigate errors/warnings in the quickfix list (`:copen`, `:cclose`, `:cn`, `:cp`).</prompt>"
*   **Cross-reference:** Plugins like ALE or Syntastic often provide more sophisticated build/lint integration.

## Improving Techniques and Continuous Learning
"<prompt>Emphasize the importance of continuous practice and exploration for mastering Vim. Suggest resources like Vim's built-in help (`:help`), online communities (e.g., r/vim), tutorials (e.g., vimtutor), and screencasts.</prompt>"

### Using `:help` Effectively
"<prompt>Provide tips on using Vim's extensive built-in help system, such as `:help :command` for Ex commands, `:help 'option'` for options, and `:help ctrl-x` for Normal mode commands.</prompt>"
*   **Key Point Highlight:** **Vim's `:help` is comprehensive and often the fastest way to find answers.**

## Advanced Error Handling and Debugging (Vim Usage)
"<prompt>Discuss troubleshooting common Vim issues, such as conflicting mappings, plugin errors, or unexpected behavior. Explain how to use `:verbose set option?` to see where an option was last set, and `:verbose map <keys>` to see where a mapping originates.</prompt>"

### Debugging Vimscript
"<prompt>Briefly introduce Vimscript debugging concepts for advanced users or plugin developers, mentioning commands like `:debug`, breakpoints (`:breakadd`), and stepping (`:cont`, `:step`, `:next`).</prompt>"

*   **Interactive Quiz:**
    "<prompt>Create a short answer quiz question: What Vim command would you use to see where the 'tabstop' option was last set in your configuration?</prompt>"

*   **Glossary:**
    *   **Quickfix List:** "<prompt>Define Vim's 'Quickfix List' as a feature to display and navigate locations like compiler errors or search results.</prompt>"
    *   **`:make`:** "<prompt>Define the `:make` command in Vim and its purpose in build integration.</prompt>"
    *   **Vimscript:** "<prompt>Define 'Vimscript' (or Vim script) as the scripting language used for configuring and extending Vim.</prompt>"

*   **Reflective Prompt:** "<prompt>Ask the learner: After completing this learning agenda, what is the single most impactful Vim technique or feature you've learned, and how do you plan to incorporate it into your daily workflow?</prompt>"

*   **Further Exploration Link:**
    "<prompt>Provide a link to a curated list of advanced Vim tips or a popular Vim resource like Vimcasts.</prompt>"

*   **Summary:** This final section covered optimizing Vim, integrating it with the command line and build systems, strategies for continuous learning, and approaches for troubleshooting and advanced debugging. Mastering Vim is an ongoing journey of refinement and discovery.
