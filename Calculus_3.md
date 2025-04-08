# I. Vectors and the Geometry of Space

## Introduction to Three-Dimensional Space

### Coordinate Systems
*   Understanding the 3D coordinate system (x, y, z axes).
*   Plotting points in 3D space.
*   Distance formula in 3D: `sqrt((x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2)`.

### Equations of Spheres
*   Standard equation of a sphere: `(x-a)^2 + (y-b)^2 + (z-c)^2 = r^2`.
*   Finding the center and radius of a sphere from its equation.

## Vectors

### Vector Basics
*   Definition of a vector: magnitude and direction.
*   Representing vectors in component form: `<a, b, c>`.
*   Vector addition and scalar multiplication.

### Dot Product

*   Definition: `a · b = |a||b|cos(θ) = a1b1 + a2b2 + a3b3`.
*   Properties of the dot product.
*   Finding the angle between two vectors.
*   Orthogonal (perpendicular) vectors: `a · b = 0`.
*   Vector projections: `proj_a b = ((a · b) / |a|^2) * a`.

### Cross Product

*   Definition: `a x b = <a2b3 - a3b2, a3b1 - a1b3, a1b2 - a2b1>`.
*   Properties of the cross product.
*   Geometric interpretation: area of a parallelogram, normal vector.
*   Right-hand rule.
*   Applications: torque, angular momentum.

## Equations of Lines and Planes

### Lines in 3D Space

*   Vector equation of a line: `r = r0 + tv`, where `r0` is a point and `v` is the direction vector.
*   Parametric equations of a line: `x = x0 + at, y = y0 + bt, z = z0 + ct`.
*   Symmetric equations of a line: `(x - x0)/a = (y - y0)/b = (z - z0)/c`.

### Planes in 3D Space

*   Equation of a plane: `ax + by + cz + d = 0` or `n · (r - r0) = 0`, where `n` is the normal vector.
*   Finding the equation of a plane given a point and a normal vector.
*   Finding the equation of a plane given three points.
*   Angle between two planes.
*   Distance from a point to a plane.

# II. Vector-Valued Functions

## Vector Functions and Space Curves

### Definitions

*   Definition of a vector-valued function: `r(t) = <f(t), g(t), h(t)>`.
*   Space curves: the path traced by a vector-valued function.
*   Parametric equations of a space curve.

### Calculus of Vector Functions

*   Limits and continuity of vector functions.
*   Derivatives of vector functions: `r'(t) = <f'(t), g'(t), h'(t)>`.
*   Geometric interpretation of the derivative: tangent vector.
*   Integrals of vector functions: integrate each component separately.

## Arc Length and Curvature

### Arc Length

*   Arc length as a parameter: `s(t) = ∫|r'(u)| du` from `a` to `t`.
*   Arc length formula: `L = ∫|r'(t)| dt` from `a` to `b`.

### Curvature

*   Definition of curvature: `κ = |T'(t)| / |r'(t)|`, where `T` is the unit tangent vector.
*   Alternative formula: `κ = |r'(t) x r''(t)| / |r'(t)|^3`.
*   Radius of curvature.

### Tangential and Normal Components of Acceleration

*   Decomposition of acceleration: `a = a_T T + a_N N`, where `T` is the unit tangent vector and `N` is the unit normal vector.
*   Formulas for tangential and normal components: `a_T = v'` and `a_N = κv^2`, where `v = |r'(t)|`.

# III. Partial Derivatives

## Functions of Several Variables

### Definitions and Examples

*   Functions of two or more variables: `f(x, y)`, `f(x, y, z)`.
*   Domain and range of multivariable functions.
*   Level curves and surfaces.
*   Contour maps.

### Limits and Continuity

*   Limits of multivariable functions.
*   Continuity of multivariable functions.
*   Path dependence of limits.
*   Example: show `lim (x,y)->(0,0) xy/(x^2 + y^2)` does not exist.

## Partial Derivatives

### First-Order Partial Derivatives

*   Definition of partial derivatives: `∂f/∂x` and `∂f/∂y`.
*   Geometric interpretation.
*   Calculating partial derivatives using standard differentiation rules.

### Second-Order Partial Derivatives

*   Definition of second-order partial derivatives: `∂^2f/∂x^2`, `∂^2f/∂y^2`, `∂^2f/∂x∂y`, `∂^2f/∂y∂x`.
*   Clairaut's Theorem: `∂^2f/∂x∂y = ∂^2f/∂y∂x` if the second derivatives are continuous.

## Tangent Planes and Linear Approximations

### Tangent Planes

*   Equation of the tangent plane to a surface `z = f(x, y)` at `(x0, y0, z0)`:  `z - z0 = fx(x0, y0)(x - x0) + fy(x0, y0)(y - y0)`.
*   Normal vector to the tangent plane: `<fx, fy, -1>`.

### Linear Approximations (Tangent Plane Approximation)

