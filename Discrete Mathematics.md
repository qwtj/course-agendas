# I. Foundations of Discrete Mathematics

## Set Theory

### Defining Sets and Subsets

*   Understanding set notation: `{x | condition}`
*   Types of sets: empty set, finite/infinite sets, power set
*   Set operations: union (`∪`), intersection (`∩`), complement (`¬`), difference (`-`), symmetric difference (`⊕`)
*   Examples:
    *   `A = {1, 2, 3}`, `B = {3, 4, 5}`
    *   `A ∪ B = {1, 2, 3, 4, 5}`
    *   `A ∩ B = {3}`
    *   `A - B = {1, 2}`

### Set Identities

*   Commutative, associative, distributive, De Morgan's laws
*   Verifying set identities using membership tables or algebraic proofs

## Logic

### Propositional Logic

*   Propositions, logical connectives (¬, ∧, ∨, →, ↔)
*   Truth tables, logical equivalence, tautologies, contradictions, contingencies

### Predicate Logic

*   Predicates, quantifiers (∀, ∃), free and bound variables
*   Translating English statements into predicate logic

### Rules of Inference

*   Modus ponens, modus tollens, hypothetical syllogism, disjunctive syllogism
*   Using rules of inference to construct formal proofs

# II. Proof Techniques

## Direct Proof

### Structure of a Direct Proof

*   Assuming the hypothesis and showing the conclusion follows directly.

### Examples of Direct Proof

*   Proving that the sum of two even integers is even.

## Proof by Contraposition

### Understanding Contraposition

*   Proving `P → Q` by proving `¬Q → ¬P`.

### Examples of Proof by Contraposition

*   Proving that if `n²` is even, then `n` is even.

## Proof by Contradiction

### Structure of a Proof by Contradiction

*   Assuming the negation of the statement and deriving a contradiction.

### Examples of Proof by Contradiction

*   Proving that √2 is irrational.

## Mathematical Induction

### Base Case, Inductive Hypothesis, Inductive Step

*   Understanding the principle of mathematical induction.

### Examples of Proof by Induction

*   Proving the sum of the first `n` positive integers is `n(n+1)/2`.

# III. Combinatorics

## Counting Principles

### Basic Counting Principles

*   Addition rule, multiplication rule, inclusion-exclusion principle

### Permutations and Combinations

*   Permutations: `P(n, r) = n! / (n-r)!`
*   Combinations: `C(n, r) = n! / (r! * (n-r)!)`
*   Examples: selecting teams, arranging objects

## Binomial Theorem

### Understanding the Binomial Theorem

*   `(x + y)^n = Σ (n choose k) * x^(n-k) * y^k`

### Applications of the Binomial Theorem

*   Expanding binomial expressions, finding specific coefficients

## Pigeonhole Principle

### Understanding the Pigeonhole Principle

*   If `n` items are put into `m` containers, with `n > m`, then at least one container must contain more than one item.

### Applications of the Pigeonhole Principle

*   Proving the existence of certain patterns or configurations.

# IV. Graph Theory

## Basic Graph Concepts

### Definitions

*   Graphs, vertices, edges, directed/undirected graphs
*   Adjacency, degree, paths, cycles

### Graph Representation

*   Adjacency matrix, adjacency list

### Graph Isomorphism

*   Determining if two graphs are isomorphic.

## Graph Traversal

### Depth-First Search (DFS)

*   Algorithm, implementation, applications

### Breadth-First Search (BFS)

*   Algorithm, implementation, applications

## Trees

### Tree Properties

*   Rooted trees, binary trees, tree traversal (in-order, pre-order, post-order)

### Spanning Trees

*   Minimum spanning tree algorithms: Prim's algorithm, Kruskal's algorithm

# V. Number Theory

## Divisibility and Modular Arithmetic

### Divisibility Rules

*   Divisor, multiple, prime numbers, composite numbers

### Euclidean Algorithm

*   Finding the greatest common divisor (GCD) of two integers.

### Modular Arithmetic

*   Congruences, modular inverses

## Prime Numbers

### Prime Factorization

*   Fundamental Theorem of Arithmetic

### Primality Tests

*   Trial division, Fermat's primality test
