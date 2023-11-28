# Use String#slice! to shorten the following sentence to "house training your pet dinosaur."
# Make the return value "Few things in life are as important as ".

advice = "Few things in life are as important as house training your pet dinosaur."

# Bonus: What happens if you use the String#slice method instead?

# -------------------------------------------------------------------------

# My guess before looking at solution:
p advice.slice!('Few things in life are as important as ')
p advice

# *****************************
# Bonus:

# If you use the String#slice method, it will still return the same value as above,
#   but the string Object that the advice variable points to will not be mutated.

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works :)
# The LS solution uses String#index. This seems easier than my solution, since you don't need to type the beginning of the sentence ("Few things...")

# Bonus: Yes! :)