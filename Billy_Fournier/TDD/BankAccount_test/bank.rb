class BankAccount

  def initialize
    @checking_balance = 0
    @saving_balance = 0
    @account_number = new_account
  end


  def account_number
    puts "Account number is: #{@account_number}"
    self
  end
  def checking_balance
    puts "Checking Balance is: #{@checking_balance}"
    self
  end
  def saving_balance
    puts "Savings Balance is: #{@saving_balance}"
    self
  end
  def deposit (ammount, account_type)
    return puts "ERROR: Please select :savings or :checking for 2nd parameter" \
      unless [:checking, :savings].include?(account_type)
    case account_type
      when :checking
        @checking_balance += ammount
      when :savings
        @saving_balance += ammount
    end
    self
  end
  def total
    puts @checking_balance + @saving_balance
    self
  end

  private
  def new_account
    rand(90000) + 10000
  end

end
# 
# b = BankAccount.new
# b.saving_balance(2000000)
#
# b.account_number.checking_balance.saving_balance.deposit(1,:checking)
# b.deposit(100,:savings)
# b.checking_balance.saving_balance
