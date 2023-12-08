# My guess before looking at documentation/solution:

# Input:
  # a positive integer

# Output:
  # returns the input, but with the digits reversed

# Examples:
  # reversed_number(12345) == 54321
  # reversed_number(12000) == 21
  # reversed_number(12003) == 30021
  # reversed_number(1) == 1

# Rules / assumptions:
  # Don't worry about arguments with leading zeros. The return value should have no leading zeros.
  # Assume user will not enter any negative numbers.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Refer to input integer as `input_num`
  # 2. Convert `input_num` into a string
  # 3. Find the length of `input_num` and set the result equal to variable `num_times`
  # 4. Initialize empty string `output_num`
  # 5. Initialize variable `index` and set equal to `num_times` - 1
  # 5. Repeat `num_times` times:
      # 1. Find the character at index `index` in `input_num` and add it onto the end of `output_num`.
      # 2. Decrease `index` by 1.
  # 6. Convert `output_num` to an integer and return the result.
  
def reversed_number(input_num)
  input_num = input_num.to_s
  num_times = input_num.length
  output_num = ''
  index = num_times - 1
  
  num_times.times do |_|
    output_num << input_num[index]
    index -= 1
  end
  
  output_num.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# LS solution uses String#reverse, making their solution a lot shorter