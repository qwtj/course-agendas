# Stochastic Processes #ProbabilityTheory #Randomness #Modeling
An overview of the mathematical objects used to model random phenomena evolving over time or space.

## Foundations of Stochastic Processes #Basics #Probability #MeasureTheory
The mathematical prerequisites and fundamental definitions required to understand stochastic processes.

### Probability Spaces #Axioms #Events #SigmaAlgebra
Definition of (Ω, F, P): Sample space, sigma-algebra, probability measure.

### Random Variables #Mapping #Distribution #Expectation
Functions mapping outcomes to measurable values, their distributions, and expected values.

### Conditional Probability and Expectation #Conditioning #Information #Dependence
Probability of events or expected values given information about other events.

### Modes of Convergence #AlmostSure #Probability #Distribution #Lp
Different ways sequences of random variables can converge (almost surely, in probability, in distribution, in L_p).

### Measure Theory Basics #Measure #Integration #Lebesgue
Basic concepts from measure theory necessary for rigorous treatment.

### Filtration and Adapted Processes #InformationFlow #Timing #Measurability
Concept of evolving information (filtration) and processes whose values are known given the information up to that time.

## Classification of Stochastic Processes #Categorization #Properties #Dimensions
Ways to categorize stochastic processes based on their characteristics.

### State Space Type #DiscreteState #ContinuousState #VectorValued
Classification based on the set of possible values the process can take (e.g., integers, real numbers, vectors).

### Index Set (Time) Type #DiscreteTime #ContinuousTime #Spatial
Classification based on the set indexing the random variables (e.g., natural numbers, real line, multi-dimensional space).

### Examples based on Classification #RandomWalk #StockPrice #TemperatureField
Illustrative examples for different combinations of state space and index set.

## Key Concepts and Properties #Characteristics #Behavior #Analysis
Fundamental properties describing the behavior and structure of stochastic processes.

### Finite-Dimensional Distributions #FDDs #Consistency #KolmogorovExtension
Characterizing a process by the joint distributions of its values at finite sets of time points. Kolmogorov Extension Theorem.

### Stationarity #TimeInvariance #Statistics #Distribution
Properties related to the invariance of statistical properties over time shifts.
#### Strict Stationarity #StrongStationarity #JointDistribution
The joint distribution of the process values is invariant under time shifts.
#### Weak Stationarity (Wide-Sense Stationarity) #WSS #Moments #Covariance
Mean is constant, and covariance depends only on the time lag.

### Ergodicity #TimeAverages #EnsembleAverages #LongTermBehavior
Conditions under which time averages converge to ensemble averages.

### Independence of Increments #Memoryless #MarkovProperty #Jumps
Property where changes in the process over non-overlapping time intervals are independent.

### Continuity of Paths #SamplePath #Regularity #Trajectories
Properties related to the smoothness or continuity of the process trajectories (sample paths).

## Markov Processes #Memoryless #StateTransitions #MarkovProperty
Processes where the future state depends only on the current state, not the past history.

### Definition and Markov Property #ConditionalIndependence #FutureGivenPresent
Formal definition and the core memoryless property.

### Discrete-Time Markov Chains (DTMC) #DiscreteTime #DiscreteState #TransitionMatrix
Markov processes with discrete time and discrete state space.
#### Transition Probabilities #Matrix #Step #Evolution
Probabilities of moving between states in one or more steps.
#### State Classification #Recurrent #Transient #Absorbing #CommunicatingClasses
Categorizing states based on long-term behavior (return probability, accessibility).
#### Stationary Distributions #InvariantMeasure #LongRunProportions #Equilibrium
Distributions that remain unchanged after one step of the chain. Existence and uniqueness.
#### Limiting Behavior #Convergence #ErgodicTheorem
Long-term behavior of state probabilities and occupancy times.

### Continuous-Time Markov Chains (CTMC) #ContinuousTime #DiscreteState #GeneratorMatrix
Markov processes with continuous time and discrete state space.
#### Holding Times #ExponentialDistribution #Rates
Time spent in a state follows an exponential distribution.
#### Transition Rates and Generator Matrix (Q-matrix) #InfinitesimalGenerator #Dynamics
Rates of transition between states.
#### Kolmogorov Forward and Backward Equations #DifferentialEquations #ProbabilityEvolution
Equations describing the evolution of transition probabilities over time.
#### Stationary Distributions #Equilibrium #BalanceEquations
Finding the long-term equilibrium distribution.

