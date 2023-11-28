# Given the title:

# title = "Flintstone Family Members"

# How could we easily center the title above a table that's 40 characters in width? 

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

title = "Flintstone Family Members"

num_spaces = (40 - title.length) / 2
padding = ''
num_spaces.times { |_| padding << ' ' }

puts "#{padding}#{title}#{padding}"

table_visual = ''
40.times { |_| table_visual << '-' }
puts table_visual

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses the String#center method, which I forgot about.
# puts title.center(40)