n = gets.to_i
w = []
n.times{
  w << gets.to_i
}
dan = []
w.each{|i|
  tsumu = false
  dan.size.times{|j|
    if i <= dan[j]
      dan[j] = i
      tsumu = true
      break
    end
  }
  if !tsumu
    dan << i
  end
}
puts dan.size

