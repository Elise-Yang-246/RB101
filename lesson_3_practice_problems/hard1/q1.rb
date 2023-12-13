# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

p greeting

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
When the `greeting` variable is referenced in the last line of the code, Ruby will
raise an exception.

This is because:
- On line 1, `if false` is evaluated. Since false will never equal true, 
  `greeting = "hello world"` will never be executed.
- Thus, when the `greeting` variable is referenced on line 5, it doesn't exist.
=end

# -------------------------------------------------------------------------

# After looking at solution:
=begin
My logic wasn't correct :(
The LS solution states:
  - Typically, when you reference an uninitialized variable, Ruby will raise an exception,
    stating that it's undefined.
  - However, when you initialize a local variable within an `if` clause,
    even if that `if` clause doesn't get executed, the local variable is
    initialized to `nil`.
=end
