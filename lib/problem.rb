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
        @list = args
    end

    def largest_value
        list.max
    end

    def smallest_product
        find_smallest_product_for largest_product
    end

    def is_multiples?
        is_product? list.max
    end

    private
    def find_smallest_product_for(current_product)
        candidate = current_product / get_divisor
        return find_smallest_product_for candidate if is_product?(candidate)
        current_product
    end

    def largest_product
        result = 1
        list.each { |item| result = result * item }
        result
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
