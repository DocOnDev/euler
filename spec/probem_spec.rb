require 'problem'

describe SmallestProduct do
    let(:small_prod) { SmallestProduct.new }
    context "two integers" do
        it "is 6 for 2 and 3" do
            small_prod.calc(2,3).should == 6
        end
    end

    context "n integers" do
        it "is 6 for 2, 3, and 6" do
            small_prod.calc(6,2,3).should == 6
        end

        it "is 42 for 3, 7, and 6" do
            small_prod.calc(3,7,6).should == 42
        end

        it "is 42 for 1, 3, 7, and 6" do
            small_prod.calc(1,3,7,6).should == 42
        end

        it "is 60 for 1, 2, 3, 4, and 5" do
            small_prod.calc(1,2,3,4,5).should == 60
        end

        it "is HUGE for 1 through 20" do
            small_prod.calc(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).should == 148492554210000
        end
    end

    context "repeating numbers" do
        it "ignores repeating numbers" do
            small_prod.calc(1,1,2,3).should == 6
        end
    end
end
