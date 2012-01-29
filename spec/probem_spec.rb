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
    end
end
