require 'problem'

describe "Primes" do
  let(:primes) {Primes.new}

  it "should know the 5th prime" do
    primes[5].should be 11
  end

  it "should know the 6th prime" do
    primes[6].should be 13
  end

  it "should know the 7th prime" do
    primes[7].should be 17
  end

  it "shoujld know the 10001st prime" do
    primes[10001].should be 104743
  end
end
