# My guess before looking at documentation/solution:

# Input:
  # 6 numbers

# Output:
  # prints a message describing whether or not the 6th number appears amongst the first 5 numbers

# Rules / assumptions:
  # - assume user inputs a number and not a string/hash/etc.
  # - assume all input numbers are integers

# Data structure:
  # - it would be helpful to store the inputs in an array, allowing us to keep track of the order in which the numbers are input.
  # - it would also be helpful to have an array with the elements "1st", "2nd", etc. for the prompt.

# Algorithm:
  # 1. Initialize an empty array, `numbers`
  # 2. Initialize an array, `which_num`, and store the elements "1st", "2nd", "3rd", "4th", "5th", and "last" 
  # 3. Repeat 6 times, keeping track of the iteration number (starting at 0), `iteration_num`
      # 1. Prompt user to enter the [element at `iteration_num` of the `which_num` array] number
      # 2. Convert input to an integer and append to the end of `numbers`.
  # 4. Compare the last number in `numbers` to each of the first 5 numbers.
      # 1. If the last number does appear amongst the first 5 numbers, print a message saying so.
      # 2. Otherwise, print a message saying that the last number does not appear in the first 5 numbers.

def appears_or_not(array)
  array[0..-2].each do |element|
    return true if array[-1] == element
  end
  false
end

numbers = []
which_num = ['1st', '2nd', '3rd', '4th', '5th', 'last']

6.times do |iteration_num| 
  puts "==> Enter the #{which_num[iteration_num]} number:"
  numbers << gets.to_i
end

if appears_or_not(numbers)
  puts "The number #{numbers[-1]} appears in #{numbers[0..-2]}."
else
  puts "The number #{numbers[-1]} does not appear in #{numbers[0..-2]}."
end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses Array#include?, whereas I wrote a helper method.
  # It also stores the last number using a variable, instead of another element in the `numbers` array.
  # It also directly outputs what each line should prompt.