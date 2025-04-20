# Combinatorics #Mathematics #DiscreteMath #Counting
Combinatorics is a branch of mathematics concerning the study of finite or countable discrete structures. Aspects of combinatorics include counting the structures of a given kind and size (enumerative combinatorics), deciding when certain criteria can be met, and constructing and analyzing objects meeting the criteria (as in combinatorial designs and matroid theory), finding "largest", "smallest", or "optimal" objects (extremal combinatorics and combinatorial optimization), and studying combinatorial structures arising in an algebraic context, or applying algebraic techniques to combinatorial problems (algebraic combinatorics).

## Fundamental Counting Principles #Basics #Rules #CoreConcepts
The foundational rules upon which most counting techniques are built.

### Rule of Sum #AdditionPrinciple #DisjointSets
If a task can be done in one of `n1` ways or in one of `n2` ways, where none of the set of `n1` ways is the same as any of the set of `n2` ways, then there are `n1 + n2` ways to do the task.
Applies when choices are mutually exclusive ('OR').

### Rule of Product #MultiplicationPrinciple #Sequences
If a procedure can be broken down into a sequence of two tasks, and if there are `n1` ways to do the first task and `n2` ways to do the second task after the first task has been done, then there are `n1 * n2` ways to do the procedure.
Applies when choices are sequential or independent ('AND').

### Bijection Principle #OneToOne #Correspondence
If there exists a bijection (one-to-one correspondence) between two finite sets A and B, then they have the same number of elements (|A| = |B|). This allows counting one set by counting another, easier-to-count set.

## Permutations and Combinations #Arrangements #Selections #Basics
Core concepts for arranging and selecting objects from a set.

### Permutations #OrderMatters #Arrangement
Arrangements of objects where the order is significant.

#### Permutations without Repetition #DistinctObjects
Number of ways to arrange `k` distinct objects from a set of `n` distinct objects: P(n, k) = n! / (n-k)!

#### Permutations with Repetition #MultisetPermutations #NonDistinctObjects
Number of ways to arrange `n` objects where there are `n1` identical objects of type 1, `n2` of type 2, ..., `nk` of type k: n! / (n1! * n2! * ... * nk!)

#### Circular Permutations #ArrangementsInCircle
Arrangements of objects in a circle, where rotations are considered the same. For `n` distinct objects, the number is (n-1)!.

### Combinations #OrderDoesNotMatter #Selection
Selections of objects where the order is not significant.

#### Combinations without Repetition #Subsets #DistinctObjects
Number of ways to choose `k` distinct objects from a set of `n` distinct objects: C(n, k) = n! / (k! * (n-k)!) = (n choose k).

#### Combinations with Repetition #Multisets #StarsAndBars
Number of ways to choose `k` objects from `n` types of objects with replacement allowed: C(n+k-1, k) = (n+k-1)! / (k! * (n-1)!). Often solved using the "stars and bars" method.

## Binomial Coefficients and Theorem #Algebra #Expansions #Identities
Properties and applications of the coefficients in the binomial expansion.

### Binomial Theorem #ExpansionFormula #(x+y)^n
The theorem describing the algebraic expansion of powers of a binomial: (x + y)^n = Σ [k=0 to n] C(n, k) * x^(n-k) * y^k.

### Pascal's Triangle #CombinatorialIdentity #RecursiveStructure
A triangular array of binomial coefficients providing a visual representation of C(n, k) and their recursive relationship: C(n, k) = C(n-1, k-1) + C(n-1, k).

### Combinatorial Identities #Proofs #Relationships
Equations involving binomial coefficients. Examples include Symmetry Identity C(n, k) = C(n, n-k), Pascal's Identity, Vandermonde's Identity. Often proved using combinatorial arguments (double counting) or algebraic manipulation.

### Multinomial Theorem #MultipleVariables #Expansion
Generalization of the Binomial Theorem to powers of a multinomial: (x1 + x2 + ... + xm)^n. Coefficients are Multinomial Coefficients.

