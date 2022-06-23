require 'spec_helper'
require 'simple_math'

RSpec.describe Math do
  describe '#add' do
    it 'adds two numbers' do
      # binding.pry
      expect(SumTwoNumbers.add(1, 2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(SumTwoNumbers.subtract(2, 1)).to eq(1)
    end
  end
end