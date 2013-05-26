class SmallestProduct
  def calc(*args)
    list = ProductList.new(args)
    return list.largest_value if list.is_multiples?
    return list.smallest_product
  end

end

class ProductList
  attr_reader :list

  def initialize(args)
    @list = args.uniq
  end

  def largest_value
    list.max
  end

  def smallest_product
    find_product_smaller_or_equal_to largest_product
  end

  def is_multiples?
    is_product? list.max
  end

  private
  def find_product_smaller_or_equal_to(current_product)
    list.delete(1)
    list.sort.each do |item|
      candidate = current_product / item
      return find_product_smaller_or_equal_to candidate if is_product?(candidate)
    end
    current_product
  end

  def largest_product
    return list.inject(:*)
  end

  def get_divisor
    return list.min unless list.min == 1
    list.sort[1]
  end

  def is_product?(candidate)
    list.each{ |item| return false if candidate % item > 0 }
    true
  end
end
