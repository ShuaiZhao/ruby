def say_hello(&bloooock)
	puts "hello world"
	if block_given?
		bloooock.call
	else
		puts "no block is given"
	end
end

say_hello{ puts "This is for the bloooock"}

puts "another way of using block"

say_hello do 
	
	puts "this is anther way of using block"
end