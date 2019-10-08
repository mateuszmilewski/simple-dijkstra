# simple-dijkstra
simple example of Dijkstra's shortest path algorithm on Ruby lang

based on:

https://www.udemy.com/graph-theory-algorithms/learn/lecture/10794132


static example...

class Node, class Path

MAIN: def dijkstra(adjacency_list, number_of_nodes, starting_point)


> path preliminary config

```

    adjacency_list = [
        Node.new(0),
        Node.new(1),
        Node.new(2),
        Node.new(3),
        Node.new(4)
    ]

    arr = adjacency_list


    zero = arr[0]
    jeden = arr[1]
    dwa = arr[2]
    trzy = arr[3]
    cztery = arr[4]

    # example: myNode.add_path_and_node(node, Path.new(4))
    zero.add_path_and_node(zero, Path.new(0))
    zero.add_path_and_node(jeden, Path.new(4))
    zero.add_path_and_node(dwa, Path.new(1))
    jeden.add_path_and_node(trzy, Path.new(1))
    dwa.add_path_and_node(jeden, Path.new(2))
    dwa.add_path_and_node(trzy, Path.new(5))
    trzy.add_path_and_node(cztery, Path.new(3))

```

> image helper
![image-helper](https://raw.githubusercontent.com/mateuszmilewski/simple-dijkstra/master/Capture.png)

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
