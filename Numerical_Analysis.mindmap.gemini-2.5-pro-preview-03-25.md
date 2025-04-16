# Numerical Analysis #Computation #Mathematics #Algorithms
An overview of the field concerned with designing, analyzing, and implementing algorithms for solving mathematical problems numerically.

## Fundamentals of Numerical Computation #Basics #Theory #CoreConcepts
Core ideas underpinning numerical methods, including error analysis and computational considerations.

### Error Analysis #Errors #Accuracy #Precision
Understanding and quantifying errors inherent in numerical computation.
#### Sources of Error #Modeling #Measurement #Computational
Errors arising from modeling assumptions, measurement inaccuracies, and computation itself.
#### Types of Computational Error #RoundOff #Truncation
Distinguishing between round-off error (due to finite precision) and truncation error (due to approximating infinite processes).
#### Error Propagation #Stability #Sensitivity
How initial errors grow or decay during computation.
#### Absolute and Relative Error #Metrics #Measurement
Standard ways to measure the size of an error.
#### Floating-Point Arithmetic #Representation #IEEE754
Understanding how computers represent and perform calculations with real numbers.
#### Conditioning and Stability #WellPosed #IllConditioned #AlgorithmStability
Assessing the sensitivity of a problem to input changes (conditioning) and the sensitivity of an algorithm to perturbations during computation (stability).

## Solving Nonlinear Equations #RootFinding #Algebra #Iteration
Methods for finding solutions (roots) of equations of the form f(x) = 0 or systems of such equations.

### Bisection Method #Bracketing #Convergence
A simple, robust bracketing method with guaranteed linear convergence.
### Fixed-Point Iteration #Iteration #ConvergenceCriteria
Finding solutions by iterating a function g(x) such that x = g(x).
### Newton-Raphson Method #TaylorSeries #QuadraticConvergence
An iterative method using function value and derivative, typically with quadratic convergence.
### Secant Method #FiniteDifference #SuperlinearConvergence
Similar to Newton's method but approximates the derivative using previous iterates.
### Hybrid Methods (e.g., Brent's Method) #Robustness #Efficiency
Combining the strengths of different methods (e.g., speed of Newton/Secant with robustness of Bisection).
### Systems of Nonlinear Equations #Multivariable #Jacobian
Extending methods like Newton's to solve multiple coupled nonlinear equations. Requires Jacobian matrix.

## Solving Systems of Linear Equations #LinearAlgebra #Matrices #Solvers
Techniques for finding the solution vector x in the matrix equation Ax = b.

### Direct Methods #Factorization #ExactSolution (in theory)
Methods aiming to compute the exact solution in a finite number of steps, barring round-off error.
#### Gaussian Elimination #RowOperations #Pivoting
A fundamental method involving row operations to achieve an upper triangular system. Includes pivoting strategies for stability.
#### LU Decomposition/Factorization #MatrixFactorization #Efficiency
Factoring matrix A into lower (L) and upper (U) triangular matrices (A=LU) for efficient solving. Variants include LUP (with pivoting) and Cholesky (for symmetric positive definite matrices).
#### Cholesky Decomposition #Symmetric #PositiveDefinite
Efficient factorization for symmetric positive-definite matrices (A=LL^T or A=LDL^T).
#### QR Factorization #Orthogonal #LeastSquares
Factoring A into an orthogonal matrix Q and an upper triangular matrix R. Useful beyond just solving Ax=b (e.g., least squares).

### Iterative Methods #Approximation #LargeSystems #Sparse
Methods that start with an initial guess and iteratively refine it. Particularly useful for large, sparse systems.
#### Jacobi Method #Iteration #DiagonalDominance
A simple iterative method based on splitting the matrix A.
#### Gauss-Seidel Method #Iteration #FasterConvergence
An improvement over Jacobi that uses updated values as soon as they are available.
#### Successive Over-Relaxation (SOR) #RelaxationParameter #Acceleration
Accelerating Gauss-Seidel using a relaxation parameter.
#### Conjugate Gradient Method #Optimization #SPD #KrylovSubspace
An efficient iterative method specifically for symmetric positive-definite systems. Minimizes a quadratic form over Krylov subspaces.
#### Generalized Minimal Residual (GMRES) #KrylovSubspace #GeneralMatrices
An iterative method for general non-symmetric systems based on Krylov subspaces.
#### Preconditioning #ConvergenceRate #ConditionNumber
Transforming the linear system to improve the condition number and accelerate convergence of iterative methods.

