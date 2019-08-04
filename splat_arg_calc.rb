def add(*numbers)
  numbers.inject(0) { |sum, numbers| sum + numbers }
end

def subtract(*numbers)
  current_number = numbers.shift
  numbers.inject(current_number) { |current_number, number| current_number - number }
end

def calculate(*arguments)
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add] == true
  return subtract(*arguments) if options[:subtract] == true
end

puts add(10, 2, 3)
puts subtract(10, 2, 3)
puts calculate(1, 2, 3, add: true)
puts calculate(15, 2, 3, subtract: true)
