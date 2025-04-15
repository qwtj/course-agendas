# Algorithms and Data Structures #Overview #ComputerScience
This mind map outlines the core concepts, structures, algorithms, analysis techniques, and applications within the field of Algorithms and Data Structures, fundamental to computer science and software development.

## Introduction and Fundamentals #Basics #Theory
Provides foundational knowledge and context for the study of algorithms and data structures.
### What is an Algorithm? #Definition #Concept
A step-by-step procedure or set of rules for solving a specific problem or performing a computation. [3, 1]
### What is a Data Structure? #Definition #Concept
A specific way of organizing, storing, and managing data in a computer so that it can be accessed and modified efficiently. [3, 1, 11]
### Importance of Algorithms and Data Structures #Relevance #Efficiency
Essential for efficient problem-solving, optimizing software performance (time/memory), and managing complex data. [3, 22, 23] Needed for coding interviews. [9, 10, 13]
### Abstract Data Types (ADTs) #Abstraction #Interface
Mathematical models defining data types by their behavior (operations) rather than their implementation. Examples include List, Stack, Queue, Set, Map. [11, 25]
### Programming Paradigms Overview #ProgrammingModels #Approaches
Brief mention of procedural, object-oriented, functional paradigms and their relation to implementing algorithms/data structures. [15, 24]

## Algorithm Analysis #Complexity #Performance #Theory
Techniques for evaluating the efficiency and resource usage of algorithms. [25]
### Time Complexity #Efficiency #ExecutionTime
Measuring the amount of time an algorithm takes to run as a function of the input size. [3, 23]
#### Asymptotic Notations #BigO #Theta #Omega
Mathematical notations (Big O, Big Omega, Big Theta) to describe the limiting behavior of a function when the argument tends towards a particular value or infinity. [10]
#### Worst-case, Average-case, Best-case Analysis #Scenarios #Bounds
Analyzing performance under different input conditions. [20]
#### Amortized Analysis #AverageCost #Sequences
Analyzing the average cost of operations over a sequence, even if some individual operations are expensive. [16]
### Space Complexity #MemoryUsage #Resources
Measuring the amount of memory space an algorithm requires as a function of the input size. [3, 23]
### Algorithm Correctness #Proof #Validation
Techniques for proving that an algorithm produces the correct output for all valid inputs (e.g., loop invariants). [20]
### Recurrence Relations #RecursiveAlgorithms #Analysis
Equations or inequalities that describe a function in terms of its value on smaller inputs, often used for analyzing recursive algorithms (e.g., Master Theorem). [20]
### Empirical Analysis (Benchmarking) #Measurement #Profiling
Measuring actual runtime and resource usage by executing the algorithm on specific inputs and hardware. [23]

## Basic Data Structures #Fundamentals #Collections
Core structures used to organize data. [17, 18, 19]
### Primitive Types #BuiltIn #BaseTypes
Basic data types provided by programming languages (int, float, char, bool). [18]
### Linear Data Structures #Sequential #Ordered
Data elements arranged in a sequential manner. [11, 18]
#### Arrays #Contiguous #Indexed
Fixed-size or dynamic collections of elements stored contiguously in memory, accessible by index. Constant time access. [11, 17, 19]
##### Static Arrays #FixedSize
Size determined at compile time. [9]
##### Dynamic Arrays (Vectors, Lists) #Resizable
Can grow or shrink in size during runtime. [9, 21]
##### Multi-dimensional Arrays #Matrices #Tables
Arrays with more than one index (e.g., 2D arrays for matrices). [2]
#### Linked Lists #Nodes #Pointers
Collections of nodes where each node contains data and a reference (pointer) to the next node(s). [11, 17, 19]
##### Singly Linked Lists #ForwardPointer
Each node points only to the next node. [1, 21]
##### Doubly Linked Lists #BidirectionalPointers
Each node points to both the next and previous nodes. [11, 21]
##### Circular Linked Lists #Loop #Ring
The last node points back to the first node.
#### Stacks #LIFO #PushPop
Last-In, First-Out (LIFO) structure. Operations: Push (add), Pop (remove), Peek/Top. [17, 19, 21]
#### Queues #FIFO #EnqueueDequeue
First-In, First-Out (FIFO) structure. Operations: Enqueue (add), Dequeue (remove), Peek/Front. [17, 19, 21]
##### Priority Queues #Ordered #HeapBased
Elements have associated priorities; highest/lowest priority element is dequeued first. Often implemented using Heaps. [9, 21]
##### Deques (Double-Ended Queues) #VersatileQueue
Elements can be added or removed from either end (front or back). [21]
### Hash Tables (Hash Maps, Dictionaries) #KeyValue #Hashing
Structures that map keys to values using a hash function for fast average-time access (insertion, deletion, search). Handle collisions. [3, 17, 19, 21]
#### Hash Functions #Mapping #CollisionAvoidance
Functions that compute an index from a key.
#### Collision Resolution Strategies #HandlingClashes #OpenAddressing #Chaining
Methods like separate chaining and open addressing (linear probing, quadratic probing, double hashing) to handle multiple keys mapping to the same index.

