# Discrete Mathematics #Overview #Foundations #ComputerScience
The study of mathematical structures that are fundamentally discrete rather than continuous.

## Foundations: Logic and Proofs #Logic #Proofs #Reasoning
Fundamental principles of logical reasoning and constructing mathematical arguments.

### Propositional Logic #Propositions #Connectives #TruthTables
Deals with propositions (statements that are true or false) and logical operators.
#### Statements and Truth Values #Basics #Boolean
#### Logical Connectives (AND, OR, NOT, XOR, IMPLIES, IFF) #Operators #BooleanAlgebra
#### Truth Tables #Evaluation #Verification
#### Logical Equivalence #Laws #DeMorgan #Distributive
#### Tautologies, Contradictions, Contingencies #Classification #Formulas
#### Conditional Statements (Converse, Inverse, Contrapositive) #Implication

### Predicate Logic #Quantifiers #Predicates #FirstOrderLogic
Extends propositional logic by introducing variables, predicates, and quantifiers.
#### Predicates and Variables #Definition #Functions
#### Quantifiers (Universal ∀, Existential ∃) #Scope #Binding
#### Nested Quantifiers #Complexity #Order
#### Negating Quantified Statements #DeMorganLaws
#### Logical Equivalence with Quantifiers #Rules #Inference

### Rules of Inference #Deduction #Arguments #Validity
Techniques for deriving conclusions from premises.
#### Modus Ponens, Modus Tollens #BasicRules #Implication
#### Hypothetical Syllogism, Disjunctive Syllogism #ChainRules #Disjunction
#### Addition, Simplification, Conjunction #BasicRules
#### Resolution #AutomatedReasoning #Refutation
#### Rules for Quantified Statements (Universal Instantiation/Generalization, Existential Instantiation/Generalization) #Inference #Quantifiers

### Proof Techniques #Methods #Validation #Rigor
Strategies for constructing valid mathematical proofs.
#### Direct Proofs #StandardMethod #Implication
#### Proof by Contraposition #IndirectMethod #Implication
#### Proof by Contradiction #IndirectMethod #ReductioAdAbsurdum
#### Proof by Cases #Exhaustion #Disjunction
#### Proofs of Equivalence (IFF statements) #Biconditional
#### Existence Proofs (Constructive, Non-constructive) #Demonstration #Witness
#### Uniqueness Proofs #Singularity #OneAndOnlyOne
#### Counterexamples #Disproof #Falsification
#### Mathematical Induction (covered later) #InductionPrinciple

## Set Theory #Sets #Collections #Membership
The study of sets, or collections of objects.
### Basic Concepts #Definitions #Notation
#### Sets and Elements #Membership #∈
#### Set Notation (Roster, Set-Builder) #Representation
#### Special Sets (Empty Set ∅, Universal Set U) #Constants
#### Subsets (⊆) and Proper Subsets (⊂) #Inclusion
#### Set Equality #Definition

### Set Operations #Manipulation #Algebra
#### Union (∪), Intersection (∩), Difference (-) #BinaryOps
#### Complement (A') #UnaryOp
#### Power Set (P(S)) #SetOfSubsets
#### Cartesian Product (A × B) #OrderedPairs #Tuples
#### Venn Diagrams #Visualization #Relationships

### Set Identities #Laws #Equivalence
#### Commutative, Associative, Distributive Laws #Properties
#### De Morgan's Laws for Sets #Complement #UnionIntersection
#### Identity and Domination Laws #EmptySet #UniversalSet
#### Idempotent Laws #SelfOperation
#### Proving Set Identities #MembershipTables #LogicalEquivalence

### Cardinality of Sets #Size #Counting
#### Finite Sets #CountableElements
#### Infinite Sets (Countable vs. Uncountable) #Infinity #Cantor
#### Cardinality of Power Sets #Formula #|P(S)|=2^|S|
#### Principle of Inclusion-Exclusion (for counting) #OverlappingSets

