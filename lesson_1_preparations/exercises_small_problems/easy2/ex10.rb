# My guess before looking at documentation/solution:

# Input:
  # a number

# Output:
  # - if input number is positive, return the negative of that number
  # - if input number is 0 or negative, return the original number

# Rules / assumptions:
  # assume user inputs a number and not a string/hash/etc.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Define a method, `negative`, that takes 1 argument, `number`.
  # 2. If `number` > 0:
      # 1. Multiply `number` by -1 and return the value.
  # 3. If `number` <= 0:
      # 1. Return `number`

def negative(number)
  if number > 0
    number * -1
  elsif number < 0 || number == 0
    number
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses the ternary operator, which makes their solution a lot shorter.
  # The LS solution also only checks if `number > 0` -- the conditional in my elsif branch is unnecessary.