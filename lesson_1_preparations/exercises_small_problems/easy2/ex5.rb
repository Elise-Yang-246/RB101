# My guess before looking at documentation/solution:

# Input:
  # User's name

# Output:
  # 1. If user inputs name with an exclamation point, then display a greeting in all caps and ask why we are screaming.
  # 2. If user inputs name without an exclamation point, then display a greeting with normal capitalization.

# Rules / assumptions:
  # - assume user will input a name and not an empty string

# Data structure:
  # not necessary

# Algorithm:
  # 1. Ask for the user's name.
  # 2. Store the input using a variable `name`
  # 3. If `name` ends with a "!", then:
      # 1. Output "HELLO [name (in all caps and without the exclamation point)]. WHY ARE WE SCREAMING?"
  # 4. Otherwise:
      # 1. Output "Hello [name]."

# print "What is your name? "
# name = gets.chomp
# last_index = name.length - 1
# if name[last_index] == '!'
#   puts "HELLO #{(name[0..(last_index - 1)]).upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# -------------------------------------------------------------------------

# After looking at hint:
# My solution works! :)
# Now using #chop from hint:

# print "What is your name? "
# name = gets.chomp
# last_index = name.length - 1
# if name[last_index] == '!'
#   puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is really similar, but uses the [-1] index instead of the longer way that I used (finding the string length and subtracting 1)

# -------------------------------------------------------------------------

# Further Exploration:
# Try modifying the solution to use String#chomp! and String#chop!, respectively.

print "What is your name? "
name = gets
name.chomp!

if name[-1] == '!'
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end