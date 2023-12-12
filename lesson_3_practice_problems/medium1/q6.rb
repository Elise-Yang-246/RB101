# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
The output of the code is:
34

This is because:
- On line 3, local variable `answer` is initialized and pointed to an Integer object, 42.
- On lines 5-7, a method, `mess_with_it`, is defined. It takes 1 parameter, `some_number`.
  - Within the method, the object that `some_number` points to is increased by 8.
- On line 9, the return value of invoking the `mess_with-it` method and passing in `answer` as an argument
is stored using local variable `new_answer`.
- We now go up to lines 5-7.
  - The local method variable, `some_number` is now pointing to the same object that `answer` points to.
  - So, `some_number` is pointing to the Integer object 42.
  - Line 6 reassigns `some_number` to point to a different Integer object, 50.
    - This is because numbers are immutable in Ruby.
- Since line 6 was the last line evaluated in the `mess_with_it` method, 50 is implicitly returned
after invoking the method on line 9.
  - So, local variable `new_answer` is now pointing to the Integer object 50.
- On line 11, Ruby prints out the result of `answer` - 8.
  - Since `answer` is still pointing to the original Integer object 42, the output
  of the code is 34.

=end

# -------------------------------------------------------------------------

# After looking at solution:
# My output is correct! :)