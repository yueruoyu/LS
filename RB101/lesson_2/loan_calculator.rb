# Mortgage/Car Loan Calculator

Kernel.puts("Welcome to Mortage/Car Loan Calculator. Please enter your name:")

def number(num)
	num.to_i.to_s == num || num.to_f.to_s == num
end

loop do
	name = Kernel.gets().chomp()
	if !name.empty?
		break
	end
	Kernel.puts("Please enter a valid name!")
end

Kernel.puts("Please enter your loan amount")
loan_amount_input = ''
loop do
	loan_amount_input = Kernel.gets().chomp()
	if number(loan_amount_input)
		break
	end
	Kernel.puts("Please enter a vaid loan amount")
end

loan_amount = loan_amount_input.to_f

Kernel.puts("Please enter your annual percentage rate(APR, in percentage)")
annual_percentage_rate = ''
loop do
	annual_percentage_rate = Kernel.gets().chomp()
	if number(annual_percentage_rate)
		break
	end
	Kernel.puts("Please enter a vaid APR")
end

monthly_interst_rate = annual_percentage_rate.to_f / 1200

loan_years = ''
Kernel.puts("Please enter your loan duration (in years)")
loop do
	loan_years = Kernel.gets().chomp()
	if number(loan_years)
		break
	end
	Kernel.puts("Please enter a vaid loan duration")
end

loan_months = loan_years.to_f * 12

monthly_payment = loan_amount *
									(monthly_interst_rate /
									(1 - (1 + monthly_interst_rate)**(-loan_months)))

Kernel.puts("Your monthly payment is #{monthly_payment}")