## Inclusion-Exclusion Principle #CountingTechnique #SetTheory #OverlappingSets
A counting technique used to find the number of elements in the union of multiple sets by adding the sizes of individual sets, subtracting the sizes of all pairwise intersections, adding the sizes of all triple intersections, and so on.
|A ∪ B ∪ C| = |A| + |B| + |C| - |A ∩ B| - |A ∩ C| - |B ∩ C| + |A ∩ B ∩ C|

### Derangements #FixedPoints #HatCheckProblem
A permutation of the elements of a set such that no element appears in its original position. The number of derangements of `n` items, D_n or !n, can be calculated using the Inclusion-Exclusion Principle. D_n = n! * Σ [k=0 to n] (-1)^k / k!

### Sieve Methods #Generalizations #NumberTheory
Generalizations of the inclusion-exclusion principle, such as Brun's sieve and Selberg's sieve, often used in number theory.

## Generating Functions #PowerSeries #EncodingSequences #ProblemSolvingTool
An algebraic tool used to solve counting problems by encoding sequences as coefficients of formal power series.

### Ordinary Generating Functions (OGF) #Standard #CombinationsWithRepetition
Used for problems where order doesn't matter (combinations). The OGF for a sequence a_n is A(x) = Σ [n=0 to ∞] a_n * x^n. Useful for solving recurrence relations and partition problems.

### Exponential Generating Functions (EGF) #OrderMatters #Permutations
Used for problems where order matters (permutations). The EGF for a sequence a_n is E(x) = Σ [n=0 to ∞] a_n * x^n / n!. Useful for labelled structures.

### Operations on Generating Functions #Addition #Multiplication #Calculus
Addition corresponds to the sum rule, multiplication corresponds to the product rule (convolution). Differentiation and integration can manipulate series to find related counts.

### Applications #SolvingRecurrences #PartitionProblems #AsymptoticAnalysis
Used to solve linear recurrence relations, count integer partitions, find closed-form expressions, and derive asymptotic estimates.

## Recurrence Relations #RecursiveDefinitions #Sequences #DifferenceEquations
Equations that define a sequence recursively based on preceding terms.

### Setting up Recurrence Relations #ModelingProblems #RecursiveThinking
Translating combinatorial problems into recursive definitions. Examples include Fibonacci numbers, Tower of Hanoi.

### Solving Linear Homogeneous Recurrence Relations #CharacteristicEquation #Roots
Finding closed-form solutions using the characteristic equation method. Depends on the nature of the roots (distinct real, repeated real, complex).

### Solving Linear Nonhomogeneous Recurrence Relations #ParticularSolution #UndeterminedCoefficients
Finding solutions by combining the homogeneous solution with a particular solution related to the nonhomogeneous term.

### Solving Recurrences using Generating Functions #SystematicMethod #AlgebraicManipulation
Using generating functions to convert recurrence relations into algebraic equations that can be solved for the generating function, then extracting coefficients.

## Pigeonhole Principle #DirichletPrinciple #ExistenceProof #SimpleButPowerful
If `n` items are put into `m` containers, with `n > m`, then at least one container must contain more than one item.

### Simple Pigeonhole Principle #BasicForm #n>m
The basic statement as described above.

### Generalized Pigeonhole Principle #LowerBound #CeilingFunction
If `n` items are put into `m` containers, then at least one container must contain at least ⌈n/m⌉ items.

### Applications #Proofs #NumberTheory #Geometry #GraphTheory
Used in various proofs to show the existence of a certain property without explicitly constructing it. Examples include finding subsets with specific sum properties, geometric configurations, graph properties.

## Enumerative Combinatorics #CountingStructures #SystematicCounting
The area focused specifically on counting the number of combinatorial objects of a certain type.

### Counting Sets and Sequences #Permutations #Combinations #Variations
Basic building blocks of enumeration.

### Counting Trees #LabeledTrees #UnlabeledTrees #CayleysFormula
Counting different types of trees (rooted, unrooted, ordered). Cayley's formula states there are n^(n-2) labeled trees on n vertices.

