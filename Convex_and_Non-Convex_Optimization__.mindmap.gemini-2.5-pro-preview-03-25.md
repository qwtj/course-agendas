# Convex and Non-Convex Optimization #Optimization #MathematicalProgramming #Overview
This mind map outlines the key areas within the field of convex and non-convex optimization, covering foundational concepts, specific problem types, algorithms, duality, applications, and software. Optimization deals with finding the best solution from a set of possible options under given constraints. The distinction between convex and non-convex problems is fundamental, as it significantly impacts the properties of the solution and the methods used to find it.

## Fundamentals of Optimization #Basics #Theory #Definitions
Core concepts applicable to both convex and non-convex optimization.

### Optimization Problems #Formulation #ProblemTypes
Defining what an optimization problem entails.
#### Objective Function #Goal #Metric
The function to be minimized or maximized.
#### Decision Variables #Parameters #Inputs
The variables whose values are chosen to optimize the objective function.
#### Constraints #Limits #Conditions
Restrictions on the decision variables (equality and inequality constraints).
#### Feasible Region #SolutionSpace #Domain
The set of all possible points (decision variable values) that satisfy the constraints.

### Optimality Conditions #Criteria #Solutions
Conditions that characterize optimal solutions.
#### Local vs. Global Optima #SolutionTypes #Minimum #Maximum
Distinction between solutions that are optimal within a neighborhood versus optimal over the entire feasible region. Convex problems guarantee local optima are global. Non-convex problems may have multiple local optima distinct from the global optimum. [14, 21]
#### Unconstrained Optimization Conditions #Calculus #Gradients
Necessary and sufficient conditions involving gradients and Hessians (e.g., first and second-order conditions).
#### Constrained Optimization Conditions #KKT #LagrangeMultipliers
Karush-Kuhn-Tucker (KKT) conditions for problems with inequality and equality constraints. Lagrange multipliers handle equality constraints. [4, 19, 20]

## Convex Optimization #Convexity #GlobalOptimum #Efficiency
Study of optimization problems where the objective function is convex (to be minimized) or concave (to be maximized) and the feasible set is convex. [1, 19]
Key property: Any local optimum is also a global optimum. [1, 14, 19, 21] These problems are generally easier to solve reliably and efficiently. [1]

### Convex Sets #Geometry #FeasibleRegion
Sets where the line segment between any two points in the set is entirely contained within the set. [1] The feasible region of a convex optimization problem is a convex set. [1, 33]

### Convex Functions #ObjectiveFunction #Constraints
Functions where the line segment between any two points on the function's graph lies on or above the graph (for minimization). [1, 21, 33] Linear functions are both convex and concave. [1]
#### Properties #Characteristics #Behavior
Sum of convex functions is convex, non-negative scaling preserves convexity, level sets are convex. [21, 32, 33]
#### Checking Convexity #Hessian #SecondDerivative
Using second derivatives (Hessian matrix for multivariate functions). A function is convex if its Hessian is positive semidefinite (SPSD). [14, 21, 33]

### Standard Convex Problem Classes #ProblemTypes #Formulations
Well-known types of convex optimization problems.
#### Linear Programming (LP) #Linear #Simplex
Objective and constraints are linear functions. [1, 4]
#### Quadratic Programming (QP) #Quadratic #Optimization
Quadratic objective function and linear constraints.
#### Quadratically Constrained Quadratic Programming (QCQP) #QuadraticConstraints
Quadratic objective and quadratic constraints (requires constraints to define a convex region).
#### Second-Order Cone Programming (SOCP) #Conic #Optimization
Optimization over the second-order cone; generalizes LP and QP. [1, 32]
#### Semidefinite Programming (SDP) #Conic #Matrices
Optimization over the cone of positive semidefinite matrices; generalizes LP, QP, SOCP. [12, 32]
#### Geometric Programming (GP) #Posynomials #LogTransform
Problems involving posynomials, transformable to convex problems.
#### Conic Programming #Generalization #Cones
A general class including LP, SOCP, SDP. [1]

### Advantages of Convex Optimization #Benefits #Guarantees
#### Global Optimality #UniqueSolution #Reliability
Local optima are guaranteed to be global optima. [1, 14, 19] If the objective is strictly convex, the global optimum is unique. [19]
#### Efficient Algorithms #Solvability #Speed
Problems can often be solved efficiently in polynomial time, even for large-scale instances. [1, 19] Interior-point methods are particularly effective. [1]
#### Duality Theory #StrongDuality #Bounds
Strong duality often holds, meaning the optimal value of the dual problem equals the optimal value of the primal problem. [2, 6, 20]

