class Primes

  def initialize
    @primes = [1,2]
  end

  def [](num)
    add_prime until @primes[num]
    @primes[num]
  end

  def add_prime
    last = @primes[-1]
    until is_prime(++last) do last += 1 end
    @primes << last
  end

  def is_prime(num)
    @primes[1..-1].each { |prime| return false if (num % prime == 0) }
    true
  end
end
