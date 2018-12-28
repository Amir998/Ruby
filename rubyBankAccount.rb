class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning balance", 0)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    linezz()

    puts "Description ".ljust(30) + "\t" + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + "\t" + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end

    linezz()

    puts "Balance:".ljust(31) + sprintf("%0.2f", balance).rjust(11)

    linezz()
  end

  def linezz(char="-")
    puts char * 60
  end
end

bank_account = BankAccount.new("Amir")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("Gas", 10.51)
puts sprintf("%0.2f", bank_account.balance)
puts bank_account
puts "Register: "
bank_account.print_register
