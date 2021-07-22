# frozen_string_literal: true

# Write your code for the 'Microwave' exercise in this file. Make the tests in
# `microwave_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/microwave` directory.

# class Microwave
class Microwave
  def initialize(input)
    @input = input
  end

  def timer
    if @input < 100
      lt_hundred
    else
      gt_hundred
    end
  end

  def lt_hundred
    minute = @input / 60
    minutes = minute < 10 ? "0#{minute}" : minute

    second = @input % 60
    seconds = second < 10 ? "0#{second}" : second

    "#{minutes}:#{seconds}"
  end

  def gt_hundred
    minute = @input / 100
    minutes = minute < 10 ? "0#{minute}" : minute

    second = @input % 100
    seconds = second < 10 ? "0#{second}" : second

    "#{minutes}:#{seconds}"
  end
end

puts Microwave.new(1).timer
puts Microwave.new(59).timer
puts Microwave.new(60).timer
puts Microwave.new(100).timer
puts Microwave.new(90).timer
puts Microwave.new(101).timer
puts Microwave.new(61).timer
puts Microwave.new(159).timer
puts Microwave.new(200).timer
puts Microwave.new(1001).timer