## Non-Convex Optimization #NonConvexity #LocalOptima #Complexity
Optimization problems where the objective function or the feasible set (or both) are non-convex. [1] These problems are generally much harder to solve. [1]

### Challenges #Difficulties #Issues
#### Multiple Local Optima #GlobalSearch #Trap
Algorithms can get stuck in local optima that are not globally optimal. [1, 13, 14, 21, 23, 28]
#### No Guarantee of Global Optimum #Uncertainty #Difficulty
Finding the certified global optimum is often computationally intractable (NP-hard). [1, 14, 15]
#### Sensitivity to Initialization #StartingPoint #Convergence
The solution found by iterative algorithms often depends heavily on the starting point. [21]
#### Complex Feasible Regions #DisjointSets #Irregularity
The feasible region might be disconnected or have a complex geometry. [1]

### Problem Classes #NonConvexTypes #Formulations
#### Integer Programming (IP) #Discrete #Combinatorial
Variables are restricted to integer values (includes Binary IP). Often non-convex due to discrete nature. [5]
#### Mixed-Integer Linear Programming (MILP) #Hybrid #LP
Linear problems with both continuous and integer variables.
#### Mixed-Integer Nonlinear Programming (MINLP) #Hybrid #NLP
Nonlinear problems with both continuous and integer variables.
#### Polynomial Optimization #Polynomials #Global
Optimizing polynomial functions over sets defined by polynomial inequalities.
#### Global Optimization #WorstCase #Guarantee
The field specifically focused on finding guaranteed global optima for non-convex problems. [25]
#### Difference-of-Convex (DC) Programming #DCFunctions #Decomposition
Problems involving functions represented as the difference of two convex functions. [25, 31]
#### Bilevel Optimization #NestedOptimization #Hierarchical
Optimization problems where constraints include another optimization problem. [30]

