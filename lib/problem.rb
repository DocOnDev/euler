class PrimeFactors
    def generate product
        primes = []
        if product > 1
            while product % 2 == 0
                primes << 2
                product /= 2
            end
            if product > 1
                primes << product
            end
        end
        primes
    end
end
