require 'problem'

describe PrimeFactors do
    let(:factors) { PrimeFactors.new }
    context "generate" do
        it "returns an array of integers" do
            factors.generate(0).should be_a Array
        end
        it "is [] for a product of 0" do
            factors.generate(0).should == []
        end
        it "is [2] for a product of 2" do
            factors.generate(2).should == [2]
        end
        it "is [3] for a product of 3" do
            factors.generate(3).should == [3]
        end
        it "is [2,2] for a product of 4" do
            factors.generate(4).should == [2,2]
        end
        it "is [2,2,2] for a product of 8" do
            factors.generate(8).should == [2,2,2]
        end
    end
end
