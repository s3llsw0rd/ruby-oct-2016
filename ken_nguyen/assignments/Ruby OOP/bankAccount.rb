#bank account

class BankAccount
  attr_accessor :account_number, :checking, :savings

  @@interest_rate = 0.06 #is it still private if its up here?

  @@accounts = 0

  FLAG = [:checking, :savings]

  def initialize
    @account_number = rand_account_number
    @checking = 0
    @savings = 0
    @@accounts += 1
  end

  def checking_bal
    puts @checking
  end

  def savings_bal
    puts @savings
  end

  def deposit(val, flag)
    case
    when flag == :checking
      @checking += val
    when flag == :savings
      @savings += val
    end
  end

  def withdraw_checking(val)
    return @checking -= val unless val > @checking
    puts "Insufficient funds"
  end

  def withdraw_savings(val)
    return @savings -= val unless val > @savings
    puts "Insufficient funds"
  end

  def total
    puts @checking+@savings
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
end

bank = BankAccount.new
bank.deposit(100, :checking)
bank.deposit(1000, :savings)
bank.withdraw_savings(200)
bank.withdraw_checking(300)
bank.account_information
