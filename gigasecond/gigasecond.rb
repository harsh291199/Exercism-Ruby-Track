# frozen_string_literal: true

=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

GIGASECOND = 10**9
# Gigasecond clss
class Gigasecond
  def self.from(date)
    date + GIGASECOND
  end
end

puts Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
puts Gigasecond.from(Time.utc(1977, 6, 13, 0, 0, 0))
puts Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))
puts Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))
puts Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59))