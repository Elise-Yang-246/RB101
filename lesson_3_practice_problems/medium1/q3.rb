# My guess before looking at documentation/solution:

# PEDAC:
# input(s): number
# output: array (showing all factors of the input number)

# examples:
#   1)
#     input: 0
#     output: error (divide by 0)
#   
#   2)
#     input: -1
#     output: never outputs (infinite loop)
# 
#   3)
#     input: 4
#     output: [1, 2, 4]
#       ^assume we won't include negative numbers as factors, based on initial code that's given

def factors(number)
  while number < 1
    puts "Please input a positive number."
    number = gets.chomp.to_i
  end
  
  divisor = number
  factors = []
  
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  
  factors
end

# -------------------------------------------------------------------------

# After looking at solution: