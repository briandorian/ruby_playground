class String

  # Returns content for palindrome testing.
  def processed_content
    self.downcase
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def blank?
    no_spaces = /([\S])/
    if processed_content.match(no_spaces) == nil
      return true
    else
      return false
    end
  end
end

#Add a blank? method to the String class that returns true if
# the string is empty or consists solely of whitespace.
# Hint: Use a regular expression (Section 4.3).
# You will need the regex syntax for the start and end of a line
# (Figure 7.12). (The Ruby on Rails framework adds a more advanced
# version of blank? that handles multiple different kinds of whitespace.)