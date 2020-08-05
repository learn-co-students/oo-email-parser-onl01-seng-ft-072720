# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :name, :emails
  
  # def self.parse(emails)
  #   new(emails).parse
  # end
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
  emails.split.collect do |addr|
    addr.split(",")
  end
  .flatten.uniq
end
end
