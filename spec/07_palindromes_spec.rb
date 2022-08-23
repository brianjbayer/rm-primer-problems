# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 7 Palindromes

require_relative '../07_palindromes'

RSpec.describe Palindrome do
  subject(:palindrome) { described_class.new }

  describe '#palindrome?' do
    it 'returns true for "Race fast safe car"' do
      expect(palindrome.palindrome?('Race fast safe car')).to be true
    end

    it 'returns true for "Live not on Evil"' do
      expect(palindrome.palindrome?('Live not on Evil')).to be true
    end

    it 'returns false for "Yreka Bakey"' do
      expect(palindrome.palindrome?('Yreka Bakey')).to be false
    end

    # My additional test for non- alphanumeric characters
    it 'handles non-alphanumeric and returns true for "A man, a plan, a canal. Panama"' do
      expect(palindrome.palindrome?('A man, a plan, a canal. Panama')).to be true
    end
  end
end
