# What's wrong with the code?

# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
Within the `fib` method, `limit` is used on line 6, but Ruby can't access it.
This is because a method definition creates its own scope, and can only access variables
initialized outside of the method if they are passed in as arguments. Since `limit`
is not one of the `fib` method parameters, Ruby will raise an exception.
=end

# -------------------------------------------------------------------------

# How would you fix this so that it works?

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# -------------------------------------------------------------------------

# After looking at solution:
# The LS solution further specifies a "local variable", whereas I just said "variable".
  # I think in the future to further clarify, I can say a "local variable in the main/outer scope"