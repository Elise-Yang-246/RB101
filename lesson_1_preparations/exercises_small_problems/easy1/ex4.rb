# My guess before looking at documentation/solution:

# Inputs:
  # 1 positive integer `salary`
  # 1 boolean `bonus`

# Outputs:
  # return an integer (bonus amount)

# Rules:
  # if `bonus` is `true`, bonus amount should be half of `salary`
  # if `bonus` is `false`, bonus amount should be 0
  
# Data structure:
  # not necessary

# Algorithm:
  # 1. If `bonus` is equal to `true`:
      # 1. Return `salary` divided by 2.
  # 2. If `bonus` is equal to `false`:
      # 1. Return 0.
  
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# -------------------------------------------------------------------------

# After looking at solution:
# Yes! My solution actually exactly matched the LS solution :)