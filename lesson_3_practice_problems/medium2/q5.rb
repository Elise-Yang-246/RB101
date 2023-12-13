=begin
How can we change this code to make the result easier to predict and easier 
for the next programmer to maintain? 

That is, the resulting method should not mutate either argument, but 
`my_string` should be set to `'pumpkinsrutabaga'` and 
`my_array` should be set to `['pumpkins', 'rutabaga']`
=end

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  [a_string_param, an_array_param]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
result_array = tricky_method(my_string, my_array)
my_string = result_array[0]
my_array = result_array[1]

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works! :)
# The LS solution uses multiple assignment, making their solution shorter