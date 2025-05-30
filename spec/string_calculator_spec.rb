require "string_calculator"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it "should return 0 for empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "should return 1 for single number string" do
      expect(calculator.add("1 ")).to eq(1)
    end

    it 'should return the sum of two numbers' do
      expect(calculator.add("1,2")).to eq(3)
    end

    it 'should return the sum of any numbers' do
      expect(calculator.add("1,2,6,4,3,5,8,43,3")).to eq(75)
    end

    it 'should handle new lines between numbers' do
      expect(calculator.add("1,2\n3")).to eq(6)
    end

    it "sholud support custom delimiter" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "raises error for single negative number" do
      expect { calculator.add("1,-2,13") }.to raise_error("negative numbers not allowed: -2")
    end

    it "raises error for multiple negative numbers" do
      expect { calculator.add("1,-2,-4,13") }.to raise_error("negative numbers not allowed: -2, -4")
    end
  end
end