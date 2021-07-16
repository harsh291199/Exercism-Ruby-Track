# frozen_string_literal: true

=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

# register color Duo class
class ResistorColorDuo
  def self.value(colors)
    array_of_colors = %w[black brown red orange yellow green blue violet grey white]
    [array_of_colors.index(colors[0]), array_of_colors.index(colors[1])].join.to_i
  end
end

puts ResistorColorDuo.value(%w[brown black])
puts ResistorColorDuo.value(%w[blue grey])
puts ResistorColorDuo.value(%w[yellow violet])
puts ResistorColorDuo.value(%w[orange orange])
puts ResistorColorDuo.value(%w[green brown orange])
