# Write out pseudo-code (both casual and formal) for:

# a method that takes 2 arrays of numbers and returns the result of merging the arrays.
#   - elements of the 1st array will become the elements at the even indexes of the returned array
#   - elements of the 2nd array will become the elements at the odd indexes
# (assume that both array arguments have the same number of elements)

# e.g.
#     merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Casual pseudo-code:

Given 2 arrays of the same length.

Iterate over both arrays value by value:
  - save the current value of the 1st array in a new array.
  - save the current value of the 2nd array to the end of the new array.
  - for each following iteration:
    - save the current value of the 1st array to the end of the new array.
    - save the current value of the 2nd array to the end of the new array.

After iterating over the length of the array, return the new array.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Formal pseudo-code:

START

SET array1 = given first array
SET array2 = given second array
SET iterator = 0
SET index = 0
SET merged_array = empty array

WHILE iterator < length of array1
  SET current_value_array1 = value within array1 at space "iterator"
  SET current_value_array2 = value within array2 at space "iterator"
  SET merged_array at space "index" = current_value_array1
  index = index + 1
  SET merged_array at space "index" = current_value_array2
  index = index + 1
  iterator = iterator + 1
  
PRINT merged_array

END