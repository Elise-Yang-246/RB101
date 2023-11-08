# Mortgage calculator

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

# Prompt method
def prompt(message)
  puts "==> #{message}"
end

# Valid number method
def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

# Greet user and validate name
prompt(MESSAGES['greeting'])

name = ''
loop do
  name = gets.chomp
  break if name.empty? == false
  prompt(MESSAGES['invalid_name'])
end
prompt(MESSAGES['greeting_before_name'] + "#{name}!")

# Start of main loop
loop do
  # Ask user to input info and validate the inputs:
  prompt(MESSAGES['loan_amount'])
  loan_amount = nil
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  
  prompt(MESSAGES['apr'])
  apr = nil
  loop do
    apr = gets.chomp
    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  
  prompt(MESSAGES['loan_duration'])
  loan_duration_in_years = nil
  loop do
    loan_duration_in_years = gets.chomp
    if valid_number?(loan_duration_in_years)
      loan_duration_in_years = loan_duration_in_years.to_f
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  
  # Convert user input to months:
  monthly_interest_rate = (apr / 12) / 100
  loan_duration_in_months = loan_duration_in_years * 12
  
  # Calculate monthly payment:
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)**(-loan_duration_in_months))))
  
  # Output results:
  prompt("The monthly interest rate is #{(monthly_interest_rate * 100).round(2)}%")
  prompt("The loan duration is #{loan_duration_in_months} months")
  prompt("The monthly payment is $#{monthly_payment.round(2)}")

  # Ask if user would like to calculate again
  prompt(MESSAGES['again'])
  again_or_not = nil
  loop do
    again_or_not = gets.chomp.downcase
    if again_or_not == 'n'
      prompt(MESSAGES['goodbye'])
      break
    elsif again_or_not == 'y'
      break
    else
      prompt(MESSAGES['invalid_again'])
    end
  end
  break if again_or_not == 'n'
end