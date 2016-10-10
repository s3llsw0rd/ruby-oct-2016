#bank account

class BankAccount
  attr_reader :account_number, :checking, :savings

  FLAG = [:checking, :savings]

  def initialize
    @account_number = rand_account_number
    @checking = 0
    @savings = 0
    @@accounts += 1
  end

  def checking_bal
    puts @checking
    @checking
  end

  def savings_bal
    puts @savings
    @savings
  end

  def deposit(val, flag)
    case
    when :checking
      @checking += val
    when :savings
      @savings += val
    end
  end

  def withdraw_checking(val)
    return @checking -= val unless val > @checking
    puts "Insufficient funds"
    "Insufficient funds"
  end

  def withdraw_savings(val)
    return @savings -= val unless val > @savings
    puts "Insufficient funds"
    "Insufficient funds"
  end

  def total
    puts @checking+@savings
    @checking+@savings
  end

  def account_information
    puts "Acct\#: #{@account_number}"
    puts "Total: #{@checking+@savings}"
    puts "Checking bal: #{@checking}"
    puts "Savings bal: #{@savings}"
    puts "Interest rate: #{@@interest_rate}"
  end

  private
  def rand_account_number
    rand.to_s[2..10]
  end

  @@interest_rate = 0.06

  @@accounts = 0

end

# bank = BankAccount.new
# # bank.deposit(100, :checking)
# # bank.deposit(1000, :savings)
# # bank.withdraw_savings(200)
# # bank.withdraw_checking(300)
# # bank.account_information
# bank.checking = 100000
# puts bank.checking
