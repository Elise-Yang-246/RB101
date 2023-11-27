# Given the following:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones

# Make it into an un-nested array.

# -------------------------------------------------------------------------

# My guess before looking at documentation:

# I know there's a method to change a nested array into an un-nested one, but can't remember the method name.
# Can manually make the above into an un-nested array:

# unnested_flintstones = [flintstones[0], flintstones[1], flintstones[2][0], flintstones[2][1], flintstones[3][0], flintstones[3][1]]
# p unnested_flintstones


# -------------------------------------------------------------------------

# After looking at documentation:

# The Array#flatten! method is what I was thinking of earlier.

flintstones.flatten!
p flintstones