class Parser
  def parse
    puts "The Parser class received the parse method"
  end
end


class XmlParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    @parser.parse
    puts "An instance of XmlParser received the parse message"
  end
end


class JsonParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    puts "An instance of JsonParser received the parse message"
    @parser.parse
  end
end



parser = Parser.new

puts "Using the XmlParser"
XmlParser.new(parser).parse

puts "Using the JsonParser"
JsonParser.new(parser).parse

puts "Using both parsers"
JsonParser.new(XmlParser.new(parser)).parse
