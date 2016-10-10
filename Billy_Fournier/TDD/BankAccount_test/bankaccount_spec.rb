require_relative 'bank'
RSpec.describe BankAccount do

  describe 'behavior' do
    before do
      @bank = BankAccount.new
    end
    it "has a method for retrieving the checking account balance" do
      expect(@bank).to respond_to(:checking_balance)
      expect(@bank).to respond_to(:saving_balance)
    end

    it "has a method that retrieves the total account balance" do
      expect(@bank).to respond_to(:total)
    end

    # it "has a method that allows the user to withdraw cash" do
    # end
    #
    # it "Raises an error if a user tries to withdraw more money than they have in the account" do
    # end
    #
    # it "Raises an error when the user tries to print out how many bank accounts there are" do
    #   # expect { BankAccount.number }.to raise_error
    # end
    #
    it "Raises an error when the user tries to set the interest rate" do

    end
  end

  describe 'attributes' do
    before do
      @bank = BankAccount.new
    end

    it 'Raises an error when the user tries to set any attribute' do
      expect{@bank.account_counter(5)}.to raise_error(NoMethodError)
      expect{@bank.account_number(123)}.to raise_error(ArgumentError)
      expect{@bank.checking_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.saving_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
    end
  end

end
