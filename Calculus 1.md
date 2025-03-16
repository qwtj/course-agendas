# I. Limits and Continuity

## Understanding Limits Graphically and Numerically

### Graphical Interpretation of Limits
*   Estimating limits from graphs.
*   One-sided limits (left and right).
*   Limits that do not exist (oscillating, unbounded).

### Numerical Estimation of Limits
*   Creating tables of values to estimate limits.
*   Choosing appropriate values of `x` approaching the target value.
*   Dealing with indeterminate forms.

## Evaluating Limits Algebraically

### Limit Laws
*   Sum, difference, product, quotient, and power laws for limits.
*   Limit of a constant, `x`, and `x^n`.

### Techniques for Indeterminate Forms
*   Factoring and canceling common factors (e.g., `(x^2 - 4) / (x - 2)`).
*   Rationalizing the numerator or denominator (e.g., with square roots).
*   Using conjugate multiplication.

### Limits at Infinity
*   Horizontal asymptotes.
*   Evaluating limits as `x` approaches positive or negative infinity.
*   Dominant terms and polynomial functions.

## Understanding Continuity

### Definition of Continuity
*   A function `f(x)` is continuous at `x = a` if `lim x->a f(x) = f(a)`.
*   Three conditions for continuity.

### Types of Discontinuities
*   Removable discontinuity (hole).
*   Jump discontinuity.
*   Infinite discontinuity (vertical asymptote).

### Intermediate Value Theorem (IVT)
*   Statement of the IVT.
*   Applications of the IVT for finding roots.

# II. Derivatives

## Definition and Basic Differentiation Rules

### Definition of the Derivative
*   The limit definition: `f'(x) = lim h->0 (f(x+h) - f(x)) / h`.
*   Alternative notation: `dy/dx`.

### Power Rule, Constant Multiple Rule, Sum/Difference Rule
*   `d/dx (x^n) = nx^(n-1)`
*   `d/dx (cf(x)) = cf'(x)`
*   `d/dx (f(x) ± g(x)) = f'(x) ± g'(x)`

### Derivatives of Trigonometric Functions
*   `d/dx (sin(x)) = cos(x)`
*   `d/dx (cos(x)) = -sin(x)`
*   `d/dx (tan(x)) = sec^2(x)`
*   Derivatives of other trig functions.

## Differentiation Techniques

### Product Rule
*   `d/dx (f(x)g(x)) = f'(x)g(x) + f(x)g'(x)`

### Quotient Rule
*   `d/dx (f(x)/g(x)) = (g(x)f'(x) - f(x)g'(x)) / (g(x))^2`

### Chain Rule
*   `d/dx (f(g(x))) = f'(g(x)) * g'(x)`

### Implicit Differentiation
*   Differentiating equations implicitly.
*   Finding `dy/dx` when `y` is not explicitly defined as a function of `x`.

## Applications of Derivatives

### Rates of Change
*   Average rate of change vs. instantaneous rate of change.

### Related Rates
*   Setting up and solving related rates problems.
*   Example: Changing volume of a sphere with changing radius `V = (4/3)πr^3`.

### Linear Approximation and Differentials
*   Tangent line approximation: `f(x) ≈ f(a) + f'(a)(x - a)`.
*   Differentials: `dy = f'(x) dx`.

# III. Applications of Derivatives: Optimization and Curve Sketching

## Optimization

### Finding Critical Points
*   Setting `f'(x) = 0` or finding where `f'(x)` is undefined.

### First Derivative Test
*   Using the sign of `f'(x)` to determine intervals of increase/decrease.
*   Identifying local maxima and minima.

### Second Derivative Test
*   Using the sign of `f''(x)` to determine concavity.
*   Identifying local maxima and minima using the second derivative.

### Absolute Maxima and Minima
*   Finding absolute extrema on a closed interval.

### Optimization Problems
*   Setting up and solving optimization word problems.
*   Example: Maximizing area given a fixed perimeter.

## Curve Sketching

### Intervals of Increase and Decrease
*   Using `f'(x)` to find intervals where the function is increasing or decreasing.

### Concavity and Inflection Points
*   Using `f''(x)` to find intervals of concavity and inflection points.

### Asymptotes
*   Vertical asymptotes (limits approaching infinity).
*   Horizontal asymptotes (limits at infinity).
*   Slant asymptotes.

### Sketching the Graph
*   Using information from `f(x)`, `f'(x)`, and `f''(x)` to sketch the graph of a function.

# IV. Integrals

## Antiderivatives and Indefinite Integrals

### Definition of Antiderivative
*   `F(x)` is an antiderivative of `f(x)` if `F'(x) = f(x)`.
*   The general antiderivative includes `+ C`.

### Basic Integration Rules
*   Power rule for integration: `∫x^n dx = (x^(n+1))/(n+1) + C`.
*   Integrals of trigonometric functions.
*   Constant multiple rule and sum/difference rule.

## Definite Integrals

### Definition of Definite Integral
*   Riemann sums: `∫[a, b] f(x) dx = lim n->∞ Σ[i=1 to n] f(x_i) Δx`.
*   Geometric interpretation as area under a curve.

### Properties of Definite Integrals
*   `∫[a, a] f(x) dx = 0`
*   `∫[a, b] f(x) dx = -∫[b, a] f(x) dx`
*   `∫[a, b] cf(x) dx = c∫[a, b] f(x) dx`
*   `∫[a, b] (f(x) ± g(x)) dx = ∫[a, b] f(x) dx ± ∫[a, b] g(x) dx`

### Fundamental Theorem of Calculus (FTC)
*   Part 1: `d/dx ∫[a, x] f(t) dt = f(x)`
*   Part 2: `∫[a, b] f(x) dx = F(b) - F(a)` where `F'(x) = f(x)`

## Techniques of Integration

### Substitution (u-substitution)
*   Choosing an appropriate `u`.
*   Changing the limits of integration for definite integrals.

### Integration by Parts
*   `∫ u dv = uv - ∫ v du`.
*   Choosing appropriate `u` and `dv`.

# V. Applications of Integration

## Area Between Curves

### Finding the Area
*   `∫[a, b] |f(x) - g(x)| dx`.
*   Determining the limits of integration.
*   Integrating with respect to `y`.

## Volumes of Solids of Revolution

### Disk Method
*   `V = π ∫[a, b] (f(x))^2 dx`.
*   Revolving around the x-axis and y-axis.

### Washer Method
*   `V = π ∫[a, b] ((R(x))^2 - (r(x))^2) dx`.
*   Outer and inner radii.

### Shell Method
*   `V = 2π ∫[a, b] x f(x) dx`.
*   Revolving around the y-axis and x-axis.

## Average Value of a Function

### Formula
*   `f_avg = (1/(b - a)) ∫[a, b] f(x) dx`.
*   Interpreting the average value.