### Counting Integer Partitions #UnorderedSums #FerrersDiagrams
Counting the ways a positive integer can be written as a sum of positive integers, without regard to order. Generating functions are a key tool.

### Counting permutations with restricted positions #Derangements #RookPolynomials
Counting permutations where elements are not allowed in certain positions. Rook polynomials can be used on chessboard-like problems.

### Pólya Enumeration Theorem #Symmetry #GroupAction #CountingColorings
A theorem used for counting objects under symmetries, often applied to chemical isomer enumeration and graph coloring problems. Requires knowledge of group theory (group actions, cycle index).

## Graph Theory (Combinatorial Aspects) #Networks #Connections #Structures
The study of graphs (vertices connected by edges), with many combinatorial sub-problems.

### Graph Enumeration #CountingGraphs #Isomorphism
Counting graphs with specific properties (e.g., number of vertices, edges, degree sequence) up to isomorphism.

### Graph Coloring #VertexColoring #EdgeColoring #ChromaticNumber
Assigning colors to vertices or edges subject to constraints (e.g., adjacent vertices have different colors). Determining the minimum number of colors needed (chromatic number).

### Matchings in Graphs #PairingVertices #Hall'sTheorem #Tutte'sTheorem
Finding sets of edges with no common vertices. Hall's Marriage Theorem for bipartite graphs. Tutte's theorem for general graphs.

### Network Flows #MaxFlowMinCut #Optimization #Algorithms
Studying flows in networks, often related to optimization problems. Max-Flow Min-Cut theorem is a fundamental result.

### Extremal Graph Theory #TuranGraphs #ForbiddenSubgraphs
Finding the maximum or minimum number of edges, vertices, or other parameters a graph can have while satisfying certain properties (e.g., not containing a specific subgraph). Turan's theorem is a classic example.

## Design Theory #BlockDesigns #FiniteGeometry #Symmetry
The study of combinatorial designs, which are subsets (blocks) of a finite set satisfying certain intersection properties.

### Balanced Incomplete Block Designs (BIBD) #ConstantIntersection #SymmetricDesigns
Designs where every pair of elements appears in exactly λ blocks. Symmetric designs have the same number of points and blocks (v=b).

### Steiner Systems #SpecificIntersection #Kirkman'sSchoolgirlProblem
A type of block design where λ=1. Kirkman's Schoolgirl Problem is a famous example of a Steiner Triple System S(2,3,15).

### Finite Projective Planes #AxiomaticGeometry #OrderN
Geometric structures built from finite sets of points and lines satisfying specific incidence axioms.

### Latin Squares #OrthogonalArrays #ExperimentalDesign
n x n arrays filled with n symbols, each occurring exactly once in each row and column. Used in experimental design and coding theory. Mutually Orthogonal Latin Squares (MOLS).

## Algebraic Combinatorics #AlgebraicStructures #Symmetry #RepresentationTheory
An area that employs methods of abstract algebra (groups, rings, vector spaces, lattices) to solve combinatorial problems, and vice versa.

### Symmetric Functions #SchurPolynomials #RepresentationTheory
Polynomials that are invariant under permutation of variables. Connected to the representation theory of the symmetric group.

### Young Tableaux #Partitions #SymmetricGroup #RSKCorrespondence
Combinatorial objects used to study partitions, symmetric functions, and representations of the symmetric group. Robinson-Schensted-Knuth (RSK) correspondence.

### Matroid Theory #Abstraction #Independence #Duality
Abstracts the notion of linear independence in vector spaces and forests in graphs. Studies sets with an independence structure.

### Combinatorial Commutative Algebra #MonomialIdeals #StanleyReisnerRings
Connections between combinatorics (especially simplicial complexes) and commutative algebra.

## Probabilistic Method #Probability #ExistenceProofs #RandomStructures
A non-constructive method, primarily attributed to Paul Erdős, for proving the existence of a prescribed kind of combinatorial object. It works by showing that if one randomly chooses objects from a specified class, the probability that the result has the desired property is greater than zero.

