# I. Introduction to Data Structures and Algorithms

## Understanding Data Structures

### Definition and Purpose of Data Structures
*   Organizing and storing data efficiently.
*   Supporting specific operations.

### Abstract Data Types (ADTs)
*   Definition: Logical description of data and operations.
*   Examples: List, Stack, Queue, Tree.

## Understanding Algorithms

### Definition and Purpose of Algorithms
*   Step-by-step procedures for solving problems.
*   Efficiency considerations: time and space complexity.

### Algorithm Analysis
*   Big O notation: `O(1)`, `O(log n)`, `O(n)`, `O(n log n)`, `O(n^2)`, `O(2^n)`, `O(n!)`.
*   Best, average, and worst-case scenarios.

# II. Basic Data Structures

## Arrays

### Array Basics
*   Definition and properties.
*   Declaration and initialization.
*   Accessing elements: `array[index]`.

### Array Operations
*   Insertion, deletion, searching.
*   Time complexity of operations.

### Example: Implementing a Dynamic Array

```python
class DynamicArray:
    def __init__(self):
        self.capacity = 1
        self.length = 0
        self.array = [None] * self.capacity

    def insert(self, element):
        if self.length == self.capacity:
            self.resize()
        self.array[self.length] = element
        self.length += 1

    def resize(self):
        self.capacity *= 2
        new_array = [None] * self.capacity
        for i in range(self.length):
            new_array[i] = self.array[i]
        self.array = new_array
```

## Linked Lists

### Linked List Basics
*   Nodes and pointers.
*   Singly linked list, doubly linked list, circular linked list.

### Linked List Operations
*   Insertion (at head, at tail, in the middle).
*   Deletion (at head, at tail, in the middle).
*   Searching.

### Example: Implementing a Singly Linked List
```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert_at_head(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node
```

## Stacks

### Stack Basics
*   LIFO (Last-In, First-Out) principle.
*   Push and pop operations.

### Stack Implementations
*   Using arrays.
*   Using linked lists.

### Applications of Stacks
*   Expression evaluation.
*   Function call stack.
*   Undo/Redo functionality.

## Queues

### Queue Basics
*   FIFO (First-In, First-Out) principle.
*   Enqueue and dequeue operations.

### Queue Implementations
*   Using arrays (circular queue).
*   Using linked lists.

### Applications of Queues
*   Breadth-First Search (BFS).
*   Task scheduling.
*   Print queue.

# III. Sorting Algorithms

## Basic Sorting Algorithms

### Bubble Sort
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n^2)`.

### Selection Sort
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n^2)`.

### Insertion Sort
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n^2)`.

## Advanced Sorting Algorithms

### Merge Sort
*   Divide and conquer approach.
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n log n)`.

### Quick Sort
*   Divide and conquer approach.
*   Pivot selection.
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n log n)` (average), `O(n^2)` (worst).

### Heap Sort
*   Heap data structure.
*   Algorithm explanation.
*   Implementation.
*   Time complexity: `O(n log n)`.

## Comparison of Sorting Algorithms
*   Time complexity.
*   Space complexity.
*   Stability.
*   Best use cases.

# IV. Searching Algorithms

## Linear Search

### Algorithm Explanation
*   Sequential search through the data.
*   Implementation.
*   Time complexity: `O(n)`.

## Binary Search

### Algorithm Explanation
*   Requires sorted data.
*   Divide and conquer approach.
*   Implementation.
*   Time complexity: `O(log n)`.

## Hash Tables

### Hash Function
*   Purpose and properties.
*   Collision resolution techniques (chaining, open addressing).

### Hash Table Operations
*   Insertion, deletion, searching.
*   Time complexity: `O(1)` (average), `O(n)` (worst).

### Example: Implementing a Simple Hash Table

```python
class HashTable:
    def __init__(self, size):
        self.size = size
        self.table = [None] * size

    def hash_function(self, key):
        return key % self.size

    def insert(self, key, value):
        index = self.hash_function(key)
        self.table[index] = value

    def search(self, key):
        index = self.hash_function(key)
        return self.table[index]
```

# V. Trees

## Tree Basics

### Tree Terminology
*   Root, node, child, parent, sibling, leaf, edge, depth, height.

### Binary Tree
*   Definition and properties.
*   Types of binary trees (complete, full, perfect).

### Tree Traversal Algorithms
*   Preorder, inorder, postorder (recursive and iterative).
*   Level-order traversal (BFS).

## Binary Search Trees (BSTs)

### BST Properties
*   Ordering property.

### BST Operations
*   Insertion, deletion, searching, finding minimum/maximum.

### BST Implementation

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

class BST:
    def __init__(self):
        self.root = None

    def insert(self, data):
        if self.root is None:
            self.root = Node(data)
        else:
            self._insert(data, self.root)

    def _insert(self, data, current_node):
        if data < current_node.data:
            if current_node.left is None:
                current_node.left = Node(data)
            else:
                self._insert(data, current_node.left)
        elif data > current_node.data:
            if current_node.right is None:
                current_node.right = Node(data)
            else:
                self._insert(data, current_node.right)
        else:
            print("Value already in tree")
```

## Balanced Search Trees

### AVL Trees
*   Balancing factor.
*   Rotations (left, right, left-right, right-left).

### Red-Black Trees
*   Properties of Red-Black Trees.
*   Rotations and color flips.

# VI. Graphs

## Graph Basics

### Graph Terminology
*   Vertices, edges, directed vs. undirected graphs, weighted vs. unweighted graphs.

### Graph Representations
*   Adjacency matrix.
*   Adjacency list.

## Graph Traversal Algorithms

### Breadth-First Search (BFS)
*   Algorithm explanation.
*   Implementation.

### Depth-First Search (DFS)
*   Algorithm explanation.
*   Implementation.

## Shortest Path Algorithms

### Dijkstra's Algorithm
*   Single-source shortest path.
*   Algorithm explanation.
*   Implementation.

### Bellman-Ford Algorithm
*   Handling negative edge weights.
*   Algorithm explanation.
*   Implementation.

## Minimum Spanning Trees

### Prim's Algorithm
*   Algorithm explanation.
*   Implementation.

### Kruskal's Algorithm
*   Algorithm explanation.
*   Implementation.
