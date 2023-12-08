# My guess before looking at documentation/solution:

# Input:
  # 1 non-empty string argument

# Output:
  # returns the middle character(s) of the argument

# Rules / assumptions:
  # - if the argument has an odd length, return exactly 1 character
  # - if the argument has an even length, return exactly 2 characters

# Data structure:

# Algorithm:
  # 1. Determine if input string is odd or even.
  # 2. If input string is odd:
      # 1. Output 1 character (the middle character of the string)
  # 3. If input string is even:
      # 2. Output 2 characters (the middle 2 characters of the string)

def center_of(string)
  length = string.length
  if (length % 2) != 0
    string[length / 2]
  else
    string[(length / 2 - 1)..(length / 2)]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# LS solution uses Integer#odd?, saves the center index value to be easily referenced, and also uses String#[start, length]