m, n, x = gets.chomp.split(" ").map{|o| o.to_i}
ans = x
while x >= m
  recycle = x/m * m
  x -= recycle
  make = recycle / m * n
  x += make
  ans += make
end
puts ans
