# Number Theory #Mathematics #Integers
Number theory is a branch of pure mathematics primarily devoted to the study of the integers and integer-valued functions. It explores the properties of numbers, particularly integers, prime numbers, and their relationships through various mathematical structures and techniques.

## Elementary Number Theory #Basics #Fundamentals
This branch deals with integers without using techniques from other mathematical fields like complex analysis or abstract algebra. It covers the foundational concepts.
Often serves as an introduction to the subject for undergraduates.

### Divisibility and Factorization #Divisibility #Primes
Basic properties of integers, division, and prime numbers.
#### Integers #Integers #Axioms
Basic properties, well-ordering principle, principle of mathematical induction.
#### Divisibility #Properties #Relations
Definition, basic properties of divisors, division algorithm.
#### Greatest Common Divisor (GCD) and Least Common Multiple (LCM) #GCD #LCM
Definitions, properties.
#### Euclidean Algorithm #Algorithm #GCD
Method for finding the GCD of two integers. Extended Euclidean Algorithm for finding linear combinations.
#### Prime Numbers #Primes #Fundamental
Definition, infinitude of primes (Euclid's proof), prime factorization. Sieve of Eratosthenes.
#### Fundamental Theorem of Arithmetic #Uniqueness #Factorization
Unique factorization of integers into primes.

### Modular Arithmetic and Congruences #ModularArithmetic #Congruences
Arithmetic of remainders, a cornerstone of number theory.
#### Congruence Relation #Equivalence #Modulo
Definition, properties, equivalence classes.
#### Linear Congruences #Equations #Modular
Solving equations of the form ax ≡ b (mod m).
#### Chinese Remainder Theorem #Systems #Congruences
Solving systems of simultaneous linear congruences.
#### Fermat's Little Theorem #Primality #Congruences
Statement: a^(p-1) ≡ 1 (mod p) for prime p and integer a not divisible by p. Proofs and applications.
#### Euler's Totient Theorem #Generalization #Congruences
Generalization of Fermat's Little Theorem using Euler's totient function φ(n). Statement: a^φ(n) ≡ 1 (mod n) for coprime a, n.
#### Wilson's Theorem #Primality #Factorials
Statement: (p-1)! ≡ -1 (mod p) if and only if p is prime.
#### Polynomial Congruences #HigherDegree #Roots
Solving congruences involving polynomials. Hensel's Lemma for lifting solutions.
#### Primitive Roots and Orders #Generators #MultiplicativeGroup
Multiplicative order of an integer modulo n, existence of primitive roots modulo n. Properties of the group of units (Z/nZ)*. Discrete logarithms.

### Quadratic Residues #Quadratic #Congruences
Study of quadratic equations in modular arithmetic.
#### Quadratic Residues and Nonresidues #Squares #Modulo
Definition: a is a quadratic residue mod n if x^2 ≡ a (mod n) has a solution.
#### Legendre Symbol #Notation #QuadraticCharacter
Definition (a/p) for prime p. Properties.
#### Euler's Criterion #LegendreSymbol #Calculation
Formula for calculating the Legendre symbol: (a/p) ≡ a^((p-1)/2) (mod p).
#### Gauss's Lemma #LegendreSymbol #ProofTechnique
Alternative method for evaluating the Legendre symbol.
#### Law of Quadratic Reciprocity #Theorem #Symmetry
Relates (p/q) and (q/p) for distinct odd primes p, q. Supplements for (-1/p) and (2/p). Proofs and applications.
#### Jacobi Symbol #Generalization #CompositeModuli
Generalization of the Legendre symbol to composite moduli.

### Number Theoretic Functions #ArithmeticFunctions #Multiplicative
Functions defined on the set of positive integers, often related to divisibility properties.
#### Definition and Types #Classification #Properties
Functions whose domain is the set of positive integers.
#### Multiplicative and Additive Functions #Property #Divisibility
Definition: f is multiplicative if f(mn) = f(m)f(n) for gcd(m,n)=1. Completely multiplicative if holds for all m,n. Additive functions satisfy f(mn) = f(m)+f(n).
#### Euler's Totient Function (φ(n)) #EulerPhi #Counting
Counts positive integers up to n that are relatively prime to n. Formula based on prime factorization.
#### Divisor Functions (τ(n) or d(n), σ(n)) #Divisors #SumOfDivisors
τ(n) (or d(n)) counts the number of positive divisors of n. σ(n) is the sum of the positive divisors of n. σ_k(n) is the sum of the k-th powers of divisors. Formulas based on prime factorization.
#### Möbius Function (μ(n)) #Mobius #Inversion
Defined based on the prime factorization of n. Important for Möbius inversion.
#### Möbius Inversion Formula #Formula #Summation
Relates a function to the sum of its values over its divisors using the Möbius function.
#### Other Functions #Examples #Specialized
Liouville function (λ(n)), Partition function (p(n)), Prime-counting function (π(x)), Chebyshev functions (ϑ(x), ψ(x)).

### Diophantine Equations #IntegerSolutions #Equations
Equations where only integer solutions are sought.
#### Linear Diophantine Equations #Linear #GCD
Equations of the form ax + by = c. Condition for existence of solutions (gcd(a,b) divides c). Finding general solutions.
#### Pythagorean Triples #Pythagoras #Squares
Solutions to x² + y² = z². Parametrization of primitive solutions.
#### Pell's Equation #Quadratic #Units
Equations of the form x² - Dy² = 1, where D is a non-square integer. Connection to continued fractions and units in quadratic fields.
#### Sums of Squares #Representation #Squares
Lagrange's four-square theorem (every positive integer is a sum of four squares). Sums of two squares, three squares.
#### Fermat's Last Theorem #HigherPowers #NoSolution
Statement: xⁿ + yⁿ = zⁿ has no non-trivial integer solutions for n > 2. History and proof overview (Wiles).
#### Thue Equation #HigherDegree #FiniteSolutions
Equations of the form F(x, y) = k, where F is an irreducible binary form of degree ≥ 3. Finiteness of solutions.
#### Elliptic Curves (Introduction) #Cubic #RationalPoints
Introduction to equations of the form y² = x³ + ax + b. Group structure on rational points. Mordell-Weil theorem (finitely generated group).

## Analytic Number Theory #Analysis #Distribution
Uses methods from mathematical analysis (calculus, complex analysis) to study properties of integers, especially the distribution of prime numbers.
#### Prime Number Theorem #Primes #Asymptotics
Describes the asymptotic distribution of prime numbers. π(x) ~ x/ln(x). Proof outlines (Hadamard, de la Vallée Poussin, elementary proofs by Selberg and Erdős). Error terms.
#### Riemann Zeta Function (ζ(s)) #ZetaFunction #ComplexAnalysis
Definition ζ(s) = Σ 1/n^s. Euler product formula. Analytic continuation. Functional equation. Zeros of the zeta function (trivial and non-trivial).
#### Riemann Hypothesis #Conjecture #Zeros
Conjecture that all non-trivial zeros of ζ(s) lie on the critical line Re(s) = 1/2. Significance and consequences. Generalized Riemann Hypothesis (GRH).
#### Dirichlet L-functions #Characters #PrimesInAP
Generalization of the Riemann zeta function using Dirichlet characters. Used to prove Dirichlet's theorem on arithmetic progressions.
#### Dirichlet's Theorem on Arithmetic Progressions #Primes #ArithmeticProgressions
States that there are infinitely many primes in any arithmetic progression a, a+d, a+2d, ... where gcd(a,d)=1. Proof using L-functions.
#### Sieve Methods #Primes #Counting
Techniques for estimating the size of sifted sets of integers. Sieve of Eratosthenes, Brun's sieve, Selberg sieve, Large sieve. Applications (e.g., Twin Prime Conjecture progress, Chen's theorem).
#### Additive Number Theory #Sums #Representation
Study of representing integers as sums of other integers. Goldbach Conjecture, Waring's problem. Hardy-Littlewood circle method. Schnirelmann density.
#### Distribution of Arithmetic Functions #AverageOrder #NormalOrder
Studying the average values and distribution of values of number theoretic functions. Erdős–Kac theorem.

