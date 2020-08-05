# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        parsed_list = @email_addresses.split(",").map{ |string| string.split(" ")}.flatten
        unique_list = []
        parsed_list.each{ |address| unique_list << address if !unique_list.include?(address)}
        unique_list
    end

end