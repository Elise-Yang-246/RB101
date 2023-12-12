# My guess before looking at documentation/solution:

# Input:
  # number

# Output:
  # returns the square of the input number

# Rules / assumptions:
  # use the `multiply` method from the previous problem

# Data structure:
  # not necessary

# Algorithm:
  # 1. Define a method, `square`, that takes 1 argument, `input`
  # 2. Within the `square` method, call the `multiply` method and pass in `input` for both arguments
  
# Code:

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(input)
#   multiply(input, input)
# end

# p square(5) == 25
# p square(-8) == 64

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works and matches the LS solution! :)

# -------------------------------------------------------------------------

# Further Exploration:
# What if we wanted to generalize this method to a "power to the n" type method?
# How would we go about doing so while still using the `multiply` method?

# Algorithm:
  # 1. Define a method, `exponentiate`, that takes 2 arguments, `number`, and `power`
  # 2. Within the `exponentiate` method:
      # 1. If `power` is 0:
          # 1. Return 1
      # 2. If `power` is 1:
          # 1. Call `multiply` and pass in `number` and 1
      # 3. If `power` is negative:
          # 1. Prompt user to enter a positive power. (Assume we won't deal with negative powers in this program.)
      # 4. Otherwise:
          # 1. Initialize variable `intermediate_num` and set equal to `number`
          # 2. While `power` > 1
            # 1. Call `multiply` and pass in `intermediate_num` and `number` as arguments
            # 2. Store the result by re-assigning `intermediate_num`
            # Decrease `power` by 1

def multiply(num1, num2)
  num1 * num2
end

def exponentiate(number, power)
  if power == 0
    1
  elsif power == 1
    multiply(number, 1)
  elsif power < 0
    puts "Please enter a positive power."
  else
    intermediate_num = number
    while power > 1
      intermediate_num = multiply(intermediate_num, number)
      power -= 1
    end
    result = intermediate_num
  end
end

puts exponentiate(2, 5)
puts exponentiate(5, 6)
puts exponentiate(2, 0)
puts exponentiate(2, 1)