## Non-Linear Data Structures #Hierarchical #Networked
Structures where data elements are not arranged sequentially. [11]
### Trees #Hierarchy #NodesEdges
Hierarchical structures with a root node and subtrees of children nodes. [11, 17, 19]
#### Basic Tree Concepts #Root #Parent #Child #Leaf #Depth #Height
Terminology used to describe tree properties. [2]
#### Binary Trees (BT) #TwoChildren #Recursion
Trees where each node has at most two children (left and right). [9, 17, 19]
#### Binary Search Trees (BST) #OrderedTree #Searchable
Binary trees where the left child's key is less than the parent's, and the right child's key is greater. Allows efficient searching, insertion, deletion (average O(log n)). [9, 17, 19, 21]
#### Tree Traversal Algorithms #VisitingNodes #Order
Methods for visiting all nodes in a tree (Pre-order, In-order, Post-order, Level-order/BFS). [10, 19]
#### Balanced Binary Search Trees #SelfBalancing #Efficiency
BSTs that automatically maintain a balanced height to guarantee O(log n) performance for operations. [19, 21]
##### AVL Trees #HeightBalanced #Rotation
Self-balancing BST using height differences. [17, 21]
##### Red-Black Trees #ColorBalanced #Rotation
Self-balancing BST using node coloring (red/black). [17, 21]
##### B-Trees / B+ Trees #DiskBased #Databases
Multi-way search trees optimized for disk-based storage, used in databases and file systems. [17]
##### Splay Trees #SelfAdjusting #CacheFriendly
Self-balancing BST that moves frequently accessed elements closer to the root. [17]
#### Heaps #PriorityQueue #TreeBased
Tree-based structure satisfying the heap property (e.g., Min-Heap, Max-Heap). Used for Priority Queues and Heap Sort. [2, 9, 17, 19, 21]
##### Binary Heaps #CompleteTree #ArrayImplementation
Common implementation using arrays.
#### Tries (Prefix Trees) #Strings #Search
Tree structure used for efficient retrieval of keys in a dataset of strings. [2, 19, 21]
### Graphs #Networks #VerticesEdges
Collections of nodes (vertices) connected by links (edges). Can be directed or undirected, weighted or unweighted. [2, 11, 17, 19]
#### Graph Representations #Storage #AdjacencyMatrix #AdjacencyList
Ways to store graphs (Adjacency Matrix, Adjacency List). [2, 21]
#### Graph Traversal Algorithms #ExploringGraphs #Connectivity
Methods for visiting all vertices (Depth-First Search - DFS, Breadth-First Search - BFS). [3, 10, 19, 21]
#### Minimum Spanning Trees (MST) #Connectivity #Optimization
Finding a subset of edges that connects all vertices with minimum total edge weight (e.g., Prim's, Kruskal's algorithms). [14, 15, 19, 21]
#### Shortest Path Algorithms #Routing #Optimization
Finding the path with the minimum weight/cost between vertices (e.g., Dijkstra's, Bellman-Ford, Floyd-Warshall). [8, 14, 19]

## Algorithm Design Paradigms #Strategy #ProblemSolving
General approaches or strategies for designing algorithms. [4, 14, 15]
### Brute Force #ExhaustiveSearch #Simple
Trying all possible solutions to find the correct one. Often simple but inefficient. [7, 14]
### Greedy Algorithms #LocalOptimum #Heuristic
Making the locally optimal choice at each step hoping to find a global optimum. Works for specific problems (e.g., MST, Dijkstra, Huffman Coding). [2, 4, 7, 8, 13, 14, 15]
### Divide and Conquer #Subproblems #Recursion
Breaking a problem into smaller, independent subproblems, solving them recursively, and combining solutions. [4, 7, 8, 14, 15, 19]
#### Examples #MergeSort #QuickSort #BinarySearch
Classic algorithms using this paradigm. [4, 8, 15]
### Dynamic Programming (DP) #OverlappingSubproblems #Memoization #Tabulation
Solving problems by breaking them into overlapping subproblems, solving each subproblem once, and storing results to avoid recomputation. [2, 4, 8, 9, 13, 14, 15]
#### Key Concepts #OptimalSubstructure #Memoization #Tabulation
Core ideas behind DP. [8]
#### Examples #Fibonacci #Knapsack #LCS
Common problems solved with DP. [8, 14, 19]
### Backtracking #SystematicSearch #Pruning
Exploring all potential solutions incrementally, abandoning paths ("backtracking") that cannot lead to a valid solution. Used for constraint satisfaction problems. [4, 9, 13, 14, 15]
#### Examples #NQueens #SudokuSolver #MazeSolving
Problems often solved using backtracking. [4, 15]
### Branch and Bound #OptimizationSearch #Bounding
Systematic search for optimization problems, using bounds to prune the search space.
### Randomized Algorithms #Probability #Efficiency
Algorithms that use randomness as part of their logic (e.g., Randomized QuickSort, Monte Carlo, Las Vegas algorithms). [6]
### Reduction (Transform and Conquer) #ProblemTransformation
Solving a problem by transforming it into an instance of another known problem. [7]
### Decrease and Conquer #SingleSubproblem #Recursion
Reducing a problem to a single smaller instance of the same problem. [14]
#### Examples #BinarySearch #InsertionSort #GCD
Algorithms using this approach. [14]

## Sorting Algorithms #Ordering #Comparison #Efficiency
Algorithms for arranging elements in a specific order (e.g., ascending or descending). [3, 10, 18, 19]
### Comparison Sorts #ElementComparison
Sort algorithms based on comparing elements.
#### Bubble Sort #Simple #Inefficient
Repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order. O(n^2). [3, 19]
#### Selection Sort #Simple #InPlace
Repeatedly finds the minimum element from the unsorted part and puts it at the beginning. O(n^2). [3, 14]
#### Insertion Sort #Simple #Adaptive
Builds the final sorted array one item at a time, inserting each element into its proper place. Efficient for nearly sorted data. O(n^2). [3, 9, 14]
#### Merge Sort #DivideAndConquer #Stable
Divides the array into halves, sorts them recursively, and merges the sorted halves. O(n log n). Stable. Requires O(n) extra space. [3, 8, 9, 14, 19]
#### Quick Sort #DivideAndConquer #InPlace #AverageCase
Picks a 'pivot' element and partitions the array around the pivot. Recursively sorts subarrays. O(n log n) average, O(n^2) worst-case. Often in-place. [3, 8, 9, 14, 15, 19]
#### Heap Sort #HeapBased #InPlace
Uses a binary heap data structure. Builds a max-heap and repeatedly extracts the maximum element. O(n log n). In-place. [3, 18]
### Non-Comparison Sorts #IntegerSorts #LinearTime
Sort algorithms that do not rely on comparing elements. Can achieve better than O(n log n) for specific input types (e.g., integers).
#### Counting Sort #IntegerKeys #Stable
Sorts elements by counting the occurrences of each distinct key value. O(n+k). [18, 19]
#### Radix Sort #Digits #Stable
Sorts integer data by processing individual digits (LSD or MSD). O(d*(n+k)). [18, 19]
#### Bucket Sort #Distribution #AverageCase
Distributes elements into buckets and sorts buckets individually. Efficient if input is uniformly distributed. O(n+k) average. [9, 18]
### Sorting Algorithm Properties #Stability #InPlace
Key characteristics: Stability (maintaining relative order of equal elements), In-place (using constant extra space). [3]

## Searching Algorithms #Lookup #Retrieval #Efficiency
Algorithms for finding specific items within a data structure. [3, 10, 19]
### Linear Search #SequentialScan #Unsorted
Checks each element sequentially until the target is found or the end is reached. O(n). [1, 3, 19]
### Binary Search #SortedData #DivideAndConquer
Efficiently finds an item in a *sorted* array by repeatedly dividing the search interval in half. O(log n). [1, 3, 8, 9, 13, 14, 19]
### Hashing-Based Search #HashTable #AverageConstantTime
Using hash tables for O(1) average time search. [3]
### Tree-Based Search #BST #BalancedTrees
Using Binary Search Trees or balanced variants for O(log n) average/worst-case search. [14]
### Interpolation Search #UniformDistribution #Sorted
Variant of binary search for uniformly distributed sorted data. O(log log n) average.
### Search in Graphs #BFS #DFS
Using BFS or DFS to find nodes or paths in graphs.

## String Processing Algorithms #Text #PatternMatching #Manipulation
Algorithms specifically designed for operating on strings. [6, 19, 20]
### String Searching / Pattern Matching #FindingSubstrings
Locating occurrences of a pattern string within a larger text string.
#### Naive String Matching #Simple #BruteForce
Simple comparison by sliding the pattern over the text.
#### Knuth-Morris-Pratt (KMP) #PrefixFunction #Efficient
Uses information about previously matched characters to avoid redundant comparisons. O(n+m). [19]
#### Boyer-Moore #BadCharacter #GoodSuffix
Uses heuristics (bad character rule, good suffix rule) to potentially skip large parts of the text.
#### Rabin-Karp #Hashing #RollingHash
Uses hashing to find potential matches.
### Longest Common Subsequence (LCS) #DynamicProgramming #Similarity
Finding the longest subsequence common to two sequences. [14, 19]
### Edit Distance (Levenshtein Distance) #StringSimilarity #DP
Minimum number of single-character edits (insertions, deletions, substitutions) required to change one word into another. [14]
### Suffix Trees / Suffix Arrays #Indexing #Searching
Data structures for efficient string searching and other string operations.
### Regular Expression Matching #PatternLanguage #FiniteAutomata
Matching text against patterns defined by a regular expression.
### Data Compression #Encoding #HuffmanCoding
Algorithms to reduce the size of string data (e.g., Huffman Coding). [8, 14]

## Computational Geometry #Spatial #Geometric #Algorithms
Algorithms for solving problems related to geometric objects (points, lines, polygons). [6, 16, 20]
### Basic Objects #Points #Lines #Polygons
Representing and manipulating fundamental geometric shapes.
### Convex Hull #EnclosingPolygon #Optimization
Finding the smallest convex polygon that encloses a set of points. [6, 19]
### Line Segment Intersection #CollisionDetection #GIS
Determining if and where line segments intersect. [6]
### Voronoi Diagrams / Delaunay Triangulations #Proximity #Meshing
Partitioning space based on proximity to points; related triangulation. [6]
### Range Searching #SpatialQueries #DataStructures
Finding points within a specified geometric range (e.g., using k-d trees, range trees). [6]
### Closest Pair of Points #Proximity #DivideAndConquer
Finding the two points in a set with the smallest distance between them. [14]
### Sweep Line Algorithms #PlaneSweep #Intersection
Algorithmic paradigm involving moving a line across the plane to process geometric events. [6]

## Complexity Theory #Computability #Hardness #PvsNP
Theoretical study of the resources required to solve computational problems.
### Complexity Classes #P #NP #NPC #NPComplete #NPHard
Classifying problems based on their inherent difficulty (P: Polynomial time, NP: Nondeterministic Polynomial time, NP-Complete, NP-Hard). [5, 20]
### Reducibility #ProblemTransformation #HardnessProof
Showing one problem can be transformed into another, used to prove NP-completeness.
### Undecidability #HaltingProblem #LimitsOfComputation
Problems for which no algorithm can exist that always produces a correct yes/no answer (e.g., the Halting Problem).
### Approximation Algorithms #NP HardProblems #Heuristics
Algorithms that find near-optimal solutions for NP-hard optimization problems within a guaranteed factor of the true optimum. [5, 6, 16, 20]

## Advanced Algorithms and Data Structures #Specialized #Optimization #Modern
More complex techniques and structures often used in specialized domains or research. [5, 6, 12, 16, 20]
### Network Flow Algorithms #Graphs #Optimization #Capacity
Algorithms for finding maximum flow in networks (e.g., Ford-Fulkerson, Edmonds-Karp). [5, 16]
#### Max-Flow Min-Cut Theorem #Duality #NetworkAnalysis
Fundamental theorem relating maximum flow and minimum cut capacity.
#### Applications #Matching #Scheduling #Transportation
Various problems solvable using network flow. [5]
### Linear Programming (LP) #Optimization #Constraints
Techniques for optimizing a linear objective function subject to linear equality/inequality constraints. [5, 6, 12, 16]
#### Simplex Method #LPAlgorithm #Pivoting
Classic algorithm for solving LP problems.
#### Interior Point Methods #LPAlgorithm #PolynomialTime
Alternative class of algorithms for LP. [5]
#### Duality #OptimizationTheory #Bounds
Concept of primal and dual problems in LP. [5]
### Randomized Algorithms #Probability #Hashing #Sampling
Algorithms incorporating randomness (e.g., randomized quicksort, Bloom filters). [6, 12]
### Approximation Algorithms #NP Hard #Heuristics #Guarantees
Designing algorithms for NP-hard problems with provable guarantees on solution quality. [5, 6, 16]
### Online Algorithms #SequentialInput #CompetitiveAnalysis
Algorithms that process input piece-by-piece without knowledge of future input. [6, 12, 16]
### Streaming Algorithms (Data Stream Algorithms) #BigData #LimitedMemory
Algorithms processing massive data streams using limited memory and passes. [12, 16]
#### Sketching #Summarization #Approximation
Creating compact summaries (sketches) of data streams (e.g., Count-Min Sketch, HyperLogLog). [12]
### Parallel Algorithms #Concurrency #Multicore #Distributed
Algorithms designed for execution on multiple processors simultaneously. [16]
### External Memory Algorithms #LargeData #DiskIO
Algorithms optimized for data sets too large to fit in main memory, minimizing disk I/O. [6, 16]
#### B-Trees #DiskBased #Indexing
Data structure optimized for external memory. [6, 16]
#### Cache-Oblivious Algorithms #MemoryHierarchy #Performance
Algorithms designed to perform well across different levels of memory hierarchy without explicit tuning. [6, 16]
### Advanced Data Structures #Specialized #Performance
Structures like Segment Trees, Fenwick Trees (BIT), Disjoint Set Union (DSU), Skip Lists, Suffix Trees/Arrays. [19, 21]
### Cryptographic Algorithms #Security #NumberTheory
Algorithms used in cryptography (e.g., RSA, AES, hashing algorithms). [20]
### Machine Learning Algorithms #AI #DataAnalysis
Algorithms used for learning patterns from data (brief mention, as it's a vast field).

## Practical Considerations and Applications #Implementation #Libraries #RealWorld
Aspects related to using algorithms and data structures in practice.
### Choosing the Right Data Structure/Algorithm #Tradeoffs #Context
Selecting appropriate tools based on problem constraints, data characteristics, and performance requirements. [3, 22]
### Implementation #Coding #Languages
Writing code for algorithms and data structures in specific programming languages (Python, Java, C++, etc.). [1, 9, 24]
### Standard Template Libraries (STL) / Collections Frameworks #Libraries #Reuse
Using built-in libraries (e.g., C++ STL, Java Collections, Python standard library) that provide efficient implementations.
### Debugging and Testing #Correctness #Reliability
Ensuring implementations are correct and robust.
### Real-World Applications #Examples #CaseStudies
Examples: Databases (B-Trees), Networking (Shortest Path), Compilers (Hash Tables, Parsing), Operating Systems (Scheduling, Memory Management), Graphics (Geometry), Bioinformatics (String Matching), Search Engines (Indexing, Ranking). [22]
### Algorithm Design in Interviews #CodingInterviews #ProblemSolving
Importance and focus on DSA in technical interviews for software roles. [9, 10, 13, 24]
