require 'yaml'
array = %w(dog cat frog)
puts array.to_yaml
puts "******************************"

hash = {name: "jack", location: "UAA"}
puts hash.to_yaml

puts "******************************"

hash[:employees] = ['a','b','c']
puts hash.to_yaml


puts "******************************"

File.open("./config.yml", 'w') do |config|
	config.puts hash.to_yaml
end

puts "******************************"



config = YAML.load(File.read("./config.yml"))
puts config.inspect


puts "******************************"
class Frog
	attr_accessor :name
end

frog = Frog.new
frog.name = "MIKE the frog"
yaml = frog.to_yaml
puts yaml

puts "******************************"

another_frog = YAML::load(yaml)
puts frog
puts another_frog