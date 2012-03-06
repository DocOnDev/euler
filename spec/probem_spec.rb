require 'problem'

describe SmallestProduct do
    it "is 1 for 1 and 1" do
        small_prod = SmallestProduct.new
        small_prod.calc(1,1).should == 1
    end
end
