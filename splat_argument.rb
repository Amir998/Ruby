def add_numbers(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(message, *numbers)
  "#{message} : #{add_numbers(*numbers)}"
end


puts add_with_message("The sum is", 1, 2, 3)
