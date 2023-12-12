# My guess before looking at documentation/solution:

=begin

Input:
  number

Output:
  boolean

Rules / assumptions:
  - assume inputs are integers
  - return true if argument is palindromomic

Data structure:
  not necessary

Algorithm:
  1. Define a method, `palindromic_number`, that takes 1 argument, `num`
  2. Convert `num` to a string, reverse it, convert it back to an integer
    a. If the result is equal to the original argument:
      1. Return true
    b. Otherwise:
      1. Return false

=end

# Code:

def palindromic_number?(num)
  if num.to_s.reverse.to_i == num
    true
  else
    false
  end
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is similar, but uses the `palindrome?` method from a previous exercise as a helper method.

# -------------------------------------------------------------------------

# Further Exploration:
# Suppose your number begins with one or more 0s. 
# Will your method still work? Why or why not? Is there any way to address this?

# Tested it out in irb -- apparently a number with a leading 0 will not convert properly to a string.
# The method above won't work.
# Will come back to see if I can rewrite the method to address this.