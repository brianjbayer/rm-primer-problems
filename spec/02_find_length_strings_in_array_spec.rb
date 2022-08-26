# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 2 Find the length of strings in an array
require_relative '../02_find_length_strings_in_array'

RSpec.describe FindLengthStringsInArray do
  subject(:strings_in_array) { described_class.new }

  describe '#length_finder' do
    # rubocop:disable Style/WordArray
    it 'given ["I","am","genius"] it returns [1,2,6]' do
      expect(strings_in_array.length_finder(['I', 'am', 'genius'])).to match_array([1, 2, 6])
    end
    # rubocop:enable Style/WordArray

    it 'given ["things","are","","awesome"] it returns [6,3,0,7]' do
      expect(strings_in_array.length_finder(['things', 'are', '', 'awesome'])).to match_array([6, 3, 0, 7])
    end
  end
end
