n = gets.to_i%30
ary = "123456"
for i in 0..n-1
  ary[i%5], ary[i%5+1] = ary[i%5+1], ary[i%5]
end
puts ary
