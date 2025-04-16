# Linear Algebra #Mathematics #Algebra #Foundation
The study of vectors, vector spaces, linear mappings (linear transformations), and systems of linear equations.

## Systems of Linear Equations #Equations #Solving #Fundamentals
Methods for solving sets of linear equations simultaneously.

### Introduction to Linear Systems #Basics #Definitions
Representing problems using linear equations.
#### Geometric Interpretation #Visualization #Planes #Lines
Understanding intersections of lines and planes.
#### Algebraic Representation #Notation #StandardForm
Ax = b form.

### Gaussian Elimination and Row Echelon Forms #Algorithms #Reduction
Systematic methods for solving linear systems.
#### Elementary Row Operations #Manipulation #Equivalence
Swapping rows, scaling rows, adding multiples of rows.
#### Row Echelon Form (REF) #Structure #Staircase
A simplified form achieved through row operations.
#### Reduced Row Echelon Form (RREF) #Uniqueness #Simplification
A unique simplified form for any matrix.
#### Gauss-Jordan Elimination #Algorithm #RREF
Method to reach RREF.

### Homogeneous and Non-Homogeneous Systems #Types #Solutions
Distinguishing systems based on the constant terms (b vector).
#### Trivial and Non-Trivial Solutions #Homogeneous #ZeroVector
Solutions for Ax = 0.
#### Particular and General Solutions #NonHomogeneous #Structure
Structure of solutions for Ax = b.
#### Existence and Uniqueness of Solutions #Conditions #Rank
Determining if solutions exist and how many.

## Matrices #DataStructure #Arrays #Operations
Rectangular arrays of numbers, symbols, or expressions, arranged in rows and columns.

### Matrix Operations #Arithmetic #Algebra
Basic operations defined for matrices.
#### Matrix Addition and Subtraction #ElementWise #Dimensions
Combining matrices of the same size.
#### Scalar Multiplication #Scaling #Distribution
Multiplying a matrix by a number.
#### Matrix Multiplication #Composition #NonCommutative
Combining matrices (row-by-column multiplication). Properties and conditions.
#### Matrix Transpose #RowsColumns #Symmetry
Swapping rows and columns. Properties.

### Special Types of Matrices #Properties #Structures
Matrices with specific forms or properties.
#### Identity Matrix #MultiplicativeIdentity #Square
Matrix I such that AI = IA = A.
#### Zero Matrix #AdditiveIdentity #AnyDimension
Matrix with all entries as zero.
#### Diagonal Matrices #OffDiagonalZero #Scaling
Non-zero entries only on the main diagonal.
#### Triangular Matrices (Upper and Lower) #EchelonForms #Determinants
Matrices with zeros above or below the main diagonal.
#### Symmetric and Skew-Symmetric Matrices #Transpose #Properties
Matrices equal to their transpose (A = A^T) or negative transpose (A = -A^T).
#### Orthogonal Matrices #Orthonormal #Rotations #Reflections
Square matrices whose transpose is their inverse (A^T A = I).

### Matrix Inverse #MultiplicativeInverse #SquareMatrix
Finding a matrix B such that AB = BA = I.
#### Conditions for Invertibility #NonSingular #Determinant
When an inverse exists (determinant != 0, full rank).
#### Methods for Finding the Inverse #Algorithms #GaussJordan
Using Gauss-Jordan elimination (augmenting with I).
Using determinants and adjugate matrix.
#### Properties of Inverses #Products #Transpose
(AB)^-1 = B^-1 A^-1, (A^T)^-1 = (A^-1)^T.

### Elementary Matrices and LU Decomposition #Factorization #Efficiency
Representing row operations and factoring matrices.
#### Elementary Matrices #RowOperations #BuildingBlocks
Matrices corresponding to elementary row operations.
#### LU Decomposition (Factorization) #GaussianElimination #SolvingSystems
Factoring A into Lower (L) and Upper (U) triangular matrices (A=LU). Used for efficient solving of Ax=b.

## Determinants #ScalarValue #SquareMatrix #Properties
A scalar value associated with every square matrix, encoding geometric and algebraic properties.

