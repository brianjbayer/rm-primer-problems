# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 10 Check if all elements in an array are Fixnum
# Problem Statement:
# Given an array, return true if all the elements are Fixnums.
# You need to write array_of_fixnums? method to accomplish this task.
# Example:
# Given [1,2,3], the method should return true
class CheckAllElementsInArrayFixnum
  def array_of_fixnums?(array)
    # Write your code here
    # rubocop:disable Lint/UnifiedInteger
    array.all? { |i| i.is_a?(Fixnum) }
    # rubocop:enable Lint/UnifiedInteger
  end
end
