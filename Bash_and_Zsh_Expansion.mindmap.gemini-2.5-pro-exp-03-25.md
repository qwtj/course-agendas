# Bash and Zsh Expansion #Shell #Scripting #CLI
Overview of how Bash and Zsh interpret and transform command lines before execution. Expansion is a fundamental process affecting nearly every command.

## Expansion Overview and Order #CoreConcept #Process #Sequence
The sequence in which different types of expansions occur is crucial for understanding shell behavior. Bash and Zsh follow a similar, but not identical, order.
General Order (Simplified): Brace Expansion -> Tilde Expansion -> Parameter/Variable Expansion, Arithmetic Expansion, Command Substitution (left-to-right) -> Word Splitting -> Filename Expansion (Globbing). Quote Removal happens last.

### Bash Expansion Order #Bash #Sequence #Standard
Details the specific order Bash performs expansions.

### Zsh Expansion Order #Zsh #Sequence #Standard
Details the specific order Zsh performs expansions, noting potential differences from Bash, especially regarding word splitting and globbing behavior.

## Brace Expansion `{...}` #Generation #Syntax #Sequence
Generates arbitrary strings based on patterns within braces. Occurs early in the expansion process.

### Basic Brace Expansion #Syntax #Examples
Syntax like `a{b,c}d` expanding to `abd acd`.

### Sequence Expressions #Numeric #Alphabetic #Range
Syntax like `{1..5}` or `{a..e}` for generating sequences.

### Nesting Brace Expansion #Complex #Combinations
Using nested braces like `a{b,c{d,e}}f`.

### Brace Expansion in Zsh vs Bash #Differences #Compatibility
Subtle differences in behavior or features between the two shells. Zsh often offers more flexibility.

## Tilde Expansion `~` #HomeDirectory #Shortcut #Paths
Replaces the tilde character (`~`) with pathnames.

### Basic Tilde Expansion (`~`) #HomeDirectory #CurrentUser
Replacing `~` with the current user's home directory (`$HOME`).

### Named Tilde Expansion (`~user`) #SpecificUser #Paths
Replacing `~user` with the home directory of `user`.

### Directory Stack Tilde Expansion (`~+`, `~-`) #Bash #Zsh #Navigation
Using `~+` (current working directory `$PWD`) and `~-` (previous working directory `$OLDPWD`). Zsh also has `~N` and `~-N` for stack entries.

## Parameter Expansion `${...}` #Variables #Manipulation #Substitution
Replacing variable names with their values, potentially modifying the value in the process. This is one of the most complex and powerful expansion types.

### Basic Parameter Expansion (`$var`, `${var}`) #Substitution #Variables
Simple replacement of a variable with its value. The braces are optional for simple cases but required for ambiguity resolution and advanced expansions.

### Use Default Values #Default #Conditional #Fallback
Provide a default value if the parameter is unset or null.
#### `${parameter:-word}` #UnsetOrNull #Fallback
Use `word` if `parameter` is unset or null.
#### `${parameter-word}` #UnsetOnly #Fallback
Use `word` only if `parameter` is unset.

### Assign Default Values #Assignment #Conditional #Initialization
Assign a default value if the parameter is unset or null.
#### `${parameter:=word}` #UnsetOrNull #Assignment
Assign `word` to `parameter` if unset or null, then expand to `word`.
#### `${parameter=word}` #UnsetOnly #Assignment
Assign `word` to `parameter` if unset, then expand to `word`.

### Indicate Error if Unset or Null #ErrorHandling #Validation #Mandatory
Exit the script or shell if the parameter is unset or null.
#### `${parameter:?word}` #UnsetOrNull #Error #Message
If `parameter` is unset or null, print `word` (or a default message) to stderr and exit.
#### `${parameter?word}` #UnsetOnly #Error #Message
If `parameter` is unset, print `word` (or a default message) to stderr and exit.

### Use Alternative Value #Alternate #Conditional #Existence
Expand to `word` if the parameter is set (and non-null).
#### `${parameter:+word}` #SetAndNotNull #Alternate
Expand to `word` if `parameter` is set and not null, otherwise expand to nothing.
#### `${parameter+word}` #SetOnly #Alternate
Expand to `word` if `parameter` is set (even if null), otherwise expand to nothing.

