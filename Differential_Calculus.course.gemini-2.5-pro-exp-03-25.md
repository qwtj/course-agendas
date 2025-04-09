# I. Foundations: Limits and Continuity

*   **Learning Objectives:** Understand the intuitive and formal definitions of limits, evaluate limits using various techniques, and define and analyze function continuity.

## Understanding the Concept of a Limit
"<prompt>Explain the intuitive concept of a limit in differential calculus, focusing on how a function's value behaves as the input approaches a specific point, without necessarily reaching it."</prompt>

### Informal Definition and Notation
"<prompt>Describe the informal definition of a limit and introduce the standard notation `lim_{x->c} f(x) = L` within the context of differential calculus."</prompt>

### One-Sided Limits
"<prompt>Explain the concept of one-sided limits (left-hand and right-hand limits) in differential calculus, including their notation (`lim_{x->c^-} f(x)` and `lim_{x->c^+} f(x)`) and their relationship to the existence of a two-sided limit."</prompt>

## Evaluating Limits Analytically
"<prompt>Describe the primary algebraic techniques used to evaluate limits of functions in differential calculus when direct substitution is not possible."</prompt>

### Direct Substitution Property
"<prompt>Explain the direct substitution property for limits in differential calculus and identify the types of functions (e.g., polynomial, rational, radical) where it typically applies, providing examples."</prompt>

### Factoring and Canceling
"<prompt>Illustrate the technique of factoring and canceling common factors to evaluate limits of rational functions that result in indeterminate forms like `0/0` in differential calculus. Provide a step-by-step example."</prompt>
*   "<prompt>Generate an example problem evaluating the limit `lim_{x->2} (x^2 - 4)/(x - 2)` using factoring and canceling, relevant to differential calculus foundations."</prompt>

### Rationalizing Technique
"<prompt>Demonstrate the rationalizing technique (using conjugates) for evaluating limits involving radicals that lead to indeterminate forms in differential calculus. Provide a step-by-step example."</prompt>
*   "<prompt>Generate an example problem evaluating the limit `lim_{x->0} (sqrt(x+1) - 1)/x` using the rationalizing technique, relevant to differential calculus foundations."</prompt>

### Squeeze Theorem
"<prompt>Explain the Squeeze (or Sandwich) Theorem for evaluating limits in differential calculus and provide an example of its application, such as finding `lim_{x->0} x^2 * sin(1/x)`."</prompt>

## Understanding Continuity
"<prompt>Define continuity of a function at a point `c` within the context of differential calculus, outlining the three conditions that must be met."</prompt>

### Definition of Continuity at a Point
"<prompt>State the three conditions required for a function `f(x)` to be continuous at a point `x=c`: 1) `f(c)` is defined, 2) `lim_{x->c} f(x)` exists, 3) `lim_{x->c} f(x) = f(c)`. Explain the significance of each condition in differential calculus."</prompt>

### Types of Discontinuities
"<prompt>Describe the different types of discontinuities (removable, jump, infinite) that can occur in functions studied in differential calculus, providing graphical and algebraic examples for each."</prompt>
*   "<prompt>Provide an example of a function with a removable discontinuity at `x=a` and explain how it violates the continuity definition in differential calculus."</prompt>
*   "<prompt>Provide an example of a function with a jump discontinuity at `x=a` and explain how it violates the continuity definition in differential calculus."</prompt>
*   "<prompt>Provide an example of a function with an infinite discontinuity at `x=a` and explain how it violates the continuity definition in differential calculus."</prompt>

### Continuity on an Interval
"<prompt>Define continuity on an open interval `(a, b)` and a closed interval `[a, b]` in differential calculus, including the conditions required for continuity at the endpoints for a closed interval."</prompt>

> **Key Point:** Understanding limits is fundamental to differential calculus, as the core concept of the derivative is defined as a limit. Continuity ensures that functions behave predictably without jumps or breaks, which is often necessary for differentiation.

