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
        self
    end
    def largest
        primes[-1]
    end
    def list
        primes
    end
end
