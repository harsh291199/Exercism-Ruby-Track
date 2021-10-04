# frozen_string_literal: true

=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

# Acronym class
class Acronym
  def self.abbreviate(str)
    str.split(/\W+/).map { |word| word[0].upcase }.join
  end
end

puts Acronym.abbreviate('Portable Network Graphics')
puts Acronym.abbreviate('Ruby on Rails')
puts Acronym.abbreviate('First In, First Out')
puts Acronym.abbreviate('GNU Image Manipulation Program')
puts Acronym.abbreviate('Complementary metal-oxide semiconductor')
puts Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')
puts Acronym.abbreviate('Something - I made up from thin air')