*   **Section Summary:** This section established the concept of limits, methods for their evaluation, and the definition of continuity. Limits describe function behavior near a point, while continuity requires the limit to exist, the function value to be defined, and both to be equal. These concepts form the bedrock for understanding derivatives.
*   **Glossary:**
    *   **Limit:** "<prompt>Define the term 'Limit' as it is used in differential calculus."</prompt>
    *   **Continuity:** "<prompt>Define the term 'Continuity' as it applies to functions in differential calculus."</prompt>
    *   **Indeterminate Form:** "<prompt>Define 'Indeterminate Form' (e.g., `0/0`, `∞/∞`) in the context of evaluating limits in differential calculus."</prompt>
    *   **Squeeze Theorem:** "<prompt>Define the 'Squeeze Theorem' and its purpose in evaluating limits in differential calculus."</prompt>
*   **Self-Assessment Quiz:** "<prompt>Generate a 5-question multiple-choice quiz covering limit evaluation techniques (direct substitution, factoring, rationalizing) and the definition of continuity at a point, suitable for assessing understanding of Section I of a differential calculus course."</prompt>
*   **Reflective Prompt:** "<prompt>Ask the learner to reflect on why the concept of a limit approaching a point, rather than the function's value *at* the point, is crucial for defining the slope of a tangent line in differential calculus."</prompt>
*   **Further Exploration:** `<placeholder for links to Khan Academy limits section, Paul's Online Math Notes on limits>`

---

*Transition:* Now that we have a solid understanding of limits and continuity, we can introduce the central concept of differential calculus: the derivative.

---

# II. The Derivative

*   **Learning Objectives:** Define the derivative using limits, understand its interpretations (slope of tangent, instantaneous rate of change), learn differentiation rules, and compute derivatives of various functions.

## Defining the Derivative
"<prompt>Introduce the derivative as the core concept in differential calculus, defining it formally using the limit of the difference quotient."</prompt>

### Derivative as the Slope of a Tangent Line
"<prompt>Explain the geometric interpretation of the derivative `f'(a)` as the slope of the line tangent to the graph of `y=f(x)` at the point `(a, f(a))` in differential calculus."</prompt>
*   "<prompt>Provide the limit definition of the derivative `f'(a) = lim_{h->0} (f(a+h) - f(a))/h` and explain each component in the context of finding the tangent slope in differential calculus."</prompt>
*   "<prompt>Provide the alternative limit definition of the derivative `f'(a) = lim_{x->a} (f(x) - f(a))/(x - a)` and relate it to the secant line slope approaching the tangent line slope in differential calculus."</prompt>

### Derivative as an Instantaneous Rate of Change
"<prompt>Explain the physical interpretation of the derivative `f'(t)` as the instantaneous rate of change of a quantity `f(t)` with respect to `t` (e.g., velocity as the derivative of position) in differential calculus."</prompt>
*   "<prompt>Generate an example calculating the instantaneous velocity of an object at time `t=a` given its position function `s(t)`, using the limit definition of the derivative in differential calculus."</prompt>

### Differentiability and Continuity
"<prompt>Explain the relationship between differentiability and continuity in differential calculus: specifically, that differentiability at a point implies continuity at that point, but the converse is not necessarily true. Provide examples of functions continuous but not differentiable (e.g., absolute value function at `x=0`)."</prompt>

## Basic Differentiation Rules
"<prompt>Introduce the fundamental rules for finding derivatives algebraically in differential calculus, allowing calculation without resorting to the limit definition each time."</prompt>

### Constant Rule
"<prompt>State and prove the Constant Rule for differentiation in differential calculus: `d/dx [c] = 0`."</prompt>

### Power Rule
"<prompt>State and prove the Power Rule for differentiation in differential calculus: `d/dx [x^n] = n*x^(n-1)` for any real number `n`."</prompt>
*   "<prompt>Generate examples applying the Power Rule to find derivatives of `f(x)=x^5`, `g(x)=sqrt(x)`, and `h(x)=1/x^2` in differential calculus."</prompt>

