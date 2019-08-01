class Numbers
  # def self.sumator(num1, num2)
  #   first_divide(num1) + second_divide(num2)
  # end
  #
  # def self.first_divide(num1)
  #   (num1 / 9)
  # end
  #
  # def self.second_divide(num2)
  #   (num2 / 6)
  # end

  def self.sumator(num1, num2)
    divide(num1, 9) + divide(num2, 6)
  end

  def self.divide(divisor, dividend)
    (divisor / dividend)
  end
end

print Numbers.sumator(81, 36)
