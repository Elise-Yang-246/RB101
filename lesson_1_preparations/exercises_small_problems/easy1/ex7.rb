# My guess before looking at documentation/solution:

# Input:
  # 1. a noun
  # 2. a verb
  # 3. an adjective
  # 4. an adverb

# Output:
  # Madlibs style story, with the inputs injected

# Rules / assumptions:
  # assume that user inputs the correct type of word when it's requested
  # assume that user inputs word in the correct tense

# Data structure:
  # not required

# Algorithm:
  # 1. Prompt user to enter a noun. Save in variable `noun`
  # 2. Prompt user to enter a verb. Save in variable `verb`
  # 3. Prompt user to enter an adjective. Save in variable `adjective`
  # 4. Prompt user to enter an adverb. Save in variable `adverb`

print "\nEnter a noun: "
noun = gets.chomp

print "\nEnter a verb: "
verb = gets.chomp

print "\nEnter an adjective: "
adjective = gets.chomp

print "\nEnter an adverb: "
adverb = gets.chomp

# Inject user inputs into Madlibs story:
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution includes a collection of sentences and uses Array#sample to pick one at random.