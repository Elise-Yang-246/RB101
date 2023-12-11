# My guess before looking at documentation/solution:

# Input:
  # none

# Output:
  # prints Teddy's randomly generated age

# Rules / assumptions:
  # generate a random number between 20 and 200

# Data structure:
  # not necessary

# Algorithm:
  # 1. Generate a random number between 20 and 200.
  # 2. Output Teddy's age with the randomly generated number.

# age = rand(20..200)
# puts "Teddy is #{age} years old!"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works and exactly matches the LS solution :)

# -------------------------------------------------------------------------

# Further Exploration:
# Modify this program to ask for a name, and then print the age of that person.
# If no name is entered, use "Teddy as the name"

# Algorithm:
  # 1. Ask the user to input a name, and store it with the variable `name`
      # a. If the user input is an empty string, use "Teddy" as the name.
  # 1. Generate a random number between 20 and 200.
  # 2. Output the person's name and age with the randomly generated number.

print "Please enter your name: "
name = gets.chomp
name = 'Teddy' if name == ''

age = rand(20..200)
puts "#{name} is #{age} years old!"