### Constant Multiple Rule
"<prompt>State and prove the Constant Multiple Rule for differentiation in differential calculus: `d/dx [c*f(x)] = c * d/dx [f(x)]`."</prompt>

### Sum and Difference Rules
"<prompt>State and prove the Sum and Difference Rules for differentiation in differential calculus: `d/dx [f(x) +/- g(x)] = d/dx [f(x)] +/- d/dx [g(x)]`."</prompt>
*   "<prompt>Generate an example finding the derivative of a polynomial function like `p(x) = 3x^4 - 5x^2 + 7x - 1` using the basic differentiation rules (Constant, Power, Constant Multiple, Sum/Difference) in differential calculus."</prompt>

## Derivatives of Trigonometric, Exponential, and Logarithmic Functions
"<prompt>Introduce the rules for differentiating standard transcendental functions commonly encountered in differential calculus."</prompt>

### Derivatives of Sine and Cosine
"<prompt>State the derivatives of `sin(x)` and `cos(x)` in differential calculus: `d/dx [sin(x)] = cos(x)` and `d/dx [cos(x)] = -sin(x)`. Briefly mention the limit proofs (optional)."</prompt>

### Derivatives of Other Trigonometric Functions
"<prompt>Derive or state the derivatives of `tan(x)`, `cot(x)`, `sec(x)`, and `csc(x)` using the quotient rule and the derivatives of `sin(x)` and `cos(x)`, within the context of differential calculus."</prompt>
*   "<prompt>Derive the derivative of `tan(x)` using the quotient rule and derivatives of `sin(x)` and `cos(x)`, relevant to differential calculus."</prompt>

### Derivative of the Natural Exponential Function
"<prompt>State the derivative of the natural exponential function in differential calculus: `d/dx [e^x] = e^x`."</prompt>

### Derivative of the Natural Logarithmic Function
"<prompt>State the derivative of the natural logarithmic function in differential calculus: `d/dx [ln(x)] = 1/x` for `x > 0`."</prompt>

## Advanced Differentiation Techniques
"<prompt>Introduce more complex differentiation rules necessary for handling products, quotients, and compositions of functions in differential calculus."</prompt>

### Product Rule
"<prompt>State and provide a proof outline or intuitive explanation for the Product Rule in differential calculus: `d/dx [f(x)g(x)] = f'(x)g(x) + f(x)g'(x)`."</prompt>
*   "<prompt>Generate an example applying the Product Rule to find the derivative of `h(x) = x^2 * sin(x)` in differential calculus."</prompt>

### Quotient Rule
"<prompt>State and provide a proof outline or intuitive explanation for the Quotient Rule in differential calculus: `d/dx [f(x)/g(x)] = (f'(x)g(x) - f(x)g'(x)) / [g(x)]^2` (where `g(x) != 0`)."</prompt>
*   "<prompt>Generate an example applying the Quotient Rule to find the derivative of `k(x) = e^x / (x^2 + 1)` in differential calculus."</prompt>

### Chain Rule
"<prompt>State and provide an intuitive explanation (using composition of functions) for the Chain Rule in differential calculus: `d/dx [f(g(x))] = f'(g(x)) * g'(x)`."</prompt>
*   "<prompt>Generate an example applying the Chain Rule to find the derivative of `y = sin(x^3)` in differential calculus."</prompt>
*   "<prompt>Generate a more complex example combining the Chain Rule with other rules, such as finding the derivative of `y = e^(cos(2x))` in differential calculus."</prompt>

### Implicit Differentiation
"<prompt>Explain the technique of implicit differentiation in differential calculus, used when `y` is defined implicitly as a function of `x`. Outline the steps involved."</prompt>
*   "<prompt>Generate an example finding `dy/dx` for the implicitly defined curve `x^2 + y^2 = 25` using implicit differentiation in differential calculus."</prompt>

