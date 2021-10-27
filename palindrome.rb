class String

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
    private

    # Returns content for palindrome testing.
    def processed_content
      self.downcase
    end
end
