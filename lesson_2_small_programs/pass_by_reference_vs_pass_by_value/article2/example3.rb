def fix(value)
  value[1] = 'x'
  value
end

s = 'abc'
t = fix(s)
p s
p t
p s.object_id
p t.object_id