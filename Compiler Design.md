# I. Introduction to Compilers

## Understanding Compiler Structure

### Phases of Compilation
*   Lexical Analysis
*   Syntax Analysis
*   Semantic Analysis
*   Intermediate Code Generation
*   Code Optimization
*   Code Generation
*   Symbol Table Management
*   Error Handling

### Compiler vs. Interpreter
*   Compare compilation and interpretation processes.
*   Advantages and disadvantages of each approach.

## Compiler Construction Tools
*   Lexical Analyzer Generators (e.g., Lex)
*   Parser Generators (e.g., Yacc, Bison)

# II. Lexical Analysis

## Regular Expressions

### Basic Regular Expression Syntax
*   Concatenation, alternation, Kleene star.
*   Examples: `a.b`, `a|b`, `a*`

### Advanced Regular Expression Features
*   Character classes, anchors, backreferences.
*   Examples: `[a-z]`, `^hello`, `\1`

## Finite Automata

### Deterministic Finite Automata (DFA)
*   Definition and representation.
*   Transition tables and diagrams.

### Non-deterministic Finite Automata (NFA)
*   Definition and representation.
*   Transition tables and diagrams.

### Conversion of Regular Expressions to NFA (Thompson's Construction)
*   Steps for converting regular expressions to equivalent NFAs.
*   Example: Convert `(a|b)*ab` to NFA.

### Conversion of NFA to DFA (Subset Construction)
*   Algorithm for converting NFAs to equivalent DFAs.
*   Example: Convert NFA from previous step to DFA.

### Minimization of DFA
*   Algorithm for minimizing the number of states in a DFA.
*   Example: Minimize the DFA from the previous step.

## Lexical Analyzer Generators (Lex/Flex)

### Lex/Flex Syntax
*   Definitions section, rules section, user code section.
*   Regular expression patterns and actions.

### Using Lex/Flex to create a Lexer
*   Example: Create a lexer for recognizing keywords, identifiers, and operators in a simple language.
    ```lex
    %{
    #include <stdio.h>
    %}

    %%
    "int"   { printf("Keyword: INT
"); }
    [a-zA-Z]+  { printf("Identifier: %s
", yytext); }
    "+"     { printf("Operator: PLUS
"); }
    %%

    int main() {
        yylex();
        return 0;
    }
    ```

# III. Syntax Analysis

## Context-Free Grammars (CFG)

### Definition of a CFG
*   Terminals, non-terminals, production rules, start symbol.

### Derivations and Parse Trees
*   Leftmost and rightmost derivations.
*   Constructing parse trees from derivations.

### Ambiguity in Grammars
*   Identifying ambiguous grammars.
*   Resolving ambiguity (e.g., operator precedence, associativity).

## Parsing Techniques

### Top-Down Parsing

#### Recursive Descent Parsing
*   Implementing a recursive descent parser for a simple grammar.
    ```c
    // Example recursive descent parser for E -> T + E | T
    // T -> int

    int token; // current token

    void E() {
        T();
        if (token == '+') {
            match('+');
            E();
        }
    }

    void T() {
        if (token == INT) {
            match(INT);
        } else {
            error();
        }
    }
    ```

#### LL(1) Parsing
*   FIRST and FOLLOW sets.
*   Constructing LL(1) parsing tables.
*   LL(1) parsing algorithm.

### Bottom-Up Parsing

#### Shift-Reduce Parsing
*   Handles, viable prefixes.
*   Shift and reduce operations.

#### LR(0) Parsing
*   LR(0) items and states.
*   Constructing LR(0) parsing tables.

#### SLR(1) Parsing
*   SLR(1) parsing algorithm.
*   Resolving conflicts in LR(0) tables using FOLLOW sets.

#### CLR(1) Parsing
*   CLR(1) items and states.
*   Constructing CLR(1) parsing tables.

#### LALR(1) Parsing
*   Merging states in CLR(1) tables to create LALR(1) tables.

## Parser Generators (Yacc/Bison)

### Yacc/Bison Syntax
*   Declarations section, grammar rules section, user code section.

### Using Yacc/Bison to create a Parser
*   Example: Create a parser for a simple arithmetic expression grammar.
    ```yacc
    %{
    #include <stdio.h>
    %}

    %token NUMBER PLUS TIMES

    %%
    expression:
            expression PLUS term { $$ = $1 + $3; }
        |   term                { $$ = $1; }
        ;

    term:
            term TIMES factor   { $$ = $1 * $3; }
        |   factor              { $$ = $1; }
        ;

    factor:
            NUMBER              { $$ = $1; }
        ;
    %%
    ```

# IV. Semantic Analysis

## Symbol Tables

### Structure of a Symbol Table
*   Data structures for symbol table implementation (e.g., hash tables, linked lists).
*   Attributes stored in symbol table entries (e.g., type, scope, value).

### Symbol Table Operations
*   Insertion, deletion, lookup.
*   Scope management (e.g., entering and exiting scopes).

## Type Checking

### Type Systems
*   Static vs. dynamic typing.
*   Strong vs. weak typing.

### Type Checking Rules
*   Type compatibility and conversion rules.
*   Type checking for expressions, assignments, and function calls.

## Intermediate Code Generation

### Intermediate Representations
*   Abstract Syntax Trees (AST)
*   Three-Address Code
*   Postfix Notation

### Generating Intermediate Code
*   Translating source code constructs into intermediate code.
*   Example: Generate 3-address code for `x = y + z * w`.

# V. Code Optimization

## Basic Blocks and Control Flow Graphs

### Identifying Basic Blocks
*   Constructing basic blocks from intermediate code.

### Control Flow Graph Construction
*   Building a control flow graph from basic blocks.

## Optimization Techniques

### Local Optimization
*   Constant folding
*   Algebraic simplification
*   Dead code elimination

### Global Optimization
*   Common subexpression elimination
*   Loop invariant code motion
*   Strength reduction

# VI. Code Generation

## Instruction Selection

### Target Machine Architecture
*   Registers, memory, instruction set.

### Instruction Selection Algorithms
*   Tree-based instruction selection.

## Register Allocation

### Register Allocation Strategies
*   Graph coloring.

### Spill Code Generation
*   Handling register allocation when available registers are insufficient.

## Code Emission

### Generating Assembly Code
*   Translating intermediate code into target assembly language.
*   Example: Generate x86 assembly for `x = y + z`.
