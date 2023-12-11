# My guess before looking at documentation/solution:

# Input:
  # length of the room (in meters)
  # width of the room (in meters)
  
# Output:
  # area of the room in both square meters and square feet

# Rules / assumptions:
  # - 1 square meter is equal to 10.7639 square feet
  # - don't need to worry about validating user input at this time.

# Data structure:
  # not necessary

# Algorithm:
  # 1. Prompt the user to enter the length of the room in meters.
      # a. Capture the input, convert it to a float, and store it with variable `length`
  # 2. Prompt hte user to enter the width of the room in meters.
      # a. Capture the input, convert it to a float, and store it with variable `width`
  # 3. Multiply `length` and `width` to get the area of the room in square meters.
  # 4. Multiply the area of the room in square meters by 10.7639 to get the area in square feet
  # 4. Display the area of the room in square meters and square feet.
  
# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# area_square_meters = (length * width).round(2)
# area_square_feet = (area_square_meters * 10.7639).round(2)
# puts "The area of the room is #{area_square_meters} square meters (#{area_square_feet} square feet)."

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution saves the square meters to square feet conversion in a constant.
  # It also doesn't chain #chomp after #gets, since it's unnecessary.
  # It also breaks up the last line of output so that it's nicely formatted/not a super long line.

# SQUARE_METERS_TO_SQUARE_FEET = 10.7639

# puts "Enter the length of the room in meters:"
# length = gets.to_f

# puts "Enter the width of the room in meters:"
# width = gets.to_f

# area_square_meters = (length * width).round(2)
# area_square_feet = (area_square_meters * SQUARE_METERS_TO_SQUARE_FEET).round(2)
# puts  "The area of the room is #{area_square_meters} square meters " + \
#       "(#{area_square_feet} square feet)."

# -------------------------------------------------------------------------

# Further Exploration:
# Modify this program to ask for the input measurements in feet.
# Display the results in square feet, square inches, and square centimeters.

SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_FEET_TO_SQUARE_CENTIMETERS = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_square_feet = (length * width).round(2)
area_square_inches = area_square_feet * SQUARE_FEET_TO_SQUARE_INCHES
area_square_centimeters = area_square_feet * SQUARE_FEET_TO_SQUARE_CENTIMETERS

puts  "The area of the room is #{area_square_feet} square feet " + \
      "(#{area_square_inches} square inches / " + \
      "#{area_square_centimeters} square centimeters)."
