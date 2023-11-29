# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# -------------------------------------------------------------------------

# My guess before looking at solution:
# Found Enumerator::ArithmeticSequence#step in the Ruby Docs, but there's no description/examples listed for #step.

# Intuitively, I assume that the above code will step from 5 to 10 in increments of 3.
# Output:
# 5
# 8

# -------------------------------------------------------------------------

# After looking at solution:
# Intuition was correct :)
# In the future, look through Integer, Float, Numeric, and Math classes if need a method that works with numbers