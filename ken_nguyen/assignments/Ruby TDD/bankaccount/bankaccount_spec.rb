#bank account spec
require_relative 'bankAccount'
RSpec.describe BankAccount do
  before :each do
    @chase = BankAccount.new
  end

  it "has a method for retrieving the checking account balance" do
    expect(@chase.checking_bal).to eql(0)
  end

  it "has a method to retrieve the total acct balance" do
    expect(@chase.total).to eql(0)
  end

  it "has a method to withdraw cash from the checking acct" do
    @chase.deposit(500, :checking)
    expect(@chase.withdraw_checking(100)).to eql(400)
  end

  it "raises error if user tries to overdraw account" do
    expect(@chase.withdraw_savings(100)).to eql("Insufficient funds")
  end

  it "does not allow access to class variable of how many bank accounts there are" do
    expect{BankAccount.accounts}.to raise_error(NoMethodError)
  end

  it "does not allow modification of interest rate" do
    expect{BankAccount.interest_rate = 0.03 }.to raise_error(NoMethodError)
  end

  it "does not allow external modification of attributes" do
    expect{@chase.checking = 10000}.to raise_error(NoMethodError)
    expect{@chase.savings = 100000}.to raise_error(NoMethodError)
    expect{@chase.account_number = 123456789}.to raise_error(NoMethodError)
  end

end
