# Introduction to Algorithms #Overview #ComputerScience #Fundamentals
Study of procedures or step-by-step instructions for solving computational problems.

## What are Algorithms? #Definition #Basics #Concepts
Defining algorithms and their fundamental properties.

### Definition of an Algorithm #CoreConcept #Terminology
A finite sequence of well-defined, computer-implementable instructions to solve a class of problems or perform a computation.

### Characteristics of Algorithms #Properties #Criteria
Input, Output, Definiteness, Finiteness, Effectiveness.

### Role in Computing #Importance #Application
Foundation of computer science, problem-solving, software development, data analysis, etc.

### Representing Algorithms #Notation #Modeling
How algorithms are expressed and communicated.
#### Pseudocode #StructuredEnglish #DesignTool
A plain language description of the steps in an algorithm.
#### Flowcharts #Visual #Diagram
Diagrammatic representation of an algorithm's workflow.
#### Programming Languages #Implementation #Code
Actual implementation using languages like Python, Java, C++, etc.

## Algorithm Analysis #Performance #Efficiency #Complexity
Evaluating the resources (time and space) required by an algorithm.

### Importance of Analysis #Optimization #Comparison
Why we need to analyze algorithms (predict performance, compare solutions).

### Time Complexity #ExecutionTime #Efficiency
Measuring the amount of time an algorithm takes to run as a function of the input size.
#### Asymptotic Notations #BigO #BigOmega #BigTheta
Mathematical notations to describe the limiting behavior of a function.
##### Big O Notation (O) #UpperBound #WorstCase
Describes the upper bound on the growth rate.
##### Big Omega Notation (Ω) #LowerBound #BestCase
Describes the lower bound on the growth rate.
##### Big Theta Notation (Θ) #TightBound #AverageCase
Describes both the upper and lower bounds (tight bound).
#### Analyzing Loops #Iteration #CostModel
Techniques for determining complexity based on loop structures.
#### Analyzing Recursive Algorithms #Recursion #RecurrenceRelations
Using recurrence relations and methods like the Master Theorem.

### Space Complexity #MemoryUsage #Storage
Measuring the amount of memory an algorithm uses as a function of the input size.
#### Auxiliary Space #ExtraSpace #Variables
Space used by the algorithm beyond the input data.
#### Input Space #DataStorage #Parameters
Space required to store the input data itself.

### Best, Worst, and Average Case Analysis #Scenarios #Behavior
Analyzing performance under different input conditions.

### Amortized Analysis #Aggregate #Sequence
Analyzing the average performance of operations over a sequence, smoothing out occasional expensive operations.

## Basic Data Structures #Organization #Storage #Foundation
Fundamental ways to organize and store data for efficient access and modification.

### Arrays #Contiguous #Indexed
Fixed-size collections of elements accessible by index.
#### Static vs Dynamic Arrays #FixedSize #Resizable

### Linked Lists #Nodes #Pointers
Linear collections where elements are linked using pointers.
#### Singly Linked Lists #ForwardTraversal
Nodes point to the next element only.
#### Doubly Linked Lists #BidirectionalTraversal
Nodes point to both the next and previous elements.
#### Circular Linked Lists #Loop #Traversal

### Stacks #LIFO #LastInFirstOut
Data structure following the Last-In, First-Out principle.
#### Operations #Push #Pop #Peek
#### Applications #FunctionCalls #ExpressionEvaluation

### Queues #FIFO #FirstInFirstOut
Data structure following the First-In, First-Out principle.
#### Operations #Enqueue #Dequeue #Peek
#### Applications #Scheduling #BFS

### Priority Queues #Ordered #HeapBased
Queues where elements have priorities determining their service order. Often implemented using heaps.

## Advanced Data Structures #Efficiency #Specialized #Complex
More sophisticated structures for specific performance characteristics or problem domains.

### Trees #Hierarchical #NonLinear
Data structures representing hierarchical relationships.
#### Terminology #Root #Node #Edge #Leaf #Depth #Height
#### Binary Trees #TwoChildren #Traversal
Trees where each node has at most two children.
##### Tree Traversal Algorithms #InOrder #PreOrder #PostOrder #LevelOrder
#### Binary Search Trees (BSTs) #Ordered #Searchable
Binary trees maintaining a specific ordering property for efficient searching.
#### Self-Balancing Trees #HeightBalanced #Efficiency
BSTs that automatically maintain a balanced height.
##### AVL Trees #Rotation #StrictBalance
##### Red-Black Trees #Coloring #Balanced

#### B-Trees and B+ Trees #DiskBased #Databases #FileSystems
Multi-way trees optimized for disk-based storage.

### Heaps #TreeBased #PriorityQueue
Specialized tree-based structure satisfying the heap property (min-heap or max-heap).
#### Min-Heap #SmallestRoot
#### Max-Heap #LargestRoot
#### Heapify #BuildHeap #Operations

