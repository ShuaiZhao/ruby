class BankAccount
	def initialize(name)
		@name = name
		@transactions = []
	end

	def deposit(amount, options={})
		options[:memo] ||= "Regular deposit"
		@transactions.push({:amount => amount, :memo => options[:memo]})
	end

end

bank_account = BankAccount.new("Jack")
bank_account.deposit(100)
bank_account.deposit(200, {:memo => "this is a gift"})

puts bank_account.inspect