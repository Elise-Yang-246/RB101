# Use the Ruby documentation to determine what this code will print.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# -------------------------------------------------------------------------

# My guess before looking at solution:

# Couldn't locate a similar example in the documentation. (Q: Are we allowed to google "Ruby Docs + [search item]", or should we be able to navigate from fully within the Ruby Docs website?)

# I see there are 2 default parameters (b and c), but I'm not sure if b and c would be bound to the 5 and 6 passed in as arguments.
# If they are, I imagine there will be an error, since my_method expects an additional argument (to be bound to d).

# Alternatively, I think that this could happen:
    # either: a = 4, b = 2, c = 5, d = 6
    # or:     a = 4, b = 5, c = 3, d = 6
  # But I'm not sure if this would happen / which case would happen.
  # If this were to happen, I think that a = 4, b = 5, c = 3, d = 6 would be more likely, since c is the last default parameter from left to right.

# -------------------------------------------------------------------------

# After running the code and googling for the specific spot in the documentation:
# One of my hunches was right :)
# Ruby fills in missing arguments from left to right.
# Also, I should refer to default values as "default arguments", not "default parameters" like I wrote in my solution above.

# -------------------------------------------------------------------------

# After looking at solution:
# Information about arguments can be found by selecting the calling_methods link from the core API page.