# Given the following string:

# munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):
#   1) "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
#   2) "The munsters are creepy in a good way."
#   3) "the munsters are creepy in a good way."
#   4) "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

# 1) I imagine there's a method to reverse the cases of a string, but I don't know the method.
# Will write my own method instead:

# munsters_description = "The Munsters are creepy in a good way."

# def reverse_case(string)
#   counter = 0
#   while counter < string.length
#     if string[counter].upcase == string[counter]
#       string[counter] = string[counter].downcase
#     else
#       string[counter] = string[counter].upcase
#     end
#     counter += 1
#   end
# end

# reverse_case(munsters_description)
# p munsters_description

# ******************************

# 2) 

# munsters_description = "The Munsters are creepy in a good way."

# munsters_description.downcase!.capitalize!
# p munsters_description

# ******************************

# 3)

# munsters_description = "The Munsters are creepy in a good way."
# munsters_description.downcase!
# p munsters_description

# ******************************

# 4)

munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase!
p munsters_description

# -------------------------------------------------------------------------

# After looking at solution:
# 1) My solution works, but a built-in method is String#swapcase!
# 2) The #downcase! in my solution was unnecessary - could have just written:
      # munsters_description.capitalize!