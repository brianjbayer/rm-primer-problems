# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 13 Time to run code

require_relative '../13_execution_time'

RSpec.describe ExecutionTime do
  subject(:ex_time) { described_class.new }

  describe '#exec_time' do
    it 'takes more time to execute a task 10 times' do
      task = -> { 1.7976931348623157e+301 / 1.7976931348623157e+307 }
      task_10_times = -> { 10.times { task.call } }
      expect(ex_time.exec_time(task_10_times)).to be > ex_time.exec_time(task)
    end

    it 'division takes more time than addition', flaky: true do
      # Doing these ops 1000 times to achieve a consistent significant time difference
      # to mitigate false fails (flakiness) due to operations/results caching
      # Due to these false fails and the overall non-criticality of this test
      # it should not be run in Continuous Integration
      div = -> { 1000.times { 1.7976931348623157e+300 / -1.7976931348623156e+307 } }
      add = -> { 1000.times { 1 + 1 } }
      expect(ex_time.exec_time(div)).to be > ex_time.exec_time(add)
    end

    it 'Array::find takes more time than Array::[]' do
      arr_find = -> { [1, 2, 3, 4, 5, 6].find { |i| i > 5 } }
      arr_index = -> { [1, 2, 3, 4, 5, 6][5] }
      expect(ex_time.exec_time(arr_find)).to be > ex_time.exec_time(arr_index)
    end
  end
end
