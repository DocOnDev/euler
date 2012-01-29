class FibonacciSequence
    def term index
        sequence = [1,1,2]
        return index if index < 3
        (3..index).each { |idx| sequence[idx] = sequence[idx-1] + sequence[idx-2] } if index >= 3
            sequence[index]
    end
end
