a = Array.new(20)
a[0] = 100
a[1] = 100
a[2] = 200
for i in 3..19
  a[i] = a[i-1] + a[i-2] + a[i-3]
end
puts a[19]

