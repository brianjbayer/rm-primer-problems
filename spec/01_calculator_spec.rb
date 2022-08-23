# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 1 Calculator class
require 'faker'
require_relative '../01_calculator'

RSpec.describe Calculator do
  subject(:calculator) { described_class.new }

  describe '#add' do
    specify 'adding 2 and 3 gives 5' do
      expect(calculator.add(2, 3)).to be 5
    end

    specify 'adding 4 and -4 gives 0' do
      expect(calculator.add(4, -4)).to be 0
    end

    # The following test was not one of the original tests but is a great general test
    it 'adds two numbers' do
      addend1 = Faker::Number.number
      addend2 = Faker::Number.number
      expect(calculator.add(addend1, addend2)).to eq(addend1 + addend2)
    end
  end

  describe '#subtract' do
    specify 'subtracting 2 from 5 gives 3' do
      expect(calculator.subtract(5, 2)).to be 3
    end
  end
end
