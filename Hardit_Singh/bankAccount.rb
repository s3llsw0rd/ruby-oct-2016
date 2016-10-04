class BankAccount
	attr_reader	:accountNumber,
				:userName,
				:checkingBalance,
				:savingBalance

	def initialize(userName,balance=0)		
		@accountNumber = genAccountNumber
		@userName = userName
		@checkingBalance = balance
		@savingBalance = balance
		@@noOfAccounts += 1
		self
	end

	def get(req)
		eval"@#{req}"
	end

	def deposit(amount,acctype)
		(['checking','saving'].include? acctype) ?  (eval"@#{acctype}Balance+=#{amount}") : 'Not a valid account type'
		self
	end

	def total
		puts "Total Balance: #{@checkingBalance+@savingBalance}"
	end

	def withdraw(amount,acctype)
		# i know this is evil but just wanted to see how nested ternary operators work!
		(!['checking','saving'].include? acctype) ?  "wrong account type" : (eval"@#{acctype}Balance>=#{amount}") ? (eval"@#{acctype}Balance-=#{amount}") : "Insufficient Funds" 
		self
	end

	def accountInformation
		puts "Account Number #{@accountNumber}"  
		puts "Account Number #{@userName}"  
		total
		puts "Interest Rate #{@@interest}" 
	end

	private

	@@noOfAccounts = 0
	@@interest = 0.05

	def genAccountNumber
		rand.to_s[2..9]
	end
end


accountOne = BankAccount.new('hardit')

puts accountOne.get('userName') # can be used to get any attribute like userName, accountNumber etc
puts accountOne.deposit(200,'saving') # can be used to deposite into either checking or saving based on the account type passed
puts accountOne.deposit(200,'checking')
puts accountOne.withdraw(100,'saving')
accountOne.accountInformation