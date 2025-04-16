# Structures and Algorithms #DataStructures #Algorithms #ComputerScience
This mind map outlines the fundamental concepts, techniques, and applications within the field of data structures and algorithms.

## Introduction and Fundamentals #Basics #CoreConcepts #Theory
Covers the basic definitions, motivations, and preliminary concepts required for understanding data structures and algorithms.

### What are Data Structures? #Definition #Organization #Storage
Organizing, managing, and storing data format that enables efficient access and modification.

### What are Algorithms? #Definition #Computation #ProblemSolving
A step-by-step procedure or formula for solving a problem or accomplishing a task.

### Abstract Data Types (ADTs) #Abstraction #Interface #Specification
Mathematical models for data types defined by their behavior (semantics) from the point of view of a user, specifically in terms of possible values, possible operations on data of this type, and the behavior of these operations.

### Importance of DSA #Efficiency #Performance #Optimization
Why studying data structures and algorithms is crucial for writing efficient and scalable software.

## Algorithm Analysis and Complexity #Performance #Analysis #BigO
Techniques for analyzing the efficiency of algorithms in terms of time and space resources.

### Asymptotic Notations #BigO #BigOmega #BigTheta #Notation
Mathematical notations used to describe the limiting behavior of a function when the argument tends towards a particular value or infinity.
*   **Big O (O):** Upper bound (worst-case)
*   **Big Omega (Ω):** Lower bound (best-case)
*   **Big Theta (Θ):** Tight bound (average-case)
*   **Little o (o):** Strict upper bound
*   **Little omega (ω):** Strict lower bound

### Time Complexity #Efficiency #ExecutionTime #Scalability
Quantifies the amount of time taken by an algorithm to run as a function of the length of the input.

### Space Complexity #MemoryUsage #ResourceManagement #AuxiliarySpace
Quantifies the amount of memory space required by an algorithm to run as a function of the length of the input.

### Best, Worst, and Average Case Analysis #Scenarios #Bounds #PerformanceProfile
Analyzing algorithm performance under different input distribution scenarios.

### Amortized Analysis #AggregateAnalysis #AccountingMethod #PotentialMethod
Analyzing the average performance of operations over a sequence of operations, even if some individual operations are expensive.

## Basic Linear Data Structures #Linear #Sequential #Collections

### Arrays #Static #ContiguousMemory #Indexing
Fixed-size structures storing elements of the same type in contiguous memory locations, accessed by index.
*   Dynamic Arrays (Vectors, ArrayLists) #Resizable #DynamicSize

### Linked Lists #Dynamic #Nodes #Pointers
Linear collection of data elements (nodes) where each node points to the next node.
*   Singly Linked Lists #Unidirectional #Traversal
*   Doubly Linked Lists #Bidirectional #Traversal
*   Circular Linked Lists #Loop #Traversal

### Stacks #LIFO #Push #Pop #AbstractDataType
Last-In, First-Out (LIFO) data structure.
*   Applications: Function calls, expression evaluation, backtracking.
*   Implementations: Using arrays or linked lists.

### Queues #FIFO #Enqueue #Dequeue #AbstractDataType
First-In, First-Out (FIFO) data structure.
*   Applications: Scheduling, BFS, buffering.
*   Implementations: Using arrays or linked lists.
*   Variations: Priority Queues, Double-Ended Queues (Deques), Circular Queues.

## Non-Linear Data Structures: Trees #Hierarchical #Nodes #Edges

### Tree Terminology #Root #Node #Edge #Leaf #Height #Depth
Basic concepts and vocabulary used when discussing trees.

### Binary Trees #TwoChildren #RecursiveStructure
Trees where each node has at most two children (left and right).

### Binary Search Trees (BSTs) #Ordered #Search #Insertion #Deletion
Binary trees where the left child's value is less than the parent's, and the right child's value is greater. Facilitates efficient searching.
*   Operations: Search, Insert, Delete, Find Min/Max.
*   Traversal Algorithms #InOrder #PreOrder #PostOrder #LevelOrder
    *   Depth-First Traversals: Inorder, Preorder, Postorder.
    *   Breadth-First Traversal: Level Order.

