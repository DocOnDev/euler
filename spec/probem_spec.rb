require 'problem'

describe PalindromeDetector do
    let(:detector) { PalindromeDetector.new }

    context 'single digit' do
        it 'considers any single digit to be a palindrome' do
            (0..9).each { |digit| detector.is_palindrome?(digit).should == true }
        end
    end

    context 'double digits' do
        it 'considers 11 to be a palindrome' do
            detector.is_palindrome?(11).should == true
        end

        it 'considers 12 to not be a palindrome' do
            detector.is_palindrome?(12).should == false
        end

        it 'considers 13 to not be a palindrome' do
            detector.is_palindrome?(13).should == false
        end

        it 'considers 22 to not be a palindrome' do
            detector.is_palindrome?(22).should == true
        end

        it 'considers any repeated double-digit a palindrome' do
            (0..9).each { |digit| detector.is_palindrome?(digit*11).should == true }
        end
    end

    context 'triple digits' do
        it 'considers 121 to be a palindrome' do
            detector.is_palindrome?(121).should == true
        end
    end

    context 'quadruple digits' do
        it 'considers 1341 to not be a palindrome' do
            detector.is_palindrome?(1341).should == false
        end

        it 'considers 2972 to not be a palindrome' do
            detector.is_palindrome?(2972).should == false
        end

        it 'considers 2992 to be a palindrome' do
            detector.is_palindrome?(2992).should == true
        end
    end
    it "finds the largest" do
        outer = inner = 999
        found = false
        while inner > 900 do
            outer.downto(outer-20) { |out| inner.downto(inner-100) do |_in| 
                if detector.is_palindrome?(out * _in)
                    puts out
                    puts _in
                    puts (out * _in)  
                    found = true
                end
            end
            }
            outer -= 1
            inner -= 1
        end
    end
end

