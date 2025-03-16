# I. Basic Number Theory Concepts

## Divisibility

### Understanding divisibility and factors
*   Definition of divisibility: `a | b` (a divides b) if there exists an integer k such that `b = ak`.
*   Factors and multiples.
*   Example: 3 | 12 because 12 = 3 * 4.

### Identifying prime and composite numbers
*   Definition of a prime number: a number greater than 1 that has only two divisors: 1 and itself.
*   Definition of a composite number: a number greater than 1 that has more than two divisors.
*   Example: 7 is prime, 6 is composite.

### Prime factorization
*   Expressing a number as a product of its prime factors.
*   Method: Divide the number repeatedly by prime numbers until you get 1.
*   Example: Prime factorization of 28 is 2 * 2 * 7 = 2<sup>2</sup> * 7.

## Greatest Common Divisor (GCD) and Least Common Multiple (LCM)

### Finding the GCD
*   Definition of GCD: the largest positive integer that divides two or more integers without a remainder.
*   Euclidean Algorithm: An efficient method to compute the GCD of two integers.
    *   Repeatedly apply the division algorithm until the remainder is 0. The last non-zero remainder is the GCD.
    *   Example: GCD(48, 18): 48 = 18 * 2 + 12; 18 = 12 * 1 + 6; 12 = 6 * 2 + 0.  GCD(48, 18) = 6.

### Finding the LCM
*   Definition of LCM: the smallest positive integer that is divisible by two or more integers.
*   Relationship between GCD and LCM: `LCM(a, b) = |a * b| / GCD(a, b)`.
*   Example: LCM(4, 6) = (4 * 6) / GCD(4, 6) = 24 / 2 = 12.

# II. Modular Arithmetic

## Congruence

### Understanding congruence modulo n
*   Definition of congruence: `a ≡ b (mod n)` if `n | (a - b)`.
*   Properties of congruence: Reflexive, symmetric, and transitive.
*   Example: 17 ≡ 2 (mod 5) because 5 | (17 - 2).

### Performing arithmetic operations modulo n
*   Addition, subtraction, and multiplication modulo n.
*   `(a + b) mod n = (a mod n + b mod n) mod n`.
*   `(a * b) mod n = (a mod n * b mod n) mod n`.
*   Example: (7 + 8) mod 5 = (7 mod 5 + 8 mod 5) mod 5 = (2 + 3) mod 5 = 5 mod 5 = 0.

## Modular Inverses

### Finding modular inverses
*   Definition of modular inverse: An integer `x` is the modular inverse of `a` modulo `n` if `ax ≡ 1 (mod n)`.
*   Existence of modular inverses: `a` has a modular inverse modulo `n` if and only if GCD(a, n) = 1.
*   Extended Euclidean Algorithm: Used to find modular inverses.
    *   Example: Find the inverse of 3 modulo 7. GCD(3, 7) = 1.  Using the Extended Euclidean Algorithm: 7 = 3 * 2 + 1. Therefore, 1 = 7 - 3 * 2, so 3 * (-2) ≡ 1 (mod 7). Since -2 ≡ 5 (mod 7), the modular inverse of 3 modulo 7 is 5.

# III. Diophantine Equations

## Linear Diophantine Equations

### Solving equations of the form ax + by = c
*   Existence of solutions: The equation `ax + by = c` has integer solutions if and only if GCD(a, b) divides c.
*   Finding a particular solution: Use the Extended Euclidean Algorithm to find integers x' and y' such that `ax' + by' = GCD(a, b)`.  Then multiply by `c / GCD(a, b)` to get a particular solution.
*   General solution: If (x<sub>0</sub>, y<sub>0</sub>) is a particular solution, the general solution is given by:
    *   `x = x0 + (b / GCD(a, b)) * t`
    *   `y = y0 - (a / GCD(a, b)) * t`, where t is an integer.
*   Example: Solve `3x + 6y = 9`. GCD(3, 6) = 3, and 3 | 9, so solutions exist.  First, solve `3x + 6y = 3`. `3(1) + 6(0) = 3`. So, x' = 1, y' = 0. Multiply by 3 (since 9 / 3 = 3): x<sub>0</sub> = 3, y<sub>0</sub> = 0. General solution: x = 3 + (6/3) * t = 3 + 2t; y = 0 - (3/3) * t = -t.

# IV. Applications and Advanced Topics

## Cryptography

### Introduction to basic cryptographic principles
*   Caesar cipher.
*   Affine cipher.
*   Brief overview of RSA encryption.

### Applying number theory concepts in cryptography
*   Using modular arithmetic for encryption and decryption.
*   Prime numbers and their importance in RSA.
*   Modular inverses in cryptography.

## Primality Testing

### Methods for determining if a number is prime
*   Trial division.
*   Fermat primality test.
*   Miller-Rabin primality test.

### Optimizing primality testing algorithms
*   Using square root optimization.
*   Probabilistic vs. deterministic tests.