## Functions #Mappings #Transformations #Relationships
Rules that assign each input element to exactly one output element.
### Basic Definitions #CoreConcepts #Notation
#### Domain, Codomain, Range #Sets #InputOutput
#### Function Notation (f: A → B) #Mapping
#### Image and Preimage #Elements #Sets
#### Well-defined Functions #Uniqueness #Existence

### Types of Functions #Properties #Classification
#### Injective (One-to-One) #DistinctOutputs
#### Surjective (Onto) #CoversCodomain
#### Bijective (One-to-One Correspondence) #InjectiveAndSurjective #Pairing
#### Identity Function #SelfMap
#### Constant Function #SingleOutput

### Function Operations #CombiningFunctions #Manipulation
#### Function Composition (f ∘ g) #Chaining
#### Inverse Functions (f⁻¹) #BijectiveRequirement #Reversal
#### Properties of Composition and Inverses #Associativity

### Special Functions #Examples #Applications
#### Floor and Ceiling Functions #Integers #Rounding
#### Factorial Function #Recursion #Counting
#### Modulo Operator #Remainder #NumberTheory
#### Logarithmic Functions #Exponents #Growth
#### Polynomial Functions #Algebra

## Relations #Relationships #Connections #Structures
Generalizations of functions; sets of ordered pairs defining relationships between elements.
### Basic Definitions #CoreConcepts #Notation
#### Binary Relations #Pairs #SubsetsOfCartesianProduct
#### Representing Relations (Matrices, Digraphs) #Visualization #DataStructures

### Properties of Relations #Characteristics #Classification
#### Reflexive, Irreflexive #SelfRelation
#### Symmetric, Antisymmetric, Asymmetric #PairRelations
#### Transitive #ChainRelation

### Combining Relations #Operations #NewRelations
#### Set Operations (Union, Intersection, Difference) on Relations #Combining
#### Composition of Relations #Chaining #MatrixMultiplication

### Equivalence Relations #Partitioning #Sameness
#### Definition (Reflexive, Symmetric, Transitive) #Properties
#### Equivalence Classes #Grouping #Partition
#### Partitions and Equivalence Relations #Correspondence

### Partial Orders and Total Orders #Ordering #Hierarchy
#### Partial Ordering (Posets - Reflexive, Antisymmetric, Transitive) #Comparison #Structure
#### Hasse Diagrams #Visualization #Posets
#### Total Ordering (Linear Ordering) #CompleteComparison
#### Well-Ordering Principle #LeastElement #NaturalNumbers
#### Lexicographical Order #DictionaryOrder

### Closures of Relations #Completion #Properties
#### Reflexive Closure #AddingSelfLoops
#### Symmetric Closure #AddingReversePairs
#### Transitive Closure #Reachability #WarshallAlgorithm

## Algorithms #Computation #Procedures #Efficiency
Step-by-step procedures for solving problems or performing computations.
### Algorithm Concepts #Basics #Definition
#### Properties of Algorithms (Input, Output, Definiteness, Finiteness, Effectiveness) #Criteria
#### Pseudocode #Representation #LanguageAgnostic
#### Algorithm Design Paradigms (Greedy, Divide and Conquer, Dynamic Programming - introduced) #Strategies

### Algorithm Analysis #Performance #Complexity
#### Time Complexity #ExecutionTime #Efficiency
#### Space Complexity #MemoryUsage #Resources
#### Asymptotic Notation (Big-O, Big-Ω, Big-Θ) #GrowthRates #UpperLowerBounds
#### Worst-Case, Average-Case, Best-Case Analysis #Scenarios

### Searching Algorithms #FindingData #Lookup
#### Linear Search #SequentialScan
#### Binary Search #DivideAndConquer #SortedData

### Sorting Algorithms #OrderingData #Arrangement
#### Bubble Sort, Selection Sort, Insertion Sort #SimpleSorts #Quadratic
#### Merge Sort #DivideAndConquer #NLogN
#### Quick Sort #DivideAndConquer #AverageNLogN
#### Comparison of Sorting Algorithms #Tradeoffs #Stability

