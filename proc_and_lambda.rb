def return_from_proc
	var = proc {return "returning from proc inside of method"}
	var.call
	return "returning from proc as the last line from method"
end

def return_from_lambda
	var = lambda {return "returning from lambda inside of method"}
	var.call
	return "returning from lambda as the last line from method"
end


puts return_from_proc
puts return_from_lambda
