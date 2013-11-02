def block2(&myBlock)
	if block_given?
		name = myBlock.call
		puts "you entered #{name} as you name"
	else
		puts "no block given"
	end
rescue
	puts "This  is where you do the rescue job"
ensure
	puts "This will always be excuted"
end

block2 do 
	puts "this is from block2"
	raise "This is an error"
	"Jack"
end

