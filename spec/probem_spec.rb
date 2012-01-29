require 'problem'

describe FibonacciSequence do
    let(:sequence) { FibonacciSequence.new }
    context "sequence" do
        it "is 1 for term 1" do
            sequence[1].should == 1
        end
        it "is 5 for term 5" do
            sequence[5].should == 5
        end
        it "is 8 for term 6" do
            sequence[6].should == 8
        end
        it "is 13 for term 7" do
            sequence[7].should == 13
        end
    end
    context "under" do
        it "is [0,1,1] for under 2" do
            sequence.under(2).should == [0,1,1]
        end
        it "is [0,1,1,2] for under 3" do
            sequence.under(3).should == [0,1,1,2]
        end
        it "is [0,1,1,2,3,5] for under 7" do
            sequence.under(7).should == [0,1,1,2,3,5]
        end
        it "is [0,1,1,2,3,5,8,13,21,34] for under 40" do
            sequence.under(40).should == [0,1,1,2,3,5,8,13,21,34]
        end
    end
    context "evens" do
        it "is [0] for evens under 2" do
            sequence.under(2).evens.should == [0]
        end
        it "is [0,2,8] for evens under 10" do
            sequence.under(10).evens.should == [0,2,8]
        end
    end
    context "sum" do
        it "is 2 for sum of under 2" do
            sequence.under(2).sum.should == 2
        end
        it "is 12 for sum of under 7" do
            sequence.under(7).sum.should == 12
        end
        it "is 10 for sum of evens under 10" do
            sequence.under(10).evens.sum.should == 10
        end
        it "is 44 for sum of evens under 40" do
            sequence.under(40).evens.sum.should == 44
        end
    end
end
