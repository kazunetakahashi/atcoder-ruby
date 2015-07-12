a = gets.to_i
ans = 0
a.times{|i|
  ans = [i * (a-i), ans].max
}
puts ans
