require 'problem'

describe FibonacciSequence do
    let(:sequence) { FibonacciSequence.new }
    it "is 1 for term 1" do
        sequence.term(1).should == 1
    end
    it "is 5 for term 4" do
        sequence.term(4).should == 5
    end
    it "is 8 for term 5" do
        sequence.term(5).should == 8
    end
    it "is 13 for term 6" do
        sequence.term(6).should == 13
    end
end
