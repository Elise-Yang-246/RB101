# My guess before looking at documentation/solution:

# Input:
  # 1. an integer greater than 0
  # 2. if user wants to determine sum or product

# Output:
  # Depending on user's choice, output sum or product of all numbers between 1 and the entered integer

# Rules / assumptions:
  # - assume user enters a valid integer greater than 0
  # - the sum or product should be calculated between 1 and the entered integer (inclusive).

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt the user to enter an integer greater than 0.
      # a. Convert input to an integer and store it using variable `integer`
  # 2. Ask user to enter 's' or 'p' (for "sum" or "product")
      # a. Store input using variable `choice`
  # 3. If `choice` is equal to 's':
      # 1. Calculate the sum of the integers between 1 and `integer`, inclusive.
      # 2. Output the result.
  # 4. If `choice` is equal to 'p':
      # 1. Calculate the product of the integers between 1 and `integer`, inclusive.
      # 2. Output the result.

# puts ">> Please enter an integer greater than 0:"
# integer = gets.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# if choice == 's'
#   result = 0
#   integer.times do |num|
#     result += (num + 1)
#   end
#   puts "The sum of the integers between 1 and #{integer} is #{result}."
# elsif choice == 'p'
#   result = 1
#   integer.times do |num|
#     result *= (num + 1)
#   end
#   puts "The product of the integers between 1 and #{integer} is #{result}."
# end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution defines 2 helper methods, making the code easier to read.
  # The LS solution also uses Integer#upto, making the code easier to read.
  # The LS solution also includes some input validation.
  
# -------------------------------------------------------------------------

# Trying again, this time with helper methods, Integer#upto, and input validation / issuing error messages as needed:

# Algorithm:
  # 1. Prompt the user to enter an integer greater than 0.
      # a. If input isn't an integer, ask user to input a valid positive integer. Repeat step 1 and 1a until input is valid.
      # b. Convert input to an integer and store it using variable `integer`
      # c. If `integer` <= 0, ask user to input a valid positive integer. Repeat step 1 until input is valid.
  # 2. Ask user to enter 's' or 'p' (for "sum" or "product")
      # a. Store input using variable `choice`
  # 3. If `choice` is equal to 's':
      # 1. Calculate the sum of the integers between 1 and `integer`, inclusive.
      # 2. Output the result.
  # 4. If `choice` is equal to 'p':
      # 1. Calculate the product of the integers between 1 and `integer`, inclusive.
      # 2. Output the result.

# def calculate_sum(int)
#   result = 0
#   1.upto(int) { |num| result += num }
#   result
# end

# def calculate_product(int)
#   result = 1
#   1.upto(int) { |num| result *= num }
#   result
# end

# integer = 0
# loop do
#   puts ">> Please enter an integer greater than 0:"
#   input = gets.chomp
#   if input.to_f.to_i.to_s != input || input.to_i < 0 || input.to_i == 0
#     puts ">> Please enter a valid input (integer greater than 0)."
#   else
#     integer = input.to_i
#     break
#   end
# end

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# if choice == 's'
#   sum = calculate_sum(integer)
#   puts "The sum of the integers between 1 and #{integer} is #{sum}."
# elsif choice == 'p'
#   product = calculate_product(integer)
#   puts "The product of the integers between 1 and #{integer} is #{product}."
# else
#   puts "Please enter a valid choice ('s' or 'p')."
# end

# -------------------------------------------------------------------------

# Further Exploration:
# Try it again, this time using #inject

def calculate_sum(int)
  (1..int).inject(:+)
end

def calculate_product(int)
  (1..int).inject(:*)
end

integer = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  input = gets.chomp
  if input.to_f.to_i.to_s != input || input.to_i < 0 || input.to_i == 0
    puts ">> Please enter a valid input (integer greater than 0)."
  else
    integer = input.to_i
    break
  end
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == 's'
  sum = calculate_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif choice == 'p'
  product = calculate_product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Please enter a valid choice ('s' or 'p')."
end