# Is there a difference between the two implementations, other than what operator Alyssa chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# My guess before looking at documentation/solution:
=begin
Yes, there is a difference between the two implementations.

In the first implementation, no variables are initialized within the method definition.
  Since the object that `buffer` is pointing to is being mutated, we will still see those changes
  outside of the method (after it has been invoked).

In the second implementation, `buffer` is initialized within the method definition,
  which means the local method variable `buffer` cannot be accessed outside the scope of the method. 
  However, the method returns the object that `buffer` points to, so we could
  invoke the `rolling_buffer2` method and store the return value using a different
  variable, if we wanted to access the object outside of the method.
=end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution makes sense :)
# The LS solution further elaborates:
=begin
- Both methods have the same return value.
- However, the 1st implementation:
  - Returns a reference to the object passed in as the `buffer` argument
  - Mutates the `buffer` argument
- The 2nd implementation:
  - Returns a new object
  - Does not mutate the `input_array` argument
- Best practice is to avoid a method that both returns a meaningful value and has a side effect.
  - Thus, the 2nd solution is probably the better of the two.
  =end