### Balanced Binary Search Trees #SelfBalancing #Efficiency #HeightBalanced
BSTs that automatically maintain a balanced height to guarantee O(log n) performance for operations.
*   AVL Trees #Rotation #BalanceFactor
*   Red-Black Trees #Coloring #Rotation #BalancingRules

### Heaps #PriorityQueue #CompleteTree #HeapProperty
Specialized tree-based data structure satisfying the heap property (min-heap or max-heap). Often implemented as an array representing a complete binary tree.
*   Binary Heaps #MinHeap #MaxHeap
*   Heap Operations: Insert, Extract-Min/Max, Heapify.
*   Heap Sort Algorithm #Sorting #InPlace

### Other Tree Variations #SpecializedTrees #Applications
*   B-Trees / B+ Trees #Databases #FileSystems #Indexing #DiskBased
*   Tries (Prefix Trees) #Strings #PrefixSearch #Autocomplete
*   Segment Trees / Fenwick Trees (Binary Indexed Trees) #RangeQueries #RangeUpdates

## Non-Linear Data Structures: Graphs #Networks #Vertices #Edges #Relationships

### Graph Terminology #Vertex #Edge #Directed #Undirected #Weighted #Cycle
Fundamental concepts like vertices, edges, paths, cycles, degrees, weighted/unweighted, directed/undirected.

### Graph Representations #Storage #AdjacencyMatrix #AdjacencyList
Methods for storing graph data.
*   Adjacency Matrix #Matrix #SpaceComplexity
*   Adjacency List #List #SpaceEfficiency

### Graph Traversal Algorithms #Exploration #Connectivity #Search
Algorithms for visiting all vertices in a graph.
*   Breadth-First Search (BFS) #Queue #LevelOrder #ShortestPathUnweighted
*   Depth-First Search (DFS) #Stack #Recursion #TopologicalSort #CycleDetection

### Minimum Spanning Trees (MST) #Connectivity #Optimization #WeightedUndirected
Finding a subset of edges that connects all vertices with the minimum possible total edge weight in a weighted, undirected graph.
*   Prim's Algorithm #Greedy #VertexBased
*   Kruskal's Algorithm #Greedy #EdgeBased #DisjointSet

### Shortest Path Algorithms #Routing #Optimization #WeightedGraphs
Finding the path with the minimum weight/cost between vertices.
*   Dijkstra's Algorithm #SingleSource #NonNegativeWeights #Greedy
*   Bellman-Ford Algorithm #SingleSource #NegativeWeights #CycleDetection
*   Floyd-Warshall Algorithm #AllPairs #DynamicProgramming

### Topological Sort #DirectedAcyclicGraph #DAG #Ordering #Dependencies
Linear ordering of vertices in a Directed Acyclic Graph (DAG) such that for every directed edge (u, v), vertex u comes before vertex v in the ordering. Uses DFS or Kahn's algorithm (BFS-based).

## Hashing #HashTable #Mapping #Indexing #KeyCollision

### Hash Functions #Mapping #Distribution #Uniformity
Functions that map keys to indices in a hash table. Desirable properties include efficiency and uniform distribution.

### Hash Tables #Dictionary #AssociativeArray #KeyValue
Data structure that implements an associative array abstract data type, a structure that can map keys to values. Uses a hash function to compute an index into an array of buckets or slots.

### Collision Resolution Techniques #HandlingCollisions #Efficiency
Strategies for handling cases where different keys map to the same index.
*   Separate Chaining (Open Hashing) #LinkedLists #Buckets
*   Open Addressing (Closed Hashing) #Probing #LinearProbing #QuadraticProbing #DoubleHashing

### Applications of Hashing #Caching #Indexing #Cryptography #DuplicateDetection

## Sorting Algorithms #Ordering #Arrangement #Comparison

