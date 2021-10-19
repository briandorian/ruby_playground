
#returns true if palindrome, false if not.
def palindrome?(string)
  processed_content = string.downcase
  processed_content == processed_content.reverse
end

def email_parts(string)
  mail_before_point = string.partition(".")
  first_part = mail_before_point[0].partition("@").first
  server_mail = mail_before_point[0].partition("@")[2]
  domain_mail = mail_before_point[2]

  "Test #{first_part} - #{server_mail} - #{domain_mail}"
end