### String Length #Length #Count #Characters
Get the length of the parameter's value.
#### `${#parameter}` #StringLength #ArrayLength
Expands to the length in characters of the value of `parameter`. If `parameter` is an array (`*` or `@`), it gives the number of elements.

### Substring Extraction #Slicing #Substring #Portion
Extract a portion of the parameter's value.
#### `${parameter:offset}` #FromOffset #Substring
Extract substring starting from `offset`.
#### `${parameter:offset:length}` #FromOffsetWithLength #Substring
Extract substring starting from `offset` with a specific `length`. Bash/Zsh handle negative offsets differently.

### Pattern Removal (Prefix) #Prefix #Stripping #PatternMatching
Remove a pattern matching the beginning of the value.
#### `${parameter#pattern}` #ShortestMatch #Prefix
Remove shortest matching `pattern` from the beginning.
#### `${parameter##pattern}` #LongestMatch #Prefix
Remove longest matching `pattern` from the beginning.

### Pattern Removal (Suffix) #Suffix #Stripping #PatternMatching
Remove a pattern matching the end of the value.
#### `${parameter%pattern}` #ShortestMatch #Suffix
Remove shortest matching `pattern` from the end.
#### `${parameter%%pattern}` #LongestMatch #Suffix
Remove longest matching `pattern` from the end.

### Pattern Substitution #Replace #SearchReplace #PatternMatching
Replace occurrences of a pattern within the value.
#### `${parameter/pattern/string}` #FirstMatch #Replace
Replace the first match of `pattern` with `string`. (Bash, Zsh)
#### `${parameter//pattern/string}` #AllMatches #Replace
Replace all matches of `pattern` with `string`. (Bash, Zsh)
#### `${parameter/#pattern/string}` #PrefixMatch #Replace
Replace `pattern` only if it matches at the beginning. (Bash, Zsh)
#### `${parameter/%pattern/string}` #SuffixMatch #Replace
Replace `pattern` only if it matches at the end. (Bash, Zsh)

### Case Modification #CaseConversion #Upper #Lower
Change the case of the parameter's value. (Bash v4+, Zsh)
#### `${parameter^pattern}` #UpperFirst #CaseConversion
Uppercase the first character matching `pattern` (or first character if no pattern).
#### `${parameter^^pattern}` #UpperAll #CaseConversion
Uppercase all characters matching `pattern` (or all characters if no pattern).
#### `${parameter,pattern}` #LowerFirst #CaseConversion
Lowercase the first character matching `pattern` (or first character if no pattern).
#### `${parameter,,pattern}` #LowerAll #CaseConversion
Lowercase all characters matching `pattern` (or all characters if no pattern).

### Indirect Expansion #VariableVariables #Reference #Indirection
Expand a variable whose name is stored in another variable.
#### `${!prefix*}` / `${!prefix@}` #NameMatching #ListVariables
Expands to the names of variables whose names start with `prefix`. (Bash, Zsh)
#### `${!name}` / `${(P)name}` #Indirection #Dereference
Expand the variable whose name is stored in `name`. Bash uses `${!name}`, Zsh primarily uses `${(P)name}` but supports `${!name}` for compatibility.

### Array Expansion #Arrays #Elements #Indexing
Accessing array elements and properties.
#### `${array[index]}` #ArrayIndex #ElementAccess
Access a specific element by index (0-based in Bash, 1-based in Zsh by default).
#### `${array[@]}` #AllElements #SeparateWords
Expand to all elements as separate words (respects quoting).
#### `${array[*]}` #AllElements #SingleWord
Expand to all elements as a single word, joined by the first character of `$IFS`.
#### `${#array[@]}` / `${#array[*]}` #ArrayLength #ElementCount
Get the number of elements in the array.
#### `${!array[@]}` / `${!array[*]}` #ArrayIndices #Keys
Get the indices (keys) of the array. (Bash, Zsh)

