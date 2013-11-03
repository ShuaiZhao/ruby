require 'erb'

treehouse = {
	name: 'treehouse' ,
	location: 'USA'
}

temple = <<-TEMPLATE
	from the desk of <%= treehouse[:name] %>
	______________________________________

	welcome to <%= treehouse[:location] %>.

	we hope you enjoy your stay.
	________________________________________

	<% treehouse.keys.each do |key| %>
		key: <%= key %>
	<% end %>

TEMPLATE


erb = ERB.new(temple)
puts erb.result

