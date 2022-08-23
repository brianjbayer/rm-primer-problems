# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 3 Find the frequency of a string in a sentence
require_relative '../03_find_frequency_string_in_sentence'

RSpec.describe FindFrequencyStringInSentence do
  subject(:string_in_sentence) { described_class.new }

  describe '#find_frequency' do
    it '"Do or do not... there is no try." has two "do"s' do
      expect(string_in_sentence.find_frequency('Do or do not... there is no try.', 'do')).to be 2
    end

    it '"Judge me by size, do you?" does not have "Yoda"' do
      expect(string_in_sentence.find_frequency('Judge me by size, do you?', 'Yoda')).to be 0
    end

    it '"Named must your fear be before banish it you can." has one "fear"' do
      expect(string_in_sentence.find_frequency('Named must your fear be before banish it you can.', 'fear')).to be 1
    end

    it 'Frequency of the word "hello" in the sentence "hello" should be 1' do
      expect(string_in_sentence.find_frequency('hello', 'hello')).to be 1
    end
  end
end