### General State Space Markov Processes #ContinuousState #MarkovKernel #MeasureTheory
Extension of Markov concepts to continuous or more general state spaces.

## Poisson Processes #Counting #Events #Arrivals #Intensity
Processes that count occurrences of events randomly over time.

### Definition and Properties #StationaryIncrements #IndependentIncrements #Orderliness
Formal definition based on increment properties or as a counting process.

### Interarrival Times and Waiting Times #ExponentialDistribution #GammaDistribution
Distribution of time between events (exponential) and time until the nth event (gamma).

### Non-homogeneous Poisson Process #TimeVaryingRate #IntensityFunction
Poisson processes where the average rate of events changes over time.

### Compound Poisson Process #Jumps #SumOfRandomVariables
Poisson process where each event is associated with a random value (jump size).

### Spatial Poisson Process #Points #RandomLocations #Space
Generalization to points randomly distributed in space.

## Renewal Theory and Processes #Regeneration #ArrivalTimes #GeneralInterarrival
Generalization of Poisson processes where interarrival times are IID but not necessarily exponential.

### Renewal Function and Equation #ExpectedCount #IntegralEquation
The expected number of renewals up to a certain time and the equation it satisfies.

### Limit Theorems #ElementaryRenewalTheorem #BlackwellsTheorem #KeyRenewalTheorem
Long-term behavior of the renewal function and related quantities.

### Renewal Reward Processes #Costs #Rewards #LongRunAverage
Processes where rewards or costs are accumulated at each renewal event.

## Brownian Motion and Wiener Processes #ContinuousTime #ContinuousState #Gaussian #Diffusion
A central process in stochastic calculus, modeling random walks in the limit.

### Definition and Construction #GaussianProcess #IndependentIncrements #ContinuousPaths
Formal definition, existence, and key properties (Gaussian increments, continuity).

### Properties of Sample Paths #NowhereDifferentiable #FractalNature #QuadraticVariation
Characteristics of Brownian motion trajectories.

### Variations and Related Processes #GeometricBrownianMotion #BrownianBridge #ReflectedBrownianMotion
Modifications and related processes used in applications (e.g., finance).

### Martingale Property of Brownian Motion #FairGame #ConditionalExpectation
Brownian motion is a martingale with respect to its natural filtration.

### The Reflection Principle #Maximum #HittingTimes #Distribution
A technique to calculate probabilities related to the maximum value or hitting times.

## Martingales #FairGame #ConditionalExpectation #Filtration
Processes whose expected future value, given the past, is the current value.

### Definition and Examples #RandomWalk #DoobMartingale #LikelihoodRatio
Formal definition in discrete and continuous time, with examples.

### Optional Stopping Theorem #StoppingTime #ExpectedValue #Conditions
Conditions under which the expected value of a martingale at a stopping time equals its initial value.

### Martingale Convergence Theorems #AlmostSureConvergence #L1Convergence
Theorems describing the limiting behavior of martingales.

### Applications #Finance #ProbabilityTheory #StoppingProblems
Use of martingales in various fields.

## Stochastic Calculus #Integration #Differentiation #ItôCalculus
Calculus developed for stochastic processes, particularly Brownian motion.

### Stochastic Integrals #ItôIntegral #StratonovichIntegral #IntegrationWithRespectToMartingales
Defining integrals with respect to processes like Brownian motion. Differences between Itô and Stratonovich conventions.

### Itô's Lemma #ChainRule #StochasticDifferential #FunctionOfProcess
A fundamental rule for differentiating functions of stochastic processes (the stochastic chain rule).

### Stochastic Differential Equations (SDEs) #ModelingDynamics #Noise #Drift #Diffusion
Differential equations driven by stochastic processes (e.g., Wiener process).
#### Existence and Uniqueness of Solutions #LipschitzConditions #GrowthConditions
Conditions under which SDEs have unique solutions.
#### Examples #OrnsteinUhlenbeck #GeometricBrownianMotion #LangevinEquation
Common SDEs used in modeling.

