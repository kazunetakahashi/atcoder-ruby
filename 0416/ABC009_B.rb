n = gets.to_i
a = Array.new(n)
a.map!{|i| gets.to_i}
m = a.max
#puts m
#puts a
a.delete(m)
#puts a
puts a.max
