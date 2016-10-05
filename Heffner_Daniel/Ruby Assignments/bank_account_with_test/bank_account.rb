class BankAccount
	attr_reader :acct_num, :checking, :savings
	
	@@num_of_accts = 0
	
	def initialize
		@acct_num = generate_acct_num
		@checking = 0
		@savings = 0
		@@num_of_accts += 1
	end
	
	def deposit amount, account
		return "Please use a valid account type!" unless account == "checking" or account == "savings"
		@checking += amount if account == "checking"
		@savings += amount if account == "savings"
	end
	
	def withdraw amount, account
		return "Please use a valid account type!" unless account == "checking" or account == "savings"
		case account
		when "checking"
			return "Insufficient Funds" if @checking < amount
			@checking -= amount
			return "#{amount} withdrawn"
		when "savings"
			return "Insufficient Funds" if @savings < amount
			@savings -= amount
			return "#{amount} withdrawn"
		end
	end
	
	def total_money
		@checking + @savings
	end
	
	def account_information
		puts "Account Number: #{@acct_num}"
		puts "Total Money: #{total_money}"
		puts "Checking Balance: #{@checking}"
		puts "Savings Balance: #{@savings}"
		puts "Interest Rate: #{@@interest_rate}"
	end

	private
	@@interest_rate = 0.8
	
	def generate_acct_num
		(rand*1000000000).to_i
	end

end
