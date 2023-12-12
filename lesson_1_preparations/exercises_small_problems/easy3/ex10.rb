# My guess before looking at documentation/solution:

=begin

Input:
  string

Output:
  - return true if all the alphabetic characters in the string are uppercase
  - return false otherwise

Rules / assumptions:
  - non-alphabetic characters should be ignored
  - an empty string should return true

Data structure:
  not necessary

Algorithm:
  1. Remove all non-alphabetic characters from the input string. Store using variable `string`
  2. Mutate `string` and delete any lowercase alphabetic characters.
    1. If any lowercase alphabetic characters were deleted, return false
    2. Otherwise, return true

=end

def uppercase?(string)
  string = string.delete('^a-zA-Z')
  if string.delete!('^A-Z')
    false
  else
    true
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is a lot shorter because the easiest way to solve this problem is to simply #upcase the input string and see if the string is altered.

# -------------------------------------------------------------------------

# Further Exploration:
# Yes, it would make sense to return `false` if the argument is an empty string.
# The problem statement says the method should return `true` if all of the alphabetic characters in the input string as uppercase.
# Since there are no alphabetic characters in an empty input string, then they are not uppercase.