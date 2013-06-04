require 'problem'

describe 'triplet' do
  it 'fails if there are more than three elements' do
    expect { Triplet.new([1,2,3,4]) }.to raise_error(StandardError, 'Set too large')
  end

  it 'fails if there are fewer than three elements' do
    expect { Triplet.new([1,2]) }.to raise_error(StandardError, 'Set too small')
  end

  it 'fails if any of the elements are equivalent' do
    expect { Triplet.new([1,1,2]) }.to raise_error(StandardError, 'Set cannot contain duplicates')
  end

  it 'recognizes a valid pythagorean triplet' do
    triplet = Triplet.new([3,4,5])
    triplet.should be_valid
  end

  it 'recognizes an invalid pythagorean tiplet' do
    triplet = Triplet.new([4,5,6])
    triplet.should_not be_valid
  end

  it 'knows the product of the triplet' do
    triplet = Triplet.new([3,4,5])
    triplet.product.should == 3*4*5
  end
end
