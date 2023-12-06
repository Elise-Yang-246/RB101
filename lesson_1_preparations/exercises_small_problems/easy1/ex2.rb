# My guess before looking at documentation/solution:

# Input: 1 integer argument (positive, negative, or 0)
# Output: true or false

# Rules:
  # - assume argument is a valid integer value
  # - method returns true if the argument's absolute value is odd
  # - not allowed to use #odd? or #even? in your solution
  # - negative numbers are allowed as input
  # - 0 is allowed as input
  
# Data structure:
  # not necessary
  
# Algorithm:
  # 1. Divide argument by 2.
  # 2. If remainder is 0, then argument is even.
    # a. Return false in this case.
  # 3. Otherwise, the argument is odd. 
    # a. Return true in this case.

# def is_odd?(num)
#   if num % 2 == 0
#     return false
#   else
#     return true
#   end
# end

# puts is_odd?(2)
# puts is_odd?(5)
# puts is_odd?(-17)
# puts is_odd?(-8)
# puts is_odd?(0)
# puts is_odd?(7)

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works, but the LS solution is a lot shorter and doesn't use unnecessary explicit returns.
# Also, I should say modulo, not remainder when dealing with %.
# Note modulo always returns a non-negative result if the number to the right of % is positive.
  # Remainder operators (in some other languages) return negative results if the number on the left is negative.

# def is_odd?(num)
#   num % 2 == 1
# end

# -------------------------------------------------------------------------

# Bonus 1:
# If you weren't certain whether % were the modulo or remainder operator, how would you rewrite #is_odd? so it worked regardless?

# def is_odd?(num)
#   num % 2 == 1 || num % 2 == -1
# end

# puts is_odd?(2)
# puts is_odd?(5)
# puts is_odd?(-17)
# puts is_odd?(-8)
# puts is_odd?(0)
# puts is_odd?(7)

# -------------------------------------------------------------------------

# Bonus 2:
# The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %

def is_odd?(num)
  num.remainder(2) == 1 || num.remainder(2) == -1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
