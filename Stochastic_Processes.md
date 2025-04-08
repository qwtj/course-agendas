# I. Introduction to Stochastic Processes

## Understanding Basic Probability Concepts

### Probability Spaces

*   Sample space (Ω): The set of all possible outcomes.
*   Events (F): Subsets of the sample space.
*   Probability measure (P): A function that assigns probabilities to events.

### Random Variables

*   Definition: A function that maps outcomes in the sample space to real numbers.
*   Types: Discrete and continuous random variables.
*   Probability distributions: PMF (Probability Mass Function) and PDF (Probability Density Function).
    *   Example: Bernoulli, Binomial, Poisson, Exponential, Normal distributions.

### Expectation and Variance

*   Expectation (E[X]): The average value of a random variable.
    *   `E[X] = sum(x * P(X=x))` for discrete RVs.
    *   `E[X] = integral(x * f(x) dx)` for continuous RVs.
*   Variance (Var[X]): A measure of the spread of a random variable.
    *   `Var[X] = E[(X - E[X])^2] = E[X^2] - (E[X])^2`.

## Defining Stochastic Processes

### Definition and Examples

*   Definition: A collection of random variables indexed by time. `X = {X(t), t ∈ T}` where `T` is the index set.
*   Examples:
    *   Brownian motion.
    *   Poisson process.
    *   Markov chains.
    *   Gaussian processes.

### Index Set and State Space

*   Index set (T): Can be discrete (e.g., integers) or continuous (e.g., real numbers).
*   State space: The set of possible values that the random variables can take.

### Finite-Dimensional Distributions

*   Understanding joint distributions `P(X(t1) <= x1, ..., X(tn) <= xn)`.

# II. Markov Chains

## Introduction to Markov Chains

### Markov Property

*   Definition: The future state depends only on the present state, not on the past.
    `P(X(t+1) = x | X(t) = x_t, X(t-1) = x_{t-1}, ...) = P(X(t+1) = x | X(t) = x_t)`.

### Transition Probabilities

*   Definition: The probability of moving from one state to another in one step.
    `P(i, j) = P(X(t+1) = j | X(t) = i)`.
*   Transition matrix: A matrix containing all transition probabilities.

## Classification of States

### Accessibility and Communication

*   State `j` is accessible from state `i` if it's possible to reach `j` from `i` in a finite number of steps.
*   States `i` and `j` communicate if `i` is accessible from `j` and `j` is accessible from `i`.

### Irreducible Markov Chains

*   Definition: A Markov chain where all states communicate with each other.

### Periodicity

*   Definition: The period of a state `i` is the greatest common divisor of all return times to state `i`.
*   Aperiodic state: A state with period 1.

### Recurrence and Transience

*   Recurrent state: A state that the process will eventually return to with probability 1.
*   Transient state: A state that the process will eventually leave and never return to.

## Stationary Distributions

### Definition and Properties

*   Definition: A probability distribution that remains unchanged when the Markov chain is applied.
    `πP = π`, where `π` is the stationary distribution and `P` is the transition matrix.
*   Finding stationary distributions by solving the equation `πP = π`.

### Convergence to Stationary Distribution

*   Conditions for convergence: Irreducibility and aperiodicity.
*   Ergodic theorem: Describes the long-term behavior of Markov chains.

# III. Poisson Processes

## Introduction to Poisson Processes

### Definition and Properties

*   Definition: A counting process that counts the number of events that occur in a given time interval.
*   Properties:
    *   Events occur independently.
    *   The rate of event occurrence is constant.
    *   Number of events in non-overlapping intervals are independent.

### Poisson Distribution

*   The number of events in a time interval of length `t` follows a Poisson distribution with parameter `λt`.
    `P(N(t) = k) = (e^(-λt) * (λt)^k) / k!`, where `N(t)` is the number of events in `[0, t]`.

### Inter-arrival Times

*   The time between consecutive events follows an exponential distribution.
*   Relationship between exponential and Poisson distributions.

## Variations of Poisson Processes

### Non-Homogeneous Poisson Process

*   Definition: A Poisson process where the rate of event occurrence varies with time. `λ(t)`.
*   Intensity function: Represents the rate of event occurrence at time `t`.

### Compound Poisson Process

*   Definition: A Poisson process where each event is associated with a random variable.
*   Examples: Total claim amount in insurance, total damage in a series of accidents.

# IV. Brownian Motion

## Introduction to Brownian Motion

### Definition and Properties

*   Definition: A continuous-time stochastic process that describes the random movement of particles in a fluid.
*   Properties:
    *   Independent increments: The increments over non-overlapping intervals are independent.
    *   Normally distributed increments: The increments are normally distributed with mean 0 and variance proportional to the length of the interval.
    *   Continuous paths: The paths of Brownian motion are continuous.

### Standard Brownian Motion

*   Mean `E[B(t)] = 0`.
*   Variance `Var[B(t)] = t`.
*   Covariance `Cov(B(s), B(t)) = min(s, t)`.

## Applications of Brownian Motion

### Modeling Stock Prices

*   Geometric Brownian motion: A model for stock prices that incorporates Brownian motion.

### Solving Stochastic Differential Equations

*   Using Brownian motion to solve stochastic differential equations (SDEs).
*   Example: `dX(t) = μX(t)dt + σX(t)dB(t)`.

# V. Gaussian Processes

## Introduction to Gaussian Processes

### Definition and Properties

*   Definition: A stochastic process where any finite collection of samples has a multivariate normal distribution.
*   Characterized by a mean function `m(t) = E[X(t)]` and a covariance function `K(s, t) = Cov(X(s), X(t))`.

### Covariance Functions

*   Common covariance functions:
    *   Squared exponential (RBF) kernel.
    *   Linear kernel.
    *   Periodic kernel.
*   Properties of valid covariance functions: Must be positive semi-definite.

## Gaussian Process Regression

### Prediction

*   Using Gaussian processes for regression tasks.
*   Predicting the value of the function at a new point given a set of observed data.

### Uncertainty Quantification

*   Gaussian processes provide a measure of uncertainty in their predictions.
*   Confidence intervals and posterior distributions.
