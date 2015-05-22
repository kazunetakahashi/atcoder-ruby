n = gets.to_i
d = []

n.times{|i|
  d[i] = gets.to_i
}

puts t = d.inject(:+)
puts [0, (m = d.max) - (t - m)].max
