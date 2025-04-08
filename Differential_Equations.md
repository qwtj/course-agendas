**I. Introduction to Differential Equations**

*   Understanding Basic Concepts
    *   Defining differential equations: ordinary vs. partial
    *   Order and linearity of differential equations
    *   Distinguishing between solutions: general, particular, singular
    *   Verifying solutions to differential equations

*   Modeling with Differential Equations
    *   Formulating differential equations from word problems
    *   Examples: population growth, radioactive decay, Newton's law of cooling
    *   Understanding initial value problems (IVPs)
    *   Interpreting solutions in context

**II. First-Order Differential Equations**

*   Solving Separable Equations
    *   Identifying separable equations
    *   Techniques for separating variables and integrating
    *   Applying initial conditions to find particular solutions
    *   Examples: `dy/dx = xy`, `dy/dt = k(M-y)`

*   Solving Linear First-Order Equations
    *   Recognizing linear form: `dy/dx + P(x)y = Q(x)`
    *   Finding the integrating factor: `μ(x) = e^(∫P(x) dx)`
    *   Solving for `y`: `yμ(x) = ∫Q(x)μ(x) dx`
    *   Examples: `dy/dx + 2y = e^(-x)`, `x(dy/dx) + y = x^2`

*   Exact Equations
    *   Testing for exactness: `∂M/∂y = ∂N/∂x` for `M(x,y)dx + N(x,y)dy = 0`
    *   Finding the potential function `F(x,y)` such that `∂F/∂x = M` and `∂F/∂y = N`
    *   Solution: `F(x,y) = C` (constant)
    *   Examples: `(2xy + cos(x))dx + (x^2)dy = 0`

*   Homogeneous Equations
    *   Identifying homogeneous equations: `dy/dx = f(y/x)`
    *   Substitution: `v = y/x`, `y = vx`, `dy/dx = v + x(dv/dx)`
    *   Solving the resulting separable equation
    *   Examples: `dy/dx = (x^2 + y^2)/(xy)`

*   Applications of First-Order Equations
    *   Growth and Decay Models: `dP/dt = kP`
    *   Newton's Law of Cooling: `dT/dt = k(T - T_m)`
    *   Mixing Problems: rate in - rate out = rate of change
    *   Series Circuits (RL and RC)

**III. Second-Order Linear Differential Equations**

*   Homogeneous Equations with Constant Coefficients
    *   Characteristic equation: `ar^2 + br + c = 0`
    *   Distinct real roots: `y = c1e^(r1x) + c2e^(r2x)`
    *   Repeated real roots: `y = c1e^(rx) + c2xe^(rx)`
    *   Complex conjugate roots: `y = e^(αx)(c1cos(βx) + c2sin(βx))` where `r = α ± iβ`
    *   Examples: `y'' - 3y' + 2y = 0`, `y'' + 4y' + 4y = 0`, `y'' + 2y' + 5y = 0`

*   Nonhomogeneous Equations with Constant Coefficients
    *   Method of Undetermined Coefficients
        *   Finding a particular solution `yp` based on the form of `g(x)` (polynomial, exponential, sine/cosine)
        *   Examples: `y'' + y' - 2y = x^2`, `y'' - 3y' = e^(2x)`
        *   Dealing with duplicates from the homogeneous solution `yh`

    *   Variation of Parameters
        *   Formula: `yp = -y1∫(y2g(x)/W(y1, y2))dx + y2∫(y1g(x)/W(y1, y2))dx` where `W(y1, y2)` is the Wronskian determinant.
        *   Examples: `y'' + y = tan(x)`, `y'' - 2y' + y = e^x/x`

*   Applications of Second-Order Equations
    *   Spring-Mass Systems (undamped, damped, forced)
        *   Equation: `m(d^2x/dt^2) + c(dx/dt) + kx = F(t)`
        *   Analyzing free, damped, and forced vibrations
        *   Resonance phenomena
    *   Electrical Circuits (LRC)
        *   Analogies between mechanical and electrical systems
        *   Analyzing transient and steady-state behavior

