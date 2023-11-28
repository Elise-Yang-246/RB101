# Given the following hash, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Bonus: What are two other hash methods that would work just as well for this solution?

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

p ages.include?("Spot")

# Bonus 1:
# p ages.assoc("Spot") != nil

# Bonus 2:
# p ages["Spot"] == true

# -------------------------------------------------------------------------

# After looking at solution:
# LS solution includes Hash#key? and Hash#member, which are aliases for Hash#include.
# p ages.key?("Spot")
# p ages.member?("Spot")