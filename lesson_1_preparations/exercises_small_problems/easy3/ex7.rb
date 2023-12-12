# My guess before looking at documentation/solution:

=begin

Input:
  string

Output:
  boolean

Rules / assumptions:
  - return true if the input string is a palindrome
  - return false otherwise
  - case matters
  - punctuation and spaces matter
  - numbers within the string are acceptable

Data structure:
  not necessary

Algorithm:
  1. Initialize a counter variable, `counter` and set equal to 0
  2. Initialize empty string `reversed_string`
  3. Find length of input string and store value using variable `length`
  4. While counter < `length`:
    1. Prepend the `counter` element of the input string onto `reversed_string`
    2. Increase `counter` by 1
  5. If `reversed_string` is equal to the input string, return true
    1. Otherwise, return false
    
=end

# Code:

# def palindrome?(string)
#   counter = 0
#   reversed_string = ''
#   length = string.length
  
#   while counter < length
#     reversed_string.prepend(string[counter])
#     counter += 1
#   end
  
#   if reversed_string == string
#     true
#   else
#     false
#   end
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false       
# p palindrome?("madam i'm adam") == false 
# p palindrome?('356653') == true

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is a lot shorter because it uses String#reverse

# -------------------------------------------------------------------------

# Further Exploration 1:
# Write a method that determines whether an array is palindromic

# def array_palindrome?(array)
#   array == array.reverse
# end

# p array_palindrome?([1, 2, 3])
# p array_palindrome?([1, 5, 7, 5, 1])

# -------------------------------------------------------------------------

# Further Exploration 2:
# Write a method that determines whether an array or a string is palindromic
  # can take either an array or a string argument
  # may not use if, unless, or case statement or modifier.

def palindrome?(input)
  input == input.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          
p palindrome?("madam i'm adam") == false 
p palindrome?('356653') == true

p palindrome?([1, 2, 3]) == false
p palindrome?([1, 5, 7, 5, 1]) == true