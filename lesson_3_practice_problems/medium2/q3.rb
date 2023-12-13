# Study the following code and state what will be displayed...and why:

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
The output will be:
String_arg_one looks like this now: pumpkins
String_arg_two looks like this now: pumpkinsrutabaga

This is because:
- The "+=" on line 4 will reassign `string_param_one` to a different object than it was intially pointing to.
  - This means that the object that `string_param_one` was initially pointing to (`string_arg_one`)
    has not been changed.
- The "<<" on line 5 mutates the caller.
  - The string that `string_param_two` was initially pointing to (`string_arg_two`)
    was changed, since the string was mutated in place.

=end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution matches the LS solution logic :)