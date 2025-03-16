# I. Review of Calculus 1 Concepts

## Limits and Continuity

### Understanding Limits

*   Definition of a limit: `lim x->a f(x) = L`
*   Techniques for evaluating limits: direct substitution, factoring, rationalizing
*   One-sided limits
*   Limits at infinity

### Understanding Continuity

*   Definition of continuity at a point: `lim x->a f(x) = f(a)`
*   Types of discontinuities: removable, jump, infinite
*   Intermediate Value Theorem

## Differentiation

### Reviewing Differentiation Rules

*   Power rule, product rule, quotient rule, chain rule
*   Derivatives of trigonometric functions, exponential functions, logarithmic functions

### Applications of Derivatives

*   Finding critical points and extrema (maxima and minima)
*   Using the first and second derivative tests
*   Optimization problems
*   Related rates problems

## Integration

### Reviewing Basic Integration Techniques

*   Indefinite integrals and the constant of integration
*   Basic integration formulas: power rule, trigonometric integrals, exponential integrals
*   U-substitution

### Definite Integrals

*   Definition of the definite integral as a limit of Riemann sums
*   Fundamental Theorem of Calculus (Part 1 and Part 2)
*   Applications of definite integrals: area between curves

# II. Techniques of Integration

## Integration by Parts

### Understanding the Formula

*   `∫ u dv = uv - ∫ v du`
*   Choosing `u` and `dv` using LIATE (Logarithmic, Inverse trigonometric, Algebraic, Trigonometric, Exponential)

### Examples of Integration by Parts

*   `∫ x sin(x) dx`
*   `∫ x^2 e^x dx`
*   `∫ ln(x) dx`

## Trigonometric Integrals

### Integrals of Powers of Sine and Cosine

*   `∫ sin^m(x) cos^n(x) dx`
*   Using trigonometric identities: `sin^2(x) + cos^2(x) = 1`, `sin^2(x) = (1 - cos(2x))/2`, `cos^2(x) = (1 + cos(2x))/2`

### Integrals of Powers of Tangent and Secant

*   `∫ tan^m(x) sec^n(x) dx`
*   Using trigonometric identities: `tan^2(x) + 1 = sec^2(x)`

## Trigonometric Substitution

### Understanding the Substitutions

*   When to use `x = a sin(θ)`, `x = a tan(θ)`, and `x = a sec(θ)`
*   Triangle diagrams for back-substitution

### Examples of Trigonometric Substitution

*   `∫ √(a^2 - x^2) dx`: use `x = a sin(θ)`
*   `∫ √(a^2 + x^2) dx`: use `x = a tan(θ)`
*   `∫ √(x^2 - a^2) dx`: use `x = a sec(θ)`

## Partial Fraction Decomposition

### Decomposing Rational Functions

*   Proper vs. improper rational functions
*   Decomposition rules for distinct linear factors, repeated linear factors, distinct irreducible quadratic factors, and repeated irreducible quadratic factors

### Examples of Partial Fraction Decomposition

*   `∫ (1 / (x^2 - 1)) dx`
*   `∫ (x / ((x + 1)(x - 2))) dx`
*   `∫ (1 / (x(x^2 + 1))) dx`

# III. Improper Integrals

## Understanding Improper Integrals

### Integrals with Infinite Limits of Integration

*   `∫[a, ∞) f(x) dx = lim t->∞ ∫[a, t] f(x) dx`
*   `∫(-∞, b] f(x) dx = lim t->-∞ ∫[t, b] f(x) dx`
*   `∫(-∞, ∞) f(x) dx = ∫(-∞, c] f(x) dx + ∫[c, ∞) f(x) dx` (must converge for both intervals)

### Integrals with Discontinuous Integrands

*   If `f(x)` is discontinuous at `x = c` in `[a, b]`, then `∫[a, b] f(x) dx = lim t->c- ∫[a, t] f(x) dx + lim s->c+ ∫[s, b] f(x) dx`

### Convergence and Divergence

*   Determining whether an improper integral converges or diverges
*   Using the comparison test and limit comparison test

## Examples of Improper Integrals

### Evaluating Improper Integrals

*   `∫[1, ∞) (1 / x^2) dx`
*   `∫[0, 1] (1 / √x) dx`
*   `∫[-∞, ∞] (1 / (1 + x^2)) dx`

# IV. Sequences and Series

## Sequences

### Understanding Sequences

*   Definition of a sequence: an ordered list of numbers
*   Arithmetic and geometric sequences
*   Limit of a sequence: `lim n->∞ a_n = L`

### Convergence and Divergence of Sequences

*   Determining whether a sequence converges or diverges
*   Using the Squeeze Theorem

## Series

### Understanding Series

*   Definition of a series: the sum of the terms of a sequence
*   Partial sums: `S_n = a_1 + a_2 + ... + a_n`
*   Convergence of a series: `lim n->∞ S_n = S`

### Geometric Series

*   Formula for the sum of a geometric series: `S = a / (1 - r)` if `|r| < 1`
*   Determining convergence and divergence of geometric series

### Telescoping Series

*   Identifying telescoping series and finding their sums

## Convergence Tests

### Integral Test

*   Conditions for using the integral test
*   Relating the convergence of a series to the convergence of an improper integral

### Comparison Tests

*   Direct Comparison Test
*   Limit Comparison Test

### Ratio Test

*   Formula for the Ratio Test: `lim n->∞ |a_(n+1) / a_n| = L`
*   Determining convergence and divergence based on `L`

### Root Test

*   Formula for the Root Test: `lim n->∞ |a_n|^(1/n) = L`
*   Determining convergence and divergence based on `L`

### Alternating Series Test

*   Conditions for using the Alternating Series Test
*   Error estimation for alternating series

## Power Series

### Understanding Power Series

*   Definition of a power series: `∑[n=0, ∞] c_n (x - a)^n`
*   Radius of convergence and interval of convergence

### Finding Radius and Interval of Convergence

*   Using the Ratio Test or Root Test to find the radius of convergence
*   Testing the endpoints to determine the interval of convergence

### Representing Functions as Power Series

*   Taylor series and Maclaurin series
*   Finding the Taylor series of common functions: `e^x`, `sin(x)`, `cos(x)`, `ln(1 + x)`

# V. Applications

## Arc Length

### Arc Length Formula

*   `∫[a, b] √(1 + (dy/dx)^2) dx` for a function `y = f(x)`
*   `∫[c, d] √(1 + (dx/dy)^2) dy` for a function `x = g(y)`

### Examples of Arc Length Calculations

*   Finding the arc length of a curve such as `y = x^(3/2)` over an interval.

## Surface Area of Revolution

### Surface Area Formula

*   `∫[a, b] 2πy √(1 + (dy/dx)^2) dx` for revolution about the x-axis
*   `∫[c, d] 2πx √(1 + (dx/dy)^2) dy` for revolution about the y-axis

### Examples of Surface Area Calculations

*   Finding the surface area of a solid of revolution.

## Parametric Equations

### Calculus with Parametric Curves
*   Derivatives: `dy/dx = (dy/dt) / (dx/dt)`
*   Arc Length: `∫[a, b] √((dx/dt)^2 + (dy/dt)^2) dt`
*   Surface Area of Revolution (Parametric): Adapting surface area integrals using derivatives in *t*.
