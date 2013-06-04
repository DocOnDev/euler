class Triplet
  attr_accessor :set

  def initialize(triplet)
    raise StandardError, "Set too large" if triplet.length > 3
    raise StandardError, "Set too small" if triplet.length < 3
    raise StandardError, "Set cannot contain duplicates" if triplet.uniq.length < 3
    @set = triplet.sort
  end

  def valid?
    @set[0] * @set[0] + @set[1] * @set[1] == @set[2] * @set[2]
  end

  def product
    @set.inject(:*)
  end

  def sum
    @set.inject(:+)
  end
end

class Hunter
  def triplet_for(sum)
    (1..100).each do |m|
      (m+1..100).each do |n|
        a = n*n - m*m
        b = 2 * m * n
        c = n*n + m*m

        triplet = Triplet.new([a,b,c])
        return triplet.set if triplet.valid? and triplet.sum == sum
      end
    end
    return nil
  end
end
