# My guess before looking at documentation/solution:

# Inputs:
  # 1 argument (a positive integer)

# Outputs:
  # string of alernating 1s and 0s

# Rules:
  # - output string always starts with 1.
  # - the length of the string should match the given integer.
  
# Data structure:
  # (not sure if a String is a data structure, but --)
  # would be helpful to have an intermediate string to push 1s or 0s onto
  
# Algorithm:
  # 1. Initialize a counter variable and set equal to 0.
  # 2. Initialize an empty string, output_string
  # 3. While counter < argument
    # a. Add the element '1' to the end of output_string.
    # b. Increment the counter variable by 1.
    # c. Break out of the loop if counter is equal to argument.
    # d. Add the element '0' to the end of output_string.
    # e. Increment the counter variable by 1.
  # 4. Return the output_string.
  
# def stringy(int)
#   counter = 0
#   output_string = ''
  
#   while counter < int
#     output_string << '1'
#     counter += 1
#     break if counter == int
#     output_string << '0'
#     counter += 1
#   end
  
#   output_string
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# -------------------------------------------------------------------------

# After looking at solution:

# My solution works! :)
# The LS solution is a lot shorter than mine because it uses the fact that we will need to do something a known number of times (determined by the argument).
  # Thus, using the #times method, there's no need for a counter variable or incrementing it at certain points.
  # It also uses the ternary operator to make it even shorter.
  
  
  
# -------------------------------------------------------------------------

# Further Exploration:
# Modify stringy so it takes an additional optional argument that defaults to 1. 
# If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

# Algorithm:
  # 1. Initialize an empty string `output_string`
  # 2. Loop as many times as the integer argument `num_chars` dictates:
    # 1. If argument `start_with` is equal to 1:
        # 1. If the iteration number is even, add '1' to the end of `output_string`
        # 2. If the iteration number is odd, add '0' to the end of `output_string`
    # 2. If argument `start_with` is equal to 0:
        # 1. If the iteration number is even, add '0' to the end of `output_string`
        # 2. If the iteration number is odd, add '1' to the end of `output_string`
  # 3. return `output_string`

def stringy(num_chars, start_with = 1)
  output_string = ''
  num_chars.times do |iteration|
    if start_with == 1
      output_string << ( iteration.even? ? '1' : '0' )
    elsif start_with == 0
      output_string << ( iteration.even? ? '0' : '1' )
    else
      output_string << 'Only 1 or 0 are valid inputs.'
    end
  end
  output_string
end

puts stringy(6, 0) #== '101010'
puts stringy(9, 0) #== '101010101'
puts stringy(4, 0) #== '1010'
puts stringy(7, 0) #== '1010101'