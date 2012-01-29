require 'problem'

describe PrimeFactors do
    let(:factors) { PrimeFactors.new }
    context "generate" do
        it "returns an array if integers" do
            factors.generate(0).should be_a Array
        end
        it "is [2] for a product of 2" do
            factors.generate(2).should == [2]
        end
        it "is [3] for a product of 3" do
            factors.generate(3).should == [3]
        end
    end
end