### Hash Tables #Hashing #KeyValue #Dictionary
Data structures mapping keys to values using a hash function for fast lookups.
#### Hash Functions #Mapping #Distribution
Functions converting keys into array indices.
#### Collision Resolution Strategies #Chaining #OpenAddressing
Methods to handle multiple keys hashing to the same index.
##### Separate Chaining #LinkedLists #Buckets
##### Open Addressing #Probing #Linear #Quadratic #DoubleHashing

### Graphs #Networks #Relationships #VerticesEdges
Data structures representing connections (edges) between entities (vertices).
#### Terminology #Vertex #Edge #Directed #Undirected #Weighted
#### Graph Representations #Storage #Implementation
##### Adjacency Matrix #Matrix #DenseGraphs
##### Adjacency List #List #SparseGraphs

### Disjoint Set Union (DSU) / Union-Find #Partitions #Connectivity
Data structure tracking elements partitioned into disjoint sets. Supports Union and Find operations efficiently.
#### Optimization Techniques #PathCompression #UnionByRank

## Algorithm Design Paradigms #Techniques #Strategies #ProblemSolving
General approaches or methodologies for designing algorithms.

### Divide and Conquer #Subproblems #Combine
Break down a problem into smaller subproblems, solve them recursively, and combine solutions.
#### Examples #MergeSort #QuickSort #BinarySearch

### Greedy Algorithms #LocalOptimum #Choice
Make the locally optimal choice at each step hoping to find a global optimum.
#### Examples #ActivitySelection #HuffmanCoding #Dijkstra #Prim #Kruskal

### Dynamic Programming (DP) #OverlappingSubproblems #OptimalSubstructure
Solve problems by breaking them down into simpler overlapping subproblems and storing results to avoid recomputation.
#### Memoization (Top-Down) #Caching #Recursion
#### Tabulation (Bottom-Up) #Iteration #Table
#### Examples #Fibonacci #KnapsackProblem #LongestCommonSubsequence

### Backtracking #Exploration #StateSpaceSearch #Pruning
Systematically search for solutions by exploring possibilities and abandoning paths that don't lead to a solution.
#### Examples #NQueensProblem #SudokuSolver #HamiltonianCycle

### Branch and Bound #Optimization #Search #Bounding
Search technique for optimization problems, similar to backtracking but uses bounds to prune the search space more effectively.

### Randomized Algorithms #Probability #Chance
Algorithms that use randomness as part of their logic.
#### Examples #RandomizedQuickSort #MonteCarlo #LasVegas

## Sorting Algorithms #Ordering #Comparison #Arrangement
Algorithms to arrange elements in a specific order (e.g., ascending or descending).

### Comparison Sorts #KeyComparison #LowerBound
Algorithms that rely on comparing elements. O(n log n) lower bound.
#### Bubble Sort #Simple #Inefficient O(n^2)
#### Selection Sort #Simple #Inefficient O(n^2)
#### Insertion Sort #Simple #EfficientForSmallN O(n^2)
#### Merge Sort #DivideAndConquer #Stable O(n log n)
#### Quick Sort #DivideAndConquer #InPlace (usually) #AverageCase O(n log n)
#### Heap Sort #HeapDataStructure #InPlace O(n log n)

### Non-Comparison Sorts #LinearTime #Distribution
Algorithms that sort without direct element comparisons, often in linear time.
#### Counting Sort #IntegerKeys #Range O(n+k)
#### Radix Sort #Digits #Stable O(d*(n+b))
#### Bucket Sort #Distribution #Uniform O(n+k)

### Stability in Sorting #RelativeOrder #EqualElements
Property where elements with equal keys maintain their relative order after sorting.

## Searching Algorithms #Finding #Lookup #Retrieval
Algorithms to find specific items within a collection of items.

### Linear Search #Sequential #Unsorted O(n)
Checking each element sequentially.

### Binary Search #Sorted #DivideAndConquer O(log n)
Efficiently finds an item in a sorted array by repeatedly dividing the search interval.

### Hash-Based Search #HashTable #AverageCase O(1)
Using hash tables for potentially constant-time average lookup.

### Tree-Based Search #BST #BalancedTrees O(log n)
Searching in Binary Search Trees or Balanced Trees.

### Interpolation Search #UniformDistribution #Sorted O(log log n) average
Improvement over binary search for uniformly distributed data.

## Graph Algorithms #Networks #Traversal #Paths #Connectivity
Algorithms designed to solve problems on graph data structures.

