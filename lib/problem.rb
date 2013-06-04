class Triplet
  def initialize(triplet)
    raise StandardError, "Set too large" if triplet.length > 3
    raise StandardError, "Set too small" if triplet.length < 3
    raise StandardError, "Set cannot contain duplicates" if triplet.uniq.length < 3
    @triplet = triplet
  end

  def valid?
    @triplet[0] * @triplet[0] + @triplet[1] * @triplet[1] == @triplet[2] * @triplet[2]
  end

  def product
    @triplet.inject(:*)
  end
end
