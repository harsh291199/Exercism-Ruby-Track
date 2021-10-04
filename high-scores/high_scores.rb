# frozen_string_literal: true

=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

# HighScores class
class HighScores
  def initialize(scores)
    @scores = scores
  end

  attr_reader :scores

  def latest
    @scores[@scores.length - 1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end

scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
object = HighScores.new(scores)
p object.scores
p object.latest
p object.personal_best
p object.personal_top_three
p object.latest_is_personal_best?
