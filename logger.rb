require 'logger'

class BankAccount
	attr_accessor :stdout_logger, :file_logger

	def initialize(name)
		@name = name
		@trans = []
		@stdout_logger = Logger.new(STDOUT)
		@file_logger = Logger.new("./bank_account.log")
	end

	def log(message, level=Logger::INFO)
		file_logger.add level, message, "#{self.class} #{@name}"
		stdout_logger.add level, message, "#{self.class} #{@name}"
	end

	def deposit(amount)
		log "deposit #{amount}"
			@trans.push(amount)		
	end

	def withDraw(amount)
		log "withDraw #{amount}"
		@trans.push(-amount)
	end
end
	account = BankAccount.new("jack")
	account.deposit(100)
	account.withDraw(50)


