# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 7 Palindromes
# Problem Statement:
# Given a sentence, return true if the sentence is a palindrome.
# You are supposed to write a method palindrome? to accomplish this task.
# Note Ignore whitespace and cases of characters.
# Example:
# Given "Never odd or even" the method should return true
class Palindrome
  def palindrome?(sentence)
    # Write your code here
    normalize_string(sentence) == normalize_string(sentence.reverse)
  end

  private

  def normalize_string(str)
    str.downcase.gsub(/[^a-z0-9]/, '')
  end
end
