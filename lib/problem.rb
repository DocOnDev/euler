class SmallestProduct
    def calc(*args)
        list = ProductList.new(args)
        return list.largest_value if list.is_multiples?
        return list.multiple_of_all
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

    def multiple_of_all
        result = 1
        list.each { |item| result = result * item }
        result
    end
end