### Solution Approaches #Heuristics #Approximation #GlobalMethods
#### Local Optimization Methods #GradientDescent #Newton
Algorithms (like Gradient Descent, Newton's method) adapted for non-convex problems, find local optima. [3, 29]
#### Global Optimization Algorithms #BranchAndBound #Search
Methods aiming for the global optimum, often computationally expensive. Includes Branch and Bound, Spatial Branch and Bound. [15, 25]
#### Heuristics and Metaheuristics #Approximation #Stochastic
Methods that find good (but not necessarily optimal) solutions efficiently. Examples: Simulated Annealing, Genetic Algorithms, Particle Swarm Optimization. [3, 4, 14, 16, 27]
#### Relaxation Techniques #ConvexRelaxation #Bounds
Approximating the non-convex problem with a related convex problem (e.g., SDP relaxations, Lagrangian relaxation) to find bounds or approximate solutions. [32]
#### Regularization Techniques #Sparsity #ModelComplexity
Adding penalty terms (potentially non-convex like L0 or L1 norm) to the objective function to encourage desirable properties like sparsity or prevent overfitting. [23, 28]

## Duality Theory #PrimalDual #Bounds #Sensitivity
Relates an optimization problem (the primal) to another related problem (the dual). [2, 6, 9, 20]

### Lagrangian Duality #LagrangeFunction #Multipliers
Constructing the dual problem using the Lagrangian function and Lagrange multipliers. [2, 19, 20, 32]
#### Primal Problem #OriginalProblem
The original optimization problem. [2, 6]
#### Dual Problem #RelatedProblem #LowerBound
The associated dual optimization problem, often derived from the Lagrangian. Provides bounds on the primal optimal value. [2, 6, 9, 20]
The dual problem is always a convex optimization problem (maximization of a concave function), regardless of the convexity of the primal problem. [20]
#### Dual Function #LagrangianMinimization
The objective function of the dual problem, obtained by minimizing the Lagrangian over the primal variables. [20]

### Duality Gap #PrimalDualDifference #OptimalityGap
The difference between the optimal values of the primal and dual problems. [2, 9]
#### Weak Duality #LowerBound #General
The optimal value of the dual problem is always less than or equal to the optimal value of the primal minimization problem. Holds generally. [2, 6, 9, 20, 26]
#### Strong Duality #Equality #Convexity
The optimal values of the primal and dual problems are equal. Holds for most convex problems under constraint qualifications (e.g., Slater's condition). [2, 6, 9, 20, 26] Does not generally hold for non-convex problems.

### Applications of Duality #Uses #Interpretation
#### Finding Bounds #Approximation #Verification
Dual solutions provide bounds on the primal optimal value. [6, 9, 20]
#### Optimality Conditions (KKT) #SolutionCheck #Verification
Dual variables are the Lagrange multipliers in the KKT conditions. [20]
#### Sensitivity Analysis #Perturbation #Economics
Dual variables often represent the sensitivity of the optimal value to constraint perturbations (shadow prices). [6, 20]
#### Decomposition Methods #LargeScale #Distributed
Duality allows decomposing large problems into smaller, coordinated subproblems. [31]
#### Algorithm Design #DualAscent #ADMM
Some algorithms work by solving the dual problem or alternating between primal and dual updates. [29]

## Algorithms #Solvers #Methods #Techniques
Numerical methods used to solve optimization problems. [3, 5]

### First-Order Methods #GradientBased #Iterative
Use gradient information. [4, 21]
#### Gradient Descent #SteepestDescent #Basic
Iterative method moving in the direction of the negative gradient. [3, 29]
#### Stochastic Gradient Descent (SGD) #LargeScale #MachineLearning
Uses gradients based on subsets (mini-batches) of data; widely used in machine learning. [23, 28, 29]
#### Conjugate Gradient Method #FasterConvergence #LinearSystems
Iterative method for solving systems of linear equations and unconstrained optimization.
#### Accelerated Methods #Momentum #Nesterov
Methods like Nesterov's accelerated gradient or methods with momentum (e.g., Adam, RMSProp) often achieve faster convergence. [23, 28, 29, 30]
#### Coordinate Descent #SingleVariable #Simplicity
Optimizes the objective function along one coordinate direction at a time. [29]

### Second-Order Methods #HessianBased #Curvature
Use Hessian (second derivative) information. Often faster convergence near optimum but higher computational cost per iteration. [1]
#### Newton's Method #QuadraticApproximation #FastConvergence
Uses a quadratic approximation of the objective function. [14]
#### Quasi-Newton Methods #HessianApproximation #BFGS #DFP
Approximate the Hessian matrix. Common examples: BFGS, DFP. [4]

### Methods for Constrained Optimization #ConstraintsHandling
#### Interior-Point Methods (IPM) #BarrierMethods #PolynomialTime
A class of algorithms very effective for convex problems (LP, SOCP, SDP). They stay within the interior of the feasible region. [1, 32]
#### Active Set Methods #ConstraintSelection #QP #LP
Iteratively guess the set of constraints that are active (binding) at the solution.
#### Penalty and Barrier Methods #SUMT #Approximation
Transform constrained problems into unconstrained ones by adding penalty or barrier terms to the objective. [4, 29]
#### Augmented Lagrangian Methods #LagrangianPenalty #EqualityConstraints
Combine Lagrangian multipliers with penalty terms.
#### Sequential Quadratic Programming (SQP) #NLP #QuadraticSubproblems
Solves a sequence of QP subproblems to handle nonlinear constraints. [4, 17]
#### Simplex Method #LP #Vertices
Classic algorithm for Linear Programming, moves between vertices of the feasible polytope. [4]

### Methods for Non-Convex / Global Optimization #Heuristics #GlobalSearch
#### Branch and Bound #SystematicSearch #IntegerProgramming
Systematically partitions the search space, using bounds to prune regions. Core method for IP and global optimization. [15, 25]
#### Metaheuristics #StochasticSearch #NatureInspired
##### Genetic Algorithms (GA) #Evolution #PopulationBased [4, 16, 24, 27]
##### Simulated Annealing (SA) #Thermodynamics #Probabilistic [4, 16]
##### Particle Swarm Optimization (PSO) #SwarmIntelligence #SocialBehavior [3]
##### Tabu Search #Memory #NeighborhoodSearch

## Applications #RealWorld #Uses #Examples
Where optimization techniques are applied. [5, 8, 10, 12]

### Machine Learning #AI #DataScience
#### Model Training #LossMinimization #Regression #Classification
Minimizing loss functions (e.g., squared error, cross-entropy). [23, 28, 29]
#### Support Vector Machines (SVM) #Classification #QP #Duality
Often formulated as a QP, duality plays a key role. [19, 29]
#### Regularization #FeatureSelection #Overfitting
Using L1/L2 norms (convex) or non-convex penalties for model selection and complexity control. [19, 23]
#### Deep Learning #NeuralNetworks #NonConvex
Training neural networks involves highly non-convex optimization. [23, 28, 30]
#### Reinforcement Learning #PolicyOptimization #ValueIteration
Optimization used in finding optimal policies. [30]

### Engineering #Design #Control
#### Structural Optimization #Design #Mechanics
Minimizing weight or maximizing stiffness of structures under constraints (size, shape, topology optimization). [4, 7, 16, 17, 18, 24]
#### Control Systems #OptimalControl #SystemDesign
Designing controllers to optimize system performance. [12]
#### Signal Processing #Filtering #Estimation #Detection
Designing filters, beamforming, solving inverse problems, multiuser detection. [12, 32]
#### Circuit Design #Electronics #Layout
Optimizing performance and layout of electronic circuits. [12]

### Operations Research #Logistics #Scheduling #Management
#### Supply Chain Management #Logistics #Inventory
Optimizing inventory levels, transportation routes, facility location. [5, 8]
#### Production Planning #Manufacturing #Scheduling
Optimizing production schedules and resource allocation. [8, 10]
#### Resource Allocation #Assignment #Budgeting
Assigning limited resources to competing activities. [6, 10]
#### Network Flows #Transportation #Communication
Optimizing flow through networks (e.g., transportation, data). [12, 24]

### Finance #Portfolio #Risk #Pricing
#### Portfolio Optimization #Investment #RiskReturn
Balancing risk and return in investment portfolios (Markowitz model). [8, 10, 19, 33]
#### Risk Management #VaR #CVaR
Quantifying and minimizing financial risk. [8, 10, 19]
#### Derivative Pricing #Options #Hedging
Pricing financial instruments. [8, 10]

### Economics #MarketEquilibrium #Policy
#### Resource Pricing #ShadowPrices #Valuation
Using dual variables to determine economic value. [6, 20]
#### Market Equilibrium Models #SupplyDemand #GameTheory [6, 8]
#### Policy Analysis #WelfareOptimization #Regulation [8]

## Software and Tools #Implementation #Solvers #Libraries
Software packages and libraries for formulating and solving optimization problems.

### Modeling Languages/Systems #Abstraction #Formulation
#### CVXPY (Python) #Convex #Python [ ]
#### CVX (MATLAB) #Convex #MATLAB [ ]
#### JuMP (Julia) #General #Julia [ ]
#### AMPL #Algebraic #Modeling [ ]
#### GAMS #Algebraic #Modeling [ ]
#### Pyomo (Python) #Algebraic #Python [ ]

### Solvers (Convex) #ConvexSolvers #Efficient
#### MOSEK #Conic #Commercial [ ]
#### Gurobi #LP #QP #MILP #Commercial [ ]
#### CPLEX #LP #QP #MILP #Commercial [ ]
#### SCS #Conic #OpenSource [ ]
#### ECOS #Conic #OpenSource [ ]

### Solvers (Non-Convex / Global) #NonConvexSolvers #Global
#### BARON #Global #Commercial [25]
#### SCIP #MINLP #Global #OpenSource [25]
#### IPOPT #NLP #Local #OpenSource [ ]
#### Knitro #NLP #Commercial [ ]
#### Genetic Algorithm Libraries (various languages) #Heuristic #OpenSource [ ]

### Integrated Environments #Platform #Toolbox
#### MATLAB Optimization Toolbox #MATLAB #General [ ]
#### SciPy Optimize (Python) #Python #General [ ]
#### R Optimization Packages #R #Statistics [ ]

## Advanced Topics and Research Areas #Frontiers #Future #Specialized

### Stochastic Optimization #Uncertainty #Randomness
Optimization problems involving random variables or uncertainty in data. [5, 10, 24, 31]
#### Chance Constraints #Probabilistic #Reliability
Ensuring constraints are satisfied with a certain probability.
#### Robust Optimization #WorstCase #UncertaintySet
Optimizing against the worst-case realization of uncertainty within a defined set. [32]
#### Sample Average Approximation (SAA) #MonteCarlo #Simulation
Approximating expected value problems using samples.

### Distributed Optimization #LargeScale #Parallel #Networks
Solving problems where data or computation is distributed across multiple nodes/agents. [12]
#### Consensus Algorithms #Agreement #Averaging
Methods for agents to agree on a common value.
#### Alternating Direction Method of Multipliers (ADMM) #Decomposition #DualAscent [29]

### Large-Scale Optimization #BigData #HighDimensions
Developing algorithms efficient for problems with a huge number of variables or constraints. [12, 24]
#### Sparsity Exploitation #SparseMatrices #CompressedSensing
Leveraging sparsity in problem data or solutions. [29]
#### Subsampling / Sketching Methods #Approximation #DataReduction [23, 28]

### Online Optimization #StreamingData #SequentialDecisions
Making decisions sequentially as data arrives over time.

### Integer and Combinatorial Optimization #Discrete #NPComplete
Advanced techniques for problems with discrete variables. [24]

### Optimization on Manifolds #GeometricOptimization #Constraints
Optimization where variables are constrained to lie on a smooth manifold.

### Topological Optimization #ShapeOptimization #Persistence [30]
Using concepts from topology (like persistent homology) within optimization frameworks.
