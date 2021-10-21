


def email_parts(string)
  mail_before_point = string.partition(".")
  first_part = mail_before_point[0].partition("@").first
  server_mail = mail_before_point[0].partition("@")[2]
  domain_mail = mail_before_point[2]

  "Test #{first_part} - #{server_mail} - #{domain_mail}"
end

# By filling in the code in Listing 7.7, add a louder method to the Phrase object that
# returns a LOUDER (all-caps) version of the content. Confirm in the REPL
# that the result appears as in Listing 7.8.

# < is how Ruby indicates that Phrase inherits from String class
  class Phrase < String
  attr_accessor :content
  def initialize(content)
    @content = content
  end

  #returns true if palindrome, false if not.
  def palindrome?
    #because a phrase is a string, self is a string, which means we can call the downcase method directly.
    processed_content = self.downcase
    processed_content == processed_content.reverse
  end

  def louder
    self.content.upcase
  end
end

phrase = Phrase.new("Madam, I'm Adam")
puts phrase.content

phrase.content = "Able was I, ere I saw Elba."
puts phrase.content
