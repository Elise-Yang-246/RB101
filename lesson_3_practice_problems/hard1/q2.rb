# My guess before looking at documentation/solution:

=begin
The output will be:
{:a, 'hi there'}

Because:
- On line 1, local variable `greetings` is initialized and points to a Hash object with one key / value pair.
- On line 2, local variable `informal_greeting` is initialized and points to
  the object that `greetings[:a]` points to, which is the value `'hi'` (within
  the `greetings` hash).
- On line 3, the object that `informal_greeting` points to is mutated:
  - `' there'` is appended to the end of the value `'hi'`
- On line 6, `greetings` is output, which contains the newly mutated value, `'hi there'`
=end

# -------------------------------------------------------------------------

# After looking at solution:
# My logic is correct, but forgot the correct output syntax for a hash.
  # Should be "=>" instead of "," in the hash output (and also should use double quotes):
  # {:a=>"hi there"}