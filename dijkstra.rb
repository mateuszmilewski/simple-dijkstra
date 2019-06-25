puts "hello in simple script showing example of Dijkstras Algorithm"



# define node
class Node

    def initialize nm
        @nm = nm
        @collection_of_paths_and_nodes = []
    end

    def add_path_and_node other_node, path
        @collection_of_paths_and_nodes << [other_node, path]
    end

    def get_name
        @nm
    end

    def get_coll
        @collection_of_paths_and_nodes
    end


end


#define path
class Path 
    def initialize s
        @size = s
    end

    def get_size
        @size
    end
end



def get_promising(a_list, heap)

    # _to_handle_new_promising_node
    helper = [-1, Float::INFINITY]

    heap.each_with_index do | e, i | 

        if e[1] < helper[1]
            helper = e
        end
    end

    selected_elements = a_list.select { |i| i.get_name == helper[0] }
    
    return selected_elements[0]

end


def remove_from_heap(heap, element)

    heap.delete_if { |e| e[0] == element.get_name }
end

def dijkstra(adjacency_list, number_of_nodes, starting_point)

    visited_nodes = Array.new(number_of_nodes) { false }
    dist = Array.new(number_of_nodes) { Float::INFINITY }
    #priority_queue = []
    #priority_queue << starting_point

    heap = []

    #dist[0] = starting_point

    #adjacency_list.each_with_index do |element, indx|
    element = nil
    err_limit, iterator = 2, 0
    while visited_nodes.include?(false) || iterator < err_limit


        if element.nil?
            element = adjacency_list[0]
            visited_nodes[0] = true
        else
            element = get_promising(adjacency_list, heap)
            visited_nodes[element.get_name] = true
        end


        puts "promoted element: #{element.get_name}"

        element.get_coll.each_with_index do |pair, i|
            # puts " ( #{ pair[0].get_name } , #{pair[1].get_size} )"

            heapowy_bagaz = 0
            if heap.size > 0 

                helper = Float::INFINITY

                heap.map do |heap_item| 
                    if heap_item[0] == element.get_name
                        if (heapowy_bagaz > heap_item[1]) || (heapowy_bagaz == 0)
                            heapowy_bagaz = heap_item[1]
                        end
                    end
                end
            end


            heap << [ pair[0].get_name, pair[1].get_size + heapowy_bagaz ]
            puts "heap: #{heap.to_s}"

            if dist[ pair[0].get_name ] > ( pair[1].get_size + heapowy_bagaz )
                dist[ pair[0].get_name ] = ( pair[1].get_size + heapowy_bagaz )
            end

            puts "dist.to_s: #{dist.to_s} and heapowy_bagaz: #{heapowy_bagaz}"
        end

        heap = remove_from_heap( heap, element )

        puts "end of paths in this element"
        puts "heap after removal: #{heap.to_s}"

        iterator = iterator + 1
    end


    dist
    
end





def main

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


    number_of_nodes = 5
    starting_point = 0

    dist = dijkstra( adjacency_list, number_of_nodes, zero )
    puts "dist = dijkstra( adjacency_list, number_of_nodes, zero ) = #{dist}"
end


main