# simple-dijkstra
simple example of Dijkstra's shortest path algorithm on Ruby lang

based on:

https://www.udemy.com/graph-theory-algorithms/learn/lecture/10794132


static example...

class Node, class Path

MAIN: def dijkstra(adjacency_list, number_of_nodes, starting_point)



> ruby dijkstra.rb


```

hello in simple script showing example of Dijkstras Algorithm
promoted element: 0
heap: [[0, 0]]
dist.to_s: [0, Infinity, Infinity, Infinity, Infinity] and heapowy_bagaz: 0
heap: [[0, 0], [1, 4]]
dist.to_s: [0, 4, Infinity, Infinity, Infinity] and heapowy_bagaz: 0
heap: [[0, 0], [1, 4], [2, 1]]
dist.to_s: [0, 4, 1, Infinity, Infinity] and heapowy_bagaz: 0
end of paths in this element
heap after removal: [[1, 4], [2, 1]]
promoted element: 2
heap: [[1, 4], [2, 1], [1, 3]]
dist.to_s: [0, 3, 1, Infinity, Infinity] and heapowy_bagaz: 1
heap: [[1, 4], [2, 1], [1, 3], [3, 6]]
dist.to_s: [0, 3, 1, 6, Infinity] and heapowy_bagaz: 1
end of paths in this element
heap after removal: [[1, 4], [1, 3], [3, 6]]
promoted element: 1
heap: [[1, 4], [1, 3], [3, 6], [3, 4]]
dist.to_s: [0, 3, 1, 4, Infinity] and heapowy_bagaz: 3
end of paths in this element
heap after removal: [[3, 6], [3, 4]]
promoted element: 3
heap: [[3, 6], [3, 4], [4, 7]]
dist.to_s: [0, 3, 1, 4, 7] and heapowy_bagaz: 4
end of paths in this element
heap after removal: [[4, 7]]
promoted element: 4
end of paths in this element
heap after removal: []
dist = dijkstra( adjacency_list, number_of_nodes, zero ) = [0, 3, 1, 4, 7]

```
