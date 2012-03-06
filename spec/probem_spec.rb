require 'problem'

describe SmallestProduct do
    it "is 1 for 1 and 1" do
        small_prod = SmallestProduct.new
        small_prod.calc(1,1).should == 1
    end

    it "is 2 for 1 and 2" do
        small_prod = SmallestProduct.new
        small_prod.calc(1,2).should == 2
    end
end
