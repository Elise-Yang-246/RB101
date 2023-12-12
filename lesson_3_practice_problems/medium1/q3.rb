# My guess before looking at documentation/solution:

=begin

PEDAC:
input(s): number
output: array (showing all factors of the input number)

examples:
  1)
    input: 0
    output: error (divide by 0)
  
  2)
    input: -1
    output: never outputs (infinite loop)

  3)
    input: 4
    output: [1, 2, 4, -1, -2, -4]

Rules / assumptions:
  - not looking to find the factors for 0 or negative numbers 
    - just want to handle it gracefully instead of raising an exception / going into an infinite loop

=end

# Code:

def factors(number)
  loop do
    break if number > 0
    return "Please enter a valid number greater than 0."
  end
  
  divisor = number
  factors = []
  ((number * 2) + 1).times do |_|
    if divisor == 0
      divisor -= 1
      next
    end
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  
  factors
end

p factors(4)
p factors(-1)


=begin
Bonus 1:

The purpose of the `number % divisor == 0` is to see if `number` is evenly divisible by `divisor`.
If there is no remainder, then we know that `divisor` is a factor of `number`.
=end

=begin
Bonus 2:

The purpose of the second-to-last line of the `factors` method is so that the
`factors` method implicitly returns the `factors` array, since it is the last 
line evaluated in the method.
=end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is a lot shorter because it uses a while loop, which never executes if the divisor is less than or equal to 0.
  # I also found the negative factors, which doesn't seem necessary after looking at the LS solution.
  # The LS solution also is able to keep running after a 0 or negative argument, whereas mine exits the program.