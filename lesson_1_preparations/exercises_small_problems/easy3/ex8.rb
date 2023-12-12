# My guess before looking at documentation/solution:

=begin

Input:
  string

Output:
  boolean

Rules / assumptions:
  - return true if the input string is a palindrome, false otherwise
  - method should be case insensitive
  - ignore all non-alphanumeric characters

Data structure:
  - could be helpful to have an array of characters that are not ignored

Algorithm:
  1. Create an array with elements that should not be ignored.
    a. Include all lowercase characters 'a' through 'z', and all numbers 0 through 9
  2. Change the input string to be all lowercase, and store the result using variable `string`
  3. Select only the alphanumeric characters from `string`, and store using variable `new_string`
  4. Call the `palindrome?` helper method (from the previous exercise) and pass in `string` as an argument

=end

# Code:

# def palindrome?(input)
#   input == input.reverse
# end

# def real_palindrome?(string)
#   do_not_ignore = []
#   'a'.upto('z') { |char| do_not_ignore << char }
#   0.upto(9) { |num| do_not_ignore << num }
  
#   string.downcase!
#   counter = 0
#   new_string = ''
#   while counter < string.length
#     if do_not_ignore.include?(string[counter])
#       new_string << string[counter]
#     end
#     counter += 1
#   end
#   palindrome?(new_string)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is a lot shorter because it uses String#delete to simply remove all the non-alphanumeric characters.

def palindrome?(input)
  input == input.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false