*   Linearization of a function `f(x, y)` at `(x0, y0)`: `L(x, y) = f(x0, y0) + fx(x0, y0)(x - x0) + fy(x0, y0)(y - y0)`.
*   Using linear approximations to estimate function values.

## Chain Rule

### Chain Rule for One Parameter

*   Chain rule for `z = f(x, y)` where `x = g(t)` and `y = h(t)`: `dz/dt = (∂f/∂x)(dx/dt) + (∂f/∂y)(dy/dt)`.

### Chain Rule for Multiple Parameters

*   Chain rule for `z = f(x, y)` where `x = g(s, t)` and `y = h(s, t)`: `∂z/∂s = (∂f/∂x)(∂x/∂s) + (∂f/∂y)(∂y/∂s)` and `∂z/∂t = (∂f/∂x)(∂x/∂t) + (∂f/∂y)(∂y/∂t)`.

## Directional Derivatives and the Gradient Vector

### Directional Derivatives

*   Definition of the directional derivative: `D_u f(x, y) = ∇f(x, y) · u`, where `u` is a unit vector.
*   Geometric interpretation: rate of change of `f` in the direction of `u`.

### The Gradient Vector

*   Definition of the gradient vector: `∇f(x, y) = <∂f/∂x, ∂f/∂y>`.
*   Properties of the gradient: points in the direction of the maximum rate of increase of `f`.
*   Maximum rate of change: `|∇f(x, y)|`.

## Maximum and Minimum Values

### Local Maxima and Minima

*   Critical points: points where `∇f(x, y) = 0` or `∇f(x, y)` is undefined.
*   Second Derivative Test:
    *   Compute `D = fxx(a, b)fyy(a, b) - [fxy(a, b)]^2` at a critical point `(a, b)`.
    *   If `D > 0` and `fxx(a, b) > 0`, then `(a, b)` is a local minimum.
    *   If `D > 0` and `fxx(a, b) < 0`, then `(a, b)` is a local maximum.
    *   If `D < 0`, then `(a, b)` is a saddle point.
    *   If `D = 0`, the test is inconclusive.

### Absolute Maxima and Minima

*   Finding absolute extrema on a closed, bounded set.
*   Method: Find critical points in the interior and evaluate `f` at boundary points.

## Lagrange Multipliers

### Constrained Optimization

*   Using Lagrange multipliers to find the maximum or minimum of `f(x, y)` subject to the constraint `g(x, y) = k`.
*   Setting up the Lagrange equations: `∇f = λ∇g` and `g(x, y) = k`.
*   Solving the Lagrange equations for `x`, `y`, and `λ`.
*   Extending to three variables: `f(x, y, z)` subject to `g(x, y, z) = k`.

# IV. Multiple Integrals

## Double Integrals over Rectangles

### Definition

*   Definition of the double integral of `f(x, y)` over a rectangle `R = [a, b] x [c, d]`.

### Iterated Integrals

*   Fubini's Theorem: `∬R f(x, y) dA = ∫a^b ∫c^d f(x, y) dy dx = ∫c^d ∫a^b f(x, y) dx dy`.
*   Evaluating double integrals by iterated integration.

## Double Integrals over General Regions

### Type 1 and Type 2 Regions

*   Type 1 regions: `D = {(x, y) | a ≤ x ≤ b, g1(x) ≤ y ≤ g2(x)}`.
*   Type 2 regions: `D = {(x, y) | c ≤ y ≤ d, h1(y) ≤ x ≤ h2(y)}`.

### Evaluating Double Integrals over General Regions

*   Setting up the limits of integration for Type 1 and Type 2 regions.
*   Reversing the order of integration.

### Properties of Double Integrals

*   Linearity, additivity, comparison properties.

## Double Integrals in Polar Coordinates

### Polar Coordinates

*   Conversion between rectangular and polar coordinates: `x = r cos(θ)`, `y = r sin(θ)`, `r^2 = x^2 + y^2`, `tan(θ) = y/x`.

### Double Integrals in Polar Coordinates

*   Area element in polar coordinates: `dA = r dr dθ`.
*   Evaluating double integrals in polar coordinates: `∬D f(x, y) dA = ∫α^β ∫g1(θ)^g2(θ) f(r cos(θ), r sin(θ)) r dr dθ`.
*   Applications: area, volume, average value.

## Triple Integrals

### Triple Integrals over Boxes

*   Definition of the triple integral of `f(x, y, z)` over a box `B = [a, b] x [c, d] x [r, s]`.
*   Evaluating triple integrals by iterated integration.

### Triple Integrals over General Regions

*   Setting up the limits of integration for triple integrals.
*   Projecting the region onto coordinate planes.

### Applications of Triple Integrals

*   Volume, mass, center of mass, moment of inertia.

## Triple Integrals in Cylindrical and Spherical Coordinates

