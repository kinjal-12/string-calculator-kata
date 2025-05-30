class StringCalculator
  def add(numbers)
    return 0 if numbers.strip == ""
    numbers.split(",").map(&:to_i).sum
  end
end