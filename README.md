# String Calculator (Ruby)

This is a simple Ruby implementation of a **String Calculator**. It takes a string of numbers separated by delimiters and returns their sum. It supports custom delimiters and handles invalid inputs like negative numbers.

## 📦 Features

- Returns `0` for empty string input.
- Supports default delimiters: **comma (`,`)** and **newline (`\n`)**.
- Allows custom delimiters using the format: `//<delimiter>\n<numbers>`.
- Throws an error for **negative numbers**, listing all negatives found.

## 🧪 Examples

```ruby
calc = StringCalculator.new

calc.add("")                    # => 0
calc.add("1")                   # => 1
calc.add("1,2")                 # => 3
calc.add("1\n2,3")              # => 6
calc.add("//;\n1;2")            # => 3
calc.add("//|\n1|2|3")          # => 6
calc.add("1,-2,3")              # => raises "negative numbers not allowed: -2"
