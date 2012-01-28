require 'problem'

describe GetMultiples do
    let(:multiples) { GetMultiples.new }
    context "list" do
        it "returns 3 for mulitples of 3 under 5" do
            multiples.of(3).under(5).list.should == [3]
        end
        it "returns [3,6] for multiples of 3 under 7" do
            multiples.of(3).under(7).list.should == [3,6]
        end
        it "returns [3,6,9] for multiple of 3 under 10" do
            multiples.of(3).under(10).list.should == [3,6,9]
        end
        it "returns [5,10] for multiples of 5 under 11" do
            multiples.of(5).under(11).list.should == [5,10]
        end
    end
    context "sum" do
        it "returns 15 for multiples of 5 under 11" do
            multiples.of(5).under(11).sum.should == 15
        end
        it "returns 18 for multiples of 3 under 10" do
            multiples.of(3).under(10).sum.should == 18
        end
        it "returns 9 for multiples of 3 under 8" do
            multiples.of(3).under(8).sum.should == 9
        end
    end
    context "multiple multiples" do
        it "returns 33 for multiples of 3 and 5 under 11" do
            multiples.of(3).of(5).under(11).sum.should == 33
        end
    end
end
