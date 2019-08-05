module Perimeter
  def sum_of_sides
      sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

square = Square.new(4)
puts square.sum_of_sides

rectangle = Rectangle.new(3, 5)
puts rectangle.sum_of_sides
