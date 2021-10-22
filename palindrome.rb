


def email_parts(string)
  mail_before_point = string.partition(".")
  first_part = mail_before_point[0].partition("@").first
  server_mail = mail_before_point[0].partition("@")[2]
  domain_mail = mail_before_point[2]

  "Test #{first_part} - #{server_mail} - #{domain_mail}"
end


# < is how Ruby indicates that Phrase inherits from String class
class Phrase < String

    # Returns content for palindrome testing
  def processed_content
    self.downcase
  end

  #returns true if palindrome, false if not.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def louder
    self.content.upcase
  end
end

class TranslatedPhrase < Phrase

end