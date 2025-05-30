require "string_calculator"

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(StringCalculator.new.add("1,2")).to eq(3)
    end
  end
end