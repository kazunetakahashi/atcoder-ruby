n = gets.to_i
c = ['R', 'G', 'B']
s = gets.chomp
ans = 0
c.each{|i|
  ans += s.count(i)%2
}
puts ans