### Recursive Algorithms #SelfReference #Recursion
#### Definition and Structure #BaseCase #RecursiveStep
#### Examples (Factorial, Fibonacci, Merge Sort) #Applications
#### Analyzing Recursive Algorithms (Recurrence Relations - introduced) #Complexity

## Number Theory #Integers #Primes #Divisibility
The study of integers and their properties.
### Divisibility and Modular Arithmetic #Remainders #Congruence
#### Division Algorithm #QuotientRemainder
#### Divisibility Properties #Rules
#### Modular Arithmetic #CongruenceClasses #ClockArithmetic
#### Arithmetic Operations Modulo m #Addition #Multiplication

### Primes and Greatest Common Divisors (GCD) #Factors #Commonality
#### Prime Numbers #FundamentalBuildingBlocks
#### Composite Numbers #Factorable
#### Fundamental Theorem of Arithmetic #UniqueFactorization
#### Greatest Common Divisor (GCD) #LargestCommonFactor
#### Euclidean Algorithm #EfficientGCDCalculation
#### Least Common Multiple (LCM) #SmallestCommonMultiple
#### Relationship between GCD and LCM #Formula

### Congruences #Equations #ModularArithmetic
#### Linear Congruences (ax ≡ b (mod m)) #Solving
#### Chinese Remainder Theorem #SystemsOfCongruences
#### Fermat's Little Theorem #PrimalityTest #Exponentiation
#### Euler's Totient Function (φ(n)) #CountingCoprimes
#### Euler's Theorem #GeneralizationOfFermat

### Applications of Number Theory #Cryptography #Coding
#### Cryptography (RSA Algorithm) #PublicKey #Security
#### Hashing Functions #DataStructures #Indexing
#### Pseudorandom Number Generation #Simulation #Security
#### Check Digits (ISBN, UPC) #ErrorDetection

## Induction and Recursion #ProofTechniques #RecursiveDefinitions #Structures
Powerful techniques for proofs and definitions involving sequences or structures defined in terms of themselves.
### Mathematical Induction #ProofMethod #NaturalNumbers
#### Principle of Mathematical Induction (Weak Induction) #BaseCase #InductiveStep
#### Strong Induction #ModifiedInductiveStep #MultipleBaseCases
#### Well-Ordering Principle Connection #Foundation
#### Examples (Summation formulas, Divisibility proofs) #Applications

### Recursive Definitions #SelfReference #Construction
#### Recursively Defined Sequences (e.g., Fibonacci) #RecurrenceRelations
#### Recursively Defined Sets #BuildingBlocks
#### Recursively Defined Structures (e.g., Trees, Lists) #DataStructures
#### Structural Induction #ProofMethodForRecursiveStructures

### Recurrence Relations #Modeling #Analysis
#### Definition and Examples #Sequences #Algorithms
#### Solving Linear Homogeneous Recurrence Relations with Constant Coefficients #CharacteristicEquation
#### Solving Linear Nonhomogeneous Recurrence Relations #ParticularSolution
#### Divide-and-Conquer Recurrences (Master Theorem - optional) #AlgorithmAnalysis

## Combinatorics (Counting Techniques) #Counting #Arrangements #Selections
The mathematics of counting, arrangement, and combination of objects.
### Basic Counting Principles #Fundamentals #Rules
#### Sum Rule #DisjointChoices #OR
#### Product Rule #SequentialChoices #AND
#### Principle of Inclusion-Exclusion #OverlappingSets #Correction

### Permutations and Combinations #Arrangements #Selections
#### Permutations (Order Matters) #P(n,k) #Arrangement
#### Combinations (Order Doesn't Matter) #C(n,k) #BinomialCoefficient #Selection
#### Permutations with Repetition #NonDistinctItems
#### Combinations with Repetition (Stars and Bars) #Multisets

### Binomial Theorem #Expansions #Coefficients
#### Binomial Coefficients #ChooseFunction #C(n,k)
#### Binomial Theorem ((x+y)^n) #ExpansionFormula
#### Pascal's Triangle #Identities #Patterns
#### Combinatorial Proofs #CountingArguments

