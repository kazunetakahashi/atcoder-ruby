d = gets.chomp.split(" ").map{|i| i.to_i}
j = gets.chomp.split(" ").map{|i| i.to_i}

ans = 0

7.times{ |i|
  ans = ans + [d[i], j[i]].max
}

puts ans
