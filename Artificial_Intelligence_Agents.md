# I. Introduction to Artificial Intelligence Agents

## Understanding Agents and Environments

### Defining Agents and Rationality
*   Agent: An entity that perceives its environment through sensors and acts upon that environment through actuators.
*   Rationality: The property of an agent that chooses actions that maximize its expected performance measure, given its percept sequence.

### Types of Environments
*   Fully vs. Partially Observable
    *   Fully Observable: The agent's sensors give it access to the complete state of the environment at each point in time.
    *   Partially Observable: The agent's sensors do not have access to the complete state of the environment.
*   Deterministic vs. Stochastic
    *   Deterministic: The next state of the environment is completely determined by the current state and the action executed by the agent.
    *   Stochastic: The next state of the environment is not completely determined by the current state and the action executed by the agent.
*   Episodic vs. Sequential
    *   Episodic: The agent's experience is divided into atomic episodes.
    *   Sequential: The current decision affects all future decisions.
*   Static vs. Dynamic
    *   Static: The environment is unchanged except by the actions of the agent.
    *   Dynamic: The environment can change while the agent is deliberating.
*   Discrete vs. Continuous
    *   Discrete: A limited number of distinct, clearly defined percepts and actions.
    *   Continuous: Percepts and actions vary in a smooth way.

## Agent Architectures

### Simple Reflex Agents
*   Action is directly based on the current percept. Implemented using a condition-action rule: `if condition then action`.
*   Example: Vacuum cleaner agent responding to location and dirtiness.

### Model-Based Reflex Agents
*   Maintain internal state to keep track of aspects of the world that are not evident in the current percept.
*   Update state using information about how the world evolves independently of the agent, and how the agent's actions affect the world.

### Goal-Based Agents
*   Use goal information to decide which situations are desirable. Requires search and planning.
*   Example: Route-finding agent trying to reach a specific destination.

### Utility-Based Agents
*   Use a utility function that measures the agent's preference among states, allowing for a more nuanced decision-making process than simple goals.
*   Utility function maps a state to a real number, representing the degree of "happiness."

# II. Problem-Solving Agents

## Defining Problems

### State Space
*   The set of all possible states of the environment.

### Initial State
*   The state in which the agent starts.

### Actions
*   A description of the possible actions available to the agent.

### Transition Model
*   A description of what each action does; `Result(s, a)` returns the state that results from doing action `a` in state `s`.

### Goal Test
*   Determines whether a given state is a goal state.

### Path Cost
*   A function that assigns a numeric cost to each path.

### Example Problems
*   Vacuum World
*   8-Puzzle
*   Route Finding

## Uninformed Search Algorithms

### Breadth-First Search (BFS)
*   Expands the shallowest unexpanded node.
*   Complete if branching factor `b` is finite. Optimal if all step costs are identical.
*   Time complexity: O(b^d), where `d` is the depth of the least-cost solution.
*   Space complexity: O(b^d).

### Depth-First Search (DFS)
*   Expands the deepest unexpanded node.
*   Not complete. Not optimal.
*   Time complexity: O(b^m), where `m` is the maximum depth of the search tree.
*   Space complexity: O(bm).

### Depth-Limited Search (DLS)
*   DFS with a depth limit `l`.
*   Complete if `l >= d`. Not optimal.
*   Time complexity: O(b^l).
*   Space complexity: O(bl).

### Iterative Deepening Depth-First Search (IDS)
*   Repeated DLS with increasing depth limits.
*   Complete. Optimal if step cost is 1.
*   Time complexity: O(b^d).
*   Space complexity: O(bd).

### Uniform-Cost Search (UCS)
*   Expands the node with the lowest path cost.
*   Complete if step costs are greater than zero. Optimal.
*   Time complexity: O(b^(C*/ε)), where `C*` is the cost of the optimal solution and `ε` is the minimum step cost.
*   Space complexity: O(b^(C*/ε)).

## Informed Search Algorithms

### Heuristic Functions
*   Estimates the cost from a state to the nearest goal.
*   `h(n)` = estimated cost of the cheapest path from node `n` to a goal state.

### Greedy Best-First Search
*   Expands the node that is closest to the goal, as estimated by `h(n)`.
*   Not complete. Not optimal.
*   Time complexity: O(b^m).
*   Space complexity: O(b^m).

### A* Search
*   Evaluates nodes by combining `g(n)`, the cost to reach the node, and `h(n)`, the estimated cost to get from the node to the goal: `f(n) = g(n) + h(n)`.
*   Complete. Optimal if `h(n)` is admissible (never overestimates the cost to reach the goal).
*   Time complexity: Depends on the heuristic.
*   Space complexity: Keeps all nodes in memory.

### Admissible Heuristics
*   A heuristic `h(n)` is admissible if it never overestimates the cost to reach the goal.

