puts "Enter two numbers"
val_one = gets.to_i
val_two = gets.to_i



puts "Enter the operation you want to perform"
sym = gets.chomp

def add(val_one, val_two)
  return val_one + val_two
end

addition = add(val_one, val_two)

def sub(val_one, val_two)
  return val_one - val_two
end

subtraction = sub(val_one, val_two)

def mult(val_one, val_two)
  return val_one * val_two
end

multiplication = mult(val_one, val_two)



if sym == "+"
  p addition

elsif sym == "-"
  p subtraction

elsif sym == "*"
  p multiplication
  
else
  p "Error!"
end
