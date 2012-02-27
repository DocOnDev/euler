class PalindromeDetector
    def is_palindrome?(number)
        number = number.to_s
        return true if number.length < 2
        return true if number[0] == number[-1]
        false
    end
end
