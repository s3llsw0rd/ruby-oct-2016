
class BankAccount
    @@acct_nums =[]
    def initialize
        @acct_num = self.create_acct_num
        @Cbalance = 0
        @Sbalance = 0
        @interest_rate = "15%"
    end
    private
    protected
    def create_acct_num
        new_num = (0..12).map{(0..9).to_a.sample}
        if @@acct_nums.include? new_num
            return self.create_acct_num
        else
            return new_num
        end
    end
    attr_accessor :Cbalance, :Sbalance, :interest_rate
    public
    attr_reader :Cbalance, :Sbalance, :interest_rate

    def deposit_C(dough)
        @Cbalance += dough
        puts "Checking balance is #{@Cbalance}"
        self
    end
    def deposit_S(dough)
        @Sbalance += dough
        puts "Savings balance is #{@Sbalance}"
        self
    end
    def withdraw_C(dough)
        if (@Cbalance - dough) >= 0
            @Cbalance -= dough
        else
            raise "insufficient funds!!! :("
        end
        puts "Checking balance is #{@Cbalance}"
        self
    end
    def total_money
        @Sbalance + @Cbalance
    end
    def account_info
        puts "You have a total of #{self.total_money}"
        puts "your Checking account contains #{@Cbalance}"
        puts "your Savings account contains #{@Sbalance}"
        puts "your interest rate is #{@interest_rate}"
        self
    end



end


myBa = BankAccount.new.deposit_C(100).deposit_C(1).withdraw_C(2).deposit_S(10)
myBa.total_money
