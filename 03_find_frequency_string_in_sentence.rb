# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 3 Find the frequency of a string in a sentence
# Problem Statement:
# Given a sentence containing multiple words, find the frequency of a given word in that sentence.
# Construct a method named 'find_frequency' which accepts two arguments 'sentence' and 'word',
# both of which are String objects.
# Example: The method, given 'Ruby is The best language in the World' and 'the', should
# return 2 (comparison should be case-insensitive).
class FindFrequencyStringInSentence
  def find_frequency(sentence, word)
    # Your code here
    sentence.downcase.split(/\W/).count(word)
  end
end
