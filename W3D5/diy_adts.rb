class Stack
    def initialize 
        @stack = []
    end
    def stack 
        @stack 
    end 
    def push(el)
        @stack << el 
    end 
    def pop
        @stack = @stack[0...-1]
    end 
    def peek 
        @stack[-1]
    end 

end 

class Queue
    def initialize
        @queue =[]
    end 
    def enqueue(el)
        @queue = [el] + @queue
    end 
    def dequeue 
        @queue = @queue[1..-1]
    end 
    def peak 
        @queue[1]
    end 
end 
