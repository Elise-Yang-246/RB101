# Write out pseudo-code (both casual and formal) for:
# a method that takes an array of strings,
# and returns a string that is all those strings concatenated together


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Casual pseudo-code:

Given an array of strings.
Create a new empty string and name it concatenated_string.

Iterate through the array value by value.
   - for each iteration, add the current value to the end of concatenated_string.

After iterating through the array, return concatenated_string.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Formal pseudo-code:

START

Given an array of strings called "string_array"

SET concatenated_string = ""
SET iterator = 0

WHILE iterator < length of string_array
  SET current_string = value within string_array at space "iterator"
  SET concatenated_string = concatenated_string + current_string
  iterator = iterator + 1

PRINT concatenated_string

END