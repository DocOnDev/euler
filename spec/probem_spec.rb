require 'problem'

describe GetMultiples do
    let(:multiples) { GetMultiples.new }
    it "returns 3 for mulitples of 3 under 5" do
        multiples.of(3).under(5).list.should == [3]
    end
    it "returns [3,6] for multiples of 3 under 7" do
        multiples.of(3).under(7).list.should == [3,6]
    end
    it "return [3,6,9] for multiple of 3 under 10" do
        multiples.of(3).under(10).list.should == [3,6,9]
    end
end
