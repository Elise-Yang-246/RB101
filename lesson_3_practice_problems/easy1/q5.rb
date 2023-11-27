# Programmatically determine if 42 lies between 10 and 100.

# -------------------------------------------------------------------------

# My guess before looking at solution:

(10..100).each do |num|
  if num == 42
    puts "42 lies between 10 and 100."
    break
  elsif num < 100
    next
  end
  puts "42 does not lie between 10 and 100."
end

# -------------------------------------------------------------------------

# After looking at solution:

# Solution uses a method that I didn't know about before: Range#cover?

# if (10..100).cover?(42)
#   puts "42 lies between 10 and 100."
# else
#   puts "42 does not lie between 10 and 100."
# end