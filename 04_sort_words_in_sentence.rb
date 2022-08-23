# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 4 Sort the words in a given sentence
# Problem Statement:
# Create a method named 'sort_string' which accepts a String and rearranges all the
# words in ascending order, by length. Let's not treat the punctuation marks any
# different than other characters and assume that we will always have single space
# to separate the words.
# Example: Given a string "Sort words in a sentence", it should return
# "a in Sort words sentence".
class SortWordsInSentence
  def sort_string(string)
    # your code here
    string.split(' ').sort_by(&:length).join(' ')
  end
end
