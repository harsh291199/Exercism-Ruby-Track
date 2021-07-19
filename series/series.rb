# frozen_string_literal: true

=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

# class series
class Series
  def initialize(string)
    @str = string
  end

  def slices(size)
    raise ArgumentError if size > @str.length

    @str.split('').map(&:to_i).each_cons(size).to_a
  end
end

obj = Series.new('01234')
obj2 = Series.new('92834')
obj3 = Series.new('98273463')
obj4 = Series.new('37103')
obj5 = Series.new('31001')
obj6 = Series.new('982347')
obj7 = Series.new('91274')
obj8 = Series.new('81228')

p obj.slices(1)
p obj.slices(2)
p obj.slices(3)
p obj.slices(4)
p obj.slices(5)

p obj2.slices(1)
p obj3.slices(2)
p obj4.slices(2)
p obj5.slices(3)
p obj6.slices(3)
p obj7.slices(4)
p obj8.slices(5)

p obj.slices(6) # This gives Argument Error
