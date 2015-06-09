danboru = gets.chomp.split(" ").map{|i| i.to_i}
nimotsu = gets.chomp.split(" ").map{|i| i.to_i}

ans = 0

nimotsu.permutation(3){|itr|
  temp = 1
  3.times{|i|
    temp *= danboru[i]/itr[i]
  }
  ans = [ans, temp].max
}

puts ans
