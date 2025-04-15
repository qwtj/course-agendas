# Numerical Analysis #Computation #Mathematics
The study of algorithms that use numerical approximation (as opposed to symbolic manipulations) for the problems of mathematical analysis.

## Fundamentals and Error Analysis #Basics #ErrorTheory #Foundations
Core concepts underpinning numerical methods, including the nature and propagation of errors.
### Sources of Error #ErrorTypes #Accuracy
Understanding where numerical errors originate.
#### Round-off Error #FloatingPoint #Precision
Errors due to the finite precision of computer arithmetic.
#### Truncation Error #Approximation #MethodError
Errors resulting from approximating infinite processes by finite ones (e.g., using a finite number of terms in a series).
#### Data Uncertainty #InputError #Measurement
Errors inherent in the input data itself.
### Error Propagation #ErrorGrowth #Sensitivity
How initial errors affect the final result through calculations.
### Floating-Point Arithmetic #ComputerArithmetic #IEEE754
Representation of real numbers on computers and the consequences for calculations.
#### Number Representation #Binary #Formats
How numbers are stored (e.g., IEEE 754 standard).
#### Arithmetic Operations #Addition #Multiplication
How basic operations are performed and potential pitfalls (e.g., catastrophic cancellation).
### Conditioning and Stability #ProblemSensitivity #AlgorithmRobustness
Distinguishing between ill-conditioned problems (sensitive to input changes) and unstable algorithms (amplify errors).
#### Condition Number #SensitivityMetric #IllConditioned
A measure of how sensitive a function or problem is to changes in input data.
#### Numerical Stability #AlgorithmProperty #ErrorControl
The property of an algorithm regarding how errors are magnified during computation. Forward vs. Backward stability.

## Solution of Nonlinear Equations #RootFinding #AlgebraicEquations
Methods for finding solutions (roots) to equations of the form f(x) = 0 or systems of such equations.
### Bracketing Methods #IntervalMethods #GuaranteedConvergence
Methods that require an initial interval known to contain a root.
#### Bisection Method #Dichotomy #Simple
Guaranteed convergence but relatively slow.
#### Regula Falsi (False Position Method) #LinearInterpolation #ImprovedBracketing
Uses linear interpolation instead of interval midpoint.
### Open Methods #Iterative #FasterConvergence
Methods that require an initial guess but do not guarantee convergence.
#### Fixed-Point Iteration #FunctionalIteration #ConvergenceCriteria
Finding x such that x = g(x). Requires careful choice of g(x).
#### Newton-Raphson Method #TangentMethod #QuadraticConvergence
Uses function value and derivative; fast convergence near root but sensitive to initial guess.
#### Secant Method #FiniteDifference #DerivativeFree
Approximates derivative using finite difference; avoids explicit derivative calculation.
#### Muller's Method #QuadraticInterpolation
Uses quadratic interpolation through three points.
### Systems of Nonlinear Equations #Multidimensional #VectorRoots
Finding solutions for f(x) = 0 where f and x are vectors.
#### Newton's Method for Systems #JacobianMatrix #Linearization
Extension of Newton-Raphson using the Jacobian matrix.