### Definition and Properties #Calculation #Rules
Defining and understanding the behavior of determinants.
#### Determinants of 2x2 and 3x3 Matrices #Formula #Calculation
Explicit formulas (ad-bc). Sarrus' rule for 3x3.
#### Cofactor Expansion (Laplace Expansion) #Recursive #Algorithm
Calculating determinants by expanding along a row or column.
#### Properties of Determinants #RowOperations #Multiplication #Transpose
Effect of row operations, det(AB) = det(A)det(B), det(A^T) = det(A), det(kA) = k^n det(A).

### Applications of Determinants #Usage #Geometry #Algebra
Using determinants in various contexts.
#### Cramer's Rule #SolvingSystems #Formula
Solving Ax=b using determinants (often computationally inefficient).
#### Adjugate Matrix and Inverse #Formula #MatrixInverse
Finding the inverse using the adjugate (or adjoint) matrix and the determinant.
#### Geometric Interpretation #Volume #Area #ScalingFactor
Determinant as the scaling factor of area/volume under the associated linear transformation.

## Vector Spaces #AbstractAlgebra #Structure #Axioms
Sets of objects (vectors) that can be scaled and added according to specific rules (axioms).

### Definition and Axioms #Formalism #Rules
Formal definition of a vector space over a field (usually R or C). Closure under addition and scalar multiplication, plus other axioms.

### Subspaces #Subset #Closure #Structure
Vector spaces contained within larger vector spaces.
#### Definition and Examples #LinesPlanes #Rn
Identifying subsets that are themselves vector spaces.
#### Subspace Criteria #Verification #Closure
Checking closure under addition and scalar multiplication.

### Linear Independence, Span, Basis, and Dimension #CoreConcepts #Structure
Fundamental concepts describing vector spaces.
#### Linear Combinations #BuildingVectors #WeightedSum
Forming new vectors by scaling and adding existing vectors.
#### Span #GeneratingSet #Reachability
The set of all possible linear combinations of a set of vectors.
#### Linear Independence and Dependence #Redundancy #Uniqueness
Determining if any vector in a set can be written as a linear combination of the others.
#### Basis #MinimalSpanningSet #Independent
A linearly independent set of vectors that spans the entire space.
#### Dimension #Size #BasisCardinality
The number of vectors in any basis for the space (unique).

### Fundamental Subspaces #Matrices #Structure
Subspaces associated with a matrix A.
#### Column Space (Col(A)) #Range #Image
The span of the columns of A. Subspace of the codomain.
#### Row Space (Row(A)) #Transpose #DomainRelation
The span of the rows of A (or columns of A^T). Subspace of the domain.
#### Null Space (Nul(A)) #Kernel #HomogeneousSolution
The set of all solutions x to the homogeneous equation Ax = 0. Subspace of the domain.
#### Left Null Space (Nul(A^T)) #Transpose #CodomainRelation
The null space of the transpose matrix A^T. Subspace of the codomain.
#### Rank-Nullity Theorem #Dimension #Relationship
Relates the dimension of the domain to the dimensions of the null space (nullity) and column space (rank). rank(A) + nullity(A) = n (number of columns).

### Coordinates and Change of Basis #Representation #Transformation
Representing vectors relative to different bases.
#### Coordinate Systems #Basis #Representation
Expressing vectors as linear combinations of basis vectors.
#### Change-of-Basis Matrix #Transition #Mapping
Matrix P that transforms coordinates from one basis to another.

## Linear Transformations #Mappings #Functions #VectorSpaces
Functions between vector spaces that preserve vector addition and scalar multiplication.

### Definition and Properties #Preservation #Structure
Formal definition: T(u+v) = T(u)+T(v) and T(cu) = cT(u).
#### Examples #Rotation #Projection #Scaling
Geometric transformations as linear transformations.
#### Kernel (Null Space) and Range (Image) #InputOutput #MappingProperties
Kernel: Set of vectors mapped to the zero vector. Range: Set of all possible output vectors.

### Matrix Representation of Linear Transformations #Matrices #StandardMatrix
Representing linear transformations using matrices.
#### Standard Matrix #Basis #Columns
Finding the matrix A such that T(x) = Ax. Columns are T(e_i) where e_i are standard basis vectors.
#### Transformations between Arbitrary Vector Spaces #Generalization #BasisChoice
Representing T: V -> W using bases for V and W.
#### Effect of Change of Basis #Similarity #TransformationMatrix
How the matrix representation changes when bases for V and W are changed. A' = Q^-1 A P.

