# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 16 Your Sum
# Problem Statement:
# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.
# Example:
# my_array = MyArray.new([1, 2, 3])
# my_array.sum gives 6
# my_array.sum(10) gives 16
# my_array.sum(0) {|n| n ** 2 } gives 14
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    # your code here
    return array.reduce(initial_value, :+) unless block_given?

    # rubocop:disable Style/ExplicitBlockArgument
    array.map { |n| yield(n) }.reduce(initial_value, :+)
    # rubocop:enable Style/ExplicitBlockArgument
  end
end
