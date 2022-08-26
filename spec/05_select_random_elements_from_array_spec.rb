# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 5 Select random elements from an array
# Note that the tests implemented here are not the same as Ruby Monk's

require_relative '../05_select_random_elements_from_array'

RSpec.describe SelectRandomElementsFromArray do
  subject(:array_elements) { described_class.new }

  describe '#random_select' do
    it 'passing [1, 2, 3, 4, 5] and 2 returned' do
      expect(array_elements.random_select([1, 2, 3, 4, 5], 2).count).to be 2
    end

    it 'returns only the values present in the array passed to the method' do
      original_array = [1, 2, 3, 4, 5]
      random_selected_elements = array_elements.random_select(original_array, 3)
      expect(original_array).to include(*random_selected_elements)
    end

    it 'does not call Array#sample' do
      original_array = [99, 23, 33, 104, 57, 4444]
      # rubocop:disable RSpec/MessageSpies
      expect(original_array).not_to receive(:sample)
      # rubocop:enable RSpec/MessageSpies
      array_elements.random_select(original_array, 3)
    end
  end
end
