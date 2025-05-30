class StringCalculator
  def add(input)
    return 0 if input.strip.empty?

    separator = ","
    if input.start_with?("//")
      parts = input.split("\n", 2)
      separator = parts[0][2..]
      input = parts[1]
    end

    input = input.gsub("\n", separator)
    numbers = split_string(input, separator).map(&:to_i)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end

  private

  def split_string(input, separator)
    input.split(separator)
  end
end