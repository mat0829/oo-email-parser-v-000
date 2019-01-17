# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    array = @emails.split(/[\s,]/)
    new_array = array.reject { |string| string.empty? }
    email_array = new_array.uniq
  end

end
