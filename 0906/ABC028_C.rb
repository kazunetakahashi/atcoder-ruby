t = gets.chomp.split(" ").map{|i| i.to_i}
ans = []
t.combination(3){|a, b, c|
  ans << a+b+c
}
ans.sort!.reverse!
# p ans
puts ans[2]
