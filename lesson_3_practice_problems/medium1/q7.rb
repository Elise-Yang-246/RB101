# Did the family's data get ransacked? Why or why not?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
p munsters

# -------------------------------------------------------------------------

# My guess before looking at documentation/solution:
=begin
I'm pretty sure I remember that the Hash#each method is not a mutating method, and that
it instead returns a new hash. Thus, I don't think that the original `munsters`
hash was mutated, so the family's data should be the same as it was before the
`mess_with_demographics` method was invoked.
=end
# -------------------------------------------------------------------------

# After looking at solution:
=begin
I remembered wrong - need to review hashes and hash methods.
Hash#each will return `self`.
The `munsters` hash is being passed in as an argument to the `mess_with_demographics` method invocation
on line 18. Within the method, the local method variable `demo_hash_values` points to the same object that
`munsters` does -- the array with the family's data.
So, lines 12-15 are able to mutate the original `munsters` hash.
=end