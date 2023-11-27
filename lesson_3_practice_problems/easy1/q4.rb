numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
numbers.delete(1)

# -------------------------------------------------------------------------

# My guess before looking at documentation:

# I assume delete_at(1) will delete the element at index 1.
# The mutated array (I assume the method is destructive) will be: [1, 3, 4, 5]

# Line 6 will delete the value "1" (at index 0).
# The mutated array will be: [2, 3, 4, 5]


# -------------------------------------------------------------------------

# After looking at documentation:
# Yes! :)
# Also yes! :)