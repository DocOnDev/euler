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
end
