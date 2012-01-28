class GetMultiples
    def initialize
        @multiples = []
    end
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
        @multiples << multiple
        self
    end
    private
    def build_list
        multiple_list = []
        (1...@limit).each do |number|
            @multiples.each do |multiple|
                multiple_list << number if number % multiple == 0
            end
        end
        multiple_list
    end
end
