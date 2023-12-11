# My guess before looking at documentation/solution:

# Input:
  # 1. bill amount
  # 2. tip rate

# Output:
  # 1. tip
  # 2. total amount of the bill

# Rules / assumptions:
  # - the bill will be input as a whole number (without a dollar sign or decimal point)
  # - the tip will be input as a percentage
  # - the output will display a dollar sign and 1 decimal

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt the user to input the bill amount in dollars (only numbers and no dollar sign)
      # a. Convert to a float. Store the input using the variable `bill`
  # 2. Prompt the user to input the tip percentage (only numbers and no percent sign)
      # a. Convert to a float. Store the input using the variable `tip_percentage`
  # 3. Calculate the tip by multiplying `bill` by (`tip_percentage` / 100)
      # a. Store the evaluated result using the variable 'tip_amount'
  # 4. Output `tip_amount`
  # 5. Output the total (`bill` + `tip_amount`)

# print "What is the bill? "
# bill = gets.chomp.to_f

# print "What is the tip percentage? "
# tip_percentage = gets.chomp.to_f

# tip_amount = (bill * (tip_percentage / 100)).round(1)
# puts "The tip is $#{tip_amount}"
# puts "The total is $#{(bill + tip_amount).round(1)}"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses #round(2) instead of #round(1) like I did, but the output is the same.

# -------------------------------------------------------------------------

# Further Exploration:
# Modify your solution so it always prints the results with 2 decimal places.

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip_amount = bill * (tip_percentage / 100)
total = bill + tip_amount

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', total)}"