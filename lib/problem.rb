class PalindromeDetector
    def is_palindrome?(number)
        number = number.to_s
        while number.length > 1
            return false if first_and_last_differ_for number
            number = drop_first_and_last_from number
        end
        true
    end

    def drop_first_and_last_from(number)
        number.chop!
        number.slice!(1..-1)
    end

    def first_and_last_differ_for(number)
        number[0] != number[-1]
    end
end
