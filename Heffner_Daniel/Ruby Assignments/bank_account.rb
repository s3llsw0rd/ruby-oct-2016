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
			overdraft = @checking - amount
			case overdraft >= 0
			when true
				@checking = overdraft
				return "#{amount} withdrawn"
			when false
				return "Insufficient Funds"
			end
		when "savings"
			overdraft = @savings - amount
			case overdraft >= 0
			when true
				@savings = overdraft
				return "#{amount} withdrawn"
			when false
				return "Insufficient Funds"
			end
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
