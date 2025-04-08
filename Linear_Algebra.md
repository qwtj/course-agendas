# I. Foundations of Linear Algebra

## Understanding Vectors and Scalars

### Vector Representation

*   Representing vectors as ordered lists of numbers.
*   Understanding row vectors and column vectors.
*   Example: Representing a point in 2D space as a vector `[x, y]`.

### Scalar Operations

*   Scalar multiplication of vectors.
*   Effect of scalar multiplication on vector magnitude and direction.
*   Example: Multiplying vector `[1, 2]` by scalar `3` results in `[3, 6]`.

### Vector Addition and Subtraction

*   Performing element-wise addition and subtraction of vectors.
*   Geometric interpretation of vector addition (parallelogram rule).
*   Example: Adding vectors `[1, 2]` and `[3, 4]` results in `[4, 6]`.

## Understanding Matrices

### Matrix Representation

*   Representing matrices as rectangular arrays of numbers.
*   Understanding matrix dimensions (rows x columns).
*   Example: A 2x3 matrix `[[1, 2, 3], [4, 5, 6]]`.

### Matrix Operations

*   Matrix addition and subtraction (same dimensions required).
*   Scalar multiplication of matrices.
*   Example: Adding matrices `[[1, 2], [3, 4]]` and `[[5, 6], [7, 8]]`.

### Matrix Transpose

*   Understanding the transpose operation (`A^T`).
*   Swapping rows and columns.
*   Example: Transpose of `[[1, 2], [3, 4]]` is `[[1, 3], [2, 4]]`.

# II. Core Linear Algebra Concepts

## Linear Independence and Span

### Linear Combinations

*   Defining linear combinations of vectors.
*   Understanding how scalars and vectors combine to form new vectors.
*   Example: `c1*v1 + c2*v2`, where `c1` and `c2` are scalars and `v1` and `v2` are vectors.

### Linear Independence

*   Determining if a set of vectors is linearly independent.
*   Understanding that no vector in the set can be written as a linear combination of the others.
*   Example: Vectors `[1, 0]` and `[0, 1]` are linearly independent.

### Span

*   Defining the span of a set of vectors.
*   Understanding that the span is the set of all possible linear combinations of the vectors.
*   Example: The span of `[1, 0]` and `[0, 1]` is all of R^2.

## Matrix Multiplication

### Matrix Multiplication Rules

*   Understanding the conditions for matrix multiplication (inner dimensions must match).
*   Calculating the elements of the resulting matrix.
*   Example: Multiplying a (m x n) matrix by an (n x p) matrix results in a (m x p) matrix.

### Properties of Matrix Multiplication

*   Associativity: `(AB)C = A(BC)`.
*   Distributivity: `A(B + C) = AB + AC`.
*   Non-commutativity: `AB != BA` (in general).

## Linear Transformations

### Transformations as Matrices

*   Representing linear transformations using matrices.
*   Understanding how a matrix transforms a vector.
*   Example: Rotation, scaling, and shearing transformations.

### Composition of Transformations

*   Composing linear transformations by multiplying their corresponding matrices.
*   Understanding the order of matrix multiplication.

# III. Solving Linear Systems

## Systems of Linear Equations

### Representing Systems as Matrices

*   Representing systems of equations in matrix form (Ax = b).
*   Understanding the coefficient matrix (A), the variable vector (x), and the constant vector (b).
*   Example: `x + y = 3`, `2x - y = 0` can be represented as `[[1, 1], [2, -1]] * [x, y] = [3, 0]`.

### Gaussian Elimination

*   Performing row operations to transform the augmented matrix into row-echelon form.
*   Using back-substitution to solve for the variables.
*   Example: Performing row operations such as swapping rows, multiplying a row by a scalar, and adding a multiple of one row to another.

### Gauss-Jordan Elimination

*   Performing row operations to transform the augmented matrix into reduced row-echelon form.
*   Directly reading the solution from the matrix.

## Matrix Inverses

### Finding the Inverse of a Matrix

*   Understanding the concept of an inverse matrix (A^(-1)).
*   Using Gaussian elimination or Gauss-Jordan elimination to find the inverse.
*   Example: Finding the inverse of a 2x2 matrix `[[a, b], [c, d]]` using the formula.

### Properties of Inverses

*   `AA^(-1) = A^(-1)A = I` (Identity matrix).
*   `(AB)^(-1) = B^(-1)A^(-1)`.

# IV. Eigenvalues and Eigenvectors

## Eigenvalue Decomposition

### Eigenvalues and Eigenvectors Definitions

*   Defining eigenvalues (λ) and eigenvectors (v) of a matrix.
*   Understanding the equation `Av = λv`.
*   Example: Find eigenvalues such that `det(A - λI) = 0` and then use each eigenvalue to find the corresponding eigenvector.

### Finding Eigenvalues

*   Calculating eigenvalues by solving the characteristic equation (`det(A - λI) = 0`).
*   Understanding the relationship between eigenvalues and the trace and determinant of a matrix.

### Finding Eigenvectors

*   Calculating eigenvectors by solving the equation `(A - λI)v = 0` for each eigenvalue.

## Applications of Eigenvalues and Eigenvectors

### Diagonalization

*   Diagonalizing a matrix using its eigenvalues and eigenvectors.
*   Understanding the formula `A = PDP^(-1)`, where D is a diagonal matrix of eigenvalues and P is a matrix of eigenvectors.

### Principal Component Analysis (PCA)

*   Using eigenvalues and eigenvectors to perform PCA for dimensionality reduction.
*   Understanding how to select the principal components based on eigenvalue magnitudes.

# V. Advanced Topics in Linear Algebra

## Singular Value Decomposition (SVD)

### Understanding SVD

*   Decomposing a matrix into three matrices: `A = UΣV^T`.
*   Understanding the singular values (Σ), left singular vectors (U), and right singular vectors (V).

### Applications of SVD

*   Image compression.
*   Recommender systems.

## Linear Programming

### Formulating Linear Programs

*   Defining objective functions and constraints.
*   Representing linear programs in standard form.

### Solving Linear Programs

*   Using the Simplex method or other optimization algorithms to find the optimal solution.