### Consistent Heuristics
*   A heuristic `h(n)` is consistent if, for every node `n` and every successor `n'` of `n` generated by action `a`, `h(n) <= c(n, a, n') + h(n')`.

# III. Knowledge Representation and Reasoning

## Propositional Logic

### Syntax
*   Symbols: `P`, `Q`, `R`, etc.
*   Connectives: `¬` (negation), `∧` (conjunction), `∨` (disjunction), `→` (implication), `↔` (biconditional).

### Semantics
*   Truth tables for each connective.

### Inference Rules
*   Modus Ponens: `α → β, α ⊢ β`.
*   And-Elimination: `α ∧ β ⊢ α`.
*   Resolution: `(α ∨ β), (¬β ∨ γ) ⊢ (α ∨ γ)`.

### Theorem Proving
*   Using inference rules to derive new sentences from a knowledge base.

## First-Order Logic

### Syntax
*   Constants: `A`, `B`, `C`, etc.
*   Variables: `x`, `y`, `z`, etc.
*   Predicates: `Likes`, `Knows`, `Friends`, etc.
*   Functions: `FatherOf`, `BestFriend`, etc.
*   Connectives: Same as Propositional Logic.
*   Quantifiers: `∀` (for all), `∃` (there exists).

### Semantics
*   Interpretation: Specifies the objects referred to by constant symbols, the relations referred to by predicate symbols, and the functions referred to by function symbols.

### Inference Rules
*   Universal Elimination: `∀x P(x) ⊢ P(A)`.
*   Existential Elimination: `∃x P(x) ⊢ P(C)`, where `C` is a new constant symbol.
*   Generalized Modus Ponens.

### Knowledge Engineering in First-Order Logic
*   Identify the task.
*   Assemble the relevant knowledge.
*   Decide on a vocabulary of predicates, functions, and constants.
*   Encode general knowledge about the domain.
*   Encode a description of the specific problem instance.
*   Pose queries to the inference procedure and get answers.
*   Debug the knowledge base.

# IV. Planning

## Situation Calculus

### Actions as Situation Functions
* `Result(s, a)`: The situation resulting from performing action `a` in situation `s`.

### Fluents
* Properties that change from one situation to the next.

### Precondition Axioms
* Specify when an action is possible: `Poss(action, situation)`.

### Effect Axioms
* Specify the effects of actions.

### Frame Problem
* How to specify what *doesn't* change when an action is performed.
* Solution: Successor-state axioms.

### Successor-State Axioms
* Combine effect axioms and frame axioms into a single axiom: `P(Result(a, s)) ↔ [action caused P] ∨ [P was true and action didn't cause ¬P]`.

## Planning Algorithms

### Forward Search
* Start with the initial state and search forward until a goal state is found.

### Backward Search
* Start with the goal state and search backward until the initial state is found.

### Partial-Order Planning (POP)
* A planning algorithm that can construct plans that have partially ordered steps.
* Allows for non-linear planning, where steps are not necessarily ordered in a strict sequence.

# V. Uncertainty

## Probability

### Basic Probability Notation
* `P(A)`: Probability of event `A`.
* `P(A|B)`: Conditional probability of `A` given `B`.

### Axioms of Probability
* `0 <= P(A) <= 1`.
* `P(True) = 1`.
* `P(False) = 0`.
* `P(A ∨ B) = P(A) + P(B) - P(A ∧ B)`.

### Bayes' Rule
* `P(A|B) = (P(B|A) * P(A)) / P(B)`.

## Bayesian Networks

### Structure
* A directed acyclic graph (DAG) where nodes represent random variables and edges represent probabilistic dependencies.

### Conditional Probability Tables (CPTs)
* Each node has a CPT that specifies the conditional probability of the node given its parents.

### Inference in Bayesian Networks
* Calculate the probability of a query variable given evidence variables.
* Variable Elimination.
* Approximate inference methods (e.g., Markov Chain Monte Carlo).

# VI. Machine Learning

## Supervised Learning

### Regression
* Predicting a continuous output variable.
* Linear Regression, Polynomial Regression.

### Classification
* Predicting a discrete output variable (class label).
* Logistic Regression, Support Vector Machines, Decision Trees.

### Evaluating Model Performance
* Accuracy, Precision, Recall, F1-score, Root Mean Squared Error (RMSE).

## Unsupervised Learning

### Clustering
* Grouping similar data points together.
* K-Means Clustering, Hierarchical Clustering.

### Dimensionality Reduction
* Reducing the number of variables while preserving important information.
* Principal Component Analysis (PCA).

## Reinforcement Learning

### Markov Decision Processes (MDPs)
* A mathematical framework for modeling decision-making in stochastic environments.
* States, Actions, Rewards, Transition probabilities.

### Value Iteration
* An algorithm for finding the optimal policy in an MDP by iteratively updating the value function.

### Q-Learning
* A model-free reinforcement learning algorithm that learns the optimal Q-function, which represents the expected cumulative reward for taking a specific action in a specific state.
