```markdown
# Differential Equations #Overview #Mathematics
An introduction to the study of equations involving functions and their derivatives. Differential equations are fundamental to modeling phenomena in science, engineering, finance, and other disciplines.

## Introduction and Basic Concepts #Fundamentals #Definitions #Classification
Laying the groundwork: terminology, classification, and the concept of a solution.

### Definitions #Terminology #CoreConcepts
Basic terms used throughout the study of differential equations.
*   Differential Equation (DE)
*   Ordinary Differential Equation (ODE)
*   Partial Differential Equation (PDE)
*   Order of a DE
*   Degree of a DE (less common)
*   Linear vs. Nonlinear DEs
*   Homogeneous vs. Nonhomogeneous DEs
*   Solution to a DE (Explicit, Implicit)

### Classification of DEs #Types #Categorization
Organizing differential equations based on their properties.
*   By Type (ODE vs. PDE)
*   By Order (First-order, Second-order, Higher-order)
*   By Linearity (Linear vs. Nonlinear)

### Initial Value Problems (IVPs) #Problems #Conditions
Problems where the solution must satisfy conditions at a single point.
*   Definition of IVP
*   Existence and Uniqueness Theorems (Picard-Lindelöf for first-order ODEs, corresponding theorems for higher-order and systems)

### Boundary Value Problems (BVPs) #Problems #Conditions
Problems where the solution must satisfy conditions at boundary points.
*   Definition of BVP (primarily for second-order and higher ODEs, and PDEs)

## First-Order Ordinary Differential Equations #ODE #FirstOrder #Methods
Techniques for solving differential equations involving only the first derivative.

### Separable Equations #Technique #Integration
Equations that can be rearranged so each side involves only one variable.
*   Form: dy/dx = g(x)h(y)
*   Solution method: Separation and integration

### Linear First-Order Equations #Technique #LinearODE
Equations of the form dy/dx + P(x)y = Q(x).
*   Standard Form
*   Integrating Factor Method

### Exact Equations #Technique #Exactness
Equations of the form M(x,y)dx + N(x,y)dy = 0 where ∂M/∂y = ∂N/∂x.
*   Condition for Exactness
*   Method of Solution (Finding potential function ψ(x,y))
*   Integrating Factors for Non-Exact Equations

### Substitution Methods #Technique #Transformation
Transforming equations into a solvable form.
*   Homogeneous Equations (of degree type, v=y/x or v=x/y)
*   Bernoulli Equations (y' + P(x)y = Q(x)y^n)
*   Other substitutions

### Applications of First-Order ODEs #Modeling #Applications
Using first-order equations to model real-world phenomena.
*   Population Growth (Exponential, Logistic)
*   Radioactive Decay
*   Mixing Problems
*   Newton's Law of Cooling/Heating
*   Simple Electrical Circuits (RC, RL)
*   Orthogonal Trajectories

## Higher-Order Linear Ordinary Differential Equations #ODE #HigherOrder #LinearODE
Equations involving second and higher derivatives, focusing on linear cases.

### Theory of Linear ODEs #Theory #LinearAlgebra
Fundamental concepts for linear equations.
*   Homogeneous vs. Nonhomogeneous Equations
*   Principle of Superposition (for homogeneous eqns)
*   Linear Independence and the Wronskian
*   Fundamental Set of Solutions
*   General Solution = Homogeneous Solution + Particular Solution (y = yh + yp)

### Homogeneous Linear Equations with Constant Coefficients #Technique #ConstantCoefficients
Solving equations of the form a_n y^(n) + ... + a_1 y' + a_0 y = 0 where a_i are constants.
*   Characteristic (Auxiliary) Equation
*   Distinct Real Roots
*   Repeated Real Roots
*   Complex Conjugate Roots

### Nonhomogeneous Linear Equations #Technique #Nonhomogeneous
Finding particular solutions for equations with a non-zero right-hand side (forcing function).
*   Method of Undetermined Coefficients (Guessing yp based on forcing function)
*   Method of Variation of Parameters (General method using Wronskian)

### Applications of Higher-Order ODEs #Modeling #Applications
Modeling systems described by higher-order equations.
*   Mechanical Vibrations (Spring-Mass Systems: Free Undamped, Free Damped, Forced Motion, Resonance)
*   Electrical Circuits (RLC Circuits)
*   Beam Deflection

### Cauchy-Euler Equations #Technique #VariableCoefficients
A special class of linear equations with variable coefficients: ax^2y'' + bxy' + cy = 0.
*   Solution Method (Assume y = x^r)

## Series Solutions of Linear ODEs #Technique #Series #Approximation
Finding solutions in the form of power series, especially when coefficients are not constant.

### Review of Power Series #Prerequisites #Analysis
Basic concepts of power series.
*   Convergence, Radius of Convergence
*   Taylor Series

### Solutions Near Ordinary Points #Technique #OrdinaryPoints
Finding series solutions around points where coefficient functions are analytic.
*   Assuming y(x) = Σ a_n (x-x₀)^n
*   Recurrence Relations

### Solutions Near Regular Singular Points #Technique #SingularPoints #Frobenius
Finding solutions around points where coefficients may be singular but in a manageable way.
*   Definition of Regular Singular Point
*   Method of Frobenius (Assume y(x) = Σ a_n (x-x₀)^(n+r))
*   Indicial Equation and Exponents at Singularity
*   Cases based on roots of indicial equation (distinct non-integer difference, repeated roots, integer difference)

### Special Functions #Functions #Applications
Functions arising as solutions to important ODEs.
*   Bessel Functions (from Bessel's Equation)
*   Legendre Polynomials (from Legendre's Equation)

## Laplace Transforms #Technique #IntegralTransforms #IVP
Using an integral transform to convert differential equations into algebraic equations.

### Definition and Basic Properties #Definition #Properties
Introducing the Laplace transform and its key characteristics.
*   Definition: L{f(t)} = ∫[0, ∞] e^(-st) f(t) dt
*   Existence Conditions
*   Linearity
*   Transforms of Elementary Functions (polynomials, exponentials, sines, cosines)

### Properties of the Laplace Transform #Theorems #Manipulation
Rules for manipulating transforms.
*   First Shifting Theorem (Multiplication by e^(at))
*   Second Shifting Theorem (Unit Step Function, Heaviside function)
*   Transform of Derivatives (L{f'(t)}, L{f''(t)}, ...)
*   Derivatives of Transforms
*   Transform of Integrals
*   Convolution Theorem

### Inverse Laplace Transform #Technique #InverseProblem
Recovering the original function from its transform.
*   Using Tables
*   Partial Fraction Decomposition

### Solving Linear ODEs and IVPs #Application #SolvingODEs
Applying the Laplace transform to solve initial value problems, especially nonhomogeneous ones with discontinuous or impulsive forcing terms.
*   Transforming the ODE
*   Solving for L{y(t)} algebraically
*   Finding y(t) via Inverse Transform

### Step Functions and Impulse Functions #Functions #Modeling
Handling discontinuous and impulsive inputs.
*   Heaviside Function (Unit Step Function)
*   Dirac Delta Function (Impulse Function)
*   Transforms involving these functions

## Systems of First-Order Linear ODEs #ODE #Systems #LinearAlgebra
Analyzing multiple interacting differential equations simultaneously.

### Introduction to Systems #Theory #Modeling
Representing higher-order ODEs or coupled phenomena as systems.
*   Matrix Form: **x'** = A(t)**x** + **f**(t)
*   Homogeneous vs. Nonhomogeneous Systems
*   Linear Independence and Fundamental Matrix

### Homogeneous Linear Systems with Constant Coefficients #Technique #Eigenvalues
Solving **x'** = A**x** where A is a constant matrix.
*   Eigenvalue/Eigenvector Method
*   Case 1: Distinct Real Eigenvalues
*   Case 2: Repeated Real Eigenvalues (Generalized Eigenvectors)
*   Case 3: Complex Conjugate Eigenvalues

### Fundamental Matrix #Theory #SolutionStructure
The matrix whose columns form a fundamental set of solutions.
*   Definition and Properties
*   Matrix Exponential (e^(At))

### Nonhomogeneous Linear Systems #Technique #Nonhomogeneous
Solving **x'** = A**x** + **f**(t).
*   Method of Undetermined Coefficients (limited applicability)
*   Variation of Parameters for Systems

### Applications of Systems #Modeling #Applications
Modeling interacting populations, coupled oscillators, mixing problems in multiple tanks, control systems.

## Nonlinear Differential Equations and Stability #NonlinearODE #Stability #QualitativeTheory
Analyzing equations and systems where linearity does not hold, often focusing on qualitative behavior.

### Autonomous Systems and Phase Plane Analysis #Technique #Qualitative #2DSystems
Analyzing systems of two first-order autonomous ODEs (dx/dt = F(x,y), dy/dt = G(x,y)).
*   Phase Portrait
*   Trajectories and Orbits
*   Critical Points (Equilibrium Solutions)
*   Nullclines

### Stability of Linear Systems #Theory #Stability #LinearSystems
Analyzing the behavior of solutions near critical points for linear systems (**x'** = A**x**).
*   Stability based on Eigenvalues of A

### Linearization of Nonlinear Systems #Technique #Approximation #Stability
Approximating nonlinear systems near critical points using linear systems.
*   Jacobian Matrix
*   Classifying Critical Points (Nodes, Saddles, Spirals, Centers)
*   Stability of Nonlinear Systems based on Linearization (Hartman-Grobman Theorem)

### Lyapunov Stability Theory #Theory #Stability #EnergyMethods
Using Lyapunov functions to determine stability without explicitly solving the system.
*   Lyapunov Functions
*   Lyapunov's Stability Theorems (Stability, Asymptotic Stability)

### Predator-Prey Models and Competing Species #Modeling #Biology #Ecology
Applications of nonlinear systems in population dynamics.
*   Lotka-Volterra Equations

## Numerical Methods for Ordinary Differential Equations #Numerical #Approximation #Computation
Approximating solutions when analytical solutions are difficult or impossible to find.

### Euler's Method #Method #FirstOrderApprox
The simplest method for approximating solutions to IVPs.
*   Formula: y_(n+1) = y_n + h * f(t_n, y_n)
*   Geometric Interpretation (Tangent Line Approximation)
*   Local and Global Truncation Error (Order 1)

### Improvements on Euler's Method #Method #HigherOrderApprox
More accurate single-step methods.
*   Improved Euler Method (Heun's Method, Predictor-Corrector)
*   Midpoint Method

### Runge-Kutta Methods #Method #Standard #Accuracy
A family of accurate and widely used methods.
*   General Form
*   RK4 (Fourth-Order Runge-Kutta) - the most common

### Multistep Methods #Method #Efficiency
Methods that use information from previous steps.
*   Adams-Bashforth Methods (Explicit)
*   Adams-Moulton Methods (Implicit)
*   Predictor-Corrector Methods

### Errors and Stability Analysis #Analysis #Accuracy #Convergence
Understanding the limitations and behavior of numerical methods.
*   Local Truncation Error
*   Global Truncation Error
*   Convergence
*   Stability of Numerical Methods (A-stability)
*   Step Size Control

### Numerical Methods for Systems and Higher-Order Equations #Application #Systems
Extending numerical methods to systems of first-order ODEs (which includes higher-order ODEs converted to systems).

## Boundary Value Problems and Sturm-Liouville Theory #BVP #Eigenvalues #Orthogonality
Solving ODEs with conditions specified at two different points, leading to eigenvalue problems.

### Two-Point Boundary Value Problems #Problems #ShootingMethod
Solving linear second-order ODEs with boundary conditions.
*   Existence and Uniqueness
*   Shooting Method (Numerical Technique)
*   Finite Difference Method (Numerical Technique)

### Sturm-Liouville Theory #Theory #Eigenfunctions #Orthogonality
Properties of a specific class of second-order linear BVPs crucial for solving PDEs.
*   Sturm-Liouville Equation (Regular, Periodic, Singular)
*   Self-Adjoint Form
*   Eigenvalues and Eigenfunctions
*   Properties: Real Eigenvalues, Orthogonality of Eigenfunctions
*   Eigenfunction Expansions (Generalized Fourier Series)

## Introduction to Partial Differential Equations #PDE #Introduction #Multivariable
Equations involving partial derivatives of functions of multiple variables.

### Basic Concepts and Definitions #Definitions #Classification
Extending ODE concepts to PDEs.
*   Order, Linearity
*   Examples: Heat Equation, Wave Equation, Laplace's Equation

### Separation of Variables #Technique #FourierSeries #PDE
A primary method for solving linear homogeneous PDEs with appropriate boundary conditions.
*   Assumption: u(x,t) = X(x)T(t) or similar
*   Reducing PDE to ODEs
*   Using Boundary Conditions to determine eigenvalues/eigenfunctions (Sturm-Liouville connection)
*   Using Initial Conditions and Fourier Series/Eigenfunction Expansions

### Fourier Series #Technique #OrthogonalFunctions #Analysis
Representing periodic functions as sums of sines and cosines, essential for separation of variables.
*   Definition for periodic functions
*   Euler Formulas for Coefficients
*   Convergence Theorem
*   Even and Odd Functions (Sine and Cosine Series)
*   Parseval's Identity

### Heat Equation #PDE #Diffusion #Modeling
Modeling heat conduction and diffusion processes.
*   Derivation (optional)
*   Solving the 1D heat equation on a finite interval (using Separation of Variables and Fourier Series)
*   Different Boundary Conditions (Dirichlet, Neumann, Robin)

### Wave Equation #PDE #Vibrations #Modeling
Modeling vibrations of strings, membranes, sound waves, light waves.
*   Derivation (optional)
*   Solving the 1D wave equation on a finite interval (using Separation of Variables and Fourier Series)
*   D'Alembert's Solution for the infinite string

### Laplace's Equation #PDE #SteadyState #PotentialTheory
Modeling steady-state phenomena (temperature, potential).
*   Dirichlet and Neumann Problems
*   Solving in Rectangular and Circular Domains (using Separation of Variables in appropriate coordinates)
*   Maximum Principle

## Further Topics (Optional/Advanced) #Advanced #SpecialTopics

### Fourier Transforms #IntegralTransforms #PDE #SignalProcessing
Integral transform useful for PDEs on infinite domains.

### Green's Functions #Technique #Nonhomogeneous #BVP #PDE
A method for solving nonhomogeneous ODEs and PDEs subject to boundary conditions.

### Calculus of Variations #Optimization #Functionals
Finding functions that optimize certain integrals, related to deriving equations of motion (e.g., Euler-Lagrange equation).

### Delay Differential Equations #Modeling #TimeDelay
Equations where the derivative depends on the solution at previous times.

### Stochastic Differential Equations #Modeling #Randomness #Finance
Equations involving random processes.
```
