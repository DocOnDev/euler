class FibonacciSequence
    attr_accessor :sequence
    def initialize
        @sequence = []
    end
    def term index
        return sequence[index] if sequence[index]
        return sequence[index] = calculate_it(index) if index >= 2
        index
    end
    def calculate_it(index)
        term(index-1) + term(index-2)
    end
end
