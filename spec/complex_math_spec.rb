require 'spec_helper'
require 'complex_math'

RSpec.describe Math do
  describe '#multiplication' do
    it 'multiplications two numbers' do
      # binding.pry
      expect(ComplexMath.multiplication(1, 2)).to eq(2)
    end
  end

  describe '#divison' do
    it 'divides two numbers' do
      expect(ComplexMath.divison(6, 3)).to eq(2)
    end
  end
end