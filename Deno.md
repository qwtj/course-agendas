# I. Introduction to Data Structures

## Understanding Abstract Data Types (ADTs)

### Defining ADTs

### Common ADTs: Lists, Stacks, Queues, Trees, Graphs

## Data Structure Implementations

### Arrays

#### Static vs. Dynamic Arrays
#### Array Operations: Access, Insertion, Deletion
#### Time Complexity of Array Operations: O(1) access, O(n) insert/delete

### Linked Lists

#### Singly Linked Lists
##### Node Structure: `data`, `next`
##### Traversal, Insertion, Deletion
#### Doubly Linked Lists
##### Node Structure: `data`, `next`, `prev`
##### Traversal, Insertion, Deletion
#### Circular Linked Lists
##### Advantages and Disadvantages
#### Time Complexity of Linked List Operations: O(n) access, O(1) insert/delete (with pointer)

# II. Linear Data Structures

## Stacks

### Stack ADT: LIFO (Last-In, First-Out)
### Stack Operations: `push`, `pop`, `peek`, `isEmpty`
### Stack Implementations: Array-based, Linked List-based
### Applications of Stacks:
#### Expression Evaluation (Infix, Postfix, Prefix)
#### Function Call Stack
#### Backtracking Algorithms

## Queues

### Queue ADT: FIFO (First-In, First-Out)
### Queue Operations: `enqueue`, `dequeue`, `peek`, `isEmpty`
### Queue Implementations: Array-based (Circular Queue), Linked List-based
### Types of Queues:
#### Simple Queue
#### Circular Queue
#### Priority Queue
##### Implementing Priority Queue using Heaps
### Applications of Queues:
#### Breadth-First Search (BFS)
#### Job Scheduling
#### Resource Management

# III. Non-Linear Data Structures: Trees

## Tree Concepts and Terminology

### Node, Root, Parent, Child, Sibling, Leaf, Edge, Path
### Depth, Height, Level
### Tree Types: General Tree, Binary Tree, Binary Search Tree (BST), AVL Tree, B-Tree

## Binary Trees

### Properties of Binary Trees
### Types of Binary Trees: Complete, Full, Perfect
### Tree Traversal Algorithms:
#### Inorder (Left-Root-Right)
#### Preorder (Root-Left-Right)
#### Postorder (Left-Right-Root)
#### Level-Order (Breadth-First)
```python
def inorder(root):
  if root:
    inorder(root.left)
    print(root.data)
    inorder(root.right)
```
### Binary Tree Implementations: Node-based

## Binary Search Trees (BSTs)

### BST Properties: Left subtree <= Node < Right subtree
### BST Operations:
#### Search
#### Insertion
#### Deletion
##### Handling different deletion cases (leaf, one child, two children)
```python
#example BST deletion (simplified)
def deleteNode(root, key):
  if root is None:
    return root

  if key < root.key:
    root.left = deleteNode(root.left, key)
  elif key > root.key:
    root.right = deleteNode(root.right, key)
  else:
    # Node with only one child or no child
    if root.left is None:
      temp = root.right
      root = None
      return temp

    elif root.right is None:
      temp = root.left
      root = None
      return temp
```
### Time Complexity of BST Operations: O(log n) average, O(n) worst-case

## Balanced Trees

### The need for Balanced Trees
### AVL Trees
#### Rotations: Left, Right, Left-Right, Right-Left
#### Insertion and Deletion in AVL Trees
### B-Trees
#### B-Tree Properties
#### Insertion and Deletion in B-Trees
#### Use cases: Databases, File Systems

# IV. Non-Linear Data Structures: Graphs

## Graph Concepts and Terminology

### Vertices (Nodes), Edges
### Directed vs. Undirected Graphs
### Weighted vs. Unweighted Graphs
### Adjacency Matrix, Adjacency List
### Graph Representation:
```python
# Adjacency List representation
graph = {
  'A': ['B', 'C'],
  'B': ['A', 'D', 'E'],
  'C': ['A', 'F'],
  'D': ['B'],
  'E': ['B', 'F'],
  'F': ['C', 'E']
}
```
### Path, Cycle, Connected Graph, Complete Graph

## Graph Traversal Algorithms

### Breadth-First Search (BFS)
### Depth-First Search (DFS)
```python
def dfs(graph, node, visited):
    if node not in visited:
        visited.add(node)
        for neighbor in graph[node]:
            dfs(graph, neighbor, visited)
```
## Graph Algorithms

### Shortest Path Algorithms:
#### Dijkstra's Algorithm (Single-Source Shortest Path)
#### Bellman-Ford Algorithm (handles negative edge weights)
### Minimum Spanning Tree (MST) Algorithms:
#### Prim's Algorithm
#### Kruskal's Algorithm
### Applications of Graphs:
#### Social Networks
#### Routing Algorithms
#### Network Analysis

# V. Sorting Algorithms

## Basic Sorting Algorithms

### Bubble Sort
### Selection Sort
### Insertion Sort
### Time Complexity Analysis: O(n^2)
```python
def bubble_sort(list_):
    n = len(list_)
    for i in range(n):
        for j in range(0, n-i-1):
            if list_[j] > list_[j+1]:
                list_[j], list_[j+1] = list_[j+1], list_[j]

```

## Advanced Sorting Algorithms

### Merge Sort
### Quick Sort
### Heap Sort
### Time Complexity Analysis: O(n log n)
### Understanding Partitioning in Quick Sort
```python
def quicksort(list_):
    if len(list_) <= 1:
        return list_
    pivot = list_[len(list_) // 2]
    less = [i for i in list_ if i < pivot]
    equal = [i for i in list_ if i == pivot]
    greater = [i for i in list_ if i > pivot]
    return quicksort(less) + equal + quicksort(greater)
```

## Sorting Algorithm Comparison

### Stability
### In-place sorting
### Best, average, and worst-case scenarios

# VI. Searching Algorithms

## Linear Search

### Algorithm Description
### Time Complexity: O(n)

## Binary Search

### Algorithm Description: Requires a sorted list
### Time Complexity: O(log n)
```python
def binary_search(list_, target):
    low = 0
    high = len(list_) - 1
    while low <= high:
        mid = (low + high) // 2
        if list_[mid] == target:
            return mid
        elif list_[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
    return -1 # Target not found
```
## Hash Tables

### Hash Functions
### Collisions and Collision Resolution Techniques
#### Separate Chaining
#### Open Addressing (Linear Probing, Quadratic Probing, Double Hashing)
### Hash Table Operations: Insert, Search, Delete
### Time Complexity Analysis: O(1) average, O(n) worst-case (collision)

# VII. Algorithm Analysis and Design

## Asymptotic Notation

### Big O Notation: Upper Bound
### Big Omega Notation: Lower Bound
### Big Theta Notation: Tight Bound
### Common Time Complexities: O(1), O(log n), O(n), O(n log n), O(n^2), O(2^n), O(n!)

## Algorithm Design Techniques

### Divide and Conquer
### Dynamic Programming
### Greedy Algorithms
### Backtracking
