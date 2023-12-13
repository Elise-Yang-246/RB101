# My guess before looking at documentation/solution:

=begin

A) 
local variables (outer scope)
one --> 'one'
two --> 'two'
three --> 'three'

local method parameters (inner scope)
one --> 'one'
two --> 'two'
three --> 'three'

becomes:
local method variables (inner scope)
one --> 'two'
two --> 'three'
three --> 'two'

Output:
one is: one
two is: two
three is: three

Because:
- The local method variables were reassigned in the method.
- However, even though the method variables have the same names as the outer
  scoped local variables, the variables have different scopes.
- The outer scoped variables have not been reassigned or mutated, and still
  point to their original objects.
  
-----------------

B) 
local variables (outer scope)
one --> 'one'
two --> 'two'
three --> 'three'

local method parameters (inner scope)
one --> 'one'
two --> 'two'
three --> 'three'

becomes:
local method variables (inner scope)
one --> 'two'
two --> 'three'
three --> 'one'

Output:
one is: one
two is: two
three is: three

Same logic as A.

-----------------

C)
local variables (outer scope)
one --> 'one'
two --> 'two'
three --> 'three'

local method parameters (inner scope)
one --> 'one'
two --> 'two'
three --> 'three'

becomes:
local method variables (inner scope)
one --> 'two' --> since this is a mutating method, it will change the String object that the outer-scoped local variable `one` points to
two --> 'three' --> since this is a mutating method, it will change the String object that the outer-scoped local variable `two` points to
three --> 'one' --> since this is a mutating method, it will change the String object that the outer-scoped local variable `three` points to

local variables (outer scope)
one --> 'two'
two --> 'three'
three --> 'one'

Output:
one is: two
two is: three
three is: one

Because:
- #gsub! is a mutating method, so it changes the calling object in place.
  - The local method variable `one` is pointing to the same object that the outer-scoped local variable `one` is pointing to.
    Thus, the outer-scoped local variable `one` will now point to a string that has been changed.
  - (Same logic for variables `two` and `three`)

=end
# -------------------------------------------------------------------------

# After looking at solution:
# My solution matches the LS solution :)