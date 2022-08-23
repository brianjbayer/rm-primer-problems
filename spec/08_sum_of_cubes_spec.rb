# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 8 Compute sum of cubes for given range

require_relative '../08_sum_of_cubes'

RSpec.describe SumOfCubes do
  subject(:sum_of_cubes_of_range) { described_class.new }

  describe '#sum_of_cubes' do
    it 'returns 216 for range 3 to 5' do
      expect(sum_of_cubes_of_range.sum_of_cubes(3, 5)).to be 216
    end

    it 'returns 36 for range 1 to 3' do
      expect(sum_of_cubes_of_range.sum_of_cubes(1, 3)).to be 36
    end
  end
end
