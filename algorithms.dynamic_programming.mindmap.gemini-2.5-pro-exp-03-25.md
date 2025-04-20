# Dynamic Programming #Algorithm #Optimization #Technique
Dynamic Programming (DP) is a powerful algorithmic technique used for solving complex problems by breaking them down into simpler, overlapping subproblems and solving each subproblem only once, storing their solutions.

## Fundamentals of Dynamic Programming #Basics #Theory #Introduction
Introduces the core idea and motivation behind Dynamic Programming.

### What is Dynamic Programming? #Definition #Concept
Explanation of DP as a method for optimizing recursive solutions.

### Why Use Dynamic Programming? #Motivation #Efficiency
Addresses problems with repeated computations in recursion, improving performance over naive approaches.

### History and Origins #Background #Bellman
Brief mention of Richard Bellman and the origins of the term.

## Key Concepts #CorePrinciples #Requirements
The essential properties that a problem must exhibit for DP to be applicable.

### Optimal Substructure #Property #Principle
A problem has optimal substructure if an optimal solution to the problem contains within it optimal solutions to subproblems.
Example: Shortest path problems.

### Overlapping Subproblems #Property #Efficiency
A problem has overlapping subproblems if the problem can be broken down into subproblems which are reused several times.
Example: Fibonacci sequence calculation.

## Approaches to Dynamic Programming #Methods #Implementation
The two primary ways to implement a Dynamic Programming solution.

### Top-Down Approach (Memoization) #Recursion #Caching
Solving the problem recursively, but storing the result of each subproblem in a cache (e.g., array, hash map) to avoid recomputation.
#### How Memoization Works #Process #LookupTable
#### Pros and Cons #Advantages #Disadvantages
Advantages: Intuitive mapping from recurrence relation, potentially computes fewer states. Disadvantages: Recursion overhead (stack depth).

### Bottom-Up Approach (Tabulation) #Iteration #TableFilling
Solving the problem iteratively, starting from the smallest subproblems and building up to the final solution, typically using an array or table.
#### How Tabulation Works #Process #IterationOrder
#### Pros and Cons #Advantages #Disadvantages
Advantages: No recursion overhead, often easier to analyze complexity. Disadvantages: Requires careful ordering of computations, might compute unnecessary states.

## Steps to Solve DP Problems #Methodology #ProblemSolving
A general framework for approaching and solving problems using Dynamic Programming.

### 1. Identify the Problem Structure #Analysis #Recognition
Determine if the problem exhibits optimal substructure and overlapping subproblems.

### 2. Define the State(s) #StateDefinition #SubproblemRepresentation
Clearly define what subproblem each state `dp[i]`, `dp[i][j]`, etc., represents.

### 3. Formulate the Recurrence Relation #Transition #Formula
Establish the relationship between the solution to a larger problem and the solutions to its smaller subproblems.

### 4. Identify the Base Cases #Initialization #StoppingCondition
Define the solutions for the smallest possible subproblems, which don't depend on other subproblems.

### 5. Choose an Implementation Approach #Memoization #Tabulation
Decide whether to use the top-down (memoization) or bottom-up (tabulation) approach.

### 6. Implement the Solution #Coding #Algorithm
Write the code based on the chosen approach, recurrence, and base cases.

### 7. Analyze Complexity #TimeComplexity #SpaceComplexity
Determine the time and space efficiency of the DP solution.

## Common DP Problem Patterns #Categories #Archetypes
Categorization of typical problems solved using Dynamic Programming.

### 1D DP #Linear #Sequence
Problems where the state depends on one parameter, often related to linear sequences or arrays.
#### Examples #Fibonacci #ClimbingStairs #CoinChange
#### State Definition Examples #dp_i

### 2D DP #Grid #Matrix #Strings
Problems where the state depends on two parameters, often involving grids, matrices, or pairs of sequences.
#### Examples #LongestCommonSubsequence #EditDistance #Knapsack #MatrixChainMultiplication
#### State Definition Examples #dp_ij

### DP on Intervals #Range #Subsegments
Problems where the state represents a solution for a contiguous subsegment or interval `[i, j]`.
#### Examples #MatrixChainMultiplication #OptimalBST #BurstBalloons

### DP on Trees #TreeAlgorithms #GraphTheory
Problems defined on tree structures, often involving calculating values based on subtrees.
#### Examples #MaxPathSum #IndependentSetOnTree

### DP with Bitmasking #Combinatorics #Subsets #Bitwise
Problems involving states that represent subsets or combinations, using bitmasks for efficient state representation.
#### Examples #TravelingSalespersonProblem #AssignmentProblem

### Digit DP #Counting #NumberTheory
Problems involving counting numbers in a range that satisfy certain properties based on their digits.
#### State Definition Structure #Index #Constraints #TightFlag

