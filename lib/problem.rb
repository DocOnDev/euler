class GetMultiples
    attr_accessor :multiple_list
    def initialize
        @multiple_list = []
    end
    def list
        (1...@limit).each {|number| multiple_list << number if number % @multiple == 0}
        multiple_list
    end
    def under limit
        @limit = limit
        self
    end
    def of multiple
        @multiple = multiple
        self
    end
end
