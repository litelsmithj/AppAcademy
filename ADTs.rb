class Stack
    def initialize
        @arr = []
    end
  
    def push(el)
        arr.push(el)
        el
    end
  
    def pop
        arr.pop
    end
  
    def peek
        arr.last
    end

    private 

    attr_reader :arr
end

class Queue
    def initialize
        @arr = []
    end

    def enqueue(el)
        arr.push(el)
        el
    end

    def dequeue
        arr.shift
    end

    def peek
        arr.first
    end

    private
    attr_reader :arr
end

class Map
    def initialize
        @arr2D = []
    end

    def set(key, value)
        idx = arr2D.index {|subArr| subArr[0] == key}
        
        if idx
            arr2D[idx][1] = value
        else
            arr2D.push([key, value])
        end
        value
    end

    def get(key)
        arr2D.each do |subArr|
            return subArr[1] if key == subArr[0]
        end
        nil
    end

    def delete(key)
        value = get(key)
        arr2D.reject! {|subArr| subArr[0] == key}
        value
    end

    def show
        deep_dup(arr2D)
    end

    private
    attr_reader :arr2D

    def deep_dup(arr)
        arr.map {|ele| ele.is_a?(Array) ? deep_dup(ele) : ele}
    end
end