


def email_parts(string)
  mail_before_point = string.partition(".")
  first_part = mail_before_point[0].partition("@").first
  server_mail = mail_before_point[0].partition("@")[2]
  domain_mail = mail_before_point[2]

  "Test #{first_part} - #{server_mail} - #{domain_mail}"
end


# < is how Ruby indicates that Phrase inherits from String class
  class Phrase < String
    #returns true if palindrome, false if not.
  def palindrome?

    # Inside a Ruby class, the use of self. is necessary when making attribute assignments,
    # but otherwise you can leave it off. In particular, confirm that we can write downcase
    # in place of self.downcase, as shown in Listing 7.11. This may look a little odd at first,
    # but the practice of leaving off self. when possible is common in idiomatic Ruby.

    processed_content = downcase
    processed_content == processed_content.reverse
  end

  def louder
    self.content.upcase
  end
end
