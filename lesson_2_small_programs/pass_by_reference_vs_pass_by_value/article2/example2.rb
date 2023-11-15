def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end
s = 'hello'
t = fix(s)

puts "s: #{s}"
puts "s object id: #{s.object_id}"
puts "t: #{t}"
puts "t object id: #{t.object_id}"
