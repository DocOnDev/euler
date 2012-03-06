class SmallestProduct
    def calc(*args)
        result = 1
        args.each { |arg| result = result * arg }
        result
    end
end
