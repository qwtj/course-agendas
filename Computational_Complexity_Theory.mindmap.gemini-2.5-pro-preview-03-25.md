# Computational Complexity Theory #Overview #ComputerScience #Theory
An overview of the field studying the resources (like time and space) required to solve computational problems.

## Foundational Concepts and Models #Basics #Formalism #Models
The underlying definitions and computational models used in complexity theory.

### Models of Computation #ComputationModels #FormalLanguages
Formal descriptions of computing devices.
#### Turing Machines #TM #Model
The standard theoretical model of computation.
##### Deterministic Turing Machines (DTM) #Deterministic #Definition
Standard TM model where each step is uniquely determined.
##### Nondeterministic Turing Machines (NTM) #Nondeterministic #Definition
Model where multiple computation paths are possible.
##### Variants (Multi-tape, Universal TM) #Variations #Equivalence
Different TM models (e.g., multi-tape, multi-head, non-deterministic) and their computational equivalence in terms of solvability, though potentially differing in efficiency.
##### Oracle Turing Machines #Oracle #Relativization
Turing machines with access to an "oracle" for a specific language.
#### Random Access Machines (RAM) #RAM #Model
A model closer to actual computers, with random access memory. Its time complexity often relates polynomially to Turing machine time.
#### Boolean Circuits #Circuits #Model
A model based on logic gates, often used for non-uniform complexity and lower bounds.
##### Circuit Families #Uniformity #Definition
Sequences of circuits, one for each input length. Uniformity conditions (e.g., logspace uniform) connect circuit complexity to uniform machine models.
##### Circuit Size and Depth #Measures #Metrics
Key measures of circuit resource usage.

### Complexity Measures #Metrics #Resources
Quantifying the resources used during computation.
#### Time Complexity #Time #Measure
The number of elementary steps (e.g., TM steps) required by an algorithm as a function of input size.
#### Space Complexity #Space #Measure
The amount of memory (e.g., TM tape cells) required by an algorithm as a function of input size.
#### Non-determinism #Nondeterminism #Measure
Considering the 'cost' or existence of accepting paths in non-deterministic models.
#### Circuit Complexity Measures #Size #Depth #Width
Resource measures specific to the circuit model, like the number of gates (size) or the longest path (depth).
#### Parallelism #Parallel #Measure
Measures related to parallel computation, like processor count and parallel time (often related to circuit depth).

### Asymptotic Notation #BigO #GrowthRate #Analysis
Mathematical notation (O, Ω, Θ, o, ω) used to describe the limiting behavior of functions, crucial for analyzing resource usage as input size grows.

### Problems and Languages #DecisionProblems #FormalLanguages #Encoding
Formalizing computational tasks as decision problems (languages) over strings.

## Complexity Classes #Classification #Sets #Hierarchy
Grouping problems based on their resource requirements under specific computational models.

### Deterministic Time Classes #PTIME #EXPTIME #Deterministic
Classes defined by deterministic Turing machines and time bounds.
#### P (Polynomial Time) #PClass #Tractable
The class of decision problems solvable by a deterministic Turing machine in polynomial time. Often considered the class of "efficiently solvable" problems.
#### EXPTIME (Exponential Time) #EXP #Intractable
Problems solvable by a deterministic Turing machine in exponential time.
#### Other Time Classes #Sublinear #Superpolynomial
Classes like Linear Time, Quadratic Time, etc.

### Nondeterministic Time Classes #NP #NEXPTIME #Nondeterministic
Classes defined by non-deterministic Turing machines and time bounds.
#### NP (Nondeterministic Polynomial Time) #NPClass #Verification
Problems for which a 'yes' answer can be verified in polynomial time given a suitable certificate (or solvable by an NTM in polynomial time).
#### co-NP #Complement #Verification
Problems whose complement is in NP; 'no' answers can be efficiently verified.
#### NEXPTIME (Nondeterministic Exponential Time) #NEXP #Intractable
Problems solvable by a non-deterministic Turing machine in exponential time.