### Graph Traversal #VisitingNodes #Exploration
Systematically visiting all vertices in a graph.
#### Breadth-First Search (BFS) #LevelOrder #Queue #ShortestPathUnweighted
Explores neighbor nodes first before moving to the next level neighbors.
#### Depth-First Search (DFS) #Stack #Recursion #Connectivity #Cycles
Explores as far as possible along each branch before backtracking.

### Shortest Path Algorithms #MinimumCost #Distance
Finding the path with the minimum weight/cost between vertices.
#### Dijkstra's Algorithm #SingleSource #NonNegativeWeights #Greedy
#### Bellman-Ford Algorithm #SingleSource #NegativeWeights #CycleDetection
#### Floyd-Warshall Algorithm #AllPairs #DynamicProgramming

### Minimum Spanning Trees (MST) #Connectivity #MinimumWeight
Finding a subset of edges that connects all vertices with the minimum total edge weight.
#### Prim's Algorithm #Greedy #VertexBased
#### Kruskal's Algorithm #Greedy #EdgeBased #UnionFind

### Topological Sort #DirectedAcyclicGraph #DAG #Ordering
Linear ordering of vertices in a DAG such that for every directed edge (u, v), vertex u comes before v.

### Network Flow #FlowNetworks #Capacity #MaxFlow
Algorithms to compute the maximum flow through a flow network.
#### Max-Flow Min-Cut Theorem #FordFulkerson #EdmondsKarp

## String Processing Algorithms #Text #Matching #Sequences
Algorithms specifically designed for operations on strings or sequences of characters.

### String Matching #PatternSearching #FindingSubstrings
Finding occurrences of a pattern string within a larger text string.
#### Naive String Matching #BruteForce
#### Rabin-Karp Algorithm #Hashing #RollingHash
#### Knuth-Morris-Pratt (KMP) Algorithm #PrefixFunction #LPSArray
#### Boyer-Moore Algorithm #BadCharacter #GoodSuffix

### Longest Common Subsequence (LCS) #DynamicProgramming #Similarity

### Edit Distance #LevenshteinDistance #DynamicProgramming #StringSimilarity

### Suffix Trees and Suffix Arrays #Indexing #FastSearch #Bioinformatics

## Computational Complexity Theory #Theory #Limits #Classification
Theoretical study of the resources required to solve computational problems; classifying problems by difficulty.

### Complexity Classes #P #NP #NPComplete #NPHard
Categories of problems based on their resource requirements (time, space).
#### P (Polynomial Time) #Tractable #Efficient
Problems solvable in polynomial time by a deterministic Turing machine.
#### NP (Nondeterministic Polynomial Time) #Verifiable #SearchProblems
Problems where a proposed solution can be verified in polynomial time.
#### NP-Complete #HardestInNP #Reduction
The hardest problems in NP; if one can be solved in polynomial time, all can.
#### NP-Hard #AtLeastAsHardAsNPComplete
Problems that are at least as hard as NP-Complete problems (may not be in NP).

### Reductions #Transformation #ProblemEquivalence
Transforming one problem into another to understand their relative difficulty.

### The Halting Problem #Undecidability #Turing
The problem of determining whether an arbitrary program will eventually stop or run forever; proven undecidable.

## Advanced Algorithm Topics #BeyondBasics #Specialization #Frontiers
More specialized or advanced areas within the study of algorithms.

### Approximation Algorithms #NPComplete #Heuristics #NearOptimal
Algorithms that find approximate solutions to optimization problems (often NP-hard) within a guaranteed factor of the optimal solution.

### Randomized Algorithms #Probability #Efficiency #Simplicity
Algorithms incorporating randomness to achieve good performance on average or with high probability.
#### Monte Carlo Algorithms #Approximate #AlwaysFast
#### Las Vegas Algorithms #Exact #VariableTime

### Parallel Algorithms #Concurrency #Multicore #Distributed
Algorithms designed to run on multiple processors simultaneously.

### Online Algorithms #StreamingData #SequentialDecisions
Algorithms that process input piece-by-piece without knowledge of future input.

### Geometric Algorithms #ComputationalGeometry #Shapes #SpatialData
Algorithms for problems involving geometric objects (points, lines, polygons).

## Practical Implementation and Considerations #Coding #RealWorld #Application
Aspects related to implementing and using algorithms effectively in practice.

### Choosing the Right Algorithm #Tradeoffs #Context
Selecting the best algorithm based on problem constraints, input size, data characteristics, and resource limits.

### Data Structure Selection #PerformanceImpact #Suitability
Choosing appropriate data structures that complement the algorithm.

### Implementation Details #LanguageChoice #CodingStyle #Readability
Writing clean, efficient, and maintainable code.

### Testing and Debugging #Correctness #Verification
Ensuring the algorithm implementation is correct and robust.

### Optimization Techniques #PerformanceTuning #Profiling
Improving the performance of algorithm implementations (often involves lower-level details or using better algorithms/structures).