## Algebraic Number Theory #Algebra #NumberFields
Studies algebraic structures related to algebraic integers. Generalizes arithmetic concepts to algebraic number fields.
#### Algebraic Numbers and Integers #Roots #Polynomials
Definitions, minimal polynomial.
#### Algebraic Number Fields #Extensions #FiniteDegree
Finite field extensions K of Q. Degree [K:Q]. Examples: Quadratic fields Q(√d), Cyclotomic fields Q(ζn).
#### Ring of Integers (O_K) #IntegralClosure #DedekindDomains
Set of algebraic integers within a number field K. Properties: Dedekind domain. Integral basis, discriminant.
#### Ideals and Unique Factorization #Ideals #Factorization
Failure of unique factorization of elements in O_K. Unique factorization of ideals into prime ideals in Dedekind domains. Fractional ideals.
#### Class Group and Class Number #Ideals #Finiteness
Measures the failure of unique factorization of elements. Definition of the ideal class group Cl(K). Finiteness of the class number h_K (Minkowski bound).
#### Units in O_K #InvertibleElements #Structure
Dirichlet's Unit Theorem describing the structure of the group of units O_K*. Regulator. Roots of unity.
#### Galois Theory and Number Fields #Galois #Splitting
Application of Galois theory to number fields. Decomposition group, inertia group, Frobenius element associated with prime ideals in Galois extensions.
#### Ramification Theory #Primes #SplittingBehavior
Study of how prime ideals in Z split (or ramify) in extensions O_K. Relation to the discriminant. Dedekind's criterion.
#### Cyclotomic Fields #RootsOfUnity #SpecialFields
Fields Q(ζn) generated by roots of unity. Their rings of integers Z[ζn]. Connection to Fermat's Last Theorem, reciprocity laws.
#### Local Fields #Completions #pAdic
Fields obtained by completing a number field with respect to a valuation (e.g., p-adic fields Q_p). Hensel's lemma. Hasse principle (local-global principle). Adele ring, Idele group.
#### Class Field Theory #AbelianExtensions #Reciprocity
Describes the abelian extensions of a number field in terms of the arithmetic of the base field. Artin reciprocity law, Hilbert class field, Takagi existence theorem.

