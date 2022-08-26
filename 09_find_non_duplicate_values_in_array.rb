# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 9 Find non-duplicate values in an Array
# Problem Statement:
# Given an Array, return the elements that are present exactly once in the array.
# You need to write a method called non_duplicated_values to accomplish this task.
# Example:
# Given [1,2,2,3,3,4,5], the method should return [1,4,5]
class NonDuplicateValuesInArray
  def non_duplicated_values(values)
    # Write your code here
    values.select { |i| values.count(i) == 1 }
  end
end
