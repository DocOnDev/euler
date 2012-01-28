require 'problem'

describe GetMultiples do
    it "returns 3 for mulitples of 3 under 5" do
        multiples = GetMultiples.new
        multiples.of(3).under(5).list.should == [3]
    end
end
