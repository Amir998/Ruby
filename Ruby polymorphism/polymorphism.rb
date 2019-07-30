class GenericParser
  def parser
    raise NotImplementedError, "You must implement the parse method!"
  end
end


class JsonParser < GenericParser
  def parse
    puts "An instance of JsonParser class received the parse message"
  end
end


class XmlParser < GenericParser
  def parse
    puts "An instance of XmlParser class received the parse message"
  end
end



puts "Using the XmlParser"
parser = XmlParser.new
parser.parse

puts "Using the JsonParser"
parser = JsonParser.new
parser.parse
