# See if the name "dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
if advice.include?('dino')
  puts "Yes! 'Dino' appears in the string :)"
else
  puts "No, 'Dino' doesn't appear in the string"
end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works.
# The LS solution uses the String#match method, which I didn't know.

# if advice.match?('dino')
#   puts "Yes! 'Dino' appears in the string :)"
# else
#   puts "No, 'Dino' doesn't appear in the string"
# end