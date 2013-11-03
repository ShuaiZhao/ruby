require 'uri'
require 'open-uri'

url = URI.parse('http://www.teamtreehouse.com/Library')
puts url.inspect

puts url.hostname
puts url.path

puts URI.split('http://teamtreehouse.com').inspect

google = open('http://www.google.com').read
puts google