> **Key Point:** Differentiation rules (Power, Product, Quotient, Chain) significantly simplify the process of finding derivatives compared to using the limit definition directly. Mastering these rules is essential for applying calculus.

*   **Section Summary:** This section defined the derivative via limits, interpreted it as tangent slope and rate of change, and established the crucial link between differentiability and continuity. Key differentiation rules (Constant, Power, Sum/Difference, Product, Quotient, Chain) and derivatives of standard functions (trigonometric, exponential, logarithmic) were introduced, along with implicit differentiation for implicitly defined functions.
*   **Glossary:**
    *   **Derivative:** "<prompt>Define the term 'Derivative' formally using the limit definition as used in differential calculus."</prompt>
    *   **Tangent Line:** "<prompt>Define 'Tangent Line' in the context of a function's graph and its relation to the derivative in differential calculus."</prompt>
    *   **Rate of Change:** "<prompt>Define 'Instantaneous Rate of Change' and relate it to the derivative in differential calculus."</prompt>
    *   **Differentiability:** "<prompt>Define 'Differentiability' of a function at a point in differential calculus."</prompt>
    *   **Chain Rule:** "<prompt>Define the 'Chain Rule' for differentiation in differential calculus."</prompt>
    *   **Implicit Differentiation:** "<prompt>Define 'Implicit Differentiation' and its purpose in differential calculus."</prompt>
*   **Self-Assessment Quiz:** "<prompt>Generate a 7-question quiz assessing the ability to apply basic differentiation rules, the product rule, quotient rule, chain rule, and implicit differentiation to various functions, suitable for Section II of a differential calculus course."</prompt>
*   **Reflective Prompt:** "<prompt>Ask the learner to compare the process of finding a derivative using the limit definition versus using the differentiation rules. What are the advantages and disadvantages of each method in differential calculus?"</prompt>
*   **Cross-Reference:** The limit definition of the derivative directly uses concepts from Section I. Differentiability relies on continuity (Section I).
*   **Further Exploration:** `<placeholder for links to Paul's Online Math Notes differentiation section, Khan Academy derivative rules>`

---

*Transition:* Having learned how to compute derivatives, we now explore their applications in analyzing function behavior and solving real-world problems.

---

# III. Applications of Differentiation

*   **Learning Objectives:** Apply derivatives to find rates of change, analyze function graphs (increasing/decreasing intervals, concavity, extrema), solve optimization problems, and understand related rates.

## Rates of Change in Science and Engineering
"<prompt>Explain how the derivative is used to model and calculate instantaneous rates of change in various scientific and engineering contexts within differential calculus."</prompt>

### Velocity and Acceleration
"<prompt>Define velocity as the first derivative of position (`v(t) = s'(t)`) and acceleration as the second derivative of position (`a(t) = v'(t) = s''(t)`) in the context of motion along a line, as studied in differential calculus."</prompt>
*   "<prompt>Generate a problem where given a position function `s(t)`, the learner must find the velocity and acceleration functions and evaluate them at a specific time `t`, using differentiation techniques from differential calculus."</prompt>

### Other Rates of Change (e.g., Population Growth, Economics)
"<prompt>Provide examples of how derivatives model rates of change in other fields, such as population growth rate (`dP/dt`), marginal cost/revenue in economics (`dC/dq`, `dR/dq`), applying differential calculus concepts."</prompt>

## Analyzing Function Behavior
"<prompt>Explain how the first and second derivatives provide information about the shape and behavior of a function's graph in differential calculus."</prompt>

### Increasing and Decreasing Functions (First Derivative Test)
"<prompt>Explain how the sign of the first derivative `f'(x)` determines whether a function `f(x)` is increasing (`f'(x) > 0`) or decreasing (`f'(x) < 0`) on an interval in differential calculus. State the First Derivative Test for finding local extrema."</prompt>
*   "<prompt>Generate an example determining the intervals where the function `f(x) = x^3 - 3x^2 + 5` is increasing or decreasing and find its local extrema using the first derivative test in differential calculus."</prompt>

