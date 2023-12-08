# My guess before looking at documentation/solution:

# Input:
  # 1 positive integer, `n`

# Output:
  # displays a right triangle whose sides each have `n` stars

# Rules / assumptions:
  # the right angle of the triangle will be on the right hand side
  # the hypotenuse will have one end at the lower-left of the triangle and the other at the upper-right
  # the input should be greater than 0

# Data structure:
  # not necessary

# Algorithm:
  # 1. Initialize variable `current_row` to 1. This will keep track of what the current row is.
  # 2. While `current_row` <= `n`
      # 1. Output (`n` - `current_row`) number of spaces, followed immediately by `current_row` number of '*'s
      # 2. Increase `current_row` by 1. 

# def triangle(int)
#   current_row = 1
#   while current_row < int || current_row == int do
#     puts (' ' * (int - current_row)) + ('*' * current_row)
#     current_row += 1
#   end
# end

# triangle(5)
# triangle(9)

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# LS solution uses Integer#times, so it doesn't need a `current_row` variable. 
  # The LS solution also is easier to read, since the `spaces` and `stars` variables are very clear variables.
  
# -------------------------------------------------------------------------
# Trying LS's way:

# Algorithm:
  # 1. Use `input_num` to save integer input (number of stars on each side of the triangle)
  # 2. Initialize variable `num_spaces` to keep track of the number of spaces to print on each row.
      # a. Set `num_spaces` to `input_num` - 1
  # 3. Initialze variable `num_stars` to keep track of the number of stars to print on each row.
      # a. Set `num_stars` to 1.
  # 4. Repeat `input_num` times:
      # 1. Output `num_spaces` spaces, followed immediately by `num_stars` stars.
      # 2. Decrease `num_spaces` by 1.
      # 3. Increase `num_stars` by 1.

# def triangle(input_num)
#   num_spaces = input_num - 1
#   num_stars = 1
  
#   input_num.times do |_|
#     puts (' ' * num_spaces) + ('*' * num_stars)
#     num_spaces -= 1
#     num_stars += 1
#   end
# end

# triangle(5)
# triangle(9)


# -------------------------------------------------------------------------

# Further Exploration 1:
# Try modifying your solution so it prints the triangle upside down from its current orientation.

# Examples:
  # 1.  upside_down_triangle(5)
  #
  #     *****
  #      ****
  #       ***
  #        **
  #         *
  
  # 2.  upside_down_triangle(9)
  #
  #     *********
  #      ********
  #       *******
  #        ******
  #         *****
  #          ****
  #           ***
  #            **
  #             *

# Algorithm:
  # 1. Use `input_num` to save integer input (number of stars on each side of the triangle)
  # 2. Initialize variable `num_spaces` to keep track of the number of spaces to print on each row.
      # a. Set `num_spaces` to 0
  # 3. Initialze variable `num_stars` to keep track of the number of stars to print on each row.
      # a. Set `num_stars` to `input_num`
  # 4. Repeat `input_num` times:
      # 1. Output `num_spaces` spaces, followed immediately by `num_stars` stars.
      # 2. Increase `num_spaces` by 1.
      # 3. Decrease `num_stars` by 1.

# def upside_down_triangle(input_num)
#   num_spaces = 0
#   num_stars = input_num
  
#   input_num.times do |_|
#     puts (' ' * num_spaces) + ('*' * num_stars)
#     num_spaces += 1
#     num_stars -= 1
#   end
# end

# upside_down_triangle(5)
# upside_down_triangle(9)

# -------------------------------------------------------------------------

# Further Exploration 2:
# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.
  # Will pick upper left first:

# Examples:
  # 1.  upper_left_triangle(5)
  #
  #     *****
  #     ****
  #     ***
  #     **
  #     *
  
  # 2.  upper_left_triangle(9)
  #
  #     *********
  #     ********
  #     *******
  #     ******
  #     *****
  #     ****
  #     ***
  #     **
  #     *

# Algorithm:
  # 1. Use `input_num` to save integer input (number of stars on each side of the triangle)
  # 2. Initialize variable `num_spaces` to keep track of the number of spaces to print on each row.
      # a. Set `num_spaces` to 0
  # 3. Initialze variable `num_stars` to keep track of the number of stars to print on each row.
      # a. Set `num_stars` to `input_num`
  # 4. Repeat `input_num` times:
      # 1. Output `num_stars` stars, followed immediately by `num_spaces` spaces.
      # 2. Increase `num_spaces` by 1.
      # 3. Decrease `num_stars` by 1.

# def upper_left_triangle(input_num)
#   num_spaces = 0
#   num_stars = input_num
  
#   input_num.times do |_|
#     puts ('*' * num_stars) + (' ' * num_spaces)
#     num_spaces += 1
#     num_stars -= 1
#   end
# end

# upper_left_triangle(5)
# upper_left_triangle(9)

# -------------------------------------------------------------------------

# Further Exploration 2 continued:
# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.
  # Will now pick lower left:

# Examples:
  # 1.  upper_left_triangle(5)
  #
  #     *
  #     **
  #     ***
  #     ****
  #     *****
  
  # 2.  upper_left_triangle(9)
  #
  #     *
  #     **
  #     ***
  #     ****
  #     *****
  #     ******
  #     *******
  #     ********
  #     *********

# Algorithm:
  # 1. Use `input_num` to save integer input (number of stars on each side of the triangle)
  # 2. Initialize variable `num_spaces` to keep track of the number of spaces to print on each row.
      # a. Set `num_spaces` to `input_num` - 1
  # 3. Initialze variable `num_stars` to keep track of the number of stars to print on each row.
      # a. Set `num_stars` to 1
  # 4. Repeat `input_num` times:
      # 1. Output `num_stars` stars, followed immediately by `num_spaces` spaces.
      # 2. Decrease `num_spaces` by 1.
      # 3. Increase `num_stars` by 1.

def upper_left_triangle(input_num)
  num_spaces = input_num - 1
  num_stars = 1
  
  input_num.times do |_|
    puts ('*' * num_stars) + (' ' * num_spaces)
    num_spaces -= 1
    num_stars += 1
  end
end

upper_left_triangle(5)
upper_left_triangle(9)