### Isomorphisms #Equivalence #StructurePreserving
Bijective (one-to-one and onto) linear transformations. Isomorphic spaces have the same structure.

## Eigenvalues and Eigenvectors #MatrixProperties #TransformationInvariant
Scalars (eigenvalues) and non-zero vectors (eigenvectors) such that Av = λv. They represent directions unchanged (only scaled) by the transformation A.

### Definition and Calculation #CharacteristicEquation #Finding
Finding λ and v that satisfy Av = λv.
#### Characteristic Polynomial and Equation #Determinant #Roots
Finding eigenvalues by solving det(A - λI) = 0.
#### Finding Eigenvectors and Eigenspaces #NullSpace #SolvingSystems
For each eigenvalue λ, finding the basis for the null space of (A - λI). This null space is the eigenspace E_λ.

### Diagonalization #Simplification #MatrixPowers
Expressing a matrix A as A = PDP^-1, where D is a diagonal matrix of eigenvalues and P contains corresponding eigenvectors.
#### Conditions for Diagonalizability #Eigenvectors #Basis
A matrix is diagonalizable if and only if it has a full set of linearly independent eigenvectors (enough to form a basis).
#### Process of Diagonalization #Algorithm #PDP^-1
Finding P and D.
#### Applications (e.g., Computing Matrix Powers) #Efficiency #Calculation
A^k = PD^k P^-1 is easy to compute since D^k involves only diagonal entries.

### Complex Eigenvalues #RotationScaling #ComplexNumbers
Eigenvalues that are complex numbers, often associated with rotational components.

### Geometric and Algebraic Multiplicity #EigenvalueProperties #Diagonalizability
Algebraic multiplicity: Multiplicity of λ as a root of the characteristic polynomial. Geometric multiplicity: Dimension of the eigenspace E_λ. A matrix is diagonalizable iff geometric multiplicity equals algebraic multiplicity for all λ.

## Inner Product Spaces #Geometry #Length #Angles
Vector spaces equipped with an inner product, allowing definition of geometric concepts.

### Inner Products #DotProduct #Generalization #Axioms
Generalization of the dot product. Axioms: linearity, symmetry (or conjugate symmetry), positive-definiteness.
#### Real Inner Product Spaces #Euclidean #DotProduct
Examples like R^n with the standard dot product.
#### Complex Inner Product Spaces #Hermitian #ComplexDotProduct
Examples like C^n with the standard complex inner product.

### Norms, Distance, and Angles #Measurement #Geometry
Geometric concepts derived from the inner product.
#### Norm (Length) #Magnitude #InnerProduct
||v|| = sqrt(<v, v>). Properties of norms.
#### Distance #Separation #Norm
d(u, v) = ||u - v||.
#### Angle #Cosine #InnerProduct
cos(θ) = <u, v> / (||u|| ||v||).
#### Cauchy-Schwarz Inequality #Bound #Relationship
|<u, v>| <= ||u|| ||v||.

## Orthogonality #Perpendicular #Geometry #Basis
Study of perpendicular vectors and related concepts in inner product spaces.

### Orthogonal and Orthonormal Sets #Basis #Simplification
Sets of vectors where pairs are orthogonal (<u, v> = 0). Orthonormal if also ||v|| = 1 for all vectors.
#### Properties #LinearIndependence #Coordinates
Orthogonal sets (of non-zero vectors) are linearly independent. Coordinates are easy to find w.r.t. orthonormal bases.

### Orthogonal Projections #Decomposition #Approximation
Projecting a vector onto a subspace. Finding the closest vector in the subspace.
#### Projection onto a Line/Vector #Formula #DotProduct
proj_u(v) = (<v, u> / <u, u>) * u.
#### Projection onto a Subspace #Basis #SumOfProjections
If {u1, ..., uk} is an orthogonal basis for W, proj_W(v) = sum(proj_ui(v)).

