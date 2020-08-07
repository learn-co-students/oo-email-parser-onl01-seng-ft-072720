require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
  @@all = []
  
  attr_accessor :address 
  
  def initialize(address)
  @address = address
  @@all.push(address)
end
  def parse
    a = []
    
    nam = @address
    # b = nam.split(/, */) 
    #b.map do |i|
     # i.split(" ")
  # a.push(i)
 b = nam.split(/[\s,]/)
  #binding.pry 
 b.collect do |i|
  
   if i !="" then a.push(i)
 end
 end
 
   p = a.uniq 
 return p 
  end
end