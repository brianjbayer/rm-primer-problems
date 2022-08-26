# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 14 Number Shuffle

require_relative '../14_number_shuffle'

RSpec.describe NumberShuffle do
  subject(:num_shuf) { described_class.new }

  describe '#number_shuffle' do
    let(:all_permutations123) { [123, 132, 213, 231, 312, 321] }
    let(:all_permutations1234) do
      [1234, 1243, 1324, 1342, 1423, 1432,
       2134, 2143, 2314, 2341, 2413, 2431,
       3124, 3142, 3214, 3241, 3412, 3421,
       4123, 4132, 4213, 4231, 4312, 4321]
    end

    it 'returns [123, 132, 213, 231, 312, 321] for 123' do
      expect(num_shuf.number_shuffle(123)).to match_array(all_permutations123)
    end

    it 'returns all permutations (ed.) for 1234' do
      expect(num_shuf.number_shuffle(1234)).to match_array(all_permutations1234)
    end
  end
end
