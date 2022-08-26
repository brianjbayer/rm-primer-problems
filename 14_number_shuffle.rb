# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 14 Number shuffle
# Problem Statement:
# Given a 3 or 4 digit number with distinct digits, return a sorted array
# of all the unique numbers that can be formed with those digits.
# Example:
# Given: 123
# Return: [123, 132, 213, 231, 312, 321]
class NumberShuffle
  def number_shuffle(number)
    # your code here
    number.to_s.chars.permutation.to_a.map { |char_arr| char_arr.join('').to_i }.sort
  end
end
