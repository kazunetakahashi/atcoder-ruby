s = gets.chomp
ans = -1100
7.times{|i|
  if i == 3
    next
  end
  10.times{|j|
    temp = s[i]
    s[i] = j.to_s
    a, b = s.split(" ").map{|x| x.to_i}
    if a >= 100 && b >= 100
      ans = [ans, a-b].max
    end
    s[i] = temp
  }
}
puts ans
