class BankAccount
    attr_reader :account_number, :checkings, :savings, :interest_rate

    @@number_of_accounts_opened = 0

    private
    def initialize
        @account_number = rand(100)
        @checkings = 0
        @savings = 0
        @interest_rate = 0.01
        @@number_of_accounts_opened += 1
    end

    public
    def account_number
        puts "Your Account # is: " + @account_number.to_s
        self
    end

    def checkings_balance
        puts "Your checkings balance is: $" + @checkings.to_s
        self
    end

    def savings_balance
        puts "Your savings balance is: $" + @savings.to_s
        self
    end

    def deposit(account, amount)
        if account == "checkings"
            @checkings += amount
            puts "Thank you for your deposit. Your checking balance is now: $" + @checkings.to_s
        end
        if account == "savings"
            @savings += amount
            puts "Thank you for your deposit. Your savings balance is now: $" + @savings.to_s
        end
        self
    end

    def withdraw(account, amount)
        if account == "checkings"
            if @checkings > amount
                @checkings -= amount
                puts "After withdrawing. Your checking balance is now: $" + @checkings.to_s
            else
                puts "You have insufficient funds and the transaction has been canceled."
            end
        end
        if account == "savings"
            if @savings > amount
                @savings -= amount
                puts "After withdrawing. Your savings balance is now: $" + @savings.to_s
            else
                puts "You have insufficient funds and the transaction has been canceled."
            end
        end
        self
    end

    def total_balance
        @total_balance = @checkings + @savings
        puts "Your total balance is: $" + @total_balance.to_s
        self
    end

    def total_users
        puts "There are " + @@number_of_accounts_opened.to_s + " accounts open right now."
    end

    def account_info
        self.account_number
        self.checkings
        self.savings
        self.total_balance
        puts "Your interest rate is: " + @interest_rate.to_s + "."
        self
    end
end

eddie = BankAccount.new
eddie.deposit("savings", 1000).deposit("checkings", 250).checkings_balance.savings_balance.withdraw("savings", 500).withdraw("checkings", 100).total_balance

ray = BankAccount.new.deposit("checkings",3000)

eddie.account_info
ray.account_info
