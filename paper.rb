class Paper
	def initialize(&block)
		yield self if block_given?
	end

	def set_variable
		return Proc.new do |kind, val|
			[kind, val].join(": ")
		end
	end

	def title(value)
		@title = set_variable.call "TITLE", value
	end

	def body(value)
		@body = set_variable.call "BODY", value
	end

	def heading(value)
		@heading = set_variable.call "HEADING", value
	end

	def display
		puts @title 
		puts "________________________________"
		puts @heading
		puts "________________________________"
		puts @body
		puts "________________________________"
	end
end


my_paper = Paper.new do |p|
	p.title   "My Title"
	p.heading  "My Heading"
	p.body     "My Boday"
end


my_paper.display