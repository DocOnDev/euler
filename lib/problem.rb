class SumSquareDiff
  def sum_of_squares(max)
    result = 0
    (1..max).each do |num|
      result += (num * num)
    end
    result
  end

  def square_of_sums(max)
    result = 0
    (1..max).each do |num|
      result += num
    end
    result * result
  end

  def difference(max)
    square_of_sums(max) - sum_of_squares(max)
  end
end