### Zsh Parameter Expansion Flags `(${(...)...})` #Zsh #Flags #Modifiers
Zsh-specific flags that modify the result of parameter expansion.
#### `(f)` - Split by newlines #Zsh #Split #Lines
#### `(s:string:)` - Split by string #Zsh #Split #Delimiter
#### `(j:string:)` - Join array elements #Zsh #Join #Delimiter
#### `(P)` - Indirect expansion #Zsh #Indirection #Dereference
#### `(t)` - Type information #Zsh #Type #Info
#### `(L)` / `(U)` - Lower/Uppercase #Zsh #CaseConversion
#### `(C)` - Capitalize words #Zsh #Capitalization
#### `(o)` / `(O)` - Sort array elements #Zsh #Sorting #Arrays
#### `(u)` - Unique array elements #Zsh #Unique #Arrays
#### `(k)` - Keys of associative array #Zsh #AssociativeArray #Keys
#### `(v)` - Values of associative array #Zsh #AssociativeArray #Values
#### `(q)` - Quoting #Zsh #Quoting #Safety
#### Many others... #Zsh #Extensibility

## Command Substitution `$(...)` or 
```...```
 #Execution #Output #Capture
Replaces the command substitution expression with the standard output of the command, removing trailing newlines.

### Modern Syntax `$(command)` #Preferred #Nesting #Readability
Preferred syntax; easier to read and allows nesting.

### Legacy Syntax `` `command` `` #Legacy #Backticks #Compatibility
Older syntax using backticks. Harder to read and nesting requires careful escaping.

### Differences and Nuances #Whitespace #ExitStatus #stderr
How whitespace in the output is handled (affected by `$IFS` and quoting), exit status is not captured directly, stderr is not captured.

## Arithmetic Expansion `$((...))` #Math #Calculation #Integers
Replaces the arithmetic expression with its calculated integer result.

### Basic Arithmetic #Operators #Integers
Using standard operators like `+`, `-`, `*`, `/`, `%`, `**` (exponentiation).

### Variables in Arithmetic #ShellVariables #Calculation
Using shell variables within the expression (e.g., `$((var + 5))`). No need to prefix variables with `$`.

### Base Conversion #NumberBase #Hex #Octal
Specifying number bases (e.g., `$((0xff))`, `$((2#1010))`).

### Zsh Enhancements #FloatingPoint #MathFunctions #Zsh
Zsh supports floating-point arithmetic within `$((...))` and has access to math functions via the `zmathfunc` module.

## Process Substitution `<(...)` and `>(...)` #Redirection #Pipes #TemporaryFiles
Allows the input or output of processes to be treated like files. The shell handles temporary file creation (often using named pipes or `/dev/fd`).

### Input Process Substitution `<(command)` #InputRedirection #TemporaryFile
Use the output of `command` as if it were a file input to another command (e.g., `diff <(sort file1) <(sort file2)`).

### Output Process Substitution `>(command)` #OutputRedirection #TemporaryFile
Send the output of a command to the input of `command` as if writing to a file (e.g., `tee >(process1) >(process2)`).

## Word Splitting #IFS #Parsing #Arguments
After parameter expansion, command substitution, and arithmetic expansion (unless double-quoted), the shell scans the results for characters in `$IFS` (Internal Field Separator) and splits the result into words (arguments).

### The `$IFS` Variable #Delimiter #Whitespace #Separator
Internal Field Separator variable, defaults to space, tab, newline. Controls how splitting occurs.

### Splitting Examples #Unquoted #Arguments
Demonstrating how `cmd $var` behaves differently depending on `$var`'s content and `$IFS`.

### Preventing Word Splitting #Quoting #DoubleQuotes #Arrays
Using double quotes (`"$var"`) prevents word splitting on the expansion result. Using arrays (`"${array[@]}"`) correctly handles multiple elements.

### Zsh Word Splitting Behavior #Zsh #SH_WORD_SPLIT #Differences
Zsh does *not* perform word splitting on unquoted parameter expansions by default unless the `SH_WORD_SPLIT` option is set. This is a major difference from Bash/POSIX shells.

## Filename Expansion (Globbing) #Wildcards #PatternMatching #Files
Expands patterns (like `*`, `?`, `[]`) into matching filenames or pathnames.

### Standard Globbing Characters #Wildcards #Syntax
#### `*` #ZeroOrMore #Characters
Matches any sequence of zero or more characters.
#### `?` #SingleCharacter #Any
Matches any single character.
#### `[...]` #CharacterClass #Range
Matches any one character within the brackets. Ranges (`a-z`) and complements (`[!...]` or `[^...]`) are supported.

### Hidden Files (Dotfiles) #Dotfiles #Matching #Configuration
How globbing interacts with files starting with `.` (usually ignored unless explicitly matched or shell options are set).

