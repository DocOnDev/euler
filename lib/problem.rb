class SmallestProduct
    def calc(*args)
        list = ProductList.new(args)
        return list.largest_value if list.is_multiples?
        return list.largest_product
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

    def is_multiples?
        list.each{ |item| return false if list.max % item > 0 }
        true
    end

    def largest_product
        result = 1
        list.each { |item| result = result * item }
        result
    end
end