### Cylindrical Coordinates

*   Conversion between rectangular and cylindrical coordinates: `x = r cos(θ)`, `y = r sin(θ)`, `z = z`.
*   Volume element in cylindrical coordinates: `dV = r dz dr dθ`.

### Spherical Coordinates

*   Conversion between rectangular and spherical coordinates: `x = ρ sin(φ) cos(θ)`, `y = ρ sin(φ) sin(θ)`, `z = ρ cos(φ)`.
*   Volume element in spherical coordinates: `dV = ρ^2 sin(φ) dρ dφ dθ`.

### Evaluating Triple Integrals in Cylindrical and Spherical Coordinates

*   Setting up the limits of integration for cylindrical and spherical coordinates.

## Change of Variables in Multiple Integrals

### Jacobians

*   Definition of the Jacobian determinant: `∂(x, y)/∂(u, v) = |∂x/∂u ∂x/∂v; ∂y/∂u ∂y/∂v|`.
*   Jacobian for polar, cylindrical, and spherical transformations.

### Change of Variables Formula

*   `∬R f(x, y) dA = ∬S f(x(u, v), y(u, v)) |∂(x, y)/∂(u, v)| du dv`.
*   `∭E f(x, y, z) dV = ∭W f(x(u, v, w), y(u, v, w), z(u, v, w)) |∂(x, y, z)/∂(u, v, w)| du dv dw`.

# V. Vector Calculus

## Vector Fields

### Definitions and Examples

*   Definition of a vector field: assigning a vector to each point in space.
*   Examples: gravitational field, electric field, velocity field.
*   Conservative vector fields.

### Gradient Fields

*   Definition: a vector field `F` is a gradient field if `F = ∇f` for some scalar function `f`.
*   Potential functions.

## Line Integrals

### Line Integrals of Scalar Functions

*   Definition of the line integral of `f(x, y)` along a curve `C`: `∫C f(x, y) ds = ∫a^b f(r(t)) |r'(t)| dt`.
*   Parameterizing the curve `C`.

### Line Integrals of Vector Fields

*   Definition of the line integral of `F` along a curve `C`: `∫C F · dr = ∫a^b F(r(t)) · r'(t) dt`.
*   Work done by a force field.

## Fundamental Theorem for Line Integrals

### Conservative Vector Fields

*   Path independence of line integrals for conservative vector fields.

### Fundamental Theorem

*   If `F = ∇f`, then `∫C F · dr = f(r(b)) - f(r(a))`, where `r(a)` and `r(b)` are the endpoints of `C`.

### Testing for Conservative Vector Fields

*   In 2D: `∂P/∂y = ∂Q/∂x` if `F = <P, Q>`.
*   In 3D: `∇ x F = 0` if `F = <P, Q, R>`.

## Green's Theorem

### Statement of Green's Theorem

*   `∮C P dx + Q dy = ∬D (∂Q/∂x - ∂P/∂y) dA`, where `C` is a positively oriented, piecewise-smooth, simple closed curve and `D` is the region enclosed by `C`.

### Applications of Green's Theorem

*   Calculating line integrals using double integrals.
*   Calculating area using line integrals.

## Curl and Divergence

### Curl

*   Definition of the curl of a vector field `F`: `∇ x F = <∂R/∂y - ∂Q/∂z, ∂P/∂z - ∂R/∂x, ∂Q/∂x - ∂P/∂y>`.
*   Physical interpretation: measure of rotation.

### Divergence

*   Definition of the divergence of a vector field `F`: `∇ · F = ∂P/∂x + ∂Q/∂y + ∂R/∂z`.
*   Physical interpretation: measure of expansion or compression.

## Surface Integrals

### Surface Integrals of Scalar Functions

*   Parameterizing a surface `S`: `r(u, v) = <x(u, v), y(u, v), z(u, v)>`.
*   Surface area element: `dS = |ru x rv| du dv`.
*   `∬S f(x, y, z) dS = ∬D f(r(u, v)) |ru x rv| du dv`.

### Surface Integrals of Vector Fields

*   `∬S F · dS = ∬S F · n dS = ∬D F(r(u, v)) · (ru x rv) du dv`, where `n` is the unit normal vector.
*   Flux of a vector field through a surface.
*   Orientable surfaces.

## Stokes' Theorem

### Statement of Stokes' Theorem

*   `∮C F · dr = ∬S (∇ x F) · dS`, where `C` is the boundary of the surface `S`.

### Applications of Stokes' Theorem

*   Calculating line integrals using surface integrals.
*   Calculating surface integrals using line integrals.

## Divergence Theorem

### Statement of the Divergence Theorem

*   `∭E (∇ · F) dV = ∬S F · dS`, where `E` is a solid region bounded by a closed surface `S`.

### Applications of the Divergence Theorem

*   Calculating surface integrals using volume integrals.
*   Calculating volume integrals using surface integrals.
