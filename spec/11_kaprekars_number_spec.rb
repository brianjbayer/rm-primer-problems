# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 11 Kaprekar's Number

require_relative '../11_kaprekars_number'

RSpec.describe KaprekarsNumber do
  subject(:kaprekars_number) { described_class.new }

  describe '#kaprekar?' do
    it 'returns true for 9' do
      expect(kaprekars_number.kaprekar?(9)).to be true
    end

    it 'returns false for 46' do
      expect(kaprekars_number.kaprekar?(46)).to be false
    end

    it 'returns true for 55' do
      expect(kaprekars_number.kaprekar?(55)).to be true
    end

    it 'returns false for 90' do
      expect(kaprekars_number.kaprekar?(90)).to be false
    end

    it 'returns true for 297' do
      expect(kaprekars_number.kaprekar?(297)).to be true
    end

    it 'returns true for 703' do
      expect(kaprekars_number.kaprekar?(703)).to be true
    end
  end
end
