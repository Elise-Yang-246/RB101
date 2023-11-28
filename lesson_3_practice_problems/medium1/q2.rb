# Why is the result of the following statement an error?
# What are 2 possible ways to fix this?

# puts "the value of 40 + 2 is " + (40 + 2)

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution/running code:

# Line 4 results in an error because string concatenation requires strings to be concatenated.
#   (40 + 2) is not a string.

# Fix 1:
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2:
puts "the value of 40 + 2 is #{(40 + 2)}"

# -------------------------------------------------------------------------

# After looking at solution:
# Yes! :)
# Note the LS solution specifies that a TypeError will be raised (TypeError: no implicit conversion of Integer into String)