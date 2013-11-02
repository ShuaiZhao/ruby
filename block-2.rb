def block2(&myBlock)
	if block_given?
		name = myBlock.call
		puts "you entered #{name} as you name"
	else
		puts "no block given"
	end
end

block2 do 
	puts "this is from block2"
	"Jack"
end

