# What do each of these puts statements output?

# -------------------------------------------------------------------------

# My guess before looking at solution:

a = %w(a b c d e)                       
puts a.fetch(7)                         # IndexError exception (since index lies out of the array bounds)
puts a.fetch(7, 'beats me')             # beats me
puts a.fetch(7) { |index| index**2 }    # 49  

# -------------------------------------------------------------------------

# After looking at solution:
# Yes! :)