**IV. Higher-Order Linear Differential Equations**

*   Homogeneous Equations with Constant Coefficients
    *   Extending the characteristic equation method to higher-degree polynomials
    *   Dealing with repeated and complex roots
    *   Examples: `y''' - 6y'' + 11y' - 6y = 0`

*   Nonhomogeneous Equations
    *   Method of Undetermined Coefficients (extension to higher-order)
    *   Variation of Parameters (extension to higher-order)

**V. Series Solutions of Differential Equations**

*   Power Series Review
    *   Convergence and interval of convergence
    *   Taylor series and Maclaurin series
    *   Operations with power series: addition, multiplication, differentiation, integration

*   Series Solutions Near an Ordinary Point
    *   Finding series solutions of the form `y = ∑(anx^n)`
    *   Recursion relations for coefficients `an`
    *   Examples: `y'' + y = 0`, `y'' - xy' - y = 0`

*   Frobenius Method
    *   Series Solutions Near a Regular Singular Point
    *   Indicial equation and its roots
    *   Cases: distinct roots, repeated roots, roots differing by an integer
    *   Examples: `x^2y'' + xy' + (x^2 - ν^2)y = 0` (Bessel's equation)

**VI. Laplace Transforms**

*   Definition of the Laplace Transform
    *   `L{f(t)} = F(s) = ∫(0 to ∞) e^(-st)f(t) dt`
    *   Conditions for existence of the Laplace transform
    *   Examples: `L{1}`, `L{e^(at)}`, `L{sin(at)}`, `L{cos(at)}`

*   Properties of the Laplace Transform
    *   Linearity: `L{af(t) + bg(t)} = aL{f(t)} + bL{g(t)}`
    *   Transform of derivatives: `L{f'(t)}`, `L{f''(t)}`
    *   Translation theorems: `L{e^(at)f(t)}`, `L{f(t-a)u(t-a)}` where `u(t)` is the unit step function.
    *   Convolution theorem: `L{(f * g)(t)} = F(s)G(s)`

*   Inverse Laplace Transform
    *   Using partial fractions to find inverse transforms
    *   Examples: finding `L^(-1){1/(s-a)}`, `L^(-1){1/(s^2+a^2)}`

*   Solving Differential Equations Using Laplace Transforms
    *   Transforming the differential equation into an algebraic equation
    *   Solving for `Y(s)` (the Laplace transform of `y(t)`)
    *   Finding `y(t)` by taking the inverse Laplace transform of `Y(s)`
    *   Solving initial value problems (IVPs)
    *   Examples: second-order equations, systems of differential equations

**VII. Systems of Differential Equations**

*   Linear Systems of Differential Equations
    *   Matrix notation: `dX/dt = AX`
    *   Eigenvalues and eigenvectors of the matrix A
    *   General solution based on eigenvalues: real distinct, real repeated, complex conjugate

*   Nonhomogeneous Linear Systems
    *   Method of Undetermined Coefficients (for constant coefficient systems)
    *   Variation of Parameters (for constant coefficient systems)

*   Applications of Systems of Differential Equations
    *   Compartmental models
    *   Predator-prey models
    *   Electrical networks

**VIII. Numerical Methods for Differential Equations**

*   Euler's Method
    *   `y(i+1) = y(i) + hf(x(i), y(i))`
    *   Understanding local truncation error and global error

*   Improved Euler's Method (Heun's Method)
    *   `y(i+1) = y(i) + (h/2)[f(x(i), y(i)) + f(x(i+1), y*(i+1))]` where `y*(i+1)` is the Euler's method approximation.

*   Runge-Kutta Methods (e.g., Fourth-Order Runge-Kutta)
    *   Understanding the formulas and steps involved.

*   Error Analysis and Step Size Control
    *   Estimating errors and adjusting step size `h` for improved accuracy.
