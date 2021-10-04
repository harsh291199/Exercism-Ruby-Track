# frozen_string_literal: true

=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

# Phrase class
class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    result = Hash.new(0)
    @sentence.downcase.split(/(?!(?<=\w)'(?=\w))\W+/).each { |w| result[w] += 1 }
    result
  end
end

phrase = Phrase.new("First: don't laugh. Then: don't cry.")
phrase2 = Phrase.new('go Go GO Stop stop')
phrase3 = Phrase.new("Joe can't tell between 'large' and large.")
phrase4 = Phrase.new(' multiple   whitespaces')
phrase5 = Phrase.new('one fish two fish red fish blue fish')
phrase6 = Phrase.new("one,\ntwo,\nthree")

puts phrase.word_count
puts phrase2.word_count
puts phrase3.word_count
puts phrase4.word_count
puts phrase5.word_count
puts phrase6.word_count