### Basic Method #Expectation #LinearityOfExpectation
Showing positive probability implies existence. Using linearity of expectation to prove bounds.

### Alterations #RefiningRandomObjects #DeletionMethod
Modifying a randomly generated object to meet the desired criteria.

### Second Moment Method #Variance #ConcentrationInequalities
Using variance calculations (e.g., Chebyshev's inequality) to show that a random variable is close to its expectation with high probability.

### Lovász Local Lemma #RareEvents #DependencyGraph
A tool to prove existence when bad events are individually likely but have limited dependence on each other.

## Extremal Combinatorics #Maximum #Minimum #Bounds
Finds the maximum or minimum possible size of a combinatorial structure satisfying certain properties.

### Turán's Theorem #GraphTheory #CliqueFree
Determines the maximum number of edges in a graph on n vertices that does not contain a complete subgraph K_r.

### Sperner's Theorem #Antichains #SetTheory #LYMInequality
Determines the maximum size of an antichain (a family of subsets where no set contains another) in the power set of an n-element set.

### Erdős–Ko–Rado Theorem #IntersectingFamilies #SetTheory
Determines the maximum size of an intersecting family of k-subsets of an n-element set.

### Szemerédi's Theorem #ArithmeticProgressions #Density
States that a subset of integers with positive upper density must contain arbitrarily long arithmetic progressions.

## Ramsey Theory #OrderInChaos #GuaranteedStructures #MonochromaticSubgraphs
Studies the conditions under which order must appear. A typical result states that if a structure is large enough, it must contain a specific substructure. "Complete disorder is impossible."

### Ramsey's Theorem #GraphColoring #Cliques #IndependentSets
Guarantees that for any graph coloring, sufficiently large complete graphs will contain monochromatic cliques. R(s, t) denotes the smallest N such that any 2-coloring of the edges of K_N contains either a red K_s or a blue K_t.

### Van der Waerden's Theorem #ArithmeticProgressions #IntegerColoring
States that for any given positive integers r and k, there is some number W(r, k) such that if the integers {1, 2, ..., W(r, k)} are colored with r different colors, then there must exist a monochromatic arithmetic progression of length k.

### Hales–Jewett Theorem #TicTacToe #CombinatorialGeometry
A generalization of van der Waerden's theorem, often visualized in terms of high-dimensional tic-tac-toe.

## Computational Combinatorics #Algorithms #Complexity #Implementation
Focuses on the algorithmic aspects of combinatorics, including generation, enumeration, optimization, and complexity analysis.

### Combinatorial Algorithms #Generation #Enumeration #Optimization
Algorithms for generating permutations, combinations, partitions, trees, etc. Algorithms for solving combinatorial optimization problems (e.g., Traveling Salesperson Problem).

### Complexity of Combinatorial Problems #PvsNP #NPComplete #Approximation
Analyzing the computational difficulty of combinatorial problems. Many are NP-hard or NP-complete. Study of approximation algorithms.

### Software for Combinatorics #SageMath #Maple #Mathematica
Computational tools and libraries used for combinatorial exploration and calculation.

## Applications of Combinatorics #RealWorld #Interdisciplinary #ProblemSolving
Combinatorics finds applications in numerous fields.

### Computer Science #AlgorithmAnalysis #DataStructures #Networks #Cryptography
Analysis of algorithms, design of networks, hashing, cryptography, database design.

### Probability and Statistics #DiscreteProbability #Sampling #ExperimentalDesign
Calculating probabilities in discrete sample spaces, designing statistical experiments, sampling methods.

### Operations Research #Optimization #Scheduling #Logistics
Scheduling problems, resource allocation, network optimization, routing.

### Biology #Genomics #Phylogenetics #Epidemiology
Sequence analysis, constructing evolutionary trees, modeling disease spread.

### Physics #StatisticalMechanics #IsingModel #LatticeModels
Modeling systems with many interacting components.

### Chemistry #IsomerEnumeration #MolecularStructures
Counting chemical isomers using tools like Pólya Enumeration Theorem.
