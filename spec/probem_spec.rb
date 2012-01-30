require 'problem'

describe PrimeFactors do
    let(:factors) { PrimeFactors.new }
    context "generate" do
        it "returns an array of integers" do
            factors.generate(0).list.should be_a Array
        end
        it "is [] for a product of 0" do
            factors.generate(0).list.should == []
        end
        it "is [2] for a product of 2" do
            factors.generate(2).list.should == [2]
        end
        it "is [3] for a product of 3" do
            factors.generate(3).list.should == [3]
        end
        it "is [2,2] for a product of 4" do
            factors.generate(4).list.should == [2,2]
        end
        it "is [2,2,2] for a product of 8" do
            factors.generate(8).list.should == [2,2,2]
        end
        it "is [2,3] for a product of 6" do
            factors.generate(6).list.should == [2,3]
        end
        it "is [3,3] for a product of 9" do
            factors.generate(9).list.should == [3,3]
        end
        it "should be [2,3,5] for a product of 30" do
            factors.generate(30).list.should == [2,3,5]
        end
        it "should be [5,7,13,29] for a product of 13195" do
            factors.generate(13195).list.should == [5,7,13,29]
        end
    end
    context "largest" do
        it "is 5 for a product of 30" do
            factors.generate(30).largest.should == 5
        end
        it "is 29 for a product of 13195" do
            factors.generate(13195).largest.should == 29
        end
        it "is 6857 for 600851475143" do
            factors.generate(600851475143).largest.should == 6857
        end
    end
end
