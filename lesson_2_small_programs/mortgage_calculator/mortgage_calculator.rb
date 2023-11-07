# Mortgage calculator

# Prompt method
def prompt(message)
  puts "==> #{message}"
end

# Valid number method
def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

# Greet user and validate name
prompt("Welcome to Mortgage Calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp
  break if name.empty? == false
  prompt("Make sure to use a valid name.")
end
prompt("Hi #{name}!")

# Ask user to input info and validate the inputs:
prompt("What is the loan amount? (Only numbers and no commas/letters, please)")
loan_amount = nil
loop do
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    loan_amount = loan_amount.to_f
    break
  else
    prompt("Hmmm...please enter a valid number.")
  end
end

prompt("What is the Annual Percentage Rate (APR)?")
apr = nil
loop do
    apr = gets.chomp
    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      prompt("Hmm...please enter a valid number.")
    end
end

prompt("What is the loan duration (in years)?")
loan_duration_in_years = nil
loop do
  loan_duration_in_years = gets.chomp
  if valid_number?(loan_duration_in_years)
    loan_duration_in_years = loan_duration_in_years.to_f
    break
  else
    prompt("Hmm...please enter a valid number.")
  end
end

# Convert user input to months:
monthly_interest_rate = (apr / 12) / 100
loan_duration_in_months = loan_duration_in_years * 12

# Calculate monthly payment:
monthly_payment = loan_amount * (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)**(-loan_duration_in_months))))

# Output results:
puts "The monthly interest rate is #{(monthly_interest_rate * 100).round(2)}%"
puts "The loan duration is #{loan_duration_in_months} months"
puts "The monthly payment is $#{monthly_payment.round(2)}"
























