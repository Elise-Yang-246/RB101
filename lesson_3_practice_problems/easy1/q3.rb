# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

# -------------------------------------------------------------------------

# My guess before looking at documentation:

advice_array = advice.split
advice_array[6] = "urgent"
advice = advice_array.join(' ')
p advice


# -------------------------------------------------------------------------

# After looking at solution:
# My above code works, but the LS solution uses a useful method:

# advice.gsub!('important', 'urgent')
# p advice