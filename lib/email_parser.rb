# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    attr_accessor :emails
  
    def initialize(emails)
      self.emails = emails
    end
  
    def parse
      # results = self.emails.split(/[, ]/).select {|string| string.length>0}
      results = self.emails.scan(/(\w\w*@\w\w*\.\w\w*)/)
      results.flatten.uniq
    end
  end