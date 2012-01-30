class Array
    def largest
        self[-1]
    end
end
class PrimeFactors
    attr_accessor :primes
    def initialize
        @primes = []
    end
    def generate product
        factor = 2
        while product > 1
            while product % factor == 0
                primes << factor
                product /= factor
            end
            factor += 1
            factor += 1 if factor > 3
        end
        primes
    end
end
