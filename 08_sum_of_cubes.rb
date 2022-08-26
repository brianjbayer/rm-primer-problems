# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 8 Compute sum of cubes for given range
# Problem Statement:
# Compute the sum of cubes for a given range a through b.
# Write a method called sum_of_cubes to accomplish this task
# Example:
# Given range 1 to 3 the method should return 36
class SumOfCubes
  # rubocop:disable Naming/MethodParameterName
  def sum_of_cubes(a, b)
    # Write your code here
    (a..b).reduce(0) { |sum, i| sum + (i**3) }
  end
  # rubocop:enable Naming/MethodParameterName
end
