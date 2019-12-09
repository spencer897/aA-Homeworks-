class GraphNode
    attr_accessor :value, :neighbors 

    def initialize(value)
        @value = value 
        @neighbors = []
    end 
       
end

def bfs(starting_node, target_value)
        return starting_node if starting_node.value == target_value 
        queue = [starting_node]

        until queue.empty?
            return queue[0] if queue[0].value == target_value 
            queue.shift.neighbors.each do |node|
                queue << node 
            end 
        end 
end 

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p bfs(a, "b")