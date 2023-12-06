# My guess before looking at documentation/solution:

# Input:
  # 1 string `string`

# Output:
  # print `string` within a box

# Rules / assumptions:
  # - assume that the input `string` will always fit in your terminal window
        # since `string` will always fit, then it will always be 1 line vertically
          # so, the box will always be 5 characters long (vertically)
  # - the box will be made up of:
        # '+'s in each corner
        # '-'s horizontally
        # '|'s vertically
  # - when printing the box:
        # - leave 1 empty line (except for the box outline) between the top of the box and `string`
        # - leave 1 empty line (except for the box outline) between the bottom of the box and `string`
        # - leave 1 space between the left side of the box and `string`
        # - leave 1 space between the right side of the box and `string`
  # - if `string` is empty, print a box 4 characters wide (horizontally) and 5 characters long (vertically)

# Data structure:
  # not necessary

# Algorithm:
  # 1. Initialize variable `horizontal_characters` and set equal to (length of `string` + 2)
  # 2. Repeat 5 times, keeping track of the iteration number `iteration` (starting from 0)
      # 1. If `iteration` is equal to 0 or 4:
          # 1. Output "+" followed directly by `horizontal_characters` number of '-'s, followed directly by '+'
      # 2. If `iteration` is equal to 1 or 3:
          # 1. Output "|" followed directly by `horizontal_characters` number of spaces, followed directly by '|'
      # 3. If `iteration` is equal to 2:
          # 1. Output "|" followed directly by a space, followed directly by the string argument, followed directly by a space, followed directly by "|"

# def print_in_box(string)
#   horizontal_characters = string.length + 2
#   puts ' '
#   5.times do |iteration|
#     if iteration == 0 || iteration == 4
#       puts "+#{'-' * horizontal_characters}+"
#     elsif iteration == 1 || iteration == 3
#       puts "|#{' ' * horizontal_characters}|"
#     else
#       puts "| #{string} |"
#     end
#   end
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# LS solution manually prints out each line instead of looping through an if/elsif/else 5 times.

# -------------------------------------------------------------------------

# Further exploration 1:
# Modify this method so it will truncate if it will be too wide to fit inside a standard
  # terminal window (80 columns, including the sides of the box).
  
# Algorithm:
  # 1. If the (length of the string argument + 4) is greater than 80:
      # 1. Truncate the rest of the input string.
  # 2. Initialize variable `horizontal_characters` and set equal to (length of `string` + 2)
  # 3. Repeat 5 times, keeping track of the iteration number `iteration` (starting from 0)
      # 1. If `iteration` is equal to 0 or 4:
          # 1. Output "+" followed directly by `horizontal_characters` number of '-'s, followed directly by '+'
      # 2. If `iteration` is equal to 1 or 3:
          # 1. Output "|" followed directly by `horizontal_characters` number of spaces, followed directly by '|'
      # 3. If `iteration` is equal to 2:
          # 1. Output "|" followed directly by a space, followed directly by the string argument, followed directly by a space, followed directly by "|"

# def print_in_box(string)
#   if (string.length + 4) > 80
#     string = string[0, 76]
#     puts "Within method - Length of string has been truncated to: #{string.length} \n"
#   end
#   horizontal_characters = string.length + 2
#   puts ' '
#   5.times do |iteration|
#     if iteration == 0 || iteration == 4
#       puts "+#{'-' * horizontal_characters}+"
#     elsif iteration == 1 || iteration == 3
#       puts "|#{' ' * horizontal_characters}|"
#     else
#       puts "| #{string} |"
#     end
#   end
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# long_string = ''
# while long_string.length < 100
#   long_string << 'testing...'
# end

# puts "\nLong string is: '#{long_string}'"
# puts "Length of long string before invoking method is: #{long_string.length} \n"

# print_in_box(long_string)

# -------------------------------------------------------------------------

# Further exploration 2:
# Modify this method so it will word wrap very long messages so they appear
  # on multiple lines, but still within a box.
  
# Data structure:
# It would be helpful to have an intermediate array to store the strings that should appear on each row.

# Algorithm:
  # 1. Find the length of the string (as a float)
  # 2. Divide the length of the string by 76 to determine how many rows the message will take up.
      # 1. Save this number as the variable `num_rows`.
      # 2. If `num_rows` has trailing number(s) after the decimal point, round `num_rows` up to the next whole number.
  # 3. Initialize variable `current_row_num` to keep track of which row is the current row, and set it equal to 1.
  # 4. Initialize array `row_messages` as an empty array, to store the strings that should appear on each row.
  # 5. Repeat as long as `current_row_num` is not greater than `num_rows`:
      # 1. Truncate the characters from index 0 to index 75 from the long message.
          # 1. Save the truncated characters as a new string, and append that onto the end of the `row_messages` array.
  # 6. Initialize variable `horizontal_characters` and set equal to the (maximum `row_message` length + 2)
  # 7. Repeat (`num_rows` + 3) times, keeping track of the iteration number `iteration` (starting from 0)
      # 1. If `iteration` is equal to 0 or (`num_rows` + 3):
          # 1. Output "+" followed directly by `horizontal_characters` number of '-'s, followed directly by '+'
      # 2. If `iteration` is equal to 1 or (`num_rows` + 2):
          # 1. Output "|" followed directly by `horizontal_characters` number of spaces, followed directly by '|'
      # 3. Otherwise:
          # 1. Output "|" followed directly by a space, followed directly by the message for that row, followed directly by a space, followed directly by "|"
  
def print_in_box(string)
  num_rows = string.length.to_f / 76
  if num_rows % 1 != 0
    num_rows = num_rows.to_i + 1
  end
  current_row_num = 1
  row_messages = []
  
  while current_row_num < num_rows || current_row_num == num_rows do
    row_messages << string.slice!(0..75)
    current_row_num += 1
  end
  
  current_row_num = 0
  horizontal_characters = ((row_messages.max { |a, b| a.size <=> b.size }).length) + 2
  iteration = 0
  
  while iteration < num_rows + 3 || iteration == num_rows + 3 do
    if iteration == 0 || iteration == num_rows + 3
      puts "+#{'-' * horizontal_characters}+"
    elsif iteration == 1 || iteration == (num_rows + 2)
      puts "|#{' ' * horizontal_characters}|"
    else
      puts "| #{row_messages[current_row_num]} |"
    end
    iteration += 1
    current_row_num += 1
  end
end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

long_string = ''
while long_string.length < 300
  long_string << 'testing...'
end

puts "\nLong string is: '#{long_string}'"
puts "Length of long string before invoking method is: #{long_string.length} \n"

print_in_box(long_string)