### Advanced Counting Techniques #FurtherMethods #Applications
#### Pigeonhole Principle #Distribution #Guarantee
#### Generalized Pigeonhole Principle #LowerBound
#### Generating Functions #EncodingSequences #SolvingRecurrences
#### Catalan Numbers #SpecialSequence #TreesPaths

## Discrete Probability #Chance #Likelihood #Randomness
Probability theory applied to countable sample spaces.
### Finite Probability Spaces #Events #Outcomes
#### Sample Spaces and Events #Sets #Possibilities
#### Probability Axioms #Rules #Kolmogorov
#### Assigning Probabilities (Laplace/Classical Probability) #EquallyLikelyOutcomes
#### Probability of Complements and Unions of Events #Formulas #InclusionExclusion

### Conditional Probability and Independence #Dependence #Influence
#### Conditional Probability (P(A|B)) #GivenInformation #ReducedSampleSpace
#### Bayes' Theorem #InverseProbability #UpdatingBeliefs
#### Independent Events #NoInfluence #ProductRule

### Random Variables and Expectation #Value #Average
#### Random Variables (Discrete) #MappingOutcomesToNumbers
#### Probability Distributions (Probability Mass Function - PMF) #LikelihoodOfValues
#### Expected Value (Expectation) #AverageOutcome #WeightedMean
#### Variance and Standard Deviation #Spread #Dispersion
#### Linearity of Expectation #SumOfExpectations

### Common Discrete Distributions #Models #Patterns
#### Bernoulli Distribution #SingleTrial
#### Binomial Distribution #MultipleBernoulliTrials
#### Geometric Distribution #WaitingForSuccess
#### Poisson Distribution (optional) #EventsInIntervals

## Graph Theory #Networks #Connections #Relationships
The study of graphs, which model relationships between objects.
### Introduction to Graphs #Definitions #Types
#### Vertices (Nodes), Edges (Links), Adjacency, Incidence #Basics
#### Types of Graphs (Undirected, Directed, Simple, Multigraph, Pseudograph) #Variations
#### Weighted Graphs #EdgeValues #CostsLengths
#### Special Graphs (Complete K_n, Cycles C_n, Wheels W_n, Bipartite K_{m,n}, Cubes Q_n) #Examples

### Graph Representation and Isomorphism #DataStructures #Equivalence
#### Adjacency Lists #MemoryEfficient
#### Adjacency Matrices #FastLookup
#### Incidence Matrices #EdgeVertexRelationship
#### Graph Isomorphism #StructuralEquivalence #Sameness

### Connectivity #Paths #Reachability
#### Paths, Circuits, Cycles #Traversal #Sequences
#### Connected Components (Undirected Graphs) #Subgraphs
#### Strongly Connected Components (Directed Graphs) #MutualReachability
#### Cut Vertices (Articulation Points) and Cut Edges (Bridges) #Vulnerability

### Euler and Hamilton Paths #Traversal #Covering
#### Euler Paths and Circuits (Traverse each edge once) #KonigsbergBridgeProblem #DegreeCondition
#### Hamilton Paths and Circuits (Visit each vertex once) #TravelingSalespersonProblem #NPComplete

### Shortest Path Problems #Optimization #Distance
#### Weighted Graphs #EdgeCosts
#### Dijkstra's Algorithm #SingleSourceShortestPath #NonNegativeWeights
#### Bellman-Ford Algorithm (optional) #HandlesNegativeWeights
#### Floyd-Warshall Algorithm (optional) #AllPairsShortestPath

### Planar Graphs #Drawing #Embedding
#### Definition and Examples #NoEdgeCrossings
#### Euler's Formula (V - E + F = 2) #Polyhedra #Regions
#### Kuratowski's Theorem (K_5, K_{3,3}) #NonPlanarCharacterization

### Graph Coloring #Assignment #Constraints
#### Vertex Coloring #AdjacentVerticesDifferentColors
#### Chromatic Number #MinimumColorsNeeded
#### Edge Coloring (optional) #AdjacentEdgesDifferentColors
#### Applications (Scheduling, Register Allocation) #RealWorld