### Comparison-Based Sorting Algorithms #ElementComparison #LowerBound
Algorithms that sort by comparing elements. Have a theoretical lower bound of Ω(n log n).
*   Bubble Sort #Simple #Inefficient #O(n^2)
*   Selection Sort #Simple #InPlace #O(n^2)
*   Insertion Sort #Simple #EfficientForSmallData #Adaptive #O(n^2)
*   Merge Sort #DivideAndConquer #Stable #O(nlogn) #ExternalSorting
*   Quick Sort #DivideAndConquer #InPlace (usually) #AverageCaseO(nlogn) #WorstCaseO(n^2) #PivotSelection
*   Heap Sort #Heap #InPlace #O(nlogn) #NotStable

### Non-Comparison-Based Sorting Algorithms #LinearTime #Distribution #IntegerSorting
Algorithms that sort without direct element comparisons, often exploiting properties of the data. Can achieve O(n) time complexity under certain conditions.
*   Counting Sort #IntegerKeys #RangeLimited #Stable #O(n+k)
*   Radix Sort #Digits #Stable #LSD #MSD #O(d*(n+k))
*   Bucket Sort #Distribution #Uniformity #AverageCaseLinear #O(n+k)

### Sorting Algorithm Properties #Stability #InPlace #TimeComplexity #SpaceComplexity
Characteristics used to compare and choose sorting algorithms.

## Searching Algorithms #Finding #Locating #Querying

### Linear Search #SequentialSearch #Unordered #O(n)
Simple search that checks every element sequentially. Works on unsorted data.

### Binary Search #SortedData #DivideAndConquer #Logarithmic #O(logn)
Efficient search algorithm for sorted arrays/lists. Repeatedly divides the search interval in half.

### Interpolation Search #SortedData #UniformDistribution #ImprovementOverBinarySearch #AverageO(loglogn)
An improvement over binary search for uniformly distributed sorted data. Estimates the position of the key.

### Searching in Specialized Structures #BST #HashTable #Trie
Utilizing data structure properties for efficient searching (e.g., O(log n) in balanced BSTs, O(1) average in Hash Tables).

## Algorithm Design Paradigms #Strategies #Techniques #ProblemSolvingApproaches
General approaches or techniques for designing algorithms.

### Brute Force #ExhaustiveSearch #Simple #OftenInefficient
Trying all possible solutions to find the correct one. Simple but often computationally expensive.

### Divide and Conquer #Subproblems #Combine #Recursion
Breaking down a problem into smaller, independent subproblems, solving them recursively, and combining their solutions. (e.g., Merge Sort, Quick Sort, Binary Search).