### Concavity and Points of Inflection (Second Derivative Test)
"<prompt>Explain how the sign of the second derivative `f''(x)` determines the concavity of a function `f(x)` (concave up: `f''(x) > 0`, concave down: `f''(x) < 0`) in differential calculus. Define points of inflection and how to find them."</prompt>
*   "<prompt>State the Second Derivative Test for classifying critical points as local maxima or minima using `f''(x)` in differential calculus."</prompt>
*   "<prompt>Generate an example determining the intervals of concavity and finding the points of inflection for the function `f(x) = x^4 - 4x^3` using the second derivative in differential calculus."</prompt>

### Curve Sketching
"<prompt>Outline a systematic procedure for sketching the graph of a function `y=f(x)` using information obtained from `f(x)`, `f'(x)`, and `f''(x)` (domain, intercepts, symmetry, asymptotes, intervals of increase/decrease, local extrema, concavity, inflection points) within differential calculus."</prompt>
*   "<prompt>Generate a comprehensive example sketching the graph of a function like `f(x) = x/(x^2+1)` by analyzing its first and second derivatives, as taught in differential calculus."</prompt>

## Optimization Problems
"<prompt>Introduce optimization problems in differential calculus, where the goal is to find the maximum or minimum value of a quantity subject to certain constraints, using derivatives."</prompt>

### Finding Absolute Extrema on a Closed Interval
"<prompt>Describe the Closed Interval Method (Candidates Test) for finding the absolute maximum and minimum values of a continuous function on a closed interval `[a, b]` in differential calculus, by checking critical points and endpoints."</prompt>
*   "<prompt>Generate an example finding the absolute maximum and minimum values of `f(x) = x^3 - 6x^2 + 5` on the interval `[-1, 5]` using the Closed Interval Method in differential calculus."</prompt>

### Applied Optimization Problems
"<prompt>Outline the steps for solving applied optimization problems in differential calculus: understand the problem, identify the objective function and constraints, express the objective function in terms of a single variable, find the domain, locate extrema using calculus, and interpret the result."</prompt>
*   "<prompt>Generate a classic optimization word problem (e.g., maximizing the area of a rectangular fence with a fixed perimeter) and solve it step-by-step using differential calculus techniques."</prompt>

## Related Rates
"<prompt>Explain related rates problems in differential calculus, where the goal is to find the rate of change of one quantity by relating it to the rate of change of another known quantity, often using implicit differentiation with respect to time."</prompt>

### Problem-Solving Strategy
"<prompt>Outline a strategy for solving related rates problems in differential calculus: draw a diagram, identify known and unknown rates (`d/dt`), write an equation relating the variables, differentiate implicitly with respect to time `t` using the Chain Rule, substitute known values, and solve for the unknown rate."</prompt>
*   "<prompt>Generate a classic related rates problem (e.g., a ladder sliding down a wall) and solve it step-by-step using the outlined strategy within differential calculus."</prompt>
*   "<prompt>Generate another related rates problem (e.g., volume of a sphere increasing) and solve it step-by-step using implicit differentiation with respect to time `t` in differential calculus."</prompt>

> **Key Point:** Derivatives are powerful tools not just for computation but for understanding how systems change and for finding optimal solutions to problems across various disciplines.

