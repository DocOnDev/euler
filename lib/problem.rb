class PrimeFactors
    def generate product
        primes = []
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
