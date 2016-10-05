require_relative "bank_account"
RSpec.describe BankAccount do

	describe 'initialization' do
		before do
			@ba = BankAccount.new
		end
		it 'has a method for retrieving checking account balance' do
			expect(@ba.checking).to eq(0)
		end
		it 'has a method for retrieving the savings account balance' do
			expect(@ba.savings).to eq(0)
		end
	end
	describe 'methods and errors' do
		before do
			@bam = BankAccount.new
		end
		it 'has a method that allows users to withdraw cash' do
			expect(@bam).to respond_to(:withdraw)
		end
		it 'throws an error if user tries to overdraft account' do
			expect(@bam.withdraw(100,"checking")).to eq("Insufficient Funds")
			expect(@bam.withdraw(100,"savings")).to eq("Insufficient Funds")
		end
		it 'raises an error if the user tries to access number of bank accounts' do
			expect{BankAccount.num_of_accts}.to raise_error(NoMethodError)
			expect{@bam.num_of_accts}.to raise_error(NoMethodError)
		end
		it 'raises an error if the user tries to set the interest rate' do
			expect{BankAccount.interest_rate = 100}.to raise_error(NoMethodError)
			expect{@bam.interest_rate = 100}.to raise_error(NoMethodError)
		end
		it 'raises an error if the user tries to set any attribute' do
			expect{@bam.acct_num = 123456789}.to raise_error(NoMethodError)
			expect{@bam.checking = 100000000}.to raise_error(NoMethodError)
			expect{@bam.savings = 100000000}.to raise_error(NoMethodError)
		end
	end
end