*   **Section Summary:** This section explored major applications of derivatives. We used derivatives to model rates of change (velocity, acceleration), analyze function graphs (increase/decrease, concavity, extrema) via the first and second derivative tests, solve optimization problems by finding absolute extrema, and tackle related rates problems by differentiating relationships with respect to time.
*   **Glossary:**
    *   **Critical Point:** "<prompt>Define 'Critical Point' of a function in the context of finding extrema in differential calculus."</prompt>
    *   **Local Extrema:** "<prompt>Define 'Local Maximum' and 'Local Minimum' (Local Extrema) of a function in differential calculus."</prompt>
    *   **Absolute Extrema:** "<prompt>Define 'Absolute Maximum' and 'Absolute Minimum' (Absolute Extrema) of a function on an interval in differential calculus."</prompt>
    *   **Concavity:** "<prompt>Define 'Concavity' (Concave Up and Concave Down) of a function's graph in differential calculus."</prompt>
    *   **Inflection Point:** "<prompt>Define 'Inflection Point' of a function's graph in differential calculus."</prompt>
    *   **Optimization:** "<prompt>Define 'Optimization' in the context of using differential calculus to find maximum or minimum values."</prompt>
    *   **Related Rates:** "<prompt>Define 'Related Rates' problems in differential calculus."</prompt>
*   **Self-Assessment Quiz:** "<prompt>Generate an 8-question quiz covering applications of derivatives: finding intervals of increase/decrease, concavity, locating extrema, solving optimization problems, and setting up related rates problems, suitable for Section III of a differential calculus course."</prompt>
*   **Reflective Prompt:** "<prompt>Ask the learner to consider a real-world scenario (e.g., business profit, spread of a disease, trajectory of a projectile) and explain how differential calculus concepts like rate of change and optimization could be applied."</prompt>
*   **Cross-Reference:** Analysis of functions (increasing/decreasing, concavity) relies heavily on differentiation rules from Section II. Optimization problems often use techniques for finding extrema developed earlier in this section. Related Rates uses implicit differentiation (Section II).
*   **Further Exploration:** `<placeholder for links to Paul's Online Math Notes applications section, Khan Academy optimization and related rates>`

---

*Transition:* Having explored the fundamentals and applications, we now touch upon slightly more advanced concepts often associated with differential calculus or leading into integral calculus.

---

# IV. Advanced Topics and Extensions

*   **Learning Objectives:** Understand differentials and linear approximations, L'Hôpital's Rule for indeterminate limits, and optionally, an introduction to antiderivatives as the inverse operation of differentiation.

## Linear Approximations and Differentials
"<prompt>Explain the concept of using the tangent line at a point `(a, f(a))` to approximate the function `f(x)` for values of `x` near `a` (linear approximation or linearization) in differential calculus."</prompt>

### Linearization Formula
"<prompt>Provide the formula for the linearization of `f` at `a`: `L(x) = f(a) + f'(a)(x - a)`, and explain its derivation from the point-slope form of the tangent line in differential calculus."</prompt>
*   "<prompt>Generate an example finding the linearization `L(x)` for `f(x) = sqrt(x)` at `a=4` and use it to approximate `sqrt(4.1)` within differential calculus."</prompt>

### Differentials
"<prompt>Define the differentials `dx` (an independent variable, change in `x`) and `dy` (dependent variable, `dy = f'(x)dx`) in differential calculus. Explain how `dy` approximates the actual change `Δy = f(x + Δx) - f(x)` when `Δx` is small."</prompt>
*   "<prompt>Generate an example calculating the differential `dy` for `y = x^3` at `x=2` with `dx = 0.1` and compare it to the actual change `Δy`, illustrating the concepts of differential calculus."</prompt>

## L'Hôpital's Rule
"<prompt>Introduce L'Hôpital's Rule as a technique for evaluating limits of indeterminate forms `0/0` or `∞/∞` using derivatives, within differential calculus."</prompt>

### Statement of the Rule
"<prompt>State L'Hôpital's Rule formally for indeterminate forms `0/0` and `∞/∞`: If `lim_{x->c} f(x)/g(x)` is indeterminate, then `lim_{x->c} f(x)/g(x) = lim_{x->c} f'(x)/g'(x)`, provided the latter limit exists or is `±∞`."</prompt>

