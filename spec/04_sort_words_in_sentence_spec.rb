# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 4 Sort the words in a given sentence
require_relative '../04_sort_words_in_sentence'

RSpec.describe SortWordsInSentence do
  subject(:words_in_sentence) { described_class.new }

  describe '#sort_string' do
    it 'Given "Awesome I am" it returns "I am Awesome"' do
      expect(words_in_sentence.sort_string('Awesome I am')).to eq 'I am Awesome'
    end
  end
end
