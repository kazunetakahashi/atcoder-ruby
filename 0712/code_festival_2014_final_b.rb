s = gets.chomp.split("").map{|i| i.to_i}
ans = 0
s.size.times{|i|
  if i%2 == 0
    ans += s[i]
  else
    ans -= s[i]
  end
}
puts ans

