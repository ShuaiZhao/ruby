require 'observer'

	

class BankAccount

	include Observable
	
	def initialize(name)
		@transactions = []
		@balance = 0
	end

	def deposit(amount)

		changed
		notify_observers(Time.now, 'deposit', amount)

		puts "$#{amount} deposited."
		@transactions.push(amount)
	end

	def withdraw(amount)

		changed
		notify_observers(Time.now, 'withdraw', amount)

		@transactions.push(-amount)

	end

	def show_balance
		puts "Your balance is #{@balance}" 
	end

end


class AccountObserver
	def initialize(account)
		@account = account
		@account.add_observer(self)
	end

	def update(time, kind, amount)
		puts "#{time} #{kind} #{amount}"
	end

end



account = BankAccount.new("jack")
AccountObserver.new(account)

account.deposit(300)
account.withdraw(100)
account.withdraw(100)

