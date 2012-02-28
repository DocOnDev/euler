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
end
