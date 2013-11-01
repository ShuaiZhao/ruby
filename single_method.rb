#!/usr/bin/env ruby

def hello(name="default")
	puts "hello #{name}, this is hello method"
end

hello
hello("jack")

def world(name1, name2)
	puts "hello #{name1}"
	puts "hello #{name2}"
end

world("Jack", "xxxx")