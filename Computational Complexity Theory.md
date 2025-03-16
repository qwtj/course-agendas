# I. Fundamentals of Computation

## Formal Languages and Automata

### Understanding Alphabets, Strings, and Languages
*   Definition of an alphabet, string, and language.
*   Examples of formal languages: `L = {0^n 1^n | n >= 0}`, `L = {w | w contains an equal number of 0s and 1s}`.

### Regular Languages and Finite Automata
*   Defining regular languages.
*   Deterministic Finite Automata (DFA): Definition, transition diagrams, transition tables.
*   Non-deterministic Finite Automata (NFA): Definition, transition diagrams, conversion from NFA to DFA.
*   Regular Expressions: Syntax, semantics, equivalence to finite automata.
*   Pumping Lemma for Regular Languages: Using the Pumping Lemma to prove a language is not regular.
    *   Example: Prove L = `{0^n 1^n | n >= 0}` is not regular.
*   Closure Properties of Regular Languages: Union, intersection, complement, concatenation, Kleene star.

## Context-Free Languages and Pushdown Automata

### Context-Free Grammars (CFG)
*   Definition of CFG: Variables, terminals, production rules, start symbol.
*   Derivations and Parse Trees: Leftmost derivation, rightmost derivation, ambiguous grammars.
*   Examples of CFGs: `S -> 0S1 | ε`, generating language `{0^n 1^n | n >= 0}`.

### Pushdown Automata (PDA)
*   Definition of PDA: States, input alphabet, stack alphabet, transition function.
*   Instantaneous Descriptions (IDs) of PDAs.
*   Acceptance by Empty Stack and Acceptance by Final State.
*   Equivalence of CFGs and PDAs.
*   Pumping Lemma for Context-Free Languages: Using the Pumping Lemma to prove a language is not context-free.
    *   Example: Prove L = `{a^n b^n c^n | n >= 0}` is not context-free.

### Closure Properties of Context-Free Languages
*   Union, concatenation, Kleene star.
*   Non-closure under intersection and complement.

## Turing Machines

### Definition of Turing Machines
*   Components: Tape, head, states, transition function.
*   Formal definition: `(Q, Σ, Γ, δ, q0, B, F)` where:
    *   `Q` is the set of states.
    *   `Σ` is the input alphabet.
    *   `Γ` is the tape alphabet.
    *   `δ` is the transition function.
    *   `q0` is the initial state.
    *   `B` is the blank symbol.
    *   `F` is the set of accepting states.
*   Instantaneous Descriptions (IDs) of Turing Machines.

### Turing Machine Variants
*   Multi-tape Turing Machines.
*   Non-deterministic Turing Machines.
*   Equivalence of Turing Machine variants.

### Turing-Recognizable and Turing-Decidable Languages
*   Understanding the difference between recognition and decision.
*   Example: A TM that recognizes the language `{a^n b^n c^n | n >= 0}`.
*   Example: A TM that decides if a binary string represents a prime number.

### Church-Turing Thesis
*   Understanding the implications of the Church-Turing Thesis.

# II. Undecidability and Complexity Classes

## Undecidability

### Decidable Problems
*   Decidability of regular languages (e.g., emptiness, equivalence).
*   Decidability of context-free languages (e.g., emptiness).

### The Halting Problem
*   Statement of the Halting Problem: Determining whether a given Turing machine will halt on a specific input.
*   Proof of undecidability of the Halting Problem (diagonalization).

### Reducibility
*   Definition of reducibility: Mapping one problem to another.
*   Using reducibility to prove undecidability.
    *   Example: Reducing the Halting Problem to the problem of determining if a Turing Machine enters a specific state.

### Undecidable Problems about Turing Machines
*   Emptiness problem: Determining if a Turing machine accepts any input.
*   Equivalence problem: Determining if two Turing machines accept the same language.

## Complexity Classes

### Time Complexity
*   Asymptotic analysis: Big-O, Big-Omega, and Big-Theta notation.
*   Definition of Time Complexity: Measuring the time a Turing Machine takes to run on a given input.
*   Complexity class P: Problems solvable in polynomial time by a deterministic Turing machine.
*   Complexity class NP: Problems verifiable in polynomial time by a deterministic Turing machine.
*   NP-completeness: Definition and examples (e.g., SAT, CLIQUE, VERTEX-COVER).

### Space Complexity
*   Definition of Space Complexity: Measuring the space (tape cells) a Turing Machine uses during computation.
*   Complexity class PSPACE: Problems solvable in polynomial space by a deterministic Turing machine.
*   Complexity class NPSPACE: Problems solvable in polynomial space by a non-deterministic Turing machine.
*   PSPACE-completeness: Definition and examples (e.g., QBF).

### Relationships Between Complexity Classes
*   P ⊆ NP ⊆ PSPACE ⊆ EXPTIME
*   NP ⊆ NPSPACE
*   Savitch's Theorem: NPSPACE = PSPACE.

# III. Advanced Topics

## Approximation Algorithms

### Introduction to Approximation Algorithms
*   Dealing with NP-hard optimization problems.
*   Approximation ratio: Definition and goals.

### Examples of Approximation Algorithms
*   Vertex Cover: 2-approximation algorithm.
*   Traveling Salesman Problem (TSP):
    *   2-approximation for metric TSP using Minimum Spanning Tree (MST).

## Randomized Algorithms

### Introduction to Randomized Algorithms
*   Las Vegas and Monte Carlo algorithms.
*   Advantages of randomization: Simplicity, efficiency.

### Examples of Randomized Algorithms
*   Quicksort: Expected time complexity analysis.
*   Primality Testing: Miller-Rabin algorithm.

## Advanced Reductions

### Cook-Levin Theorem:
*   Understanding the proof that SAT is NP-Complete

### More Complex Reductions
*   Reduction examples between various NP-Complete problems
*   3SAT <= Independent Set, etc.
