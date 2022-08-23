# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 5 Select random elements from an array
# Problem Statement:
# Create a method 'random_select' which, when given an array of elements (array) and
# a number (n), returns n randomly selected elements from that array.
# Example:
# Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the given
# array. (Note: those two random numbers may be the same number.) The method should
# return those random values in a new array.
# Calling the method twice should ideally return different sets of values
# (though it may not).
# The exercise is almost to write your own Array#sample, so it's been disallowed.
class SelectRandomElementsFromArray
  # rubocop:disable Naming/MethodParameterName
  def random_select(array, n)
    array.shuffle.slice(0, n)
  end
  # rubocop:enable Naming/MethodParameterName
end
