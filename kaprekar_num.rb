def kaprekar?(k)
  number_of_digits = k.to_s.length
  square = (k ** 2).to_s

  secnod_half = square[-number_of_digits..-1]
  first_half = square.size.even? ? square[0..number_of_digits - 1] : square[0..number_of_digits - 2]

  k == first_half.to_i + secnod_half.to_i
end

print kaprekar?(45)
