# My guess before looking at documentation/solution:

# Input:
  # N/A

# Output:
  # output all odd numbers from 1 to 99, inclusive, with each number on a separate line

# Rules / assumptions:
  # N/A

# Data structure:
  # not necessary

# Algorithm:
  # 1. Initialize variable `num` and set equal to 1
  # 2. While `num` is less than 100:
      # 1. Output `num` if `num` is not evenly divisible by 2.
      # 2. Increase `num` by 1.

# num = 1
# while num < 100
#   puts num if num % 2 != 0
#   num += 1
# end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution simply increments the number by 2, instead of incrementing by 1 and using a conditional like I did.

# -------------------------------------------------------------------------

# Further Exploration:
# Repeat this exercise with a technique different from the one you just used, and different from the LS solution.
# Trying using Integer#upto

# 1.upto(99) { |num| puts num if num.odd? }

# -------------------------------------------------------------------------

# Further Exploration continued:
# Repeat this exercise with a technique different from the one you just used, and different from the LS solution.
# Trying using Array#select

# Algorithm:
  # 1. Create an array of numbers, `numbers`, from 1 to 99 inclusive.
  # 2. Select the odd numbers from `numbers` and store them in a new array, `odd_numbers`.
  # 3. Output the numbers in `odd_numbers` one at a time, with each number on a separate line.

numbers = Array.new(99) { |index| index + 1 }
odd_numbers = numbers.select { |element| element.odd? }
puts odd_numbers
