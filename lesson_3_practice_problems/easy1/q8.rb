# Given the hash below:
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing only two elements: Barney's name and Barney's number.

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

barney_array = []
flintstones.each do |key, value|
  if key == "Barney"
    barney_array << key
    barney_array << value
  end
end

p barney_array

# -------------------------------------------------------------------------

# After looking at solution:

# My solution works. The LS solution uses the Hash#assoc method, which I didn't know about before.

# p flintstones.assoc("Barney")