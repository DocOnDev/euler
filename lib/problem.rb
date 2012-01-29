class Array
    def evens
        self.delete_if { |value| value % 2 != 0 }
    end
    def sum
        self.inject(:+)
    end
end
class FibonacciSequence
    attr_accessor :sequence
    def initialize
        @sequence = []
    end
    def [](index)
        return sequence[index] if sequence[index]
        return sequence[index] = calculate_it(index) if index >= 2
        sequence[index] = index
    end
    def under(max)
        term = 0
        while self[term] < max do
            term += 1
        end
        sequence.pop
        sequence
    end
    private
    def calculate_it(index)
        self[index-1] + self[index-2]
    end
end