## Solution of Linear Systems (Ax=b) #LinearAlgebra #MatrixEquations
Algorithms for solving systems of linear algebraic equations.
### Direct Methods #Factorization #FiniteSteps
Methods that find the exact solution (in infinite precision arithmetic) in a finite number of steps.
#### Gaussian Elimination #RowOperations #EchelonForm
Systematic elimination of variables.
#### Pivoting Strategies #Stability #AccuracyImprovement
Techniques (partial, scaled partial, full) to improve numerical stability by avoiding division by small numbers.
#### LU Factorization / Decomposition #MatrixFactorization #SolverEfficiency
Factoring A into Lower (L) and Upper (U) triangular matrices (A=LU). Useful for solving multiple systems with the same A.
##### Doolittle, Crout, Cholesky Factorization #Variants #SpecialMatrices
Specific algorithms for LU (Doolittle, Crout) and for symmetric positive-definite matrices (Cholesky, A=LL^T).
#### Thomas Algorithm #Tridiagonal #SpecializedSolver
Efficient direct solver specifically for tridiagonal systems.
### Iterative Methods #Approximation #LargeSystems
Methods that start with an initial guess and generate a sequence of improving approximations. Often preferred for large, sparse systems.
#### Jacobi Method #SimultaneousUpdate #ConvergenceConditions
Simple iterative method; convergence depends on matrix properties (e.g., diagonal dominance).
#### Gauss-Seidel Method #SequentialUpdate #FasterConvergence
Improves on Jacobi by using updated values immediately.
#### Successive Over-Relaxation (SOR) #Acceleration #RelaxationParameter
Accelerates Gauss-Seidel convergence using a relaxation parameter ω.
#### Conjugate Gradient Method #OptimizationBased #SPDSystems
Efficient iterative method primarily for symmetric positive-definite (SPD) systems.
#### Generalized Minimal Residual Method (GMRES) #KrylovSubspace #GeneralSystems
Popular Krylov subspace method for general non-symmetric systems.
#### Biconjugate Gradient Stabilized Method (BiCGSTAB) #KrylovSubspace #NonSymmetric
Another robust Krylov method for non-symmetric systems.
### Matrix Norms and Condition Numbers #SensitivityAnalysis #ErrorBounds
Measuring the 'size' of vectors and matrices, and assessing the sensitivity of Ax=b to perturbations.