### Bash Extended Globbing (`extglob`) #Bash #ExtendedPatterns #shopt
Enabling advanced patterns via `shopt -s extglob`.
#### `?(pattern-list)` #ZeroOrOne #Optional
#### `*(pattern-list)` #ZeroOrMore #Repetition
#### `+(pattern-list)` #OneOrMore #Repetition
#### `@(pattern-list)` #ExactlyOne #Choice
#### `!(pattern-list)` #NotMatching #Negation

### Zsh Extended Globbing (`EXTENDED_GLOB`) #Zsh #ExtendedPatterns #setopt
Zsh's powerful extended globbing, enabled by default or via `setopt EXTENDED_GLOB`. Often overlaps with Bash `extglob` but has its own syntax and features.
#### `~` (Exclusion) #Zsh #Exclusion #Globbing
#### `^` (Negation) #Zsh #Negation #Globbing
#### `#` (Zero or More) #Zsh #Repetition #Globbing
#### `##` (One or More) #Zsh #Repetition #Globbing
#### `(...)` (Grouping/OR) #Zsh #Choice #Grouping

### Zsh Glob Qualifiers `(...)` #Zsh #Filtering #Metadata #Sorting
Zsh-specific feature to filter or modify glob results based on file metadata. Appended to the pattern in parentheses.
#### File Type Qualifiers (`/`, `.`, `@`, `%`, etc.) #Zsh #FileType #Filter
#### Permission/Ownership Qualifiers (`r`, `w`, `x`, `U`, `G`, `o`) #Zsh #Permissions #Owner
#### Size/Time Qualifiers (`L`, `m`, `a`, `M`) #Zsh #Size #Timestamp
#### Sorting Qualifiers (`oN`, `ON`, `oL`, etc.) #Zsh #Sorting #Order
#### Indexing Qualifiers (`[1]`, `[-1]`, `[1,5]`) #Zsh #Selection #Slicing

### Recursive Globbing (`**`) #Recursive #Directories #Traversal
Matching files across directory trees.
#### Bash (`globstar`) #Bash #Recursive #shopt
Enabled via `shopt -s globstar`. `**` matches files and directories recursively.
#### Zsh (`**`) #Zsh #Recursive #Builtin
Built-in feature, generally more robust than Bash's `globstar`. `**/` matches directories, `**/*` matches files.

### Disabling Globbing #noglob #set #Quoting
Using `set -f` or `set -o noglob` (or Zsh's `setopt NO_GLOB`) disables filename expansion. Quoting also prevents it.

## Quote Removal #Quoting #Interpretation #FinalStep
The final step after all other expansions. Removes unquoted quote characters (`'`, `"`, `\`) that were not themselves results of expansions.

### Single Quotes (`'...'`) #Literal #NoExpansion
Prevent all expansions within the quotes. The text is treated literally.

### Double Quotes (`"..."`) #PartialExpansion #VariableSubstitution
Prevent most expansions (word splitting, globbing) but allow Parameter Expansion, Command Substitution, and Arithmetic Expansion.

### Backslash (`\`) #Escape #SingleCharacter
Escapes the single next character, preventing its special interpretation (including newline).

## Security Considerations #Injection #Safety #Quoting
Potential security risks associated with improper handling of expansions, especially with external input.

### Command Injection #SecurityRisk #UnquotedVariables #eval
Risks from expanding variables containing malicious commands, especially with `eval`.

### Globbing Vulnerabilities #DenialOfService #ResourceExhaustion
Patterns expanding to vast numbers of files, potentially causing denial-of-service.

### Importance of Quoting #BestPractice #Safety #Defense
Using quotes (especially double quotes for variables) to prevent unwanted word splitting and globbing is crucial for security and correctness.

## Use Cases and Best Practices #Scripting #Efficiency #Readability
Practical applications and guidelines for using expansions effectively.

### Dynamic Command Generation #Scripting #Flexibility
Using expansions to build commands based on variables or environment.

### File Processing #Globbing #Loops #Batch
Using globbing to process sets of files.

### Configuration Management #ParameterExpansion #Defaults #Validation
Using parameter expansion for setting defaults and validating configuration.

### Avoiding Pitfalls #Quoting #IFS #ZshDifferences
Common mistakes and how to avoid them (e.g., unquoted variables, modifying IFS carelessly, Bash vs Zsh differences).
