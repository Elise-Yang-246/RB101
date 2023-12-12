# What is the result of the call on line 13?

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
Breaking it down:

puts  rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
      rps(rps(    "paper"         , "rock"                 ), "rock")
      rps(                  "paper"                         , "rock")

Output:
paper

=end

# -------------------------------------------------------------------------

# After looking at solution:
# My solution works and matches the LS solution logic :)