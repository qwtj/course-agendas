# I. Fundamentals of Numerical Analysis

## Understanding Errors in Numerical Computation

### Representing Numbers in Computers
*   Floating-point representation: `sign`, `exponent`, `mantissa`.
*   IEEE 754 standard.

### Types of Errors
*   Round-off errors: due to finite precision.
*   Truncation errors: due to approximation of infinite processes.
*   Inherent errors: errors in the input data.

### Error Propagation
*   Analyzing how errors accumulate in calculations.
*   Condition number: sensitivity of a problem to changes in input data.

## Root Finding

### Bisection Method
*   Algorithm: interval halving to find a root.
*   Convergence analysis: linear convergence.
*   Example: Find a root of `f(x) = x^3 - x - 2` in the interval `[1, 2]`.

### Newton-Raphson Method
*   Algorithm: using tangent lines to approximate a root.
*   Convergence analysis: quadratic convergence (under certain conditions).
*   Example: Find a root of `f(x) = x^3 - x - 2` using an initial guess of `x_0 = 1.5`.
*   Potential issues: divergence, oscillation.

### Secant Method
*   Algorithm: approximating the derivative using a difference quotient.
*   Convergence analysis: superlinear convergence.
*   Example: Find a root of `f(x) = x^3 - x - 2` using initial guesses of `x_0 = 1`, `x_1 = 2`.

### Fixed-Point Iteration
*   Algorithm: rewriting `f(x) = 0` as `x = g(x)` and iterating `x_{n+1} = g(x_n)`.
*   Convergence analysis: depends on `|g'(x)| < 1` near the fixed point.
*   Example: Find a fixed point of `g(x) = sqrt(x + 2)`.

# II. Numerical Linear Algebra

## Solving Linear Systems

### Gaussian Elimination
*   Algorithm: forward elimination and backward substitution.
*   Pivoting strategies: partial and complete pivoting.
*   Example: Solve the system `Ax = b` where `A = [[2, 1], [1, 3]]` and `b = [1, 4]`.

### LU Decomposition
*   Algorithm: decomposing `A` into lower triangular matrix `L` and upper triangular matrix `U`.
*   Solving `Ax = b` using `Ly = b` and `Ux = y`.
*   Example: Find the LU decomposition of `A = [[2, 1], [1, 3]]`.

### Iterative Methods
*   Jacobi method: `x_{i}^{(k+1)} = (b_i - sum_{j!=i} a_{ij} x_{j}^{(k)}) / a_{ii}`.
*   Gauss-Seidel method: using updated values immediately.
*   Convergence criteria: diagonal dominance.

## Eigenvalue Problems

### Power Method
*   Algorithm: iteratively multiplying a vector by a matrix to find the dominant eigenvalue.
*   Example: Find the dominant eigenvalue of `A = [[2, 1], [1, 3]]`.

### Inverse Power Method
*   Algorithm: finding eigenvalues closest to a given shift.
*   Applications: finding specific eigenvalues.

# III. Interpolation and Approximation

## Polynomial Interpolation

### Lagrange Interpolation
*   Formula: `p(x) = sum_{i=0}^{n} y_i L_i(x)` where `L_i(x) = prod_{j!=i} (x - x_j) / (x_i - x_j)`.
*   Example: Interpolate the points `(0, 1)`, `(1, 2)`, `(2, 5)`.

### Newton's Divided Difference Interpolation
*   Algorithm: constructing a polynomial using divided differences.
*   Example: Interpolate the points `(0, 1)`, `(1, 2)`, `(2, 5)`.

### Spline Interpolation
*   Linear splines: piecewise linear interpolation.
*   Quadratic splines: piecewise quadratic interpolation with continuity conditions.
*   Cubic splines: piecewise cubic interpolation with continuity of first and second derivatives.

## Least Squares Approximation

### Linear Least Squares
*   Finding the best-fit line to a set of data points.
*   Normal equations: `(A^T A)c = A^T b`.
*   Example: Find the best-fit line for the points `(1, 2)`, `(2, 3)`, `(3, 5)`.

### Polynomial Least Squares
*   Finding the best-fit polynomial of a given degree.
*   Applications: curve fitting.

# IV. Numerical Integration and Differentiation

## Numerical Integration

### Newton-Cotes Formulas
*   Trapezoidal rule: approximating the integral using trapezoids.
*   Simpson's rule: approximating the integral using parabolas.
*   Error analysis: order of accuracy.
*   Example: Approximate the integral of `f(x) = x^2` from 0 to 1 using the trapezoidal and Simpson's rules.

### Gaussian Quadrature
*   Choosing optimal points and weights to maximize accuracy.
*   Gauss-Legendre quadrature.

## Numerical Differentiation

### Finite Difference Approximations
*   Forward difference: `f'(x) ≈ (f(x + h) - f(x)) / h`.
*   Backward difference: `f'(x) ≈ (f(x) - f(x - h)) / h`.
*   Central difference: `f'(x) ≈ (f(x + h) - f(x - h)) / (2h)`.
*   Error analysis: order of accuracy.
*   Example: Approximate the derivative of `f(x) = x^3` at `x = 1` using finite difference approximations.

### Higher-Order Derivatives
*   Approximating second and higher-order derivatives.
*   Error analysis.