### DP on Profiles / Broken Profiles #Grid #Tiling #Connectivity
Advanced technique often used for tiling or path counting problems on grids, tracking the state of the boundary ("profile") between processed and unprocessed parts.

## Classic Dynamic Programming Problems #Examples #CaseStudies
Illustrative problems that are fundamental to understanding DP.

### Fibonacci Sequence #Introductory #Recursion
Calculating the nth Fibonacci number efficiently.

### Knapsack Problem #Optimization #Combinatorial
Selecting items with given weights and values to maximize total value within a weight capacity.
#### 0/1 Knapsack #Discrete #Selection
#### Unbounded Knapsack #RepetitionAllowed
#### Fractional Knapsack #GreedyComparison (Note: Usually solved greedily, but related)

### Longest Common Subsequence (LCS) #SequenceAlignment #Strings
Finding the longest subsequence common to two sequences.

### Longest Increasing Subsequence (LIS) #Sequence #Order
Finding the longest subsequence of a given sequence such that all elements are in increasing order.
#### O(n^2) DP Solution #StandardDP
#### O(n log n) Solution #Optimization #PatienceSorting

### Edit Distance (Levenshtein Distance) #StringSimilarity #Bioinformatics
Finding the minimum number of single-character edits (insertions, deletions, substitutions) required to change one word into another.

### Matrix Chain Multiplication #Optimization #Parenthesization
Finding the most efficient way to multiply a chain of matrices.

### Coin Change Problem #Combinatorics #Counting
Finding the number of ways or the minimum number of coins to make a given amount.
#### Minimum Coins #Optimization
#### Number of Ways #Counting

### Rod Cutting #Optimization #Decomposition
Cutting a rod of given length into pieces to maximize the total selling price.

### Word Break Problem #StringSegmentation #Dictionary
Determining if a string can be segmented into a space-separated sequence of dictionary words.

## Complexity Analysis #Performance #Efficiency
Evaluating the resource usage of DP algorithms.

### Time Complexity #Runtime #Operations
Typically related to the number of states multiplied by the time taken per state transition.
#### Formula #NumberOfStates * TransitionTime

### Space Complexity #Memory #Storage
Related to the storage required for the DP table or memoization cache.
#### Formula #NumberOfStates

## Advanced DP Techniques #Optimization #Variations
More sophisticated methods and optimizations for DP problems.

### DP with Convex Hull Trick #Optimization #LinearFunctions
Optimizing DP transitions of the form `dp[i] = min(dp[j] + b[j] * a[i])` using properties of convex hulls.

### Knuth's Optimization #Optimization #QuadrangleInequality
Optimizing DP recurrences of the form `dp[i][j] = min(dp[i][k] + dp[k][j]) + C[i][j]` where the cost function satisfies the quadrangle inequality.

### DP State Space Reduction #Optimization #MemorySaving
Techniques to reduce memory usage, like using only the previous row/column in tabulation.

### Meet-in-the-Middle #Optimization #DivideAndConquer
Splitting the problem into two halves, solving them independently, and combining the results (often used with bitmask DP).

## Dynamic Programming vs Other Techniques #Comparison #Relationships
Understanding how DP relates to and differs from other algorithmic paradigms.

### DP vs Greedy Algorithms #ChoiceProperty #LocalVsGlobal
Greedy makes locally optimal choices hoping for a global optimum; DP explores all choices to guarantee a global optimum.

### DP vs Divide and Conquer #Subproblems #Overlap
Both break problems down, but D&C solves independent subproblems, while DP handles overlapping subproblems.

### DP vs Recursion #Implementation #Efficiency
DP (especially memoization) is often seen as optimized recursion for problems with overlapping subproblems.

## Applications of Dynamic Programming #RealWorld #UseCases
Areas where Dynamic Programming is widely applied.

### Bioinformatics #SequenceAlignment #StructurePrediction
Used in DNA/protein sequence alignment (e.g., Smith-Waterman algorithm), RNA structure prediction.

### Computer Science #Algorithms #Theory
Shortest paths (Floyd-Warshall, Bellman-Ford), parsing (CYK algorithm), scheduling, resource allocation, graph algorithms.

### Operations Research #Optimization #DecisionMaking
Inventory management, resource allocation, scheduling problems.

### Economics and Finance #Modeling #Strategy
Optimal resource allocation over time, investment strategies.

### Game Theory #Strategy #OptimalPlay
Calculating optimal strategies in certain types of games.

## Learning Resources and Practice #Education #Improvement
Where to learn more and practice DP problems.

### Online Judges #Practice #Platforms
LeetCode, Codeforces, TopCoder, AtCoder, HackerRank, SPOJ.

### Textbooks #Books #References
"Introduction to Algorithms" (CLRS), "Algorithm Design Manual" (Skiena), "Competitive Programming" books.

### Online Courses #MOOCs #Tutorials
Coursera, edX, GeeksforGeeks, YouTube channels.
