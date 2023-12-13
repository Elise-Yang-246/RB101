# My guess before looking at documentation/solution:

def is_an_ip_number?(string)
  (0..255).include?(string.to_i)
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  return false if dot_separated_words.length != 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    is_an_ip_number?(word) ? next : (return false)
  end
  true
end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("1.5.33.256")

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution is even simpler - no need to use a ternary operator - just need to change `break` to `return false` on line 5 (of original code)