require 'problem'

describe "Primes" do
  it "should know the 6th prime" do
    primes = Primes.new
    primes[6].should be 13
  end
end