## Trees #Hierarchies #AcyclicGraphs #DataStructures
A specific type of graph that is connected and acyclic.
### Introduction to Trees #Definitions #Properties
#### Acyclic Connected Graphs #Definition
#### Rooted Trees #Hierarchy #ParentChild
#### Properties (n vertices, n-1 edges) #Characteristics
#### Subtrees #RecursiveStructure

### Applications of Trees #Uses #Modeling
#### Binary Search Trees #EfficientSearch #OrderedData
#### Decision Trees #Classification #MachineLearning
#### Spanning Trees #ConnectingVertices #NetworkDesign
#### Huffman Coding Trees #DataCompression #PrefixCodes

### Spanning Trees #NetworkBackbones #Optimization
#### Definition #Subgraph #ConnectsAllVertices
#### Minimum Spanning Trees (MST) #LowestTotalWeight
#### Prim's Algorithm #GreedyMethod #BuildFromVertex
#### Kruskal's Algorithm #GreedyMethod #BuildFromEdges

### Tree Traversal #VisitingNodes #Algorithms
#### Preorder Traversal #RootLeftRight
#### Inorder Traversal #LeftRootRight #BSTs
#### Postorder Traversal #LeftRightRoot
#### Breadth-First Search (BFS) / Level Order Traversal #QueueBased
#### Depth-First Search (DFS) #StackBased #Recursion

## Algebraic Structures #AbstractAlgebra #Operations #GroupsRingsFields
Sets equipped with operations satisfying certain axioms.
### Introduction to Algebra #Operations #Properties
#### Binary Operations #Closure
#### Properties (Associativity, Commutativity, Identity, Inverse) #Axioms

### Groups #Symmetry #Structure
#### Definition and Examples (Integers under Addition, Non-zero Rationals under Multiplication) #CoreAlgebraicStructure
#### Subgroups #SubsetStructure
#### Cyclic Groups #GeneratedByOneElement
#### Permutation Groups #SymmetryOfObjects
#### Lagrange's Theorem (Order of subgroup divides order of group - statement) #SizeConstraint

### Rings and Fields #NumberSystems #Polynomials
#### Rings (Two operations: Addition and Multiplication, e.g., Integers) #Structure
#### Fields (Rings where non-zero elements form a group under multiplication, e.g., Rationals, Reals, Complex) #DivisionPossible
#### Finite Fields (Galois Fields - GF(p^n)) #Cryptography #CodingTheory

## Boolean Algebra #LogicGates #Circuits #DigitalDesign
Algebra dealing with true/false values, fundamental to digital logic.
### Boolean Functions #InputOutput #Logic
#### Boolean Variables and Operators (AND, OR, NOT) #Basics
#### Representing Boolean Functions (Tables, Expressions) #Formats
#### Functional Completeness (e.g., NAND, NOR) #BuildingBlocks

### Logic Gates #Hardware #Implementation
#### AND, OR, NOT, NAND, NOR, XOR Gates #BasicUnits
#### Combinational Circuits #GateNetworks #NoMemory
#### Minimization of Circuits (Karnaugh Maps, Quine-McCluskey - optional) #Optimization #Efficiency

## Modeling Computation #Automata #Languages #Computability
Formal models of computation and languages.
### Languages and Grammars #FormalLanguages #Syntax
#### Alphabets, Strings, Languages #Definitions
#### Formal Grammars (Phrase-Structure Grammars) #Rules
#### Chomsky Hierarchy (Regular, Context-Free, Context-Sensitive, Unrestricted) #Classification

### Finite Automata #StateMachines #Recognizers
#### Deterministic Finite Automata (DFA) #SimpleMachines
#### Nondeterministic Finite Automata (NFA) #Choice #EquivalenceToDFA
#### Regular Expressions #PatternMatching #EquivalenceToFA
#### Pumping Lemma for Regular Languages #NonRegularityProof

### Turing Machines #TheoreticalModel #Computability
#### Definition and Operation #UltimateComputerModel
#### Church-Turing Thesis #ComputabilityDefinition
#### Halting Problem #Undecidability #LimitsOfComputation
