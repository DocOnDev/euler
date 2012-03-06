class SmallestProduct
    def calc(*args)
        result = 1
        return largest_value(args) if are_multiples?(args)
        args.each { |arg| result = result * arg }
        result
    end

    def are_multiples?(args)
        args.sort
        biggest = args[-1]
        args.each{ |arg| return false if biggest % arg > 0 }
        return true
    end

    def largest_value(args)
        return args.max
    end
end
