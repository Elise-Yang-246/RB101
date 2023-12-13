# What will be displayed and why?

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:

=begin
Output:
My string looks like this now: pumpkinsrutabaga
My array looks like this now: pumpkins

This is because:
  - The "<<" on line 4 mutates the calling object.
    - `a_string_param` points to the String object `"pumpkins"`
    - "pumpkins" is mutated in place and is now `"pumpkinsrutabaga"`
  - The "=" on line 5 reassigns `an_array_param` to now be pointing to a different Array object,
    `['pumpkins', 'rutabaga']`.
    - `an_array_param` and `my_array` are no longer pointing to the same object.
    - `my_array` is still pointing to the original array, `["pumpkins"]`.
=end

# -------------------------------------------------------------------------

# After looking at solution:
=begin
My answer is almost correct -- except that the second output should look like this:
My array looks like this now: ["pumpkins"]

Didn't realize that outputting string interpolation of an array would result in printing out the brackets and quotes as well.
But the rest of my solution matches the LS solution logic :)
=end