## Interpolation and Polynomial Approximation #FunctionApproximation #DataFitting #CurveFitting
Methods for constructing functions that pass through or approximate given data points.

### Polynomial Interpolation #Polynomials #DataPoints
Finding a polynomial that passes exactly through a set of given points.
#### Lagrange Polynomials #BasisFunctions #Construction
Constructing the interpolating polynomial using Lagrange basis functions.
#### Newton's Divided Differences #Recursive #EfficientUpdate
An alternative way to construct the interpolating polynomial, allowing easy addition of new data points.
#### Error in Polynomial Interpolation #RungePhenomenon #Oscillations
Understanding the limitations and potential issues (like oscillations) with high-degree polynomial interpolation.

### Spline Interpolation #Piecewise #Smoothness
Using low-degree piecewise polynomials joined together smoothly to interpolate data. Avoids oscillations of high-degree polynomials.
#### Linear Splines #Continuous #Simple
Connecting data points with straight lines. Continuous but not smooth.
#### Quadratic Splines #C1Smoothness #Derivatives
Using piecewise quadratics with continuous first derivatives.
#### Cubic Splines #C2Smoothness #Natural #Clamped
Using piecewise cubics with continuous first and second derivatives. Common types include natural and clamped splines based on boundary conditions.

### Other Approximation Methods #BeyondPolynomials
#### Trigonometric Interpolation #Periodic #Fourier
Using sums of sines and cosines, especially for periodic data.
#### Rational Function Approximation #PadeApproximation
Using ratios of polynomials.

## Numerical Differentiation and Integration #Calculus #Approximation #Quadrature
Methods for approximating derivatives and definite integrals of functions.

### Numerical Differentiation #Derivatives #FiniteDifferences
Approximating derivatives using function values at nearby points.
#### Finite Difference Formulas #Forward #Backward #Central
Deriving formulas based on Taylor series expansions (e.g., forward, backward, central difference).
#### Richardson Extrapolation #AccuracyImprovement #ErrorCancellation
Combining results from different step sizes to achieve higher accuracy.
#### Error Analysis #TruncationError #RoundOffError
Analyzing the trade-off between truncation error (decreasing with smaller step size) and round-off error (increasing with smaller step size).

### Numerical Integration (Quadrature) #Integrals #Area #Summation
Approximating the value of a definite integral.
#### Newton-Cotes Formulas #EquallySpaced #Trapezoidal #Simpsons
Formulas based on integrating interpolating polynomials over equally spaced intervals (e.g., Trapezoidal Rule, Simpson's Rule, Simpson's 3/8 Rule).
#### Composite Rules #PiecewiseIntegration #Accuracy
Applying basic Newton-Cotes formulas over smaller subintervals to improve accuracy.
#### Romberg Integration #RichardsonExtrapolation #TrapezoidalRule
Applying Richardson extrapolation to the composite Trapezoidal Rule for high accuracy.
#### Gaussian Quadrature #OptimalNodes #Weights #Legendre
Methods that choose optimal node locations (not necessarily equally spaced) and weights for higher accuracy with fewer function evaluations. Based on orthogonal polynomials.
#### Adaptive Quadrature #ErrorControl #VariableStepSize
Methods that automatically adjust the step size (or subintervals) based on local error estimates to achieve a desired overall accuracy efficiently.
#### Monte Carlo Integration #HighDimensions #RandomSampling
Using random sampling for approximating integrals, especially useful in high dimensions.

## Numerical Solution of Ordinary Differential Equations (ODEs) #DifferentialEquations #Simulation #Dynamics
Methods for approximating the solution to differential equations of the form dy/dt = f(t, y).

