# Show two different ways to put the expected "Four score and " in front of the given string.

# -------------------------------------------------------------------------

# My guess before looking at documentation:

# famous_words = "seven years ago..."

# p "Four score and " + famous_words
# p "Four score and " << famous_words


# -------------------------------------------------------------------------

# After looking at documentation (but before looking at solution):

# Can also use String#prepend:

famous_words = "seven years ago..."
p famous_words.prepend('Four score and ')

# -------------------------------------------------------------------------

# After looking at solution:
# Yes! :)
# Yes! :)
# Yes! :)