# Write out pseudo-code (both casual and formal) for:

# a method that takes an array of integers, and:
#   - returns a new array with every other element from the original array,
#     starting with the first element

# e.g. every_other([1,4,7,2,5]) # => [1,7,5]


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Casual pseudo-code:

Given an array of integers.

Initialize a new array, "every_other_array".

Iterate over the original array element by element.
  - for each iteration, if the element number (starting with element 0) is:
      - even: save the current value as a new element in every_other_array.
      - odd: skip that iteration

After iterating over the original array, return every_other_array.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Formal pseudo-code:

START

Define a method called "every_other" that takes 1 parameter (an array of integers)

SET original_array = array of integers passed in to every_other method
SET every_other_array = empty array
SET iterator = 0
SET iterator2 = 0

WHILE iterator < length of original_array
  IF iterator is even
    SET current_number = value within original array at space "iterator"
    SET every_other_array at space "iterator2" = current_number
    iterator2 = iterator2 + 1
  iterator = iterator + 1
  
PRINT every_other_array

END