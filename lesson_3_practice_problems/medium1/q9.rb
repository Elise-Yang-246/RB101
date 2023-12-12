# What would be the return value of the method invocation on line 11?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
The method invocation will return:
"no"

This is because:
- On line 11, the `bar` method is invoked, and `foo` is passed in as an argument.
- We go up to line 3, where the `foo` method is defined.
  - Since `foo` was invoked with no arguments (back on line 11), this means that
    the local method variable `param` will have the default value of "no"
  - The `foo` method will always return "yes"
- Back on line 11, we now have: `bar("yes")`
- Going to line 7 where the `bar` method is defined:
  - The local method variable `param` points to "yes", the argument that was passed in
  - On line 8, `param` does not equal "no", so the `bar` method will return "no"
- Back on line 11, the invocation of the `bar` method with `foo` passed in will return "no"
=end

# -------------------------------------------------------------------------

# After looking at solution: