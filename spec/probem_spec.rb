require 'problem'

describe "SumSquareDiff" do
  let(:ssd) {SumSquareDiff.new}

  describe "sum square" do
    it "sums the square of the first ten natural numbers" do
      ssd.sum_of_squares(10).should be 385
    end

    it "squares the sum of the first ten natural numbers" do
      ssd.square_of_sums(10).should be 3025
    end

    it "determines the difference between the sum of squares and square of sum" do
      ssd.difference(10).should be 2640
    end

    it "figures out a large difference between for 100" do
      ssd.difference(100).should be 99
    end
  end
end