### Applying L'Hôpital's Rule
"<prompt>Generate examples demonstrating the application of L'Hôpital's Rule to evaluate limits such as `lim_{x->0} sin(x)/x` and `lim_{x->∞} ln(x)/x` in differential calculus."</prompt>
*   "<prompt>Generate an example requiring repeated application of L'Hôpital's Rule, such as `lim_{x->0} (e^x - x - 1)/x^2`, relevant to differential calculus."</prompt>

### Other Indeterminate Forms
"<prompt>Explain how to handle other indeterminate forms (`0 * ∞`, `∞ - ∞`, `0^0`, `1^∞`, `∞^0`) by algebraically manipulating them into the `0/0` or `∞/∞` form before applying L'Hôpital's Rule in differential calculus."</prompt>
*   "<prompt>Generate an example evaluating a limit with indeterminate form `0 * ∞`, such as `lim_{x->0^+} x * ln(x)`, by converting it for L'Hôpital's Rule in differential calculus."</prompt>

## Introduction to Antiderivatives (Optional Bridge to Integral Calculus)
"<prompt>Introduce the concept of an antiderivative of a function `f(x)` as a function `F(x)` whose derivative is `f(x)` (i.e., `F'(x) = f(x)`), serving as a bridge from differential to integral calculus."</prompt>

### Definition and Notation
"<prompt>Define the antiderivative and introduce the notation `∫ f(x) dx = F(x) + C` for the indefinite integral, explaining the role of the constant of integration `C`, linking differential and integral calculus."</prompt>

### Basic Antidifferentiation Rules
"<prompt>Provide basic antidifferentiation rules derived from differentiation rules (e.g., power rule in reverse, antiderivatives of `e^x`, `sin(x)`, `cos(x)`), connecting differential calculus knowledge to finding antiderivatives."</prompt>
*   "<prompt>Generate examples finding antiderivatives of simple functions like `f(x) = x^3`, `g(x) = cos(x)`, `h(x) = 1/x` using reverse differentiation rules, bridging differential and integral calculus."</prompt>

> **Key Point:** Linear approximations provide practical ways to estimate function values, L'Hôpital's Rule offers a powerful method for challenging limits, and antiderivatives reverse the differentiation process, opening the door to integral calculus.

*   **Section Summary:** This section covered linear approximations using tangent lines and the concept of differentials. L'Hôpital's Rule was introduced as a powerful tool for evaluating indeterminate limit forms using derivatives. Finally, the concept of antiderivatives was briefly introduced as the inverse operation of differentiation, setting the stage for integral calculus.
*   **Glossary:**
    *   **Linearization:** "<prompt>Define 'Linearization' of a function at a point in differential calculus."</prompt>
    *   **Differentials (dx, dy):** "<prompt>Define 'Differentials' `dx` and `dy` and their relationship in differential calculus."</prompt>
    *   **L'Hôpital's Rule:** "<prompt>Define 'L'Hôpital's Rule' and state the conditions for its application in differential calculus."</prompt>
    *   **Antiderivative:** "<prompt>Define 'Antiderivative' and its relationship to the derivative in calculus."</prompt>
    *   **Indefinite Integral:** "<prompt>Define 'Indefinite Integral' notation and its meaning in calculus."</prompt>
*   **Self-Assessment Quiz:** "<prompt>Generate a 6-question quiz covering linearization, differentials, applying L'Hôpital's Rule to various indeterminate forms, and finding basic antiderivatives, suitable for Section IV of a differential calculus course."</prompt>
*   **Reflective Prompt:** "<prompt>Ask the learner to reflect on how the derivative, initially defined as a limit describing slope, becomes a tool itself for evaluating more complex limits via L'Hôpital's Rule. How does this illustrate the interconnectedness of concepts in differential calculus?"</prompt>
*   **Cross-Reference:** Linear approximations use the derivative (Section II) at a point. L'Hôpital's Rule requires computing derivatives (Section II). Antiderivatives reverse the process learned in Section II.
*   **Further Exploration:** `<placeholder for links to Paul's Online Math Notes on linear approx/differentials/L'Hopital's, Khan Academy L'Hopital's Rule>`
