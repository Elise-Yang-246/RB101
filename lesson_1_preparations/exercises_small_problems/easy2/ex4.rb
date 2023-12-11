# My guess before looking at documentation/solution:

# Input:
  # 1. Current age
  # 2. Retirement age

# Output:
  # 1. Display current year and retirement year.
  # 2. Display how many years of work are left until retirement.

# Rules / assumptions:
  # - assume the current year is 2023.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt user for their age.
      # a. Convert to an integer and store it using the variable `current_age`.
  # 2. Prompt the user for what age they would like to retire.
      # a. Convert to an integer and store it using the variable `retirement_age`.
  # 3. Calculate `retirement_age` - `current_age` and store it using variable `num_more_years`.
  # 4. Calculate `num_more_years` + 2023 and store it using variable `retirement_year`.
  # 5. Output the current year and the retirement year.
  # 6. Output how many more years of work until retirement.
  
# print "What is your age? "
# current_age = gets.chomp.to_i

# print "At what age would you like to retire? "
# retirement_age = gets.chomp.to_i

# num_more_years = retirement_age - current_age
# retirement_year = num_more_years + 2023

# puts "It's 2023. You will retire in #{retirement_year}."
# puts "You have only #{num_more_years} years of work to go!"

# -------------------------------------------------------------------------

# My solution above works, but after looking at hint:
  # This way, the program will continue to work, even in later years.

print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year

num_more_years = retirement_age - current_age
retirement_year = num_more_years + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{num_more_years} years of work to go!"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is very similar, but doesn't chain #chomp after #gets because it's unnecessary.