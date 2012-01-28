class GetMultiples
    def list
        [@multiple]
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
