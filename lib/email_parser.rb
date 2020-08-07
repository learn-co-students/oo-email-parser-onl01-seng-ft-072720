require 'pry'

class EmailAddressParser
  attr_accessor :email  
  
  def initialize(email)
    @email = email 
  end 
  
  
  def parse
   email_array = @email.split(/[, ]/).reject { |x| x.empty? }
   email_array.uniq  
  end 
  
# binding.pry   
end 