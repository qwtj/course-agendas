# I. Introduction and Basic Navigation
*   _Objective:_ Understand Vim's philosophy, modes, and perform basic cursor movement.

## Understanding Vim Philosophy and Modes
"<prompt> Explain the core philosophy behind Vim (modal editing, efficiency) and describe the primary Vim modes: Normal, Insert, Visual, and Command-line."

### Normal Mode
"<prompt> Define Normal mode in Vim and list common commands used for navigation and basic text manipulation without inserting text."

### Insert Mode
"<prompt> Define Insert mode in Vim, explain how to enter it (e.g., `i`, `a`, `o`), and how to exit back to Normal mode (using `Esc`)."

### Visual Mode
"<prompt> Define Visual mode in Vim (character, line, block), explain how to enter each type (`v`, `V`, `Ctrl-v`), and its purpose for selecting text."

### Command-line Mode
"<prompt> Define Command-line mode in Vim, explain how to enter it (using `:`), and list common uses like saving (`:w`), quitting (`:q`), and searching (`/`)."

## Basic Cursor Movement
"<prompt> Detail the fundamental commands for moving the cursor within a file in Vim's Normal mode, covering character, word, line, and screen movements."

### Character Movement
"<prompt> List and explain the Vim commands for moving the cursor character by character (`h`, `j`, `k`, `l`)."

### Word Movement
"<prompt> List and explain the Vim commands for moving the cursor word by word (`w`, `b`, `e`, `ge`). Explain the difference between words and WORDs."

### Line Movement
"<prompt> List and explain the Vim commands for moving to the beginning (`0`, `^`) and end (`$`) of a line, and moving between lines (using line numbers like `:5` or `5G`)."

### Screen Movement
"<prompt> List and explain the Vim commands for moving within the screen, such as half-page scrolls (`Ctrl-u`, `Ctrl-d`), full-page scrolls (`Ctrl-f`, `Ctrl-b`), and moving to the top (`H`), middle (`M`), or bottom (`L`) of the screen."

*   _Summary:_ Vim operates using different modes, primarily Normal for commands and Insert for typing. Basic navigation relies on keys like `h`, `j`, `k`, `l`, `w`, `b`, etc., enabling efficient movement without the mouse.
*   _Glossary:_
    *   _Modal Editing:_ An editing approach where the editor has different modes for different tasks (e.g., inserting text vs. executing commands).
    *   _Normal Mode:_ Vim's default mode for navigation and executing commands.
    *   _Insert Mode:_ Mode for typing text directly into the buffer.
    *   _Visual Mode:_ Mode for selecting text.
    *   _Command-line Mode:_ Mode for entering Ex commands (starting with `:`), search patterns (`/`, `?`), or filter commands (`!`).
*   _Quiz Prompt:_ "<prompt> Create a short multiple-choice quiz testing understanding of Vim modes (Normal, Insert, Visual, Command-line) and basic navigation commands (`h`, `j`, `k`, `l`, `w`, `b`, `0`, `$`)."
*   _Reflective Prompt:_ "<prompt> Ask the learner to reflect on the initial experience of modal editing compared to traditional text editors."

---
_Transition:_ Now that basic navigation is covered, let's focus on manipulating text.
---

# II. Essential Editing Commands
*   _Objective:_ Learn core commands for inserting, deleting, changing, copying, and pasting text.

## Inserting Text
"<prompt> Explain the different ways to enter Insert mode in Vim besides `i`, such as `a` (append after cursor), `A` (append at end of line), `o` (open line below), `O` (open line above), `I` (insert at beginning of line)."

## Deleting Text
"<prompt> Describe the common Vim commands for deleting text in Normal mode, including character (`x`, `X`), word (`dw`), line (`dd`), and deletion combined with motions."

### Deleting with Motions
"<prompt> Explain how the delete command (`d`) acts as an operator that can be combined with motion commands (e.g., `d$`, `d^`, `dG`) to delete specific ranges of text. Provide examples."
*   _Example Prompt:_ "<prompt> Show examples of combining `d` with motions like `w`, `b`, `)`. For instance, explain what `d2w` does."

## Changing Text
"<prompt> Describe the Vim commands for changing text, focusing on the change operator (`c`), and how it combines deletion with entering Insert mode. Explain `cc`, `cw`, `C`."

### Changing with Motions
"<prompt> Explain how the change command (`c`) acts as an operator combined with motions (e.g., `c$`, `c^`, `c3w`). Provide examples."
*   _Example Prompt:_ "<prompt> Demonstrate `ciw` (change inside word) and `ca"` (change around double quotes)."

## Copying and Pasting (Yanking and Putting)
"<prompt> Explain Vim's terminology for copy (`yank`) and paste (`put`). Describe the `y` operator and the `p`/`P` commands."

### Yanking with Motions
"<prompt> Explain how the yank operator (`y`) is combined with motions (e.g., `yw`, `yy`, `y$`) to copy text into Vim's registers. Provide examples."
*   _Example Prompt:_ "<prompt> Show how `yy` yanks the current line and `3yy` yanks three lines."

### Putting Text
"<prompt> Explain the difference between `p` (put after cursor/line) and `P` (put before cursor/line)."

## Undo and Redo
"<prompt> Explain the commands for undoing (`u`) and redoing (`Ctrl-r`) changes in Vim."

*   _Summary:_ Editing involves operators (`d`, `c`, `y`) combined with motions or text objects. Deleting (`d`), changing (`c`), and yanking (`y`) followed by putting (`p`/`P`) are fundamental. Undo (`u`) and redo (`Ctrl-r`) provide safety.
*   _Glossary:_
    *   _Operator:_ A command (like `d`, `c`, `y`) that acts upon a region of text defined by a subsequent motion or text object.
    *   _Motion:_ A command that moves the cursor (like `w`, `j`, `$`).
    *   _Text Object:_ A command that defines a structural block of text (like `iw` for inner word, `a"` for around double quotes).
    *   _Register:_ Vim's equivalent of clipboards used for storing yanked or deleted text.
    *   _Yank:_ Vim's term for copying text.
    *   _Put:_ Vim's term for pasting text.
*   _Quiz Prompt:_ "<prompt> Create a short quiz asking the learner to identify the Vim commands for deleting a line, changing a word, yanking to the end of the line, and putting text before the cursor."
*   _Reflective Prompt:_ "<prompt> Ask the learner to consider how the operator-motion paradigm in Vim could lead to more efficient editing compared to select-then-act workflows."
*   > **Key Point:** Remember the pattern: `[operator][motion/text object]`. For example, `d` (delete) + `w` (word) = `dw`.

---
_Transition:_ Efficient editing often requires finding specific text quickly and repeating actions.
---

# III. Searching, Replacing, and Repetition
*   _Objective:_ Learn how to find text, perform replacements, and repeat commands efficiently.

## Searching
"<prompt> Explain how to perform forward (`/`) and backward (`?`) searches in Vim, including navigating between matches (`n`, `N`), and configuring search behavior (e.g., case sensitivity via `:set ic`, `:set noic`)."

### Search Options
"<prompt> Describe common search options like `