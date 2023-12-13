# Predict the output of the following code:

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
# `a` and `c` are pointing to the same object, so lines 7 and 9 should output the same number.
# I think `b` is pointing to a different object, so line 8 should output a different number than lines 7 and 9.

=begin
Example output:
9
3
9
=end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution was right and matches the LS logic :)