### Space Complexity Classes #PSPACE #L #NL #SpaceBounded
Classes defined by memory usage bounds.
#### L (Logarithmic Space) #LogSpace #EfficientSpace
Problems solvable by a deterministic Turing machine using logarithmic space.
#### NL (Nondeterministic Logarithmic Space) #NLogSpace #GraphReachability
Problems solvable by a non-deterministic Turing machine using logarithmic space. Contains problems like graph reachability.
#### PSPACE (Polynomial Space) #PolySpace #Games
Problems solvable by a deterministic Turing machine using polynomial space. Includes many games and planning problems.
#### NPSPACE #NPolySpace #Savitch
Problems solvable by a non-deterministic Turing machine using polynomial space. Known to be equal to PSPACE (Savitch's Theorem).
#### EXPSPACE #ExpSpace #IntractableSpace
Problems solvable using exponential space.

### The Polynomial Hierarchy (PH) #PH #Alternation #Oracles
A hierarchy of classes defined using alternating quantifiers or oracle machines, generalizing P, NP, and co-NP.
#### Levels of PH (Σₚᵏ, Πₚᵏ, Δₚᵏ) #Sigma #Pi #Delta
Specific classes within the polynomial hierarchy.

### Relationships Between Classes #Containment #Separation #OpenProblems
Known inclusions (e.g., P ⊆ NP ⊆ PSPACE ⊆ EXPTIME) and major open questions about whether these inclusions are strict.
#### P vs NP Problem #PvsNP #MillenniumPrize #MajorQuestion
The most famous open problem: Is P equal to NP?
#### NP vs co-NP #Asymmetry #OpenProblem
Is NP equal to co-NP? Believed to be false.
#### Savitch's Theorem #PSPACE #Theorem #Simulation
Shows that NPSPACE = PSPACE (deterministic simulation of non-deterministic space requires at most a quadratic blowup).
#### Immerman–Szelepcsényi Theorem #NL #coNL #Theorem
Shows that NL = co-NL (non-deterministic space classes are closed under complement).

## Reductions and Completeness #Hardness #Comparison #Equivalence
Tools for comparing the relative difficulty of problems.

### Reductions #Mapping #Transformation
Transforming instances of one problem into instances of another while preserving the answer, showing relative difficulty.
#### Polynomial-Time Reductions (Karp) #KarpReduction #PolyTime
Efficient reductions used primarily for NP-completeness. If A reduces to B, and B is in P, then A is in P.
#### Log-Space Reductions #LogSpaceReduction #FinerGrained
Reductions using only logarithmic space, used for finer distinctions (e.g., P-completeness).
#### Other Reductions #TuringReduction #ManyOne

### Completeness #HardestProblems #Canonical
Identifying the "hardest" problems within a complexity class via reductions.
#### NP-Completeness #NPC #Hardness #SAT
Problems in NP to which all other NP problems can be reduced in polynomial time.
##### Cook-Levin Theorem #SAT #FirstNPC #Theorem
Proved that the Boolean Satisfiability Problem (SAT) is NP-complete.
##### Common NP-Complete Problems #Examples #3SAT #Clique #TSP
Examples include 3-SAT, Vertex Cover, Clique, Hamiltonian Cycle, Traveling Salesperson Problem (decision version).
#### Completeness for Other Classes #PSPACEComplete #PComplete #EXPComplete
Identifying complete problems for classes like PSPACE (e.g., QBF), P (under log-space reductions, e.g., Circuit Value Problem), EXPTIME, etc.

## Hierarchy Theorems #Separation #Bounds #Limits
Theorems proving that given more resources (time or space), machines can solve strictly more problems.

### Time Hierarchy Theorems #TimeHierarchy #Deterministic #Nondeterministic
Show that DTIME(f(n)) is strictly contained in DTIME(g(n)) if f(n) log f(n) = o(g(n)), and similarly for NTIME with slightly different bounds. Proves classes like P ≠ EXPTIME.
### Space Hierarchy Theorems #SpaceHierarchy #Deterministic #Nondeterministic
Show that SPACE(f(n)) is strictly contained in SPACE(g(n)) if f(n) = o(g(n)) and g is space-constructible. Proves classes like L ≠ PSPACE.
### Consequences #InfiniteHierarchy #Separations
Guarantees an infinite hierarchy of distinct complexity classes based on time and space bounds.

## Circuit Complexity #Circuits #LowerBounds #Nonuniform
Studying computation using Boolean circuits, often aiming for super-polynomial lower bounds.

### Circuit Classes #AC0 #NC #TC0 #Ppoly
Classes defined by constraints on circuit size, depth, and gate types (e.g., AC⁰, NC hierarchy, TC⁰, P/poly).
#### P/poly #Nonuniform #Advice
The class of problems solvable by polynomial-size circuit families (possibly non-uniform). Contains P, but relationship with NP is unknown.
#### NC Hierarchy #ParallelComputation #LogDepth
Classes solvable by polylogarithmic depth, polynomial size circuits with bounded fan-in gates, related to efficient parallel computation.
#### AC⁰ and TC⁰ #ConstantDepth #ThresholdGates
Classes based on constant-depth circuits.

### Lower Bounds #Barriers #ProofTechniques
Proving that certain problems require large circuits (e.g., super-polynomial size or super-logarithmic depth). A major challenge area.
#### Techniques (Random Restrictions, Gate Elimination, Natural Proofs Barrier) #Methods #Challenges
Methods used to prove circuit lower bounds and the difficulties encountered (e.g., the Natural Proofs barrier suggesting current techniques might be insufficient to separate P from NP).

### Relationship to Turing Machine Complexity #Connections #PvsNP #KarpLipton
Connections between circuit size and TM time/space, e.g., Kannan's theorem, the Karp-Lipton theorem (if NP ⊆ P/poly, then PH collapses).

## Randomized Computation #Randomness #Algorithms #Probability
Complexity theory involving algorithms that use randomness.

### Probabilistic Turing Machines #PTM #Model #RandomBits
Turing machines that can make random choices during computation.
### Randomized Complexity Classes #BPP #RP #ZPP #LasVegas #MonteCarlo
Classes defined based on probabilistic TMs and error probabilities.
#### BPP (Bounded-error Probabilistic Polynomial Time) #BPPClass #EfficientRandomized
Problems solvable by a PTM in polynomial time with error probability bounded below 1/2 (e.g., ≤ 1/3). Considered efficiently solvable using randomness.
#### RP (Randomized Polynomial Time) #RPClass #OneSidedError
Problems solvable by a PTM in polynomial time with one-sided error (false negatives possible, but no false positives).
#### co-RP #Complement #OneSidedError
Complement of RP (false positives possible, but no false negatives).
#### ZPP (Zero-error Probabilistic Polynomial Time) #ZPPClass #LasVegas #ExpectedTime
Problems solvable by a PTM that always gives the correct answer and runs in expected polynomial time (Las Vegas algorithms). ZPP = RP ∩ co-RP.

### Derandomization #Pseudorandomness #Hypotheses #PRG
The study of reducing or eliminating the need for randomness. Often relies on unproven hardness assumptions.
#### P vs BPP Question #PvsBPP #Derandomize
Is P equal to BPP? Widely believed to be true, implying randomness doesn't add fundamental power to polynomial-time computation, potentially achievable via pseudorandom generators.
#### Pseudorandom Generators (PRGs) #PRGConstruction #HardnessVsRandomness
Functions that stretch a short random seed into a long sequence that "looks random" to certain algorithms. Their existence often relies on cryptographic hardness assumptions.

## Interactive Proof Systems #Interaction #Proofs #Verification
Models where a computationally limited verifier interacts with a powerful, untrusted prover.

### Model and Definitions #Prover #Verifier #Interaction
Formalizing the interaction protocol between a prover (unbounded power) and a verifier (polynomial time).
### IP (Interactive Polynomial Time) #IPClass #ProverPower
The class of languages having interactive proofs where the verifier is polynomial-time.
### Arthur-Merlin Games (AM, MA) #AM #MA #PublicCoins
Restricted forms of interactive proofs (e.g., public coin vs private coin).
### IP = PSPACE #ShamirTheorem #Theorem #SurprisingResult
A fundamental result showing that the class IP is exactly equal to PSPACE.
### Zero-Knowledge Proofs #ZK #Cryptography #Privacy
Interactive proofs that convince the verifier of the statement's truth without revealing any additional information.
### Probabilistically Checkable Proofs (PCP) #PCPTheorem #Approximation #SpotChecking
Proofs that can be verified by reading only a small, randomly chosen part of the proof.
#### PCP Theorem #HardnessOfApproximation #LandmarkResult
States that any NP problem has a PCP system where the verifier uses logarithmic randomness and reads a constant number of bits from the proof. Crucial for hardness of approximation.

## Approximation Algorithms and Hardness #Approximation #Optimization #NPHard
Dealing with NP-hard optimization problems by finding near-optimal solutions efficiently.

### Approximation Ratios #Quality #Measure #PerformanceGuarantee
Measuring the quality of an approximation algorithm relative to the optimal solution.
### Approximation Schemes #PTAS #FPTAS #Tradeoffs
Algorithms that can achieve any desired approximation ratio (1+ε), possibly with running time depending on ε.
#### PTAS (Polynomial Time Approximation Scheme) #Scheme #PolynomialTime
Running time is polynomial in input size for fixed ε.
#### FPTAS (Fully Polynomial Time Approximation Scheme) #Scheme #FullyPolynomialTime
Running time is polynomial in both input size and 1/ε.
### Hardness of Approximation #Inapproximability #PCP #LowerBounds
Using complexity theory (often via the PCP theorem) to prove that finding approximations within certain ratios for some NP-hard problems is itself NP-hard (unless P=NP).

## Quantum Computation #Quantum #Qubits #Entanglement
Complexity theory based on the principles of quantum mechanics.

### Quantum Circuits and Qubits #QuantumModel #Gates #Superposition
The model of computation using quantum bits (qubits) and quantum gates.
### BQP (Bounded-error Quantum Polynomial Time) #BQPClass #QuantumComplexity #EfficientQuantum
The class of problems solvable efficiently (polynomial time, bounded error) by a quantum computer.
### Relationship to Classical Complexity #BPPvsBQP #NPvsBQP #QuantumAdvantage
Known: BPP ⊆ BQP ⊆ PSPACE. Relationship with NP is unknown. Quantum computers may solve some problems (like Factoring) efficiently that are believed hard classically.
### Key Quantum Algorithms #Shor #Grover #Examples
#### Shor's Algorithm #Factoring #DiscreteLog #ExponentialSpeedup
Polynomial-time quantum algorithm for integer factorization and discrete logarithm, problems believed hard for classical computers. Places these problems in BQP.
#### Grover's Algorithm #Search #QuadraticSpeedup
Quantum algorithm for unstructured search providing a quadratic speedup over classical algorithms.

## Cryptography and Complexity #Cryptography #Security #HardnessAssumptions
Connections between the existence of secure cryptographic primitives and complexity-theoretic hardness assumptions.

### One-Way Functions (OWF) #OWF #Assumption #CorePrimitive
Functions easy to compute but hard to invert. Their existence is a fundamental assumption equivalent to P ≠ NP being insufficient, but necessary for most crypto. Existence implies P ≠ NP.
### Pseudorandom Generators (PRG) #PRG #Derandomization #CryptoTool
Generators producing pseudorandomness from shorter seeds, often based on OWFs.
### Pseudorandom Functions (PRF) #PRF #Simulation #CryptoTool
Functions that are indistinguishable from truly random functions.
### Hardness Assumptions in Cryptography #Factoring #DiscreteLog #Lattices
Specific computational problems (like factoring, discrete log, lattice problems) assumed to be hard, forming the basis for public-key cryptography. Relationship to major complexity classes is often unclear.

## Average-Case Complexity #AverageCase #Distribution #Levin
Analyzing algorithm performance on "typical" inputs, according to some probability distribution.

### Distributional Problems #InputDistribution #Definition
Defining problems where inputs are drawn from a specific probability distribution.
### Average-Case Completeness #AvgP #AvgNP #DistNP
Defining average-case analogues of complexity classes (like P, NP) and completeness notions. Levin initiated this study.
### Connection to Cryptography #WorstCaseToAverageCase #Lattices
Reductions that connect worst-case hardness to average-case hardness are crucial for cryptography, notably found in lattice-based cryptography.

## Parameterized Complexity #FPT #Parameters #Multivariate
Analyzing complexity based on multiple parameters of the input, not just the total input size.

### Fixed-Parameter Tractability (FPT) #FPTAlgorithms #Definition #Kernelization
Problems solvable in time f(k) * poly(n), where n is input size and k is a parameter. The goal is to isolate the combinatorial explosion to the parameter k.
### W-Hierarchy #WHierarchy #Hardness #ParameterizedIntractability
A hierarchy of classes ([W[1], W[2], ... , W[P]) believed to capture parameterized intractability, analogous to the polynomial hierarchy.
### Kernelization #Preprocessing #Reduction #ProblemKernel
A polynomial-time preprocessing step that reduces an instance (n, k) to an equivalent instance (n', k') where n' and k' are bounded by a function of k. FPT is equivalent to having a polynomial kernel.

## Descriptive Complexity #Logic #Expressibility #FiniteModelTheory
Characterizing complexity classes using the power of logical formalisms required to describe the problems (languages) within them, typically over finite structures.

### Fagin's Theorem #NP #ExistentialSO #Theorem
A foundational result stating that NP corresponds exactly to the class of properties expressible in existential second-order logic (SO∃) over finite structures.
### Logic and Complexity Classes #FO #SO #LFP #PSPACE #P
Capturing other classes using different logics: FO (first-order logic) relates to AC⁰, LFP (least fixed point logic) captures P on ordered structures, PSPACE corresponds to SO with transitive closure or partial fixed points.

## Proof Complexity #Proofs #Logic #LowerBounds
Studying the complexity of proving mathematical theorems, particularly the length of proofs in various formal systems.

### Propositional Proof Systems #Resolution #Frege #ExtendedFrege
Formal systems for proving propositional tautologies (e.g., Resolution, Frege systems, Extended Frege systems).
### Proof Length Lower Bounds #Hardness #Separation #NPvsCoNP
Proving lower bounds on the size of proofs for certain tautologies in specific proof systems. Superpolynomial lower bounds for all systems would imply NP ≠ co-NP.

## Communication Complexity #Communication #Distributed #LowerBounds
Studying the amount of communication required between parties (with unlimited computational power) to compute a function whose input is distributed among them.

### Models #Deterministic #Randomized #Quantum
Different communication protocols (deterministic, randomized, quantum) and their associated costs (number of bits exchanged).
### Lower Bound Techniques #FoolingSets #Rank #Discrepancy #InformationTheory
Methods for proving lower bounds on communication cost (e.g., rank method for deterministic, discrepancy for randomized).
### Relation to Other Complexity Areas #Streaming #Circuits #DataStructures
Communication complexity lower bounds have implications for circuit depth, data structure lower bounds, and streaming algorithms.

## Structural Complexity Theory #Structure #Isomorphism #Sparsity
Focuses on the internal structure of complexity classes and the relationships between them, often using concepts like density, isomorphisms, and relativization.

### Isomorphism Conjecture #BermanHartmanis #Isomorphism #PvsNP
Conjectured that all NP-complete sets are polynomially isomorphic.
### Sparseness #SparseSets #Density #Mahaney
Studying the complexity of sparse languages (languages with polynomially bounded density). Mahaney's theorem: If any sparse language is NP-complete, then P=NP.
### Relativization #Oracles #LimitsOfProofs #BakerGillSolovay
Investigating how complexity class relationships change when all machines have access to the same oracle. Baker-Gill-Solovay showed oracles exist relative to which P=NP and P≠NP, indicating standard diagonalization techniques alone cannot resolve P vs NP.

## Open Problems and Future Directions #Research #Frontiers #Challenges
Major unsolved questions and active areas of research in complexity theory.

### P vs NP #MajorProblem #Unsolved #Fundamental
The central question: can every problem whose solution can be quickly verified also be quickly solved?
### Other Separation Questions #PvsPSPACE #NPvscoNP #LvsP #NCvsP
Separating other major complexity classes (e.g., P vs L, P vs PSPACE, NP vs co-NP, NC vs P).
### Circuit Lower Bounds #Challenge #Superpolynomial #ExplicitProblems
Proving super-polynomial lower bounds for explicit problems in general circuit models (like P/poly) remains a major barrier.
### Quantum Complexity Frontiers #QMA #QuantumPCP #QuantumAdvantage
Understanding the power of quantum computation (e.g., QMA - the quantum analogue of NP) and its relationship to classical complexity.
### Derandomization Hypotheses #BPPvsP #PRGConstruction #Hardness
Proving or disproving conjectures related to derandomization, such as P=BPP.
### Hardness of Approximation Thresholds #UGConjecture #PCP #OptimalHardness
Pinpointing the exact threshold at which approximating certain optimization problems becomes hard, potentially via the Unique Games Conjecture (UGC).
