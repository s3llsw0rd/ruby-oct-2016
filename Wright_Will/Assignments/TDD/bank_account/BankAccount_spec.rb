require_relative "BankAccount"

RSpec.describe BankAccount do
    it "has a method for retrieving checking account balance" do
        newBank = BankAccount.new
        expect(newBank.Cbalance).to eq(0)
        expect(newBank.Sbalance).to eq(0)

    end
    it "has a method for retrieving total_money" do
        newBank = BankAccount.new
        expect(newBank.total_money).to eq(0)
    end
    it "has a method for withdrawing cash... withdrw_C" do
        newBank = BankAccount.new
        newBank.deposit_C(100)
        newBank.withdraw_C(5)
        expect(newBank.Cbalance).to eq(95)
        expect(newBank.total_money).to eq(95)
    end
    it "raises an error if insufficient funds" do
        newBank = BankAccount.new
        newBank.deposit_C(100)
        expect { newBank.withdraw_C(1000000) }.to raise_error("insufficient funds!!! :(")
    end
    it "raises an error if user tries to access how many bank counts there are" do
        newBank = BankAccount.new
        newBank2 = BankAccount.new
        newBank3 = BankAccount.new
        expect { newBank.acct_nums }.to raise_error(NoMethodError)
        expect { newBank.acct_nums.count }.to raise_error(NoMethodError)
    end
    it "raises error when user tries to set interest_rate" do
        newBank = BankAccount.new
        expect { newBank.interest_rate = "1%" }.to raise_error(NoMethodError)
    end
    it "rasises error when user tries to set any attribute" do
        newBank = BankAccount.new

        expect{ newBank.acct_num = "foo" }.to raise_error(NoMethodError)
        expect{ newBank.Cbalance = "foo" }.to raise_error(NoMethodError)
        expect{ newBank.Sbalance = "foo" }.to raise_error(NoMethodError)
        expect{ newBank.interest_rate = "foo" }.to raise_error(NoMethodError)

    end





end