### Gram-Schmidt Process #Orthogonalization #BasisConstruction
Algorithm to construct an orthogonal or orthonormal basis from any given basis of an inner product space.

### Orthogonal Complements #Subspaces #DirectSum
Set of all vectors orthogonal to every vector in a given subspace W, denoted W^⊥. V = W ⊕ W^⊥ (direct sum).

### Orthogonal Matrices #Transformations #LengthPreserving
Square matrices Q where Q^T Q = I (columns form an orthonormal basis). Preserve lengths and angles under transformation.

## Matrix Decompositions #Factorization #Algorithms #Applications
Expressing matrices as products of simpler/structured matrices.

### LU Decomposition #GaussianElimination #SolvingSystems
A = LU (Lower x Upper triangular). Already mentioned under Matrices.

### QR Decomposition #GramSchmidt #Orthogonalization #LeastSquares
A = QR (Orthogonal x Upper triangular). Arises from Gram-Schmidt process on columns of A. Used in least-squares problems and eigenvalue algorithms.

### Singular Value Decomposition (SVD) #GeneralMatrices #Fundamental
A = UΣV^T (Orthogonal x Diagonal x Orthogonal). Most general and fundamental decomposition. U columns are eigenvectors of AA^T, V columns are eigenvectors of A^TA, Σ diagonal entries are singular values (sqrt of eigenvalues of A^TA).
#### Geometric Interpretation #RotationScalingRotation #TransformationAnalysis
Understanding SVD as decomposing a transformation into rotation/reflection (V^T), scaling (Σ), and another rotation/reflection (U).
#### Applications #DimensionalityReduction #PCA #ImageCompression #NoiseReduction
Wide range of applications, including Principal Component Analysis (PCA).

### Cholesky Decomposition #SymmetricPositiveDefinite #Efficiency
A = LL^T (Lower triangular x its transpose). For symmetric, positive-definite matrices. Efficient.

## Numerical Linear Algebra #Computation #Algorithms #Stability
Focuses on the practical implementation of linear algebra algorithms on computers.

### Floating-Point Arithmetic #Precision #Errors #Representation
Issues related to representing real numbers on computers. Round-off errors.

### Conditioning and Stability #Sensitivity #ErrorPropagation
Condition Number: Measures sensitivity of the output to changes in input. Well-conditioned vs ill-conditioned problems.
Algorithm Stability: How errors propagate through an algorithm. Stable vs unstable algorithms.

### Iterative Methods for Linear Systems #LargeScale #Approximation
Methods that produce a sequence of improving approximate solutions.
#### Jacobi Method #Parallel #Simple
#### Gauss-Seidel Method #Sequential #FasterConvergence
#### Successive Over-Relaxation (SOR) #Acceleration #ParameterTuning

### Eigenvalue Algorithms #Computation #Iterative
Algorithms for finding eigenvalues and eigenvectors numerically.
#### Power Method #DominantEigenvalue #Iteration
Finds the eigenvalue with the largest magnitude.
#### Inverse Iteration #SmallestEigenvalue #ShiftInverse
Finds the eigenvalue closest to a given shift (often 0).
#### QR Algorithm #Robust #WidelyUsed
Standard method for finding all eigenvalues of a matrix.

## Applications of Linear Algebra #RealWorld #Modeling #ProblemSolving
Examples of where linear algebra is used extensively.

### Computer Graphics #Transformations #Modeling #Rendering
Rotations, scaling, translations (using homogeneous coordinates), projections.

### Machine Learning #DataAnalysis #Optimization #Algorithms
Principal Component Analysis (PCA), Singular Value Decomposition (SVD), regression models, network analysis, state-space models.

### Engineering and Physics #Systems #Modeling #Simulation
Structural analysis, electrical circuits, quantum mechanics, control theory, fluid dynamics.

### Optimization #LinearProgramming #ResourceAllocation
Solving optimization problems with linear constraints.

### Network Analysis #Graphs #Flows #MarkovChains
Analyzing networks, Markov chains, Google's PageRank algorithm.

### Differential Equations #Systems #Solutions #Stability
Solving systems of linear differential equations using matrix exponentials and eigenvalues.

### Cryptography #CodingTheory #Security
Error-correcting codes, Hill cipher (historical).
