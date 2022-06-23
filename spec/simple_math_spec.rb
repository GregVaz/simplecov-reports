require 'spec_helper'
require 'simple_math'

RSpec.describe Math do
  describe '#add' do
    it 'adds two numbers' do
      # binding.pry
      expect(SumTwoNumbers.add(1, 2)).to eq(3)
    end
  end
end