require 'minitest/autorun'
require 'minitest/spec'

describe 'MyTest' do

	before do
		puts "tests are begining..."
	end

	it "adds 2+2" do
		(2+2).must_equal 4
	end

	it "include a frog" do
		%w(dog cat frog).must_include('frog')
	end
	
	it "must be a fixnumber " do 
		(2+2).must_be_instance_of Fixnum
	end

	it "should raise an error" do
		array = []
		lambda { array.hello }.must_raise NoMethodError
	end

end