## Computational Number Theory #Algorithms #Computation
Develops and analyzes algorithms for number-theoretic problems. Crucial for applications like cryptography.
#### Primality Testing #Prime #Algorithm
Algorithms to determine if a number is prime. Trial division, Fermat test, Miller-Rabin test (probabilistic), AKS primality test (deterministic polynomial time).
#### Integer Factorization #Factorization #Algorithm
Algorithms to find the prime factors of an integer. Trial division, Pollard's rho algorithm, Pollard's p-1 algorithm, Quadratic Sieve (QS), General Number Field Sieve (GNFS), Elliptic Curve Method (ECM). Difficulty of factorization is key to RSA.
#### Discrete Logarithm Problem (DLP) #Logarithm #FiniteFields
Problem of finding x such that g^x ≡ h (mod p). Baby-step giant-step algorithm, Index calculus method, Pollard's rho algorithm for DLP. Difficulty is key to Diffie-Hellman and ElGamal.
#### Algorithms for Finite Fields #FiniteFields #Computation
Arithmetic operations, finding primitive elements, polynomial factorization over finite fields.
#### Lattice Basis Reduction #Lattices #Algorithms
Algorithms like LLL (Lenstra–Lenstra–Lovász) for finding short vectors in lattices. Applications in cryptanalysis and Diophantine approximation.
#### Elliptic Curve Algorithms #EllipticCurves #Computation
Algorithms related to elliptic curves, including point counting, elliptic curve factorization (ECM), elliptic curve discrete logarithm problem (ECDLP).

## Cryptography #Application #Security
Application of number theory concepts, particularly hardness assumptions, to create secure communication systems.
#### Public-Key Cryptography #Asymmetric #Keys
Concept of public and private keys.
#### RSA Cryptosystem #Factorization #Encryption
Based on the presumed difficulty of factoring large integers. Key generation, encryption, decryption.
#### Diffie-Hellman Key Exchange #DiscreteLog #KeyExchange
Protocol for establishing a shared secret key over an insecure channel, based on the difficulty of the discrete logarithm problem.
#### ElGamal Cryptosystem #DiscreteLog #Encryption
Public-key cryptosystem based on the discrete logarithm problem.
#### Elliptic Curve Cryptography (ECC) #EllipticCurves #Efficiency
Cryptosystems based on the algebraic structure of elliptic curves over finite fields. ECDLP presumed difficulty. Offers smaller key sizes for equivalent security compared to RSA.
#### Digital Signatures #Authentication #Integrity
Using public-key cryptography to verify authenticity and integrity of messages (e.g., RSA signatures, DSA, ECDSA).
#### Hash Functions #Hashing #Integrity
Brief mention of number-theoretic hash functions (less common now).

