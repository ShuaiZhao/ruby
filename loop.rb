i = 0
string = "Hello"


puts "while loop"
while i <= 10
	puts "i is now #{i}"
	i += 1
end

puts "the final value if i is #{i}"
puts

puts "Until loop"
i = 0
until i > 10 do
	puts "i is now #{i}"
	i += 1
end

puts "for loop"
array = [1,2,3,4,5,6,7]

for i in array do
	puts "#{i}"
end

puts "range .."
for i in 1..10 do 
	puts i 
end


puts "nested loop"
for i in 1..5 do 
	for j in 1..5 do 
		puts "i is #{i}, j is #{j}"
	end
end

puts "Use %w{xxx} to make inside string to a Array"
for animal in %w(dog cat horse goat snake) do
	next if animal == "cat"
	break if animal == 'snake'
	puts "#{animal}"
end

puts "LOOP and break"
loop do 
	puts "insdie of loop"
	break
end


puts "redo,retry"
animals = %w(a b c d e f g)
count = 0

for animal in animals
	puts "#{animal}"
	break if count == 10
	count += 1
	retry if animal == "c"
end







puts "Test"
name = ""

until name == "Jason" do
	print "what is your name: "
	name = gets.chomp
	puts "Hello, #{name}"
end