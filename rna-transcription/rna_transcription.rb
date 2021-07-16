# frozen_string_literal: true

=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

# Complement class
class Complement
  DNA_TO_RNA = Hash['G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U']

  def self.of_dna(dna)
    dna_array = dna.split('')
    results = []
    dna_array.each do |n|
      results.push(DNA_TO_RNA[n])
    end
    results.join('')
  end
end

puts Complement.of_dna('')
puts Complement.of_dna('C')
puts Complement.of_dna('G')
puts Complement.of_dna('T')
puts Complement.of_dna('A')
puts Complement.of_dna('ACGTGGTCTTAA')