## Diophantine Approximation #Approximation #RationalNumbers
Study of the approximation of real numbers by rational numbers.
#### Dirichlet's Approximation Theorem #Theorem #RationalApproximation
Guarantees existence of good rational approximations.
#### Continued Fractions #Algorithm #Representation
Representation of real numbers as continued fractions. Relation to best rational approximations. Applications (e.g., solving Pell's equation).
#### Liouville Numbers and Transcendence #Transcendental #Approximation
Construction of transcendental numbers using properties of Diophantine approximation (Liouville's theorem).
#### Thue-Siegel-Roth Theorem #Theorem #AlgebraicApproximation
Best possible result on the approximation of algebraic numbers by rationals.
#### Metric Diophantine Approximation #MeasureTheory #AlmostAll
Study of approximation properties that hold for "almost all" real numbers in the sense of measure theory.

## Probabilistic Number Theory #Probability #Distribution
Uses probability theory to study the properties of integers and arithmetic functions.
#### Distribution of Arithmetic Functions #Probability #Randomness
Treating values of arithmetic functions as random variables. Mean values, variances.
#### Erdős–Kac Theorem #NormalDistribution #PrimeFactors
States that the number of distinct prime factors of n (ω(n)) behaves like a normally distributed random variable.
#### Random Models #Models #Primes
Using probabilistic models to make conjectures about integers (e.g., Cramér's model for prime gaps).

## Geometric Number Theory #Geometry #Lattices
Uses geometric methods, particularly the study of lattices, to solve problems in number theory.
#### Lattices #Points #Geometry
Discrete subgroups of R^n. Basis, fundamental domain, determinant.
#### Minkowski's Theorem #ConvexBody #LatticePoints
Relates the volume of a convex, centrally symmetric body to the existence of non-zero lattice points within it. Applications (e.g., sums of squares, discriminant bounds).
#### Successive Minima #Lattice #Geometry
Measures related to the shortest independent vectors in a lattice.
#### Sphere Packing #Packing #Density
Problem of arranging non-overlapping spheres in space to maximize density. Connections to lattices.

## Combinatorial Number Theory #Combinatorics #Sets
Intersection of combinatorics and number theory, studying properties of subsets of integers and combinatorial problems with number-theoretic aspects.
#### Additive Combinatorics #Sumsets #Structure
Study of the properties of sumsets A+B = {a+b | a∈A, b∈B}. Cauchy-Davenport theorem, Plünnecke-Ruzsa inequalities.
#### Sidon Sets #DistinctSums #Combinatorics
Sets where all pairwise sums are distinct.
#### Ramsey Theory #Order #Disorder
Finding guaranteed patterns in large structures (e.g., Schur's theorem, Van der Waerden's theorem).
#### Partition Theory #Partitions #Representation
Study of the ways an integer can be written as a sum of positive integers. Generating functions, Euler's pentagonal number theorem, Rogers-Ramanujan identities.

## Transcendental Number Theory #Transcendence #Irrationality
Study of transcendental numbers (numbers that are not roots of any polynomial with integer coefficients).
#### Irrationality Proofs #Pi #e
Proofs of the irrationality of numbers like e, π, √2.
#### Transcendence of e and π #LindemannWeierstrass #Theorem
Proofs of the transcendence of e (Hermite) and π (Lindemann). Lindemann–Weierstrass theorem.
#### Hilbert's Seventh Problem #Logarithms #Exponents
Gelfond–Schneider theorem concerning the transcendence of a^b.
#### Classification of Numbers #Algebraic #Transcendental
Mahler's classification, Schanuel's conjecture.

## History of Number Theory #History #Development
Evolution of number theory from ancient civilizations to modern research.
#### Ancient Origins #Babylon #Greece #Diophantus
Early number concepts, Pythagorean triples (Plimpton 322), Euclid's Elements (primes, GCD), Diophantus' Arithmetica.
#### Contributions from India and Islamic Golden Age #Aryabhata #Brahmagupta #AlKhwarizmi
Work on linear congruences, Pell's equation.
#### Early Modern Period #Fermat #Euler #Lagrange
Fermat's work (little theorem, last theorem conjecture), Euler's contributions (totient function, quadratic reciprocity beginnings, analysis connection), Lagrange (four-square theorem, Pell's equation).
#### Gauss #Disquisitiones #Systematization
Carl Friedrich Gauss's "Disquisitiones Arithmeticae" (1801) systematized the field, introducing congruences formally, proving quadratic reciprocity.
#### 19th Century Development #Dirichlet #Riemann #Dedekind #Kummer
Dirichlet (L-functions, arithmetic progressions), Riemann (zeta function, hypothesis), Dedekind (ideals, rings of integers), Kummer (ideal numbers, Fermat's Last Theorem work). Rise of algebraic and analytic number theory.
#### 20th Century and Beyond #Hardy #Littlewood #Ramanujan #Weil #Wiles
Hardy-Littlewood circle method, Ramanujan's work, Weil conjectures, development of class field theory, computational number theory, Wiles' proof of Fermat's Last Theorem, Green-Tao theorem.
