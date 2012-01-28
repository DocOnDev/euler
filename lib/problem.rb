class GetMultiples
    def list
        build_list
    end
    def sum
        build_list.inject(:+)
    end
    def under limit
        @limit = limit
        self
    end
    def of multiple
        @multiple = multiple
        self
    end
    private
    def build_list
        multiple_list = []
        (1...@limit).each {|number| multiple_list << number if number % @multiple == 0}
        multiple_list
    end
end