### Initial Value Problems (IVPs) #SinglePoint #Evolution
Problems where the solution value is known at an initial point in time/space, and we want to find the solution as it evolves.
#### Euler's Method #Simple #FirstOrder #TangentLine
The simplest method, stepping along the tangent line. First-order accurate.
#### Higher-Order Taylor Methods #TaylorSeries #Derivatives
Methods using higher-order Taylor expansions, requiring derivatives of f(t, y).
#### Runge-Kutta Methods #MultiStage #HighOrder #NoDerivatives
A family of popular methods achieving higher order accuracy without explicit calculation of higher derivatives of f(t, y). (e.g., RK4 is fourth-order).
#### Multi-Step Methods #PastValues #Efficiency
Methods that use information from several previous steps to compute the next step (e.g., Adams-Bashforth, Adams-Moulton).
#### Predictor-Corrector Methods #AdamsMethods #Stability
Combining an explicit method (predictor) with an implicit method (corrector) for efficiency and stability.
#### Error Control and Adaptive Step Sizes #Tolerance #Efficiency
Adjusting the step size during integration to maintain the local error below a specified tolerance.
#### Stability Analysis #Stiffness #AStability #LStability
Analyzing the stability of methods, especially for stiff ODEs where solutions decay at vastly different rates.

### Boundary Value Problems (BVPs) #MultiplePoints #Constraints
Problems where conditions on the solution are specified at more than one point (often boundaries).
#### Shooting Method #IVPSolvers #RootFinding
Transforming the BVP into an IVP by guessing missing initial conditions and using a root-finding method to satisfy the boundary conditions.
#### Finite Difference Method #Discretization #LinearSystem
Discretizing the domain and approximating derivatives with finite differences, leading to a system of algebraic equations.
#### Collocation Methods #BasisFunctions #Residuals
Approximating the solution as a linear combination of basis functions and requiring the differential equation to be satisfied exactly at specific points (collocation points).

## Numerical Solution of Partial Differential Equations (PDEs) #MultivariableCalculus #Simulation #Physics #Engineering
Methods for approximating solutions to PDEs involving functions of multiple variables and their partial derivatives.

### Classification of PDEs #Elliptic #Parabolic #Hyperbolic
Categorizing PDEs based on their mathematical properties, which dictates appropriate numerical methods (e.g., Laplace/Poisson, Heat Equation, Wave Equation).
### Finite Difference Methods (FDM) #Grid #Discretization #Stencil
Discretizing the spatial and temporal domains using a grid and approximating partial derivatives using finite differences. Leads to systems of algebraic equations (for elliptic/steady-state) or time-stepping schemes (for parabolic/hyperbolic).
#### Explicit vs. Implicit Schemes #Stability #ComputationalCost
Distinguishing between time-stepping schemes based on whether the unknown value at the new time step appears explicitly or implicitly. Implicit methods often have better stability but require solving systems of equations.
#### Stability Analysis (e.g., Von Neumann, CFL Condition) #Convergence #Restrictions
Analyzing the stability of time-stepping schemes, often leading to conditions relating time step size and spatial grid size (e.g., Courant-Friedrichs-Lewy condition).

### Finite Element Methods (FEM) #WeakFormulation #Variational #Meshes
Discretizing the domain into smaller elements (e.g., triangles, quadrilaterals), approximating the solution locally within each element using basis functions, and formulating the problem in a "weak" or variational form. Highly flexible for complex geometries.

### Finite Volume Methods (FVM) #ConservationLaws #Fluxes
Discretizing the domain into control volumes and applying the integral form of the conservation law to each volume. Ensures conservation properties are maintained numerically. Common in fluid dynamics.

### Spectral Methods #GlobalBasis #HighAccuracy #Fourier #Chebyshev
Using global basis functions (like Fourier series or Chebyshev polynomials) to represent the solution. Can achieve very high accuracy for smooth solutions, often with exponential convergence.

## Eigenvalue Problems #LinearAlgebra #Vibrations #StabilityAnalysis
Methods for finding eigenvalues (λ) and eigenvectors (v) of a matrix A, such that Av = λv.

### Power Method #DominantEigenvalue #Iteration
An iterative method to find the eigenvalue with the largest magnitude and its corresponding eigenvector.
### Inverse Iteration #SmallestEigenvalue #ShiftAndInvert
Applying the power method to (A - μI)^-1 to find the eigenvalue closest to a shift μ. Useful for finding eigenvalues near a specific value or the smallest magnitude eigenvalue.
### QR Algorithm #SimilarityTransforms #AllEigenvalues
A robust and widely used method for finding all eigenvalues (and optionally eigenvectors) of a matrix, based on repeated QR factorizations and similarity transformations.
### Jacobi Method for Symmetric Matrices #Rotation #Diagonalization
An iterative method for symmetric matrices that uses Givens rotations to progressively diagonalize the matrix.

## Optimization #Minimization #Maximization #OperationsResearch
Finding the minimum or maximum value of a function, possibly subject to constraints.

