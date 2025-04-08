# I. Foundations of Graph Theory

## Understanding Basic Definitions

### Defining a Graph
*   Nodes (vertices) and edges.
*   Types of graphs: directed vs. undirected, simple vs. multi-graph.
*   Examples: social networks, road networks, computer networks.

### Graph Representation
*   Adjacency Matrix: Representing graph connectivity using a matrix.
    ```
    A = [[0, 1, 0],
         [1, 0, 1],
         [0, 1, 0]]
    ```
*   Adjacency List: Representing graph connectivity using lists. Example: `[1]`, `[0, 2]`, `[1]`.
*   Incidence Matrix: Representing relationships between vertices and edges.

## Graph Properties and Types

### Connectivity
*   Connected graphs, disconnected graphs, connected components.
*   Strongly connected vs. weakly connected components (for directed graphs).
*   Cut vertices and bridges.

### Graph Types
*   Complete graphs (Kn).
*   Bipartite graphs.
*   Planar graphs.
*   Trees and forests.

### Graph Isomorphism
*   Definition of isomorphic graphs.
*   Isomorphism invariants (e.g., number of vertices, number of edges, degree sequences).

# II. Graph Traversal and Search Algorithms

## Breadth-First Search (BFS)

### Algorithm Description
*   Using a queue to explore the graph layer by layer.
*   Example: Finding the shortest path in an unweighted graph.

### Implementation
*   Implementing BFS using an adjacency list or adjacency matrix.
    ```python
    def bfs(graph, start_node):
        visited = set()
        queue = [start_node]
        visited.add(start_node)
        while queue:
            node = queue.pop(0)
            print(node, end=" ")
            for neighbor in graph[node]:
                if neighbor not in visited:
                    visited.add(neighbor)
                    queue.append(neighbor)
    ```

## Depth-First Search (DFS)

### Algorithm Description
*   Using a stack (implicitly through recursion) to explore as far as possible along each branch before backtracking.
*   Example: Topological sorting, finding connected components.

### Implementation
*   Implementing DFS using recursion or a stack.
    ```python
    def dfs(graph, node, visited):
        visited.add(node)
        print(node, end=" ")
        for neighbor in graph[node]:
            if neighbor not in visited:
                dfs(graph, neighbor, visited)

    def dfs_main(graph, start_node):
        visited = set()
        dfs(graph, start_node, visited)
    ```

## Applications of BFS and DFS

### Shortest Path in Unweighted Graphs (BFS)

### Connected Components (DFS)

### Topological Sorting (DFS)

### Cycle Detection (DFS)

# III. Shortest Path Algorithms

## Dijkstra's Algorithm

### Algorithm Description
*   Finding the shortest path from a single source vertex to all other vertices in a weighted graph (non-negative edge weights).
*   Using a priority queue (e.g., min-heap) to efficiently select the next vertex to explore.

### Implementation
*   Implementing Dijkstra's algorithm using an adjacency list and a priority queue.
    ```python
    import heapq

    def dijkstra(graph, start):
        distances = {node: float('inf') for node in graph}
        distances[start] = 0
        pq = [(0, start)]  # (distance, node)

        while pq:
            dist, node = heapq.heappop(pq)

            if dist > distances[node]:
                continue

            for neighbor, weight in graph[node].items():
                new_dist = dist + weight
                if new_dist < distances[neighbor]:
                    distances[neighbor] = new_dist
                    heapq.heappush(pq, (new_dist, neighbor))
        return distances
    ```

## Bellman-Ford Algorithm

### Algorithm Description
*   Finding the shortest path from a single source vertex to all other vertices in a weighted graph (can handle negative edge weights).
*   Detecting negative cycles.

### Implementation
*   Implementing Bellman-Ford algorithm using edge list representation.

## Floyd-Warshall Algorithm

### Algorithm Description
*   Finding the shortest paths between all pairs of vertices in a weighted graph.
*   Dynamic programming approach.

### Implementation
*   Implementing Floyd-Warshall algorithm using an adjacency matrix.

# IV. Minimum Spanning Trees

## Prim's Algorithm

### Algorithm Description
*   Greedily building a minimum spanning tree by adding the lowest-weight edge that connects a vertex in the tree to a vertex not in the tree.

### Implementation
*   Implementing Prim's algorithm using a priority queue.

## Kruskal's Algorithm

### Algorithm Description
*   Greedily building a minimum spanning tree by adding the lowest-weight edge that does not create a cycle.
*   Using a disjoint-set data structure to efficiently check for cycles.

### Implementation
*   Implementing Kruskal's algorithm using a disjoint-set data structure.

# V. Network Flow

## Basic Concepts

### Network, source, sink, capacity, flow.
### Flow conservation.

## Ford-Fulkerson Algorithm

### Algorithm Description
*   Finding the maximum flow in a network by repeatedly finding augmenting paths.

### Implementation
*   Implementing Ford-Fulkerson algorithm using BFS or DFS to find augmenting paths.

## Edmonds-Karp Algorithm

### Algorithm Description
*   A specific implementation of the Ford-Fulkerson algorithm that uses BFS to find augmenting paths.
*   Ensures polynomial time complexity.

### Implementation
*   Implementing Edmonds-Karp algorithm.
