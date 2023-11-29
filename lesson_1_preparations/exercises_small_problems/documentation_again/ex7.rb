# How would you modify this code to print just the public methods that are defined or overridden by the String class?
# The list should exclude all members that are only defined in Object, BasicObject, and Kernel.

# s = 'abc'
# puts s.public_methods.inspect

# -------------------------------------------------------------------------

# My guess before looking at solution:
# Wasn't able to find in documentation without googling :(

# -------------------------------------------------------------------------

# After looking at solution:

# Since the String class doesn't include #public_methods:
# Look at the String class's parent (Object)

s = 'abc'
puts s.public_methods(false).inspect