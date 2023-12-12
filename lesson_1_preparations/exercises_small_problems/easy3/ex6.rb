=begin
My guess before looking at documentation/solution:

Input:
  2 arguments (truthy or falsey)

Output:
  boolean

Rules / assumptions:
  - only return true if exactly 1 argument is truthy
  - xor?(false, true) => true
  - xor?(true, false) => true
  - xor?(true, true) => false
  - xor?(false, false) => false

Data structure:
  not necessary

Algorithm:
  1. Define a method, `xor?` that takes 2 arguments, `arg1` and `arg2`
  2. If `arg1` is truthy and `arg2` is falsey, return true.
  3. If `arg1` is falsey and `arg2` is truthy, return true.
  4. If `arg1` is truthy and `arg2` is truthy, return false.
  5. If `arg1` is falsey and `arg2` is falsey, return false.

=end

# Code:

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  elsif arg1 == true && arg2 == true
    false
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# -------------------------------------------------------------------------

=begin
After looking at solution:
My solution works! :)
The LS solution is a lot shorter because it:
  - uses "&&" and "!" to ensure that it only returns true if one argument is true and the other is false
  - also doesn't compare each argument to a boolean, rather just uses the value itself
=end

# -------------------------------------------------------------------------
# Further exploration:
# Does the xor method perform short-circuit evaluation of its operands? Why or why not? 
# Does short-circuit evaluation in xor operations even make sense?

=begin
No, the xor method does not perform short-circuit evaluation of its operands.
Since there are only 2 operands, and one must be truthy while the other must be falsey,
in every situation, Ruby must evaluate the 2nd operand as well as the 1st to determine
if the result should be true or false.
=end