# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 10 Check if all elements in an array are Fixnum

require_relative '../10_check_all_elements_in_array_fixnum'

RSpec.describe CheckAllElementsInArrayFixnum do
  subject(:check_array) { described_class.new }

  describe '#array_of_fixnums?' do
    it 'returns "true" for [1,2,3]' do
      expect(check_array.array_of_fixnums?([1, 2, 3])).to be true
    end

    it 'returns "false" for ["a",1,:b]' do
      expect(check_array.array_of_fixnums?(['a', 1, :b])).to be false
    end

    it 'returns "true" for []' do
      expect(check_array.array_of_fixnums?([])).to be true
    end
  end
end
