# frozen_string_literal: true

=begin
Write your code for the 'Resistor Color' exercise in this file. Make the tests in
`resistor_color_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color` directory.
=end

# Resistor color class
class ResistorColor
  def self.color_code(color)
    array_of_colors = %w[black brown red orange yellow green blue violet grey white]
    [array_of_colors.index(color)].join.to_i
  end
end

puts ResistorColor.color_code('black')
puts ResistorColor.color_code('white')
puts ResistorColor.color_code('orange')
