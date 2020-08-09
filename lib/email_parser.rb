# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
 attr_accessor :emails
  
  def initialize(emails)
    @emails = emails 
  end 
  
 def parse 
   puts mail = emails.split.collect{|address| address.split(',')} 
  my_array = mail.flatten.uniq
  my_array
 end  
  
end  
