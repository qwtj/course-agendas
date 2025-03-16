# I. Set Theory Foundations

## Understanding Sets and Set Notation

### Defining Sets and Elements
*   Defining a set as a collection of distinct objects.
*   Understanding elements, universal sets, and empty sets.
*   Examples: `{1, 2, 3}`, `{x | x is an even number}`.

### Set Operations
*   Union (`A ∪ B`): elements in A or B or both.
*   Intersection (`A ∩ B`): elements in both A and B.
*   Difference (`A \ B`): elements in A but not in B.
*   Complement (`A'` or `Aᶜ`): elements not in A (relative to the universal set).
*   Examples: Calculating `A ∪ B`, `A ∩ B` for `A = {1, 2, 3}` and `B = {3, 4, 5}`.

## Set Identities and Laws

### Basic Set Identities
*   Identity Laws: `A ∪ ∅ = A`, `A ∩ U = A`.
*   Domination Laws: `A ∪ U = U`, `A ∩ ∅ = ∅`.
*   Idempotent Laws: `A ∪ A = A`, `A ∩ A = A`.
*   Complement Laws: `A ∪ A' = U`, `A ∩ A' = ∅`.

### Commutative, Associative, and Distributive Laws
*   Commutative Laws: `A ∪ B = B ∪ A`, `A ∩ B = B ∩ A`.
*   Associative Laws: `(A ∪ B) ∪ C = A ∪ (B ∪ C)`, `(A ∩ B) ∩ C = A ∩ (B ∩ C)`.
*   Distributive Laws: `A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C)`, `A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C)`.

### De Morgan's Laws
*   `(A ∪ B)' = A' ∩ B'`
*   `(A ∩ B)' = A' ∪ B'`
*   Examples: Applying De Morgan's laws to simplify set expressions.

# II. Logic and Proofs

## Propositional Logic

### Propositions and Logical Connectives
*   Defining propositions as statements that can be true or false.
*   Understanding logical connectives: AND (`∧`), OR (`∨`), NOT (`¬`), IMPLIES (`→`), IFF (`↔`).
*   Truth tables for each connective.
*   Examples: Translating English sentences into propositional logic.

### Propositional Equivalences
*   Logical equivalence: two propositions with the same truth values in all cases.
*   Important equivalences: De Morgan's Laws, Distributive Laws, Implication equivalence (`p → q ≡ ¬p ∨ q`).
*   Using truth tables to prove equivalences.

### Predicate Logic

*   Predicates, variables, and quantifiers (∀ - for all, ∃ - there exists).
*   Examples: `∀x P(x)`, `∃x Q(x)`.

## Methods of Proof

### Direct Proof
*   Assuming the hypothesis and showing the conclusion follows directly.
*   Example: Proving that if `n` is even, then `n²` is even.

### Proof by Contraposition
*   Proving `p → q` by proving `¬q → ¬p`.
*   Example: Proving that if `n²` is even, then `n` is even.

### Proof by Contradiction
*   Assuming the negation of the statement and deriving a contradiction.
*   Example: Proving that √2 is irrational.

### Proof by Induction
*   Base case, inductive hypothesis, and inductive step.
*   Example: Proving that `1 + 2 + ... + n = n(n+1)/2`.

# III. Functions and Relations

## Functions

### Definition and Types of Functions
*   Defining a function as a mapping from a domain to a range.
*   Injective (one-to-one), surjective (onto), and bijective functions.
*   Examples: `f(x) = x²`, `g(x) = 2x + 1`.

### Function Composition and Inverse Functions
*   Function composition: `(f ∘ g)(x) = f(g(x))`.
*   Inverse functions: `f⁻¹(f(x)) = x`.
*   Examples: Finding the composition of two functions, finding the inverse of a function.

## Relations

### Definition and Types of Relations
*   Defining a relation as a set of ordered pairs.
*   Reflexive, symmetric, antisymmetric, and transitive relations.
*   Examples: "is equal to", "is less than", "is a subset of".

### Equivalence Relations
*   A relation that is reflexive, symmetric, and transitive.
*   Equivalence classes.
*   Example: Congruence modulo `n`.

### Partial Orders
*   A relation that is reflexive, antisymmetric, and transitive.
*   Example: The "is a subset of" relation.

# IV. Number Theory

## Divisibility and Modular Arithmetic

### Divisibility and the Division Algorithm
*   Defining divisibility: `a | b` (a divides b) if `b = ka` for some integer `k`.
*   The Division Algorithm: For integers `a` and `b` (with `b > 0`), there exist unique integers `q` and `r` such that `a = bq + r`, where `0 ≤ r < b`.

### Modular Arithmetic
*   Congruence modulo `n`: `a ≡ b (mod n)` if `n | (a - b)`.
*   Properties of modular arithmetic: addition, subtraction, and multiplication modulo `n`.
*   Examples: Calculating `17 mod 5`, solving linear congruences.

## Prime Numbers and Factorization

### Prime Numbers and the Sieve of Eratosthenes
*   Defining prime numbers: numbers greater than 1 that are only divisible by 1 and themselves.
*   The Sieve of Eratosthenes: an algorithm for finding all prime numbers up to a specified integer.

### Fundamental Theorem of Arithmetic
*   Every integer greater than 1 can be written uniquely as a product of prime numbers, up to the order of the factors.
*   Prime factorization.
*   Examples: Prime factorization of 360.

### Greatest Common Divisor (GCD) and Least Common Multiple (LCM)
*   Euclidean Algorithm to find the GCD of two integers.
*   Relationship between GCD and LCM: `GCD(a, b) * LCM(a, b) = a * b`.
*   Examples: Finding GCD(48, 18), LCM(12, 18).

# V. Combinatorics

## Basic Counting Principles

### Sum Rule and Product Rule
*   Sum Rule: If a task can be done in `n₁` ways or `n₂` ways, then there are `n₁ + n₂` ways to do the task.
*   Product Rule: If a task can be done in `n₁` ways and another task can be done in `n₂` ways, then there are `n₁ * n₂` ways to do both tasks.

### Permutations and Combinations
*   Permutations: ordered arrangements of objects. `P(n, r) = n! / (n - r)!`.
*   Combinations: unordered selections of objects. `C(n, r) = n! / (r! * (n - r)!)`.
*   Examples: How many ways to arrange 5 books on a shelf? How many ways to choose 3 students from a group of 10?

## Advanced Counting Techniques

### Inclusion-Exclusion Principle
*   Counting the number of elements in the union of sets: `|A ∪ B| = |A| + |B| - |A ∩ B|`.
*   Generalized inclusion-exclusion principle for more than two sets.
*   Examples: Counting the number of integers between 1 and 100 that are divisible by 2 or 3.

### Pigeonhole Principle
*   If `n` items are put into `m` containers, with `n > m`, then at least one container must contain more than one item.
*   Generalized Pigeonhole Principle: If `N` objects are placed into `k` boxes, then there is at least one box containing at least `⌈N/k⌉` objects.
*   Examples: Showing that in a group of 367 people, at least two people have the same birthday.

### Recurrence Relations
*   Defining a sequence in terms of its previous terms.
*   Examples: Fibonacci sequence, Tower of Hanoi.
*   Solving linear homogeneous recurrence relations with constant coefficients.
