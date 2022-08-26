# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 2 Find the length of strings in an array
# Problem Statement:
# Given an array containing some strings, return an array containing the length of those strings.
# You are supposed to write a method named 'length_finder' to accomplish this task.
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4,5,3]
class FindLengthStringsInArray
  def length_finder(input_array)
    # https://stackoverflow.com/questions/1217088/what-does-mapname-mean-in-ruby
    input_array.map(&:length)
  end
end
