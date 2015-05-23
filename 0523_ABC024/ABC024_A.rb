a, b, c, k = gets.chomp.split(" ").map{|i| i.to_i}
s, t = gets.chomp.split(" ").map{|i| i.to_i}

ans = a * s + b * t
if s+t >= k
  ans -= c * (s+t)
end

puts ans
