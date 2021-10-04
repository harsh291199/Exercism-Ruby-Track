# frozen_string_literal: true

=begin
Write your code for the 'Hello World' exercise in this file. Make the tests in
`hello_world_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hello-world` directory.
=end

# HelloWorld class
class HelloWorld
  def self.hello
    'Hello, World!'
  end
end

puts HelloWorld.hello
