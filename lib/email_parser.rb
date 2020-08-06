# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :email

  def initialize(address_string)
@email = address_string
  end

def parse
split1 = @email.gsub(", ", " ")
split1.split(" ").uniq
end




end
