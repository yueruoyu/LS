# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the results

# answer = Kernal.gets()
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def prompt(message)
	Kernel.puts("=> #{MESSAGES[LANGUAGE][message]}")
end

def valid_number(number)
	number.to_i.to_s == number
end

def operation_to_message(op)
	action = case op
						when "1"
							'Adding'
						when "2"
							'Subtracting'
						when "3"
							"Multiplying"
						when "4"
							"Dividing"
						end
	action
end

prompt('welcome')

	loop do
		username = Kernel.gets().chomp()
		if username.empty?
			prompt('vaild_name')
		else
			break
		end
	end	

loop do 
	number1 = ''
	loop do
		prompt('ask_first_number')
		number1 = Kernel.gets().chomp()
		if valid_number(number1)
			break
		else
			prompt('valid_number')
		end
	end

	number2 = ''
	loop do
		prompt('ask_second_number')
		number2 = Kernel.gets().chomp()
		if valid_number(number2)
			break
		else
			prompt('valid_number')
		end
	end

	

	operator = ''
	prompt('operator_message')
	loop do
		operator = Kernel.gets().chomp()
		if %w(1 2 3 4).include?(operator)
			break
		else
			prompt('valid_operator')
		end
	end

	Kernel.puts("#{operation_to_message(operator)} the two numbers...")

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
	
	prompt("calculation_result")
	Kernel.puts(result)

	prompt('calculate_again')
	loop_again = Kernel.gets().chomp()
	if loop_again.downcase != 'y'
		break
	end

end 