## Stationary Processes #TimeInvariant #WSS #SpectralAnalysis
Processes whose statistical properties do not change over time.

### Autocovariance and Autocorrelation Functions #ACF #Correlation #DependenceStructure
Measures of linear dependence between process values at different times.

### Spectral Density #FrequencyDomain #PowerSpectrum #FourierTransform
Analysis of the frequency content of a stationary process (Fourier transform of ACF).

### Linear Filters and Time Series Analysis #ARMA #ARIMA #Filtering #Prediction
Using stationary processes to model time series data and predict future values.

### Ergodic Theorems for Stationary Processes #TimeAverages #Convergence
Relating time averages to ensemble averages for stationary processes.

## Estimation and Inference for Stochastic Processes #Statistics #ParameterEstimation #HypothesisTesting
Statistical methods applied to data generated from stochastic processes.

### Parameter Estimation #MaximumLikelihood #MethodOfMoments #BayesianInference
Estimating parameters of models (e.g., transition probabilities, SDE coefficients).

### Filtering and Smoothing #StateEstimation #KalmanFilter #HiddenMarkovModels
Estimating the hidden state of a system based on noisy observations over time.

### Hypothesis Testing #ModelSelection #GoodnessOfFit
Testing hypotheses about the underlying stochastic process generating the data.

## Simulation of Stochastic Processes #MonteCarlo #ComputationalMethods #Algorithms
Techniques for generating sample paths of stochastic processes using computers.

### Generating Random Variables #InverseTransform #AcceptanceRejection #SpecificDistributions
Methods for sampling from various probability distributions.

### Simulating Markov Chains #TransitionMatrix #StateSimulation
Algorithms for generating trajectories of DTMCs and CTMCs.

### Simulating SDEs #EulerMaruyama #MilsteinScheme #NumericalMethods
Numerical schemes for approximating solutions to stochastic differential equations.

### Variance Reduction Techniques #AntitheticVariates #ControlVariates #ImportanceSampling
Methods to improve the efficiency of Monte Carlo simulations involving stochastic processes.

## Applications of Stochastic Processes #RealWorld #Modeling #ProblemSolving
Areas where stochastic processes are widely used.

### Finance and Economics #OptionPricing #RiskManagement #Econometrics #InterestRateModels
Modeling asset prices (e.g., Black-Scholes), portfolio management, economic time series.

### Physics #StatisticalMechanics #BrownianMotion #QuantumMechanics
Modeling particle movement, thermal noise, quantum fluctuations.

### Biology and Medicine #PopulationDynamics #Epidemiology #Genetics #Neuroscience
Modeling population growth, disease spread, gene frequencies, neural firing.

### Engineering #SignalProcessing #ControlTheory #Reliability #QueueingTheory
Filtering noise from signals, controlling systems with random disturbances, analyzing system failures, modeling waiting lines.

### Operations Research #QueueingTheory #InventoryManagement #SupplyChain #Optimization
Analyzing waiting lines, managing stock levels, optimizing logistics under uncertainty.

### Computer Science #AlgorithmAnalysis #NetworkModeling #MachineLearning
Analyzing randomized algorithms, modeling network traffic, reinforcement learning.

## Advanced Stochastic Processes #FurtherTopics #ResearchAreas #Generalizations

### Lévy Processes #StationaryIndependentIncrements #JumpProcesses #StableProcesses
Generalization of Brownian motion and Poisson processes allowing jumps.

### Stochastic Partial Differential Equations (SPDEs) #RandomFields #SpaceTimeNoise
PDEs involving random terms, modeling phenomena varying in space and time.

### Random Fields #SpatialProcesses #MultiDimensionalIndex
Stochastic processes indexed by multi-dimensional sets (e.g., space).

### Point Processes #RandomEvents #TimeAndSpace #IntensityMeasure
General framework for modeling random collections of points in time or space.

### Large Deviations Theory #RareEvents #AsymptoticProbabilities
Theory concerning the probabilities of rare events in stochastic systems.
