require 'problem'

describe PalindromeDetector do
    context 'single digit' do
        it 'considers any single digit to be a palindrome' do
            detector = PalindromeDetector.new
            (0..9).each { |digit| detector.is_palindrome?(1).should == true }
        end
    end

    context 'double digits' do
        it 'considers 11 to be a palindrome' do
            detector = PalindromeDetector.new
            detector.is_palindrome?(11).should == true
        end

        it 'considers 12 to not be a palindrome' do
            detector = PalindromeDetector.new
            detector.is_palindrome?(12).should == false
        end
    end
end
