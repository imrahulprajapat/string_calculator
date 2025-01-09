require 'rails_helper'

describe CalculateString do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = described_class.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      calculator = described_class.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = described_class.new
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of numbers with newlines' do
      calculator = described_class.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiters' do
      calculator = described_class.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'handles custom delimiters' do
      calculator = described_class.new
      expect(calculator.add(";//;\n1;5")).to eq(6)
    end

    it 'raises an error for negative numbers' do
      calculator = described_class.new
      expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end

    it 'raises an error for multiple negative numbers' do
      calculator = described_class.new
      expect { calculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2,-3")
    end
  end
end
