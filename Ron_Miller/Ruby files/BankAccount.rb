class BankAccount
  def initialize(arg1,arg2)
    @checkBalance= arg1
    @savBalance = arg2
    genAccount
  end
  attr_reader :checkBalance, :savBalance, :accountNumber,

  def checkDepo(amount)
    @checkBalance+=amount
   end
  def savDepo(amount)
    @savBalance+=amount
  end
  def checkWithdrawal(amount)
    unless amount>@checkBalance then @checkBalance-=amount
      else puts "Add mo money"
    end
  end
  def savWithdrawal(amount)
    unless amount>@savBalance then @savBalance-=amount
    else puts "Add mo money"
    end
  end
  def accountInformation
    @interestRate=1
    puts @interestRate.to_s,(@checkBalance+@savBalance).to_s,@checkBalance.to_s,@savBalance.to_s
  end
  private
  def genAccount
    act=Random.new
    @accountNumber = act.rand(10000..99999)
    return self
  end
end


b = BankAccount.new(10,10)
b.accountInformation
