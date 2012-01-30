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
        it "is [2,3] for a product of 6" do
            factors.generate(6).should == [2,3]
        end
        it "is [3,3] for a product of 9" do
            factors.generate(9).should == [3,3]
        end
        it "should be [2,3,5] for a product of 30" do
            factors.generate(30).should == [2,3,5]
        end
        it "should be [5,7,13,29] for a product of 13195" do
            factors.generate(13195).should == [5,7,13,29]
        end
    end
end
