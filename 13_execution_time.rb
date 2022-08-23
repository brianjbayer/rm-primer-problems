# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 13 Time to run code
# Problem Statement:
# You are given some code in the form of lambdas.
# Measure and return the time taken to execute that code.
class ExecutionTime
  def exec_time(proc)
    # your code here
    start_time = Time.now
    proc.call
    Time.now - start_time
  end
end
