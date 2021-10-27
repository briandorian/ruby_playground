require './integer_palindrome.rb'
require './string_palindrome.rb'

module Palindrome
  include Enumerable

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def returnStuff
    puts "The minimum in the range 1..100 is #{(1..100).minmax[0]}, the maximum is #{(1..100).minmax[1]}
          and the sum of all the values is #{(1..100).sum}"
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    self.to_s.downcase
  end
end
# Using methods from the documentation for the Enumerable module,
# determine the maximum, minimum, and sum of the range 1..100.

