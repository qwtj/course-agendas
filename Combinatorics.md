# I. Basic Counting Principles

## Understanding the Fundamental Counting Principle

### Applying the Rule of Product

*   If there are `m` ways to do one thing and `n` ways to do another, then there are `m * n` ways to do both.
    *   Example: Choosing an outfit with 3 shirts and 2 pants results in 3 * 2 = 6 possible outfits.

### Applying the Rule of Sum

*   If there are `m` ways to do one thing and `n` ways to do another, and the two things cannot be done together, then there are `m + n` ways to do one or the other.
    *   Example: Choosing between a car or a bike, where there are 3 cars and 2 bikes results in 3 + 2 = 5 choices.

## Permutations: Ordering Matters

### Understanding Permutations

*   An arrangement of objects in a specific order.
*   Formula for permutations of `n` objects taken `r` at a time: `P(n, r) = n! / (n - r)!`

### Calculating Permutations

*   Example: Arranging 3 books out of 5 on a shelf. `P(5, 3) = 5! / (5 - 3)! = 60`

### Permutations with Repetition

*   Formula for permutations of `n` objects where some are identical: `n! / (n1! * n2! * ... * nk!)` where `n1`, `n2`, ..., `nk` are the numbers of times each distinct object is repeated.
    *   Example: Number of distinct arrangements of the letters in the word "BANANA": `6! / (3! * 2! * 1!) = 60`

# II. Combinations: Order Doesn't Matter

## Understanding Combinations

### Defining Combinations

*   A selection of objects where the order is not important.
*   Formula for combinations of `n` objects taken `r` at a time: `C(n, r) = n! / (r! * (n - r)!)` or `(n choose r)`

### Calculating Combinations

*   Example: Choosing 2 students out of 5 for a committee. `C(5, 2) = 5! / (2! * 3!) = 10`

### Combinations with Repetition Allowed

*   Formula for combinations of `n` objects taken `r` at a time with repetition allowed:  `C(n + r - 1, r)`
    *   Example: Choosing 3 scoops of ice cream from 5 flavors with repetition. `C(5 + 3 - 1, 3) = C(7, 3) = 35`

# III. Advanced Counting Techniques

## Inclusion-Exclusion Principle

### Understanding the Principle for Two Sets

*   `|A ∪ B| = |A| + |B| - |A ∩ B|`
    *   Example: Number of students taking math or physics.

### Generalizing to Multiple Sets

*   `|A1 ∪ A2 ∪ ... ∪ An| = Σ|Ai| - Σ|Ai ∩ Aj| + Σ|Ai ∩ Aj ∩ Ak| - ... + (-1)^(n+1)|A1 ∩ A2 ∩ ... ∩ An|`
    *   Example: Number of students taking at least one of three subjects.

## Pigeonhole Principle

### Basic Pigeonhole Principle

*   If `n` items are put into `m` containers, with `n > m`, then at least one container must contain more than one item.
    *   Example: If 13 people are in a room, at least two must share a birth month.

### Generalized Pigeonhole Principle

*   If `n` items are put into `m` containers, then at least one container must contain at least `⌈n/m⌉` items, where `⌈x⌉` is the ceiling function (smallest integer greater than or equal to x).
    *   Example: If 80 socks are in a drawer with 2 colors (black and blue), at least `⌈80/2⌉ = 40` socks must be of the same color.

## Generating Functions

### Introduction to Generating Functions

*   Representing sequences with polynomials. The coefficient of `x^n` represents the nth term in the sequence.
    *   Example: Generating function for the sequence 1, 1, 1, 1,... is `1/(1-x)`.

### Using Generating Functions for Combinatorial Problems

*   Solving combination and permutation problems using generating functions.
*   Example: Finding the number of ways to make change for a dollar using pennies, nickels, dimes, and quarters.

# IV. Recurrence Relations

## Understanding Recurrence Relations

### Defining Recurrence Relations

*   An equation that recursively defines a sequence, where the next term is defined as a function of the previous terms.
    *   Example: Fibonacci sequence: `F(n) = F(n-1) + F(n-2)`, with base cases `F(0) = 0`, `F(1) = 1`.

### Common Recurrence Relations

*   Linear Homogeneous Recurrence Relations: `a_n = c_1*a_{n-1} + c_2*a_{n-2} + ... + c_k*a_{n-k}`
    *   Example: `a_n = 2*a_{n-1} + a_{n-2}`

## Solving Recurrence Relations

### Solving Linear Homogeneous Recurrence Relations with Constant Coefficients

*   Finding the characteristic equation and its roots.
*   Using the roots to find the general solution.
    *   Example: Solving `a_n = 5*a_{n-1} - 6*a_{n-2}`

### Solving Non-Homogeneous Recurrence Relations

*   Finding the homogeneous solution and a particular solution.
*   Combining the solutions to get the general solution.

# V. Applications and Problem Solving

## Applying Combinatorial Principles to Real-World Problems

### Examples in Computer Science

*   Counting possible passwords.
*   Analyzing algorithm complexity.

### Examples in Probability

*   Calculating probabilities in card games.
*   Solving problems involving conditional probability.

## Problem-Solving Strategies

### Identifying the Correct Counting Technique

*   Distinguishing between permutations and combinations.
*   Applying the inclusion-exclusion principle.

### Solving Complex Combinatorial Problems

*   Breaking down problems into smaller parts.
*   Using multiple counting techniques.
