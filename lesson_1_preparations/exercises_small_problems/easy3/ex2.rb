# My guess before looking at documentation/solution:

# Input:
  # 2 positive integers

# Output:
  # Print the result of addition, subtraction, product, quotient, remainder, and power of those 2 numbers.

# Rules / assumptions:
  # - don't need to worry about input validation
  # - print the result of each operation on a separate line.
  # - assume the inputs are all integers.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt the user to enter the first number.
      # a. Convert to an integer and store using variable `first_num`
  # 2. Prompt the user to enter the second number.
      # a. Convert to an integer and store using variable `second_num`
  # 3. Calculate the result of `first_num` + `second_num`. Print the operation and result.
  # 4. Calculate the result of `first_num` - `second_num`. Print the operation and result.
  # 5. Calculate the result of `first_num` * `second_num`. Print the operation and result.
  # 6. Calculate the result of `first_num` / `second_num`. Print the operation and result.
  # 7. Calculate the result of `first_num` % `second_num`. Print the operation and result.
  # 8. Calculate the result of `first_num` ** `second_num`. Print the operation and result.

# puts "==> Enter the first number:"
# first_num = gets.to_i

# puts "==> Enter the second number:"
# second_num = gets.to_i

# puts "==> #{first_num} + #{second_num} = #{first_num + second_num}"
# puts "==> #{first_num} - #{second_num} = #{first_num - second_num}"
# puts "==> #{first_num} * #{second_num} = #{first_num * second_num}"
# puts "==> #{first_num} / #{second_num} = #{first_num / second_num}"
# puts "==> #{first_num} % #{second_num} = #{first_num % second_num}"
# puts "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses a helper method for the "==> " beginning of each prompt.

# -------------------------------------------------------------------------

# After reading discussion:
# Be careful - second number can't be zero
# What if we wanted to use floats instead of integers?

puts "==> Enter the first number:"
first_num = gets.to_f

second_num = 0
loop do
  puts "==> Enter the second number:"
  second_num = gets.to_f
  if second_num != 0
    break
  else
    puts "==> The second number can't be 0. Please enter a non-zero number."
  end
end

puts "==> #{first_num} + #{second_num} = #{first_num + second_num}"
puts "==> #{first_num} - #{second_num} = #{first_num - second_num}"
puts "==> #{first_num} * #{second_num} = #{first_num * second_num}"
puts "==> #{first_num} / #{second_num} = #{first_num / second_num}"
puts "==> #{first_num} % #{second_num} = #{first_num % second_num}"
puts "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"