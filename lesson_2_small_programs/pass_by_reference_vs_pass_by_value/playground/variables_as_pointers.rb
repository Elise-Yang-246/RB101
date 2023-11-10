a = [1, 2, 3, 3]
b = a
c = []

puts "Original values:"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "----------------------"

c = a.uniq!

puts "After c = a.uniq!"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "----------------------"

a << 4

puts "After a << 4"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "----------------------"

c << 4

puts "After c << 4"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "----------------------"

d = b.uniq
puts "After d = b.uniq"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "d: #{d}"
puts "----------------------"

e = b.pop

puts "After e = b.pop"
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"
puts "d: #{d}"
puts "e: #{e}"