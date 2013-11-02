def say_hello(&myBlock)
	puts "first"
	yield
	yield
	yield
	puts "Last"
end

say_hello do 
	puts "this is from the block"
end


puts "use yield to call the block many times"
def show_numbers(numbers=10)
	i = 0
	while  i < 10
		yield i
		i +=1
	end
end

show_numbers do |number| 
	puts "the current numbe is #{number}"
	number = number * 2
	puts "the current numbe*2 is #{number}"
end



puts "another example\n"
def get_name(&block)
	print "Enter your name: "
	name = gets.chomp
	yield name
	puts "its nice to meet you #{name}"
end

get_name do |nm|
	puts "********i nside of block **************\n"
	nm = nm.upcase
	puts "You name is #{nm}"
	puts "*********** out of block ***************\n"
end