### Unconstrained Optimization #NoConstraints #Calculus
Finding optima without restrictions on the variables.
#### Gradient Descent #SteepestDescent #FirstOrder
Iteratively moving in the direction opposite to the gradient.
#### Newton's Method #SecondOrder #Hessian
Using second derivative information (Hessian matrix) for faster (quadratic) convergence near the optimum.
#### Quasi-Newton Methods (e.g., BFGS) #HessianApproximation #Efficiency
Approximating the Hessian matrix or its inverse iteratively, avoiding explicit computation.
#### Conjugate Gradient Method (for Optimization) #QuadraticFunctions #LinearSystemsLink
Adapting the conjugate gradient method for linear systems to minimize quadratic functions, and extended for general nonlinear functions.

### Constrained Optimization #Constraints #Feasibility
Finding optima while satisfying equality or inequality constraints.
#### Lagrange Multipliers #EqualityConstraints #OptimalityConditions
A method for handling equality constraints by introducing Lagrange multipliers.
#### Penalty and Barrier Methods #AugmentedLagrangian #InteriorPoint
Methods that incorporate constraints into the objective function via penalty or barrier terms.
#### Linear Programming #LinearObjective #LinearConstraints #Simplex
Problems with a linear objective function and linear constraints. The Simplex algorithm is a classic solution method.
#### Sequential Quadratic Programming (SQP) #NonlinearConstraints #QPsubproblems
Iteratively solving quadratic programming subproblems to handle general nonlinear constrained optimization.

## Numerical Linear Algebra Topics #Matrices #Algorithms #Performance
Advanced topics focusing specifically on matrix computations.

### Matrix Factorizations #Decomposition #Structure
Exploiting matrix structure through factorizations (LU, Cholesky, QR, SVD).
### Singular Value Decomposition (SVD) #DataAnalysis #Rank #Conditioning
A fundamental factorization (A = UΣV^T) with wide applications in data compression, PCA, solving least squares, and analyzing matrix properties.
### Solving Large Sparse Systems #Sparsity #Efficiency #IterativeMethods
Techniques specifically designed for systems where most matrix entries are zero. Often relies on iterative methods and specialized storage formats.
### Conditioning and Numerical Stability revisited #ErrorBounds #SensitivityAnalysis
Deeper analysis of how errors affect matrix computations.

## Fast Fourier Transform (FFT) #SignalProcessing #PolynomialMultiplication #Efficiency
An efficient algorithm (O(N log N)) for computing the Discrete Fourier Transform (DFT) and its inverse.

### Discrete Fourier Transform (DFT) #FrequencyDomain #Analysis
Transforming a sequence of time-domain samples into frequency components.
### Cooley-Tukey Algorithm #DivideAndConquer #Recursive
The most common FFT algorithm, based on a divide-and-conquer approach.
### Applications #Filtering #Convolution #PDEs
Wide use in signal processing, image analysis, data compression, fast polynomial multiplication, and solving certain PDEs.

## Monte Carlo Methods #Randomness #Simulation #Statistics
Methods relying on repeated random sampling to obtain numerical results.

### Random Number Generation #PseudoRandom #QuasiRandom
Techniques for generating sequences of numbers that appear random.
### Monte Carlo Integration revisited #HighDimensions #ComplexDomains
Using random sampling to estimate integrals, particularly effective in high dimensions or complex integration domains.
### Simulation #Modeling #StochasticProcesses
Using random numbers to simulate physical systems, financial models, or other stochastic processes.

## Software and Implementation #Tools #Libraries #Performance
Practical aspects of implementing numerical algorithms.

### Mathematical Software Libraries #BLAS #LAPACK #NAG #IMSL
Standardized, highly optimized libraries for basic linear algebra operations (BLAS) and more complex matrix computations (LAPACK), as well as commercial libraries (NAG, IMSL).
### Programming Environments #MATLAB #Python #SciPy #NumPy #R #Julia #Fortran #C++
Common languages and environments used for numerical computation, offering built-in functions, libraries, and visualization tools.
### High-Performance Computing #Parallelism #Architecture #Optimization
Techniques for implementing numerical methods efficiently on modern computer architectures, including parallel computing (e.g., MPI, OpenMP, GPUs).
### Visualization of Numerical Results #Plotting #Interpretation #DataAnalysis
Tools and techniques for visualizing the output of numerical simulations and computations.
