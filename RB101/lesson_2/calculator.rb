# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the results

# answer = Kernal.gets()

def prompt(message)
	Kernel.puts("=> #{message}")
end

def valid_number(number)
	number.to_i.to_s == number
end

prompt("Welcome to Calculator!")

loop do
	prompt("What's your name?")
	username = Kernel.gets().chomp()
	if username.empty?
		prompt("Hmm...Please make sure to provide your name:")
	else
		break
	end
end

number1 = ''
loop do
	prompt("What's the first number?")
	number1 = Kernel.gets().chomp()
	if valid_number(number1)
		break
	else
		prompt("Please make sure to input a valid number:")
	end
end

number2 = ''
loop do
	prompt("What's the second number?")
	number2 = Kernel.gets().chomp()
	if valid_number(number2)
		break
	else
		prompt("Please make sure to input a valid number:")
	end
end

operator_message =<<-TEXT
	What's the operation? 
	1) add
	2) subtract
	3) multiply
	4) divide
TEXT

operator = ''
prompt(operator_message)
loop do
	operator = Kernel.gets().chomp()
	if %w(1 2 3 4).include?(operator)
		break
	else
		prompt("Please input number 1/2/3/4 only")
	end
end

result = case operator
				when '1'
					number1.to_i + number2.to_i
				when '2'
					number1.to_i - number2.to_i
				when '3'
					number1.to_i * number2.to_i
				when '4'
					number1.to_f / number2.to_f
end

prompt("The result is #{result}")

