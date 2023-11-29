# PEDAC example

# Input:
#   - target number
#   - set of factors

# Output:
#   - sum of multiples from 1 up to the target number

# Rules:
#   - a multiple is a number that can be divided by another number without a remainder
#   - if 0 factors are given, use 3 and 5 as the default factors
#   - the multiples to be summed must be unique.
#   - the target value is the limit, but isn't considered a multiple
#   - assume all numbers used are integers >= 1

# Examples / test cases:
#   Given example:
      # input:
        # target number:
        # 20
        
        # factors:
        # [3, 5]
      
        # multiples of 3:
        # 3, 6, 9, 12, 15, 18
      
        # multiples of 5:
        # 5, 10, 15
      
        # set of multiples:
        # [3, 5, 6, 9, 12, 15, 18]
    
      # output:
        # sum of multiples:
        # 78
#   Validation example 1 (same as given example)

#   Validation example 2:
      # input:
        # target number:
        # 20
        
        # factors:
        # [3]
      
        # multiples of 3:
        # 3, 6, 9, 12, 15, 18
      
        # set of multiples:
        # [3, 6, 9, 12, 15, 18]
      
      # output:
        # sum of multiples:
        # 63
#   Validation example 3:
      # input:
        # target number:
        # 20
        
        # factors:
        # [5]
      
        # multiples of 5:
        # 5, 10, 15
      
        # set of multiples:
        # [5, 10, 15]
      
      # output:
        # sum of multiples:
        # 30
#   Validation example 4:
      # input:
        # target number:
        # 20
        
        # factors:
        # []
      
        # multiples of 3 (default factor since 0 factors input):
        # 3, 6, 9, 12, 15, 18
      
        # multiples of 5 (default factor since 0 factors input):
        # 5, 10, 15
      
        # set of multiples:
        # [3, 5, 6, 9, 10, 12, 15, 18]
    
      # output:
        # sum of multiples:
        # 78
#   Validation example 5:
      # input:
        # target number:
        # 1
        
        # factors:
        # []
      
        # multiples of 3 (default factor since 0 factors input):
        # []
      
        # multiples of 5(default factor since 0 factors input):
        # []
      
        # set of multiples:
        # []
      
      # output:
        # sum of multiples:
        # 0
#   Validation example 6:
      # input:
        # target number:
        # 20
        
        # factors:
        # [19]
      
        # multiples of 19:
        # 19
      
        # set of multiples:
        # [19]
      
      # output:
        # sum of multiples:
        # 19

# Mental model:
#   Determine a list of all multiples of a set of factors up to a target value,
#   then filter the list of multiples to the unique values.
#   Finally, compute and return the sum of the unique multiples.

# Data structure:
#   input:
#     target: positive integer
#     set of factors: array of positive integers
#   intermediate: array to store collection of multiples
#   output:
#     integer

# Algorithm:
# 1. Create an empty array called multiples that will contain the multiples.
# 2. Check whether the list of factors is empty. If there are no factors, set the list to [3, 5]
# 3. For every factor in the factors list:
    # 1. Set the current_multiple to factor to keep track of the multiples of factor.
    # 2. While current_multiple < target
        # 1. Append the current_multiple to multiples.
        # 2. Add factor to current_multiple.
# 4. Filter duplicate numbers from multiples.
# 5. Compute and return the sum of the numbers in multiples.

def sum_of_multiples(target, factors)
  multiples = []
  factors = [3, 5] if factors.length == 0
  
  factors.each do |factor|
    current_multiple = factor
    
    while current_multiple < target
      multiples << current_multiple
      current_multiple += factor
    end
  end
  
  multiples.uniq.sum
end

p sum_of_multiples(20, [3, 5])
p sum_of_multiples(20, [3])
p sum_of_multiples(20, [5])
p sum_of_multiples(20, [])
p sum_of_multiples(1, [])
p sum_of_multiples(20, [19])