# My guess before looking at documentation/solution:

def color_valid(color)
  (color == "blue" || color == "green") ? true : false
end

p color_valid('blue')
p color_valid('green')
p color_valid('yellow')

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works :)
# The LS solution is even simpler:

# def color_valid(color)
#   color == "blue" || color == "green"
# end