n = gets.to_i
ary = []
for i in 0..n
  ary[i] = i * 15 + (n-i+9)/10 * 100
end
puts ary.min

