# class Parser
#   def parse(type)
#     puts "The Parser class received parse method"
#
#     if type == :xml
#       puts "An instance of XmlParser class received the parse message"
#     elsif type == :json
#       puts "An instance od JsonParser class received the parse message"
#     end
#   end
# end
#
# TURSN INTO THIS

class Parser
  def parse(parser)
    puts "The Parser class received the parse method"
    parser.parse
  end
end

class XmlParser
  def parse
    puts "An instance of XmlParser class received the parse message"
  end
end

class JsonParser
  def parse
    puts "An instance of JsonParser class received the parse message"
  end
end


parser = Parser.new

puts "Using the XmlParser"
XmlParser.new.parse

puts "Using the JsonParser"
JsonParser.new.parse
