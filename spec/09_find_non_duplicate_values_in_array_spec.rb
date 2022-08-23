# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 9 Find non-duplicate values in an Array

require_relative '../09_find_non_duplicate_values_in_array'

RSpec.describe NonDuplicateValuesInArray do
  subject(:uniq_array) { described_class.new }

  describe '#non_duplicated_values' do
    it 'returns [1,4,5], given [1,2,2,3,3,4,5]' do
      expect(uniq_array.non_duplicated_values([1, 2, 2, 3, 3, 4, 5])).to match_array([1, 4, 5])
    end

    it 'returns [1,3], given [1,2,2,3,4,4]' do
      expect(uniq_array.non_duplicated_values([1, 2, 2, 3, 4, 4])).to match_array([1, 3])
    end
  end
end
