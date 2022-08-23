# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 15 Orders and costs

require_relative '../15_restaurant'

# rubocop:disable Style/HashSyntax
RSpec.describe Restaurant do
  describe '#cost' do
    it 'returns the correct cost for a single order' do
      restaurant = described_class.new({ :rice => 12, :noodles => 5 })
      order = { :rice => 2, :noodles => 1 }
      expect(restaurant.cost(order)).to be 29
    end

    it 'returns the correct costs for multiple orders' do
      restaurant = described_class.new({ :rice => 10, :noodles => 6 })
      order1 = { :rice => 1, :noodles => 3 }
      order2 = { :rice => 4, :noodles => 2 }
      expect(restaurant.cost(order1, order2)).to be 80
    end
  end
end
# rubocop:enable Style/HashSyntax