## Interpolation and Approximation #FunctionApproximation #DataFitting
Constructing new data points or functions based on a discrete set of known data points.
### Polynomial Interpolation #CurveFitting #Polynomials
Using polynomials to pass exactly through given data points.
#### Lagrange Interpolating Polynomial #DirectConstruction #BasisPolynomials
Constructs the unique interpolating polynomial directly. Conceptually simple but computationally less efficient for adding points.
#### Newton's Divided Differences #RecursiveConstruction #EfficientEvaluation
Allows efficient computation and easy addition of new data points. Based on divided differences.
#### Errors in Interpolation #InterpolationError #RungePhenomenon
Analysis of the error term and phenomena like oscillations with high-degree polynomials (Runge's phenomenon).
### Piecewise Interpolation #Splines #Smoothness
Using different low-degree polynomials over different subintervals.
#### Linear Splines #ConnectTheDots #Continuous
Simple, continuous but not smooth (kinks at data points).
#### Quadratic Splines #Smoother #DerivativeContinuity
Ensures continuity of the first derivative.
#### Cubic Splines #WidelyUsed #SmoothCurves
Ensures continuity of first and second derivatives. Natural, clamped boundary conditions.
### Trigonometric Interpolation #PeriodicFunctions #FourierAnalysis
Using trigonometric polynomials for periodic data/functions. Closely related to Discrete Fourier Transform.
### Rational Function Approximation #PadeApproximation #Singularities
Approximating functions using ratios of polynomials, useful near singularities.
### Bezier Curves and B-Splines #ParametricCurves #CAGD
Used extensively in Computer Aided Geometric Design (CAGD) and graphics. Offer local control.

## Numerical Differentiation #DerivativeApproximation #FiniteDifferences
Approximating the derivatives of functions using function values at discrete points.
### Finite Difference Formulas #TaylorSeries #ApproximationOrder
Deriving formulas based on Taylor series expansions.
#### Forward Difference #FirstOrder #Simple
Uses f(x) and f(x+h). O(h) accurate.
#### Backward Difference #FirstOrder #Simple
Uses f(x) and f(x-h). O(h) accurate.
#### Central Difference #SecondOrder #MoreAccurate
Uses f(x-h) and f(x+h). O(h^2) accurate. More computationally expensive but generally preferred for accuracy.
### Higher-Order Formulas #IncreasedAccuracy #MorePoints
Using more points to derive formulas with higher orders of accuracy (e.g., O(h^4)).
### Richardson Extrapolation #AccuracyImprovement #ErrorCancellation
Combining results from different step sizes (h) to extrapolate to h=0, improving accuracy.
### Sensitivity to Round-off Error #ErrorTradeoff #OptimalStepSize
Numerical differentiation is sensitive to round-off error, especially for small step sizes (h). Trade-off between truncation and round-off error.

## Numerical Integration (Quadrature) #IntegralApproximation #AreaUnderCurve
Approximating the value of definite integrals.
### Newton-Cotes Formulas #EquallySpaced #PolynomialFit
Based on integrating interpolating polynomials over equally spaced points.
#### Trapezoidal Rule #LinearInterpolation #Simple
Approximates area using trapezoids. O(h^2) local error.
#### Simpson's Rule (1/3 and 3/8) #QuadraticCubic #HigherAccuracy
Uses quadratic (1/3 rule) or cubic (3/8 rule) interpolation. O(h^4) and O(h^4) local errors respectively.
### Composite Rules #Subintervals #ImprovedAccuracy
Applying basic Newton-Cotes rules repeatedly over smaller subintervals to improve overall accuracy.
#### Composite Trapezoidal Rule #Summation #BasicIntegration
#### Composite Simpson's Rule #Summation #StandardMethod
### Romberg Integration #RichardsonExtrapolation #TrapezoidalBased
Systematically applies Richardson extrapolation to the composite trapezoidal rule to achieve high accuracy.
### Gaussian Quadrature #OptimalNodes #Weights
Chooses node points and weights optimally (not necessarily equally spaced) to achieve the highest possible accuracy for a given number of function evaluations. Based on orthogonal polynomials.
#### Gauss-Legendre Quadrature #StandardInterval #Polynomials
Specific type for interval [-1, 1].
### Adaptive Quadrature #ErrorControl #VariableStepSize
Automatically adjusts the size/number of subintervals based on local error estimates to achieve a desired overall accuracy efficiently.
### Multiple Integrals #Multidimensional #VolumeIntegration
Techniques for approximating integrals in two or more dimensions (e.g., using nested 1D rules, Monte Carlo methods).

## Numerical Solution of Ordinary Differential Equations (ODEs) #DifferentialEquations #Simulation
Methods for approximating solutions to ODEs, typically initial value problems (IVPs).
### Initial Value Problems (IVPs) #GivenInitialState #TimeEvolution
Problems where the state is known at an initial time, and the goal is to find the state at later times. y'(t) = f(t, y), y(t0) = y0.
#### Euler's Method #TangentLine #FirstOrder
Simplest method, follows the tangent line. Low accuracy (O(h)), not recommended for practical use but fundamental.
#### Taylor Series Methods #HigherOrderDerivatives #Complexity
Uses higher-order terms from the Taylor expansion of the solution. Higher accuracy but requires computing derivatives of f.
#### Runge-Kutta Methods #SlopeAveraging #WidelyUsed
Family of methods that achieve higher accuracy without explicit derivatives of f, by evaluating f at multiple points within each step.
##### Classical RK4 #FourthOrder #StandardMethod
Very popular, balances accuracy (O(h^4)) and computational effort.
##### Embedded Methods (e.g., RKF45, Dormand-Prince) #ErrorEstimation #AdaptiveStepSize
Pairs of RK methods of different orders used to estimate local error and adapt the step size (h).
#### Multistep Methods #PastValues #Efficiency
Use information from previous steps (y_i, y_{i-1}, ...) to compute the next step (y_{i+1}). Potentially more efficient than single-step methods for smooth problems.
##### Adams-Bashforth Methods #Explicit #Predictor
Explicit methods (use only past values).
##### Adams-Moulton Methods #Implicit #Corrector
Implicit methods (require solving an equation for y_{i+1} at each step). Often used with Adams-Bashforth in predictor-corrector schemes.
### Stability Analysis #StepSizeLimits #Stiffness
Analyzing how errors propagate and whether the method remains bounded.
#### Stiffness #MultipleTimescales #ImplicitMethods
ODEs where some components decay much faster than others. Require specific (often implicit) methods for stable and efficient solution (e.g., Backward Differentiation Formulas - BDF).
#### Stability Regions #A-Stability #L-Stability
Regions in the complex plane related to step size and eigenvalues that determine stability.
### Boundary Value Problems (BVPs) #ConstraintsAtEndpoints #DifferentMethods
Problems where conditions are specified at the boundaries of the domain, rather than just at the start. y'' = f(x, y, y'), y(a) = alpha, y(b) = beta.
#### Shooting Method #IVPConversion #RootFinding
Converts the BVP into an IVP by guessing missing initial conditions and iterating (using a root-finding method) until the boundary condition at the other end is met.
#### Finite Difference Method #Discretization #LinearSystem
Discretizes the domain and replaces derivatives with finite differences, resulting in a system of algebraic equations (often linear).
#### Collocation Methods #BasisFunctions #ResidualMinimization
Approximates the solution as a linear combination of basis functions and forces the residual to be zero at specific collocation points.

## Numerical Solution of Partial Differential Equations (PDEs) #MultivariableCalculus #ModelingPhysics
Methods for approximating solutions to PDEs, which involve functions of multiple variables and their partial derivatives.
### Classification of PDEs #Elliptic #Parabolic #Hyperbolic
Categorization based on characteristics, influencing the choice of numerical method.
#### Elliptic PDEs (e.g., Laplace, Poisson) #SteadyState #BoundaryValue
Describe steady-state phenomena. Typically solved as boundary value problems.
#### Parabolic PDEs (e.g., Heat Equation) #TimeEvolution #Diffusion
Describe diffusion or time-dependent processes evolving towards steady state. Typically involve initial and boundary conditions.
#### Hyperbolic PDEs (e.g., Wave Equation) #TimeEvolution #WavePropagation
Describe wave propagation phenomena. Typically involve initial and boundary conditions.
### Finite Difference Methods (FDM) #GridBased #DerivativeApproximation
Discretizes the domain into a grid and approximates partial derivatives using finite differences. Leads to large systems of algebraic equations.
#### Grid Generation #Structured #Unstructured
Creating the mesh over the domain.
#### Discretization Schemes #Explicit #Implicit #CrankNicolson
Methods for approximating time derivatives (e.g., Forward Euler - explicit, Backward Euler - implicit, Crank-Nicolson - implicit, second-order).
#### Stability Analysis (e.g., Von Neumann, CFL Condition) #StepSizeConstraints #Convergence
Ensuring that errors do not grow uncontrollably. The Courant–Friedrichs–Lewy (CFL) condition often limits the time step for explicit methods.
### Finite Element Methods (FEM) #Variational #WeakFormulation
Divides the domain into smaller elements (triangles, quadrilaterals, etc.). Approximates the solution within each element using basis functions. Based on integral (weak) formulations. Very flexible for complex geometries and boundary conditions.
#### Basis Functions #PiecewisePolynomials #ElementShapes
Functions used to build the approximate solution within each element.
#### Variational Formulation #WeightedResiduals #GalerkinMethod
Transforming the PDE into an integral form (weak form) suitable for approximation.
#### Assembly Process #GlobalSystem #StiffnessMatrix
Combining element-level equations into a large global system of algebraic equations.
### Finite Volume Methods (FVM) #ConservationLaws #FluxBased
Discretizes the domain into control volumes. Applies the integral form of the conservation law directly to each control volume. Ensures conservation properties are maintained numerically. Widely used in fluid dynamics.
### Spectral Methods #GlobalBasisFunctions #HighAccuracy
Uses basis functions (e.g., Fourier series, Chebyshev polynomials) that are defined over the entire domain. Can achieve very high accuracy (spectral accuracy) for smooth solutions.

## Eigenvalue Problems (Ax = λx) #LinearAlgebra #Vibrations #StabilityAnalysis
Methods for finding eigenvalues (λ) and eigenvectors (x) of a matrix A. Critical in many areas like vibration analysis, stability analysis, quantum mechanics, and data analysis (PCA).
### Power Method #DominantEigenvalue #SimpleIteration
Iterative method to find the eigenvalue with the largest absolute value and its corresponding eigenvector.
### Inverse Power Method #SmallestEigenvalue #ShiftAndInvert
Applies the power method to (A - σI)^-1 to find the eigenvalue closest to a shift σ. Useful for finding eigenvalues other than the dominant one, especially the smallest.
### QR Algorithm #AllEigenvalues #RobustMethod
Robust iterative method for finding all eigenvalues (and optionally eigenvectors) of a matrix. Often involves transforming the matrix to Hessenberg or tridiagonal form first for efficiency.
### Jacobi Method for Symmetric Matrices #Rotations #Diagonalization
Iterative method specifically for symmetric matrices that uses plane rotations (Givens rotations) to progressively diagonalize the matrix. Eigenvalues appear on the diagonal.
### Eigenvalue Sensitivity #Conditioning #PerturbationTheory
Analyzing how eigenvalues change with perturbations in the matrix A.

## Optimization #Minimization #Maximization #ParameterEstimation
Finding the minimum or maximum value of a function, possibly subject to constraints.
### Unconstrained Optimization #NoLimits #FindingExtrema
Finding the minimum/maximum of f(x) where x can be any vector in R^n.
#### Methods for 1D #LineSearch #SingleVariable
Techniques like Golden Section Search or parabolic interpolation used within higher-dimensional algorithms.
#### Gradient Descent #SteepestDescent #FirstOrder
Iteratively moves in the direction of the negative gradient. Simple but can be slow (zig-zagging).
#### Newton's Method #SecondOrder #HessianMatrix
Uses first and second derivatives (Hessian matrix). Faster convergence near minimum but computationally expensive and requires Hessian to be positive definite.
#### Quasi-Newton Methods #ApproximateHessian #BFGS #DFP
Avoids computing the exact Hessian by building up an approximation iteratively. Popular methods include BFGS and DFP. Good balance of speed and robustness.
#### Conjugate Gradient Method #LargeScale #Iterative
Originally for linear systems, adapted for non-linear optimization. Efficient for large-scale problems, does not require matrix storage like Newton or Quasi-Newton methods.
### Constrained Optimization #WithLimits #FeasibleRegion
Finding the minimum/maximum subject to equality (h(x)=0) or inequality (g(x)<=0) constraints.
#### Linear Programming #LinearObjective #LinearConstraints
Optimization where both the objective function and constraints are linear. Solved efficiently by the Simplex method or interior-point methods.
#### Nonlinear Programming #GeneralCase #ComplexMethods
Optimization involving nonlinear objective functions and/or constraints.
##### Lagrange Multipliers #EqualityConstraints #OptimalityConditions
Theoretical framework for handling equality constraints (Karush-Kuhn-Tucker - KKT conditions extend this to inequality constraints).
##### Penalty and Barrier Methods #Transformation #UnconstrainedSolver
Transforms the constrained problem into a sequence of unconstrained problems by adding penalty terms (for violating constraints) or barrier terms (to stay within feasible region).
##### Sequential Quadratic Programming (SQP) #QuadraticSubproblem #NewtonLike
Solves a sequence of quadratic programming subproblems that approximate the original problem. Often very efficient.

## Approximation Theory #BestFit #FunctionSpaces
Theoretical underpinning for how well functions can be approximated by simpler functions (e.g., polynomials, trigonometric functions).
### Least Squares Approximation #DataFitting #OverdeterminedSystems
Finding the 'best fit' function (often polynomial) to a set of data points by minimizing the sum of the squares of the residuals (errors). Leads to solving the normal equations.
### Orthogonal Polynomials #BasisChoice #Simplification
Using families of polynomials (e.g., Legendre, Chebyshev, Hermite) that are orthogonal with respect to some inner product. Simplifies least-squares approximations and useful in Gaussian quadrature.
### Fourier Analysis and FFT #PeriodicFunctions #SignalProcessing
Approximating functions using sums of sines and cosines (Fourier series). The Fast Fourier Transform (FFT) is an extremely efficient algorithm for computing the Discrete Fourier Transform (DFT). Widely used in signal processing, image compression, and solving PDEs.
#### Discrete Fourier Transform (DFT) #SampledData #FrequencyDomain
Transforms discrete data from the time/spatial domain to the frequency domain.
#### Fast Fourier Transform (FFT) #EfficientAlgorithm #DFTComputation
An algorithm that computes the DFT in O(N log N) time instead of O(N^2).

## Monte Carlo Methods #Randomness #Simulation #HighDimensions
Algorithms that rely on repeated random sampling to obtain numerical results. Often used when deterministic methods are too complex or slow, especially in high dimensions.
### Random Number Generation #PRNG #QuasiRandom
Generating sequences that appear random (pseudo-random) or cover the sample space more evenly (quasi-random, low-discrepancy sequences).
### Monte Carlo Integration #StochasticApproximation #DimensionalityAdvantage
Estimating definite integrals (especially high-dimensional ones) by averaging function values at random points in the domain. Convergence rate is independent of dimension but relatively slow (O(1/sqrt(N))).
### Simulation #StochasticProcesses #Modeling
Using random numbers to model and simulate complex systems or processes involving uncertainty (e.g., finance, physics, queuing theory).

## Software and Implementation #Tools #Libraries #PracticalAspects
Practical considerations for implementing and using numerical methods.
### Numerical Libraries #PrebuiltCode #Efficiency #Reliability
Using established, optimized, and tested libraries.
#### BLAS (Basic Linear Algebra Subprograms) #VectorMatrixOps #LowLevel
Standard interface for low-level vector and matrix operations.
#### LAPACK (Linear Algebra PACKage) #HigherLevel #Solvers #Eigenproblems
Library for higher-level linear algebra routines (solving systems, eigenvalue problems, SVD). Often built on BLAS.
#### Other Libraries (NAG, IMSL, GSL, SciPy) #Comprehensive #Specialized
Commercial (NAG, IMSL) and open-source (GSL - GNU Scientific Library, SciPy - Python) libraries offering a wide range of numerical algorithms.
### Programming Languages #ImplementationChoice #Performance
Common languages used for numerical computing.
#### Fortran #Legacy #Performance #HPC
Historically dominant in scientific computing, still widely used in High-Performance Computing (HPC) for performance.
#### C/C++ #Performance #SystemsLevel
Offer high performance and control, often used for library development.
#### Python (with NumPy/SciPy) #EaseOfUse #Prototyping #ExtensiveLibraries
Increasingly popular due to ease of use, interactivity, and powerful libraries (NumPy for arrays, SciPy for algorithms). Performance-critical parts often call C/Fortran code.
#### MATLAB/Octave #IntegratedEnvironment #Prototyping #Visualization
Matrix-oriented environments with built-in functions for numerical methods, plotting, and algorithm development.
### Visualization of Results #Plotting #Interpretation #Communication
Using graphs and plots to understand, interpret, and communicate the results of numerical computations.
### Parallel Computing for Numerical Methods #HPC #Speedup #LargeScale
Using multiple processors (cores, nodes) simultaneously to solve large numerical problems faster (e.g., using MPI, OpenMP, CUDA). Essential for tackling grand challenge problems.
