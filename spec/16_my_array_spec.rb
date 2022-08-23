# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 16 Your Sum

require_relative '../16_my_array'

RSpec.describe MyArray do
  describe '#sum' do
    context 'when no block is given' do
      subject(:my_array1) { described_class.new([4, 2, 9]) }

      it 'gives the sum of all elements when no initial value is given' do
        expect(my_array1.sum).to be 15
      end

      it 'gives the sum of all elements and initial value' do
        expect(my_array1.sum(6)).to be 21
      end
    end

    context 'when a block is given' do
      subject(:my_array2) { described_class.new([1, 10, 5]) }

      it 'evaluates the block and gives the sum of results when no inital value is given' do
        expect(my_array2.sum { |n| n**3 }).to be 1126
      end

      it 'evaluates the block and gives the sum of results and inital value' do
        expect(my_array2.sum(42) { |n| n**3 }).to be 1168
      end
    end
  end
end
