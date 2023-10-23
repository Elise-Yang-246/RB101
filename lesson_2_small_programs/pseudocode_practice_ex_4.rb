# Write out pseudo-code (both casual and formal) for:

# a method that determines the index of the 3rd occurence of a given character in a string.
#   - if given character does not occur at least 3 times, return nil

# eg: 
#     - Given character: 'x'
#     - String: 'axbxcdxex'
#     Method should return 6, the index of the 3rd 'x'

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Casual pseudo-code:

Given a character.
Given a string.

Create a variable 'occurence' and set it equal to 0.

Iterate through the string character by character.
    - if the given character has not occurred 3 times yet, do the following:
      - for each iteration, compare the current character with the given character.
      - if the current character is equal to the given character, add 1 to occurence.
    - if the given character has occurred 3 times:
      - return the index of the 3rd occurence.

After iterating throug the string, if the given character has not occurred at leaset 3 times, return nil.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Formal pseudo-code:

START

Given a character.
Given a string.

SET given_character = given character
SET given_string = given string

SET occurence = 0
SET iterator = 0

WHILE iterator < length of given_string
  IF occurence < 3
    SET current_character = value within given_string at space "iterator"
    IF current_character = given_character
      SET occurence = occurence + 1
  IF occurence = 3
    PRINT iterator
  iterator = iterator + 1

IF iterator < 3
  PRINT nil

END