class FibonacciSequence
    attr_accessor :sequence
    def initialize
        @sequence = [1,1,2]
    end
    def term index
        return index if index < 3
        (3..index).each { |idx| sequence[idx] = calculate_it(idx) } if index >= 3
        sequence[index]
    end
    def calculate_it(index)
        sequence[index-1] + sequence[index-2]
    end
end
