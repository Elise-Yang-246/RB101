# Mortgage calculator

# Prompt method
def prompt(message)
  puts "==> #{message}"
end

# Greet user
prompt("Welcome to Mortgage Calculator! Please enter your name:")
name = gets.chomp
prompt("Hi #{name}!")

# Ask user to input info:
prompt("What is the loan amount? (Only numbers and no commas/letters, please)")
loan_amount = gets.chomp.to_f

prompt("What is the Annual Percentage Rate (APR)?")
apr = gets.chomp.to_f

prompt("What is the loan duration (in years)?")
loan_duration_in_years = gets.chomp.to_f

# Convert user input to months:
monthly_interest_rate = (apr / 12) / 100
loan_duration_in_months = loan_duration_in_years * 12

# Calculate monthly payment:
monthly_payment = loan_amount * (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)**(-loan_duration_in_months))))

# Output results:
puts "The monthly interest rate is #{(monthly_interest_rate * 100).round(2)}%"
puts "The loan duration is #{loan_duration_in_months} months"
puts "The monthly payment is $#{monthly_payment.round(2)}"
