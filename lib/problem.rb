class Triplet
  def initialize(triplet)
    raise StandardError, "Set too large" if triplet.length > 3
    raise StandardError, "Set too small" if triplet.length < 3
    raise StandardError, "Set cannot contain duplicates" if triplet.uniq.length < 3
  end
end
