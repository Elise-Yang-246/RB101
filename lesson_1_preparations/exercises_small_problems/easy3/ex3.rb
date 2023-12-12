# My guess before looking at documentation/solution:

# Input:
  # 1 string

# Output:
  # Display how many characters are in the input string

# Rules / assumptions:
  # - don't count spaces as characters.
  # - other characters such as commas and apostrophes do count as characters.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt user to input a word or multiple words.
      # a. Store this input using a variable, `input`.
  # 2. Delete all spaces that occur in `input` (but don't mutate the string), then find the length of the resulting string.
      # a. Store the resulting length using variable `length`.
  # 4. Output that there are `length` characters in the input string.

print "Please write word or multiple words: "
input = gets.chomp
length = input.delete(' ').length
puts "There are #{length} characters in \"#{input}\"."

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works and is very similar to the LS solution :)