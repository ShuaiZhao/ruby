class BankAccount

	attr_accessor :balance

	def self.create_for(first_name, last_name)
		@accounts ||= []  # ||= is conditional assignment operator
		# what is does is if there is no INSTANCE variable accounts, then it will be create

		@accounts << BankAccount.new(first_name, last_name)
	end

	def self.find_for(first_name, last_name)
		@accounts.find{|account| account.full_name == "#{first_name} #{last_name}"}
	end

	def initialize(first_name, last_name)
		@balance = 0 
		@first_name = first_name
		@last_name = last_name
	end

	def deposit(amount)
		@balance += amount
		  
	end

	def withdraw(amount)
		@balance -= amount
		
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end


	def call_the_reset_method
		reset!
	end
	
	def reset!
		@balance = 0

	end

	private :reset!
end

#bank_account = BankAccount.new("jack", "zhao")
#puts bank_account.inspect
