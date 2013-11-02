Struct.new("TreeHouse", :name, :location)

treehouse = Struct::TreeHouse.new
treehouse.name = "TH"
treehouse.location = "USA"

puts treehouse.inspect


Island = Struct.new(:name, :location) do
	def to_s
		"<#{name}, #{location}>"
	end

	def travel
		puts "going to #{location} location ...."
	end

end
	
treehouse2 = Island.new("jack","china")
puts treehouse2.to_s
puts treehouse2.travel