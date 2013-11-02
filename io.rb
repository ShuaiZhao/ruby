File.open("./my_file.txt", 'w+') do |file|
	file.puts "hello world"

end

puts IO.readlines("my_file.txt")