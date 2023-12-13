# What will the following code output?

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
# I've seen a similar problem before in a study session.
# All 3 variables, `a`, `b`, and `c` point to the same object, so lines 7, 8, and 9
# will all output the same number.

# I imagine this is because numbers are immutable in Ruby, so there's no need for
# Ruby to store the same number at various different locations in memory.
# (But need to verify this hypothesis.)

# -------------------------------------------------------------------------

# After looking at solution:
# My guess was right! :)
# Still need to check the second half of my hypothesis, but the LS solution does
# say that it has to do with how integers are immutable!