### Greedy Algorithms #LocalOptimum #Choice #HopeForGlobalOptimum
Making the locally optimal choice at each step with the hope of finding a global optimum. (e.g., Dijkstra's, Prim's, Kruskal's, Huffman Coding).

### Dynamic Programming #OverlappingSubproblems #OptimalSubstructure #Memoization #Tabulation
Solving problems by breaking them down into simpler overlapping subproblems, solving each subproblem just once, and storing their solutions. (e.g., Fibonacci, Knapsack, Longest Common Subsequence, Floyd-Warshall).

### Backtracking #Recursive #Exploration #Pruning #StateSpaceSearch
Incrementally building candidates for the solutions and abandoning a candidate ("backtracking") as soon as it determines that the candidate cannot possibly be completed to a valid solution. (e.g., N-Queens, Sudoku Solver, Maze Solving).

### Branch and Bound #Optimization #StateSpaceSearch #BoundingFunction
Systematic search technique for optimization problems, similar to backtracking but uses bounds to prune parts of the search space that cannot lead to an optimal solution.

### Randomized Algorithms #Probability #Randomness #Efficiency
Algorithms that use randomness as part of their logic. (e.g., Randomized Quick Sort, Monte Carlo methods, Las Vegas algorithms).

## String Algorithms #TextProcessing #PatternMatching #SequenceAnalysis

### String Matching Algorithms #SearchingPatterns #TextSearch
Finding occurrences of a specific pattern string within a larger text string.
*   Naive String Matching #BruteForce
*   Knuth-Morris-Pratt (KMP) Algorithm #PrefixFunction #Optimization
*   Rabin-Karp Algorithm #Hashing #RollingHash
*   Boyer-Moore Algorithm #Heuristics #BadCharacter #GoodSuffix

### Suffix Structures #Indexing #StringQueries #Bioinformatics
Data structures built on suffixes of a string for efficient querying.
*   Suffix Trees #Tree #LinearTimeConstruction (Ukkonen's)
*   Suffix Arrays #SortedSuffixes #LCPArray

### Text Compression #Encoding #DataReduction #Efficiency
Algorithms to reduce the size of text data.
*   Huffman Coding #Greedy #VariableLengthCodes #PrefixCodes
*   Lempel-Ziv (LZ77, LZ78, LZW) #DictionaryBased

## Advanced Data Structures #Specialized #Performance #ComplexProblems

### Skip Lists #Probabilistic #LinkedList #LogarithmicSearch
A probabilistic data structure based on parallel linked lists with efficient search, insertion, and deletion (average O(log n)).

### Bloom Filters #Probabilistic #SetMembership #SpaceEfficient #FalsePositives
Space-efficient probabilistic data structure used to test whether an element is a member of a set. Allows false positives but no false negatives.

### Disjoint Set Union (DSU) / Union-Find #Partition #Connectivity #EquivalenceClasses
Data structure that keeps track of a set of elements partitioned into a number of disjoint (non-overlapping) subsets. Supports Union (merge sets) and Find (determine representative) operations efficiently. Often used with path compression and union by rank/size optimizations.

### Segment Trees #RangeQueries #RangeUpdates #TreeStructure
Tree data structure for storing information about intervals or segments. Allows querying which of the stored segments contain a given point or interval efficiently (often O(log n)).

### Fenwick Trees (Binary Indexed Trees - BIT) #PrefixSums #RangeUpdates #Efficiency
Data structure that can efficiently update elements and calculate prefix sums in a table of numbers. Offers O(log n) time for both operations.

## Advanced Algorithm Topics #Complexity #Approximation #Parallelism

### NP-Completeness #ComputationalComplexity #PvsNP #Reductions #Intractability
Theory dealing with computationally hard problems for which no known efficient algorithm exists. Understanding P, NP, NP-hard, and NP-complete classes.

### Approximation Algorithms #NP HardProblems #NearOptimal #PerformanceGuarantee
Algorithms used for NP-hard optimization problems that find near-optimal solutions within a guaranteed factor of the true optimum, often in polynomial time.

### Randomized Algorithms #Probability #LasVegas #MonteCarlo
Algorithms incorporating randomness to achieve good performance on average or with high probability.

### Network Flow #Graphs #Capacity #Optimization #MaxFlowMinCut
Algorithms for modeling and solving problems involving flow through networks (graphs with capacities). (e.g., Ford-Fulkerson, Edmonds-Karp).

### Computational Geometry #GeometricProblems #Algorithms #SpatialData
Algorithms for solving problems stated in terms of geometry.
*   Convex Hull #Points #Enclosure
*   Line Segment Intersection #Lines #Detection
*   Closest Pair of Points #Distance #Optimization

### Parallel and Distributed Algorithms #Concurrency #Multicore #Scalability
Algorithms designed to run on multiple processors simultaneously or across multiple machines.

## Practical Considerations and Applications #RealWorld #Implementation #Tradeoffs

### Language-Specific Libraries #STL #CollectionsFramework #StandardLibraries
How data structures and algorithms are implemented in standard libraries of programming languages (e.g., C++ STL, Java Collections, Python lists/dicts).

### Choosing the Right Structure/Algorithm #Tradeoffs #Performance #Constraints #ProblemAnalysis
Factors to consider when selecting the most appropriate data structure or algorithm for a specific problem, considering time/space complexity, input size, and specific operation frequencies.

### Coding Best Practices #Readability #Maintainability #Efficiency
Writing clean, efficient, and maintainable code when implementing data structures and algorithms.

### Common Applications #SearchEngines #Databases #OperatingSystems #Graphics #Bioinformatics #MachineLearning
Examples of how DSA are used in various domains of computer science and software engineering.
