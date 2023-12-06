# My guess before looking at documentation/solution:

# Input: 2 arguments (1 string and 1 positive integer)
# Output: printed string as many times as integer indicates

# Examples:
  # input:  'Hello'
  #         3
  # output: Hello
  #         Hello
  #         Hello
  
# Data structure:
  # intermediate: not needed
  
  
def repeat(string, integer)
  integer.times { puts string }
end

puts "Please enter a string."
input_string = gets.chomp

puts "Please enter an integer."
input_integer = gets.chomp.to_i

repeat(input_string, input_integer)

# -------------------------------------------------------